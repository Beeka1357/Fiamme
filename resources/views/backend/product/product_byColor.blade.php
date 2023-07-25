@extends('admin.admin_dashboard')
@section('admin')
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<div class="page-content">

    <!--breadcrumb-->
    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
        <div class="breadcrumb-title pe-3">Edit Product</div>
        <div class="ps-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Edit Product</li>
                </ol>
            </nav>
        </div>

    </div>
    <!--end breadcrumb-->

    <div class="card">
        <div class="card-body p-4">
            <h5 class="card-title">Add Product By Color</h5>
            <hr />

            <form id="myForm" method="post" action="{{ route('store.product.color', ['id' => $product->id]) }}" enctype="multipart/form-data">
                @csrf

                <div class="row" id="row1">
                    <div class="col-md-4">
                        <label for="inputProductTitle" class="form-label">Select Color For Product</label>

                        <select name="prod[1][product_by_color]" id="" class="form-control">
                            <option value="">Choose Color</option>
                            <option value="red">red</option>
                            <option value="blue">blue</option>
                            <option value="green">green</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group mb-3">
                            <label for="inputProductTitle" class="form-label">Main Thambnail</label>
                            <input name="prod[1][product_by_thambnail]" class="form-control" type="file" id="formFile" onChange="mainThamUrl(this)">

                            <img src="" id="mainThmb" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group mb-3">
                            <label for="inputProductTitle" class="form-label">Multiple Image</label>
                            <input name="prod[1][product_by_multiImgs][]" class="form-control" type="file" multiple>

                            <div class="row" id="preview_img"></div>

                        </div>


                    </div>
                </div>
               <button class="btn btn-primary">Submit</button>
            </form>
            
            <div class="row mt-5">
                    <div class="col-md-6">
                        <button class="btn btn-primary" id="addRow" data-val="1">Add Row</button>
                        <button class="btn btn-danger" id="deleteRow" data-val="1">Delete Row</button>
                    </div>
                </div>
            </tbody>
            </table>
        </div>
    </div>
</div>



<!-- /// End Update Multi Image  ////// -->



<!-- <script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                product_name: {
                    required: true,
                },
                short_descp: {
                    required: true,
                },
                product_thambnail: {
                    required: true,
                },
                multi_img: {
                    required: true,
                },
                selling_price: {
                    required: true,
                },
                product_code: {
                    required: true,
                },
                product_qty: {
                    required: true,
                },
                brand_id: {
                    required: true,
                },
                category_id: {
                    required: true,
                },
                subcategory_id: {
                    required: true,
                },
            },
            messages: {
                product_name: {
                    required: 'Please Enter Product Name',
                },
                short_descp: {
                    required: 'Please Enter Short Description',
                },
                product_thambnail: {
                    required: 'Please Select Product Thambnail Image',
                },
                multi_img: {
                    required: 'Please Select Product Multi Image',
                },
                selling_price: {
                    required: 'Please Enter Selling Price',
                },
                product_code: {
                    required: 'Please Enter Product Code',
                },
                product_qty: {
                    required: 'Please Enter Product Quantity',
                },
            },
            errorElement: 'span',
            errorPlacement: function(error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function(element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            },
        });
    });
</script> -->



<script type="text/javascript">
    function mainThamUrl(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#mainThmb').attr('src', e.target.result).width(80).height(80);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    function mainThamUrl(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#mainThmb2').attr('src', e.target.result).width(80).height(80);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>


<script>
    $(document).ready(function() {
        $('#multiImg').on('change', function() { //on file input change
            if (window.File && window.FileReader && window.FileList && window.Blob) //check File API supported browser
            {
                var data = $(this)[0].files; //this file data

                $.each(data, function(index, file) { //loop though each file
                    if (/(\.|\/)(gif|jpe?g|png|webp)$/i.test(file.type)) { //check supported file type
                        var fRead = new FileReader(); //new filereader
                        fRead.onload = (function(file) { //trigger function on successful read
                            return function(e) {
                                var img = $('<img/>').addClass('thumb').attr('src', e.target.result).width(100)
                                    .height(80); //create image element 
                                $('#preview_img').append(img); //append image to output element
                            };
                        })(file);
                        fRead.readAsDataURL(file); //URL representing the file's data.
                    }
                });

            } else {
                alert("Your browser doesn't support File API!"); //if File API is absent
            }
        });
    });
</script>

<script>
    $('#addRow').on('click', add);
    $('#deleteRow').on('click', remove);

    function add() {
        // console.log('aa');
        // event.preventDefault();
        var row = parseInt($(this).data('val'));
        var newRow = row + 1;
        var html = '';
        html += '<div class="row" id="row'+newRow+'">';
        html += '<div class="col-md-4">';
        html += '<label for="inputProductTitle" class="form-label">Select Color For Product</label>';

        html += '<select name="prod['+newRow+'][product_by_color]" id="" class="form-control">';
        html += '<option value="">Choose Color</option>';
        html += '<option value="red">red</option>';
        html += '<option value="blue">blue</option>';
        html += '<option value="green">green</option>';
        html += '</select>';
        html += '</div>';
        html += '<div class="col-md-4">';
        html += '<div class="form-group mb-3">';
        html += '<label for="inputProductTitle" class="form-label">Main Thambnail</label>';
        html += '<input name="prod['+newRow+'][product_by_thambnail]" class="form-control" type="file" id="formFile" onChange="mainThamUrl(this)">';

        html += '<img src="" id="mainThmb2" />';
        html += '</div>';
        html += '</div>';
        html += '<div class="col-md-4">';
        html += '<div class="form-group mb-3">';
        html += '<label for="inputProductTitle" class="form-label">Multiple Image</label>';
        html += '<input class="form-control" name="prod['+newRow+'][product_by_multiImgs][]" type="file" id="multiImg" multiple="">';

        html += '<div class="row" id="preview_img"></div>';

        html += '</div>';


        html += '</div>';
        html += '</div>';



        $('#myForm').append(html);
        $('#addRow').attr('data-val',newRow);
        $('#addRow').data('val',newRow);
        $('#deleteRow').attr('data-val',newRow);
        $('#deleteRow').data('val',newRow);
    }

    function remove() {
        // event.preventDefault();
        var row = parseInt($(this).data('val'));
        newRow = row - 1;
        console.log(row);
        if(row > 1){
        $('#row' + row).remove();
        $('#addRow').attr('data-val',newRow);
        $('#addRow').data('val',newRow);
        $('#deleteRow').attr('data-val',newRow);
        $('#deleteRow').data('val',newRow);
        }else{
            alert("You can't delete this Row");
        }
         
    }
</script>



@endsection