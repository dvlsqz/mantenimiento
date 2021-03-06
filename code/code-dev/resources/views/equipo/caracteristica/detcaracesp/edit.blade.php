@extends ('layouts.admin')
@section ('contenido')

<section class="content-header">
      <h1>
        Ficha Técnica
      <small>Detalle caracteristica especial</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-edit"></i>   Ficha Técnica</a></li>
      <li class="active">Detalle caracteristica especial</li>
      </ol>
</section>
	<section class="content">
<div class="row">
	<!-- left column -->
	<div class="col-md-12">
		<!-- general form elements -->
		<div class="box box-success">
			<div class="box-header with-border">
				<h3 class="box-title">Editar detalle caracteristica especial</h3>
			</div>
      @if (count($errors)>0)
      <div class="alert alert-danger">
        <ul>
        @foreach ($errors->all() as $error)
          <li>{{$error}}</li>
        @endforeach
        </ul>
      </div>
      @endif
			<!-- /.box-header -->
			<!-- form start -->
			<form role="form" method="POST" action="{{route('detcaracesp.update',$detcaracesp->iddetalle_caracteristica_especial)}}" >
				{!!method_field('PUT')!!}
				{!!csrf_field()!!}
        <div class="box-body col-md-6">


                    <div class="form-group">
                      <label for="select" class="">Caracteristica especial</label>
                      <br>
                      <select name="idcaracteristica_especial"  class="form-control" value="{{$detcaracesp->idcaracteristica_especial}}">
                @foreach($caracespefun as $hosp)
                        @if ($hosp->idcaracteristica_especial==$detcaracesp->idcaracteristica_especial)
                      <option value="{{$hosp->idcaracteristica_especial}}" selected>{{$hosp->nombre_caracteristica_especial}}</option>
                      @else
                      <option value="{{$hosp->idcaracteristica_especial}}">{{$hosp->nombre_caracteristica_especial}}</option>
                      @endif
                       @endforeach
                </select>


                    </div>

                    <div class="form-group">
                      <label for="select" class="">Subgrupo  caractecnica tecnica</label>
                      <br>

                      <select name="idvalor_ref_esp"  class="form-control" value="{{$detcaracesp->idvalor_ref_esp}}">
                  @foreach($valorrefesp as $hosp)
                        @if ($hosp->idvalor_ref_esp==$detcaracesp->idvalor_ref_esp)
                      <option value="{{$hosp->idvalor_ref_esp}}" selected>{{$hosp->nombre_valor_ref_esp}}</option>
                      @else
                      <option value="{{$hosp->idvalor_ref_esp}}">{{$hosp->nombre_valor_ref_esp}}</option>
                      @endif
                       @endforeach
                  </select>

                    </div>
                    <div class="form-group">
                      <label for="select" class="">Equipo</label>
                      <br>

                      <select name="idequipo"  class="form-control" value="{{$detcaracesp->idequipo}}">
                  @foreach($equipo as $hosp)
                        @if ($hosp->idequipo==$detcaracesp->idequipo)
                      <option value="{{$hosp->idequipo}}" selected>{{$hosp->nombre_equipo}}</option>
                      @else
                      <option value="{{$hosp->idequipo}}">{{$hosp->nombre_equipo}}</option>
                      @endif
                       @endforeach
                  </select>

                    </div>



                    				</div>
	<div class="box-body col-md-6">
					<div class="form-group">

            <label for="direccion_fab">Estado caracteristica especial</label>
						<input type="text" class="form-control" name="estado_detalle_caracteristica_especial" value="{{$detcaracesp->estado_detalle_caracteristica_especial}}">
					</div>


          <div class="form-group">
            <label for="direccion_fab">Descripcion caracteristica especial</label>
            <input type="text" class="form-control" name="descripcion_detalle_caracteristica_especial" value="{{$detcaracesp->descripcion_detalle_caracteristica_especial}}">
          </div>

          <div class="form-group">
            <label for="direccion_fab">Valor caracteristica tecnica</label>
            <input type="text" class="form-control" name="valor_detalle_caracteristica_especial" value="{{$detcaracesp->valor_detalle_caracteristica_especial}}">
          </div>


</div>
				<!-- /.box-body -->

        <div class="box-footer">

          <a href="{{route('detcaracesp.index')}}">
            <button type="button" name="atras" class="btn btn-warning"><span class="glyphicon glyphicon-arrow-left"></span> </button>
          </a>
          <button class="btn btn-danger" type="reset"><span class="glyphicon glyphicon-remove"></span> </button>
          <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-ok"></span> </button>


      </div>
			</form>
		</div>
		<!-- /.box -->


	</div>

</div>
</section>
@endsection
