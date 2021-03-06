<!DOCTYPE html>
<html>

      @foreach($equipo as $eq)
  @php($clave =$eq->idequipo)

<title>FICHA TÉCNICA {{ $eq->idequipo}}</title>
	<link type="text/css" rel="stylesheet" href="estilos.css" />

  <body>
    <SPAN style="position: absolute; top: -45 px; left: -45 px;">
      </SPAN>





        <table id="table" width="100%" border="10" cellpadding="5" cellspacing="0" bordercolor="#000000">

          <tr>
            <td id="gris" colspan="3"> 	<div align="center"> FICHA TÉCNICA             </div>  </td>

              <td rowspan="3" ><div align="center">
    <img src="{{ public_path('dist/img/igsslogo.png') }}" width="70" height="70">  </td>
  </div></tr>
          <tr>
            <td id="gris"> <div align="center"> No. Inventario Técnico </div></td>
              <td id="gris" colspan="1"> <div align="center"> ID: </div></td>
                <td id="negrita" rowspan="2" > <div align="center"> INSTITUTO GUATEMALTECO DE <BR>
                  SEGURIDAD SOCIAL (IGGS)</td></div>

          </tr>
          <tr>
            @php($clavedividida= explode("-",$clave))
            <td id="neg">  <div align="center">{{$clavedividida[0]}} </div></td>
              <td id="neg"> <div align="center"> {{$clavedividida[1]}} </div></td>

          </tr>
          <tr>
            <td id="gris" colspan="4"> <div align="center"> IDENTIFICACIÓN </div></td>
          </tr>
          <tr>
            <td > Equipo/Instalación: <br>
            {{ $eq->nombre_equipo}}</td>
            <td > Marca:<br>
              {{ $eq->marca}}
             </td>
            <td > Modelo: <br>
              {{ $eq->modelo}}</td>
            <td > No. de serie: <br>
            {{ $eq->serie}}</td>
          </tr>
          <tr>
              <td colspan="4">Descripción del Equipo: {{ $eq->descripcion}}  </td>

          </tr>
          <tr>

            <td  colspan="2">  Clase Tenología Médica: {{ $eq->clase_tec_med}}</td>
            <td  colspan="2">  Nivel de Riesgo: {{ $eq->nivel_riesgo}}</td>

          </tr>
          <tr>
            <td  colspan="4">  Partes de Equipo: @foreach($partes as $part) {{$part->nombre_parte}}, @endforeach  </td>
          </tr>
          <tr>
            <td  colspan="4">  Accesorios:  @foreach($accesorio as $part) {{$part->nombre_accesorio}}, @endforeach</td>
          </tr>
          <tr>
            <td  colspan="4">  Conexión Con otro equipo: {{ $eq->conexion_otro_eq}}</td>
          </tr>
          <tr>
            <td id="gris" colspan="4"> <div align="center"> LOCALIZACIÓN Y FRECUENCIA DE USO </div></td>
          </tr>
          <tr>
            @foreach($unidadsalud as $hosp)
                     @if ($hosp->idunidadsalud==$eq->idunidadsalud)
           <td  colspan="2">   Unidad: {{$hosp->unidad_salud}} </td>
                   @endif
                    @endforeach
                    @foreach($equipo as $hosp)
                    @if ($hosp->idequipo==$eq->idequipo)
                    <td  colspan="2">   Departamento/Servicio: {{$hosp->servicio}} </td>
                    @endif
                    @endforeach

          </tr>
          <tr>
            @foreach($area as $hosp)
                     @if ($hosp->idarea==$eq->idarea)
           <td  colspan="2">   Área/Sala/Laboratorio: {{$hosp->nombre_area}}</td>
                   @endif
                    @endforeach

                    <td  colspan="2"> Usuario responsable: {{$eq->name}}</td>


          </tr>
          <tr>

            <td  >  Frecuencia de uso: {{ $eq->frec_uso_dia_semana}}</td>
            <td >  {{ $eq->frec_uso_dia_semana}}</td>
             @if ($eq->personal_cap=="1")
            <td  colspan="2">  Cuenta con personal capacitado para su uso? Sí</td>
            @else
            <td  colspan="2">  Cuenta con personal capacitado para su uso? No</td>
            @endif
          </tr>
          <tr>
            <td id="gris" colspan="4"> <div align="center"> INFORMACIÓN TÉCNICA </div></td>
          </tr>



          @foreach($CaracTec as $CaracTecnica)
            @php ($num = 0)
          @foreach($detcaractec as $hosp)
          @if ($num==0 and $hosp->idequipo==$eq->idequipo  and $hosp->idcaracteristica_tecnica==$CaracTecnica->idcaracteristica_tecnica)
          <tr>
          <td id="neg" colspan="4"> <div align="center"><font style="text-transform: uppercase;"> {{$CaracTecnica->nombre_caracteristica_tecnica}}  </font></div></td>
          </tr>
           @php ($num=1)
           @foreach($subcaractec as $subcaractecnica)
           @php ($num2 = 0)
           @foreach($detcaractec as $hosp2)
           @if ($num2==0 and $hosp2->idequipo==$eq->idequipo  and $hosp2->idsubgrupo_carac_tecnica==$subcaractecnica->idsubgrupo_carac_tecnica and $hosp2->idcaracteristica_tecnica==$CaracTecnica->idcaracteristica_tecnica)

           <tr>
             <td id="neg" colspan="4"> <font style="text-transform: uppercase;"> {{$subcaractecnica->nombre_subgrupo_carac_tecnica}}  </font></td>
           </tr>
            @php ($num2=1)
            @php ($divisor=0)


            @foreach($detcaractec as $hosp3)
            @foreach($valorreftec as $hosp4)

            @if ($hosp3->idequipo==$eq->idequipo and $hosp3->idsubgrupo_carac_tecnica==$subcaractecnica->idsubgrupo_carac_tecnica and $hosp3->idcaracteristica_tecnica==$CaracTecnica->idcaracteristica_tecnica)
            @if ($hosp4->idvalor_ref_tec==$hosp3->idvalor_ref_tec)
              @if ($divisor%2==0)
              <tr>
              @endif
              <td  colspan="2"><font style="text-transform: uppercase;"> {{$hosp4->nombre_valor_ref_tec}}:  {{$hosp3->valor_detalle_caracteristica_tecnica}}  </font></div></td>

              @if ($divisor%2!=0 )
              </tr>
              @endif
                @php ($divisor++)
            @endif

            @endif

            @endforeach
            @endforeach
            @if ($divisor%2!=0 )
                <td  colspan="2"></td>
                  </tr>
            @endif

           @endif
           @endforeach
           @endforeach

          @endif


          @endforeach
          @endforeach



@php($titulo=0)



					 @foreach($caracespefun as $subcaractecnica)
					 @php ($num2 = 0)
					 @foreach($detcaracesp as $hosp2)
					 @if ($num2==0 and $hosp2->idequipo==$eq->idequipo  and $hosp2->idcaracteristica_especial==$subcaractecnica->idcaracteristica_especial)
@if($titulo==0)
<tr>
	<td id="gris" colspan="4"> <div align="center"> CARACTERISTICAS ESPECIALES </div></td>
</tr>
@php($titulo=1)
@endif
					 <tr>
						 <td id="neg" colspan="4"> <font style="text-transform: uppercase;"> {{$subcaractecnica->nombre_caracteristica_especial}}  </font></td>
					 </tr>
						@php ($num2=1)
						@php ($divisor=0)


						@foreach($detcaracesp as $hosp3)
						@foreach($valorrefesp as $hosp4)

						@if ($hosp3->idequipo==$eq->idequipo and $hosp3->idcaracteristica_especial==$subcaractecnica->idcaracteristica_especial)
						@if ($hosp4->idvalor_ref_esp==$hosp3->idvalor_ref_esp)
							@if ($divisor%2==0)
							<tr>
							@endif
							<td  colspan="2"><font style="text-transform: uppercase;"> {{$hosp4->nombre_valor_ref_esp}}:  {{$hosp3->valor_detalle_caracteristica_especial}}  </font></div></td>

							@if ($divisor%2!=0 )
							</tr>
							@endif
								@php ($divisor++)
						@endif

						@endif

						@endforeach
						@endforeach
						@if ($divisor%2!=0 )
								<td  colspan="2"></td>
									</tr>
						@endif

					 @endif
					 @endforeach
					 @endforeach














          <tr>
            <td id="gris" colspan="2">  FABRICANTE: </div></td>
            <td id="gris" colspan="2"> <div align="center"> EXSITENCIA DE INFORMACIÓN TÉCNICA </div></td>
          </tr>
          <tr>
            <td  colspan="2">  DIRECCIÓN:      @foreach($fabricante as $hosp)
                           @if ($hosp->idfabricante==$eq->idfabricante) {{ $hosp->direccion_fabricante}}       @endif  @endforeach
                                </td>
            <td colspan="2" rowspan="8">
								@php($pri='nada')
   					@foreach($tipomanual as $tipoma)
						@if($tipoma != $pri)
						<div id="neg" >	{{ $tipoma->nombre_tipo_manual}}:</div>

						@foreach($manual as $manu)

							@if($manu->idtipomanual == $tipoma->idtipomanual)
						{{ $manu->link_detalle_manual}}
						<br>
					Observación:	{{ $manu->observacion_detalle_manual}}
						<br>
						<br>
								@endif
						@endforeach
							@php($pri=$tipoma)
							@endif
						@endforeach

						</td>
          </tr>
          <tr>
            <td  colspan="2">  TEL/FAX:  @foreach($fabricante as $hosp)
                           @if ($hosp->idfabricante==$eq->idfabricante)  {{ $hosp->telefono_fabricante}}        @endif  @endforeach</td>

          </tr>
          <tr>
            <td  colspan="2">  e-mail:  @foreach($fabricante as $hosp)
                           @if ($hosp->idfabricante==$eq->idfabricante) {{ $hosp->correo_fabricante}}        @endif  @endforeach</td>

          </tr>



          <tr>
            <td id="gris" colspan="2">  DISTRIBUIDOR: </div></td>

          </tr>
          <tr>
            <td  colspan="2">  DIRECCIÓN:@foreach($proveedor as $hosp)
            @if ($hosp->id_proveedor==$eq->id_proveedor) {{ $hosp->direccion_proveedor}}   @endif @endforeach</td>

          </tr>
          <tr>
            <td  colspan="2">  TEL/FAX: @foreach($proveedor as $hosp)
            @if ($hosp->id_proveedor==$eq->id_proveedor){{ $hosp->telefono_proveedor}}  @endif @endforeach</td>

          </tr>
          <tr>
            <td  colspan="2">  e-mail: @foreach($proveedor as $hosp)
            @if ($hosp->id_proveedor==$eq->id_proveedor){{ $hosp->correo_proveedor}}  @endif @endforeach</td>

          </tr>

          <tr>
            <td  colspan="2">  NOMBRE DE CONTACTO:@foreach($proveedor as $hosp)
            @if ($hosp->id_proveedor==$eq->id_proveedor) {{ $hosp->contacto_proveedor}}  @endif @endforeach</td>

          </tr>




           <tr>
             <td id="gris" colspan="4"> <div align="center"> REPUESTOS EN ALMACÉN </div></td>
           </tr>

						 @foreach($repuesto as $re)
						    <tr>
             <td  colspan="2">  Repuesto: {{$re->nombre}} </td>
             <td  colspan="2">  No. de parte: {{$re->codigo}}</td>
						 </tr>
						 @endforeach


    </table>



  @endforeach
</body>
</html>
