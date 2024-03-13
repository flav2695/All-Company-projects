<?php
include('./includes/session.php');
?>
<style>
    .center {
        display: block;
        margin-left: 50%;
        margin-right: 50%;
        width: 5%;
    }
    .ms-container .ms-selectable li.disabled, .ms-container .ms-selection li.disabled {
        background-color: #ffffff !important;
        color: #2f353b !important;
        cursor: text !important;
        }
    .form-horizontal .form-group.form-md-line-input {
        padding-top: 10px;
        margin: 0 -16px 7px;
    }
</style>
<ul class="page-breadcrumb breadcrumb">
        <li>
            <i class="fa fa-home"></i>
            <a onclick="refresh();">Home</a>
        </li>
        <li>
            Add Subway Menu
        </li>
    </ul>
<div class="portlet light">
    <div class="portlet-title">
        <div class="caption font-dark">
            <i class="icon-settings font-dark"></i>
            <span class="caption-subject bold uppercase">Add Subway Menu</span>
        </div>
    </div>

    <div class="portlet-body">
        <form action="" class="form-horizontal" id="Subwaymenuform" name="VendorDetails" method="post">
            <div class="form-group form-md-line-input">
                <div class="col-md-12" >                             
                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Menu Type :</label>
                        </div>
                        <div class="col-md-7">
                            <select id="menu_type" name="menu_type" class="form-control mandatory" onclick="getmenutype(this.value);" autocomplete="off">
<!--                                 <option value="selected" hidden>Select Menu Type :</option> -->
                            </select>
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Date :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="Date" name="Created_At" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div> 

                </div>
            </div>
            <div class="form-group form-md-line-input">
                <div class="col-md-12" >
                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Menu Description :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="menu_description" name="menu_description" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">6inch :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <textarea rows="1" cols="38" id="6inch" name="6inch" class="form-control mandatory"></textarea>                
                            <div class="form-control-focus"></div>
                        </div>
                    </div> 
                </div> 
            </div>
            <!-- </div> -->
            <div class="form-group form-md-line-input">
                <div class="col-md-12" >
                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                             <label class="form-label">Footlong :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="footlong" name="footlong" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                             <label class="form-label">Salad :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="salad" name="salad" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>
  
                </div>
            </div>
            <div class="form-group form-md-line-input">
                <div class="col-md-12" >

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                             <label class="form-label">Signature Wraps :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="signature_wraps" name="signature_wraps" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">6inch Combo :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="6inch_combo" name="6inch_combo" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>                               
                </div>
            </div>

            <div class="form-group form-md-line-input">
                <div class="col-md-12" >
                   <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Signature wrap combo :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="signature_wrap_combo" name="signature_wrap_combo" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Extra :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="extra" name="extra" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>
                 </div>
            </div>   


            
            <div class="row  form-group form-md-line-input">
                <div class="col-md-12">
                    <center>
                        <input type="submit" name="submit" id="submit" class="btn btn-primary">
                        <input type="button" id="cancel" class="btn btn-danger" value="cancel">
                    </center>
                </div>                 
            </div>
        </form>
    </div>
</div>
<!-- <script src="assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js" type="text/javascript"></script> -->
<script type="text/javascript">
    $(document).ready(function () {
        getmenutype();
    });


    //for dropdown : Menu type
    function getmenutype() {
        

        $.ajax({
            cache: false,
            url: 'controller/Contr_subway_menu.php?action=getmenutype',
            type: 'POST',
            contentType: false,
            processData: false,
            success: function (response) {
                var d = JSON.parse(response);
                var dlen = d.length;
                // alert(dlen);
                // console.log(dlen);
                // print_r(dlen);
                 // $('#menu_type').empty();
                    // $('#menu_type').find('option').val('select').children().remove().end().append();
                     $('#menu_type').append('<option value="">Select Menu Type</option>');
                for (o = 0; o < dlen; o++)
                {
                     $('#menu_type').append('<option value="' +d[o].id+ '">'+d[o].menu_type+'</option>');
                // alert(d[o]);
                // console.log(d[o]);
                // print_r(d[o]);
                    
                }
            }

        });
    }

              
        // Current date in date input field:
        $(document).ready(function(){

            $('#Date').datetimepicker({

                    format: 'Y-m-d H:i:s',

                    formatTime: 'H:i:s',

                    formatDate: 'Y-m-d',

                    step: 1,

                    maxDate: new Date() ,

                    maxTime: new Date() ,

                    disabledTimeIntervals: [

                    [moment(), moment().hour(24).minutes(0).seconds(0)]

                    ],

                    defaultTime: '23:59'

                });

            });   

      
        //on click of submit button:
       $("#Subwaymenuform").on('submit', (function (e) {
         event.preventDefault();
         $('#submit').prop("disabled",true);
        $.ajax({
            type: 'POST',
            cache: false,
            data: new FormData(this),
            url: 'controller/Contr_subway_menu.php?action=Addsubwaymenu',
            contentType: false,
            processData: false,
            success: function (data)
            {
               toastr.success('Data Added Successfully');
            }
        });
      
    }));



</script>



