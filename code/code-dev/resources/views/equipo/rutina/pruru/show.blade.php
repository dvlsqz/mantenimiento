@extends ('layouts.admin')
@section ('contenido')

<section class="content-header">
      <h1>
        Rutinas
        <small>Prueba rutina</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-th"></i> Rutinas</a></li>
        <li class="active">Prueba rutina</li>
      </ol>
</section>
	<section class="content">
<div class="row">
	<!-- left column -->
	<div class="col-md-12">
		<!-- general form elements -->
		<div class="box box-success">
			<div class="box-header with-border">
				<h3 class="box-title">Nueva prueba rutina</h3>
			</div>
			<!-- /.box-header -->
			<!-- form start -->


				<div class="box-body col-md-12">
					<div class="form-group">
						<label for="direccion_fab">Nombre prueba rutina</label>
            <p>{{$pruru->prueba_rutina}}</p>
					</div>



				</div>

				<!-- /.box-body -->

        <div class="box-footer">
    <a href="{{route('pruru.index')}}">
            <button type="button" name="atras" class="btn btn-warning"><span class="glyphicon glyphicon-arrow-left"></span> </button>
          </a>
        </div>

		</div>
		<!-- /.box -->


	</div>

</div>
</section>
@push ('scripts')
<script>
$('#liRutinas').addClass("treeview active");
$('#liCarap').addClass("treeview active");

$('#liPrueba').addClass("active");

</script>
@endpush
@endsection
