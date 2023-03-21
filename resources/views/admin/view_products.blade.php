@extends('admin.master')
@section('body')

<h1>View Products</h1>
<ol class="breadcrumb">
	<li><a href="{{ route('admin') }}"><i class="fa fa-dashboard"></i> Dashboard</a></li>
	<li class="active">View Products</li>
</ol>
</section>

<section class="content">

<div class="box">
<div class="box-header with-border"><h3 class="box-title">Add Products</h3></div>
<div class="box-body">
	<form action="{{route('save-products')}}" method="post" enctype="multipart/form-data" autocomplete="off">
        @csrf
        <div class="col-md-4">
			<div class="form-group">
				<label>Category <span class="required">*</span></label>
				<select class="form-control" name="category_id" id="category_id" required>
					<option value="">Select Category</option>
					@foreach($category as $DT)
					<option value="{{$DT->category_id}}">{{$DT->category}}</option>
					@endforeach
				</select>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
				<label>Product Name <span class="required">*</span></label>
				<input type="text" class="form-control" name="products" id="products" placeholder="Product Name" required>
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label>Price <span class="required">*</span></label>
				<input type="number" class="form-control" name="price" id="price" placeholder="Price" required>
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label>Title Image <span class="required">(1:1)</span></label>
				<input type="file" accept=".jpg,.webp,.png"  class="form-control" name="image" id="image" required>
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<label>Images <span class="required">(1:1)</span></label>
				<input type="file" accept=".jpg,.webp,.png"  class="form-control" name="images[]" multiple>
			</div>
		</div>

		<div class="col-md-4">
			<div class="form-group">
				<input type="hidden" id='products_id' name="products_id"/>
				<input type="submit" class="btn btn-primary" name="filter" value="Save" style="margin-top: 25px;">
				<input type="reset" class="btn btn-primary" name="reset" onclick="$('#submit').val('Save');"  value="Reset" style="margin-top: 25px;margin-left: 10px;">
			</div>
		</div>
	</form>
</div>
</div>

<div class="box">
<div class="box-header with-border"><h3 class="box-title">Import Products</h3></div>
<div class="box-body">
	<form action="{{ route('import') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="col-md-4">
			<div class="form-group">
				<label>Import File <span class="required">(xlsx, xls)</span></label>
				<input type="file" name="file" class="form-control" accept=".xlsx,.xls" required>
			</div>
		</div>
		<div class="col-md-4">
			<div class="form-group">
        		<button  class="btn btn-primary" style="margin-top: 25px;">Import Data</button>
        	</div>
        </div> 
		<div class="col-md-4">
			<div class="form-group">
        		<a href="{{asset('uploads/excel-format.xlsx')}}" class="btn btn-danger pull-right" download style="margin-top: 25px;"><i class="fa fa-download"></i> Download Excel Format</a>
        	</div>
        </div>        
    </form>
</div>
</div>

<div class="box">
<div class="box-header with-border"><h3 class="box-title">View Products</h3></div>
<div class="box-body">
	@include('admin.flash-message')
	<div class="col-md-12 filter-div"></div>
	<div class="col-md-12">
		<div class="table-responsive">
			<table class="table table-bordered table-hover dataTable">
				<thead>
					<tr>
						<th class="w-50">#</th>
						<th>Category</th>
						<th>Products</th>
						<th>Price</th>
						<th class="w-50">Title&nbsp;Image</th>
						<th class="w-50">Image&nbsp;1</th>
						<th class="w-50">Image&nbsp;2</th>
						<th class="text-center" colspan="2">Actions</th>
					</tr>
				</thead>
				<tbody>
					@php $i = 0; @endphp
					@foreach($products as $DT)
						@php $i++; @endphp
						<tr>
							<td>{{$i}}</td>
							<td>{{$DT->category}}</td>
							<td>{{$DT->products }}</td>
							<td>{{ $DT->price}}</td>
							@php

							$DT->image = asset('uploads/products/'.$DT->image);
							$DT->image_1 = asset('uploads/products/'.$DT->image_1);
							$DT->image_2 = asset('uploads/products/'.$DT->image_2);

							@endphp

							<td class="text-center">
								<img class="table-thubnail" onclick="view_image_popup('{{ $DT->image; }}')" src="{{ $DT->image; }}">
							</td>

							<td class="text-center">
								<img class="table-thubnail" onclick="view_image_popup('{{ $DT->image_1; }}')" src="{{ $DT->image_1; }}">
							</td>

							<td class="text-center">
								<img class="table-thubnail" onclick="view_image_popup('{{ $DT->image_2; }}')" src="{{ $DT->image_2; }}">
							</td>
							<td class="text-center w-29">
								<a href="#"  onclick="editdata({{ $DT->products_id; }})" title="Edit Products"><i class="fa fa-pencil-square"></i></a>
							</td>
							<td class="text-center w-29">
								<a href="#" onclick="deletedata({{ $DT->products_id; }})" title="Delete Products" data-toggle="modal" data-target="#DeleteModal"><i class="fa fa-trash"></i></a>
							</td>
						</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
</div>
</div>

<!-- DELETE MODAL -->
<div class="modal fade" id="DeleteModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Delete Products</h4>
			</div>
			<div class="modal-body">
				<p>Do You Want To Delete Selected Products?</p>
			</div>
			<div class="modal-footer">
				<form action="{{route('delete-products')}}" method="post">
        			@csrf
					<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
					<input type="hidden" name="delete_id" id="delete_id">
					<input type="submit" class="btn btn-danger" name="delete" value="Delete">
				</form>
			</div>
		</div>
	</div>
</div>
<!-- END OF DELETE MODAL -->

@endsection

@push('scripts')
<script type="text/javascript">
function editdata(products_id)
{
	$.ajax({
		type: 'POST',
		url: '/fetch-product',
		data: {
			products_id: products_id
		},
		success: function(response) {
			if(response.success){
				data = response.data;
				$('#products_id').val(data.products_id);
				$('#category_id').val(data.category_id);
				$('#products').val(data.products);
				$('#price').val(data.price);
				$('#image').removeAttr("required");
				$('#submit').val('Update');
			}
		}
	});	
}

function deletedata(delete_id)
{
	$('#delete_id').val(delete_id);	
}
</script>
@endpush