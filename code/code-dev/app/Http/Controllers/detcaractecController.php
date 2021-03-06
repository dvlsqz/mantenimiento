<?php

namespace App\Http\Controllers;

use App\detcaractec;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Response;
use Illuminate\Support\Collection;
use DB;
use App\CaracTec;
use App\subcaractec;
use App\valorreftec;
use App\Equipo;

class detcaractecController extends Controller
{
  function __construct()
      {
        $this->middleware(['auth','role:admin,jefe-mantto']);
      }
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index(Request $request)
  {

      if ($request)
      {
          $query=trim($request->get('searchText'));
        $detcaractec=DB::table('detalle_caracteristica_tecnica as a')
        ->join('caracteristica_tecnica as d','a.idcaracteristica_tecnica','=','d.idcaracteristica_tecnica')
          ->join('subgrupo_carac_tecnica as s','a.idsubgrupo_carac_tecnica','=','s.idsubgrupo_carac_tecnica')
          ->join('valor_ref_tec as v','a.idvalor_ref_tec','=','v.idvalor_ref_tec')
            ->join('equipo as e','a.idequipo','=','e.idequipo')

        ->select('iddetalle_caracteristica_tecnica','d.nombre_caracteristica_tecnica as idcaracteristica_tecnica','e.nombre_equipo as idequipo','v.nombre_valor_ref_tec as idvalor_ref_tec','s.nombre_subgrupo_carac_tecnica as idsubgrupo_carac_tecnica','a.estado_detalle_caracteristica_tecnica','descripcion_detalle_caracteristica_tecnica','valor_detalle_caracteristica_tecnica')

        //  ->select('*')
          ->where('d.nombre_caracteristica_tecnica','LIKE','%'.$query.'%')
          ->orderBy('d.idcaracteristica_tecnica','desc')
          ->paginate(10);

          return view('equipo.caracteristica.detcaractec.index',["detcaractec"=>$detcaractec,"searchText"=>$query]);
      }
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
        $caract_tec=CaracTec::all();
        $subcaractec=subcaractec::all();
        $valorreftec=valorreftec::all();

        return view("equipo.vista.index",compact('caract_tec','subcaractec','valorreftec'));
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
    try{
        DB::beginTransaction();


        $idcaracteristica_tecnica = $request->get('idcaracteristica_tecnica');
        $idequipo = $request->get('idequipo');
        $idvalor_ref_tec=$request->get('idvalor_ref_tec');
        $idsubgrupo_carac_tecnica=$request->get('idsubgrupo_carac_tecnica');
        $descripcion_detalle_caracteristica_tecnica=$request->get('descripcion_detalle_caracteristica_tecnica');
        $valor_detalle_caracteristica_tecnica=$request->get('valor_detalle_caracteristica_tecnica');



        $cont = 0;

        while($cont < count($idcaracteristica_tecnica)){
            $detalle = new detcaractec();
            $detalle->idcaracteristica_tecnica= $idcaracteristica_tecnica[$cont];
            $detalle->idequipo= $idequipo[$cont];
            $detalle->idvalor_ref_tec=$idvalor_ref_tec[$cont];
            $detalle->idsubgrupo_carac_tecnica=$idsubgrupo_carac_tecnica[$cont];
            $detalle->estado_detalle_caracteristica_tecnica=1;
            $detalle->descripcion_detalle_caracteristica_tecnica=$descripcion_detalle_caracteristica_tecnica[$cont];
            $detalle->valor_detalle_caracteristica_tecnica=$valor_detalle_caracteristica_tecnica[$cont];
            $detalle->save();
            $cont=$cont+1;
        }

        DB::commit();

      }catch(\Exception $e)
      {
          DB::rollback();
      }

      return back()->with('carac','??Caracter??sticas agregadas!');
  }

  /**
   * Display the specified resource.
   *
   * @param  \App\detcaractec  $detcaractec
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
      $caract_tec=CaracTec::all();
      $subcaractec=subcaractec::all();
      $valorreftec=valorreftec::all();
      $equipo=Equipo::all();
      $detcaractec=detcaractec::findOrFail($id);
      return view('equipo.caracteristica.detcaractec.show', compact('detcaractec','caract_tec','subcaractec','valorreftec','equipo'));
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  \App\detcaractec  $detcaractec
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
      $caract_tec=CaracTec::all();
      $subcaractec=subcaractec::all();
      $valorreftec=valorreftec::all();
      $equipo=Equipo::all();
      $detcaractec=detcaractec::findOrFail($id);
      return view('equipo.caracteristica.detcaractec.edit', compact('detcaractec','caract_tec','subcaractec','valorreftec','equipo'));
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  \App\detcaractec  $detcaractec
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
      detcaractec::findOrFail($id)->update($request->all());
      return redirect()->route('detcaractec.index');
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  \App\detcaractec  $detcaractec
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
      detcaractec::findOrFail($id)->delete();
      return back();
  }
}
