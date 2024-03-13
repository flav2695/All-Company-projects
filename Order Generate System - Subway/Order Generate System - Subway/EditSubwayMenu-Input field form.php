<!-- <?php
include('./includes/session.php');
@session_start();
?> -->

<?php 
include 'includes/connect.php';

 $id=$_REQUEST['id'];  

$query="SELECT * FROM `pun_subway_menu_master` WHERE id='$id' ";  // WHERE Id='$id' 
$query_result = $GLOBALS['connect']->rawQuery($query);


 ?>


<style>
    .table {
  width: 100%;
  border-collapse: collapse;
}

.tdtable { 
  border: 1px solid black;
}

/* try removing the "hack" below to see how the table overflows the .body */
.hack1 {   /*Extend portlet light table beyond screen*/
  display: table;
  table-layout: fixed;
  width: 100%;
}

.hack2 {      /*Extend portlet light table beyond screen*/
  display: table-cell;
  overflow-x: auto;
  width: 100%;
}


</style>



<ul class="page-breadcrumb breadcrumb">
    <li>
        <i class="fas fa-plus fa-2x"></i>
        <a onclick="refresh()">Modal</a>
    </li>
    <li>
        <i class="fa fa-home"></i>
        <a onclick="refresh()">Home</a>
    </li>
    <li>
        Edit Subway Menu</span>
    </li>
</ul>
<div class="row">
    <div class="col-md-12" id="table1">
        <div class="portlet light">
            <div class="portlet-title">

                <div class="modal-header"> <!-- Modal popup --> 
                  <button type="button" class="close" data-dismiss="modal">&times;</button> <!-- Modal popup -->

                   <div class="caption">
                    <i class="fa fa-list" aria-hidden="true"></i>
                    <span class="caption-subject bold uppercase modal-title">Edit Subway Menu</span>
                </div>

                 <div class="modal-body"> <!-- Modal-Popup -->
            </div>

                           <?php
                                foreach($query_result as $data) {  //Converted $query_result as $data open bracket
                           ?>    

     <div class="portlet-body">
        <form action="" class="form-horizontal" id="Subwaymenuform"  method="post">
            <div class="form-group form-md-line-input">
                <div class="col-md-12" >                             
                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Menu Type :</label>
                        </div>
                       <div class="col-md-7">
                            <input type="text" id="menu_type" name="menu_type" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus" value="<?php echo $data['menu_type']; ?>"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Date :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="Date" name="created_at" class="form-control mandatory" autocomplete="off">
                            <div class="form-control-focus" value="<?php echo $data['created_at']; ?>"></div>
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
                            <input type="text" id="menu_description" name="menu_description" class="form-control mandatory" autocomplete="off" value="<?php echo $data['menu_description']; ?>">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">6inch :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="6inch" name="6inch" class="form-control mandatory" autocomplete="off" value="<?php echo $data['6inch']; ?>">             
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
                            <input type="text" id="footlong" name="footlong" class="form-control mandatory" autocomplete="off" value="<?php echo $data['footlong']; ?>">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                             <label class="form-label">Salad :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="salad" name="salad" class="form-control mandatory" autocomplete="off" value="<?php echo $data['salad']; ?>">
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
                            <input type="text" id="signature_wraps" name="signature_wraps" class="form-control mandatory" autocomplete="off" value="<?php echo $data['signature_wraps']; ?>" >
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">6inch Combo :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="6inch_combo" name="6inch_combo" class="form-control mandatory" autocomplete="off" value="<?php echo $data['6inch_combo']; ?>">
                            <div class="form-control-focus" ></div>
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
                            <input type="text" id="signature_wrap_combo" name="signature_wrap_combo" class="form-control mandatory" autocomplete="off" value="<?php echo $data['signature_wrap_combo']; ?>">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>

                    <div class="form-group col-md-6">
                        <div class="col-md-4">
                            <label class="form-label">Extra :</label><span style="color: red;"> *</span>
                        </div>
                        <div class="col-md-7">
                            <input type="text" id="extra" name="extra" class="form-control mandatory" autocomplete="off" value="<?php echo $data['extra']; ?>">
                            <div class="form-control-focus"></div>
                        </div>
                    </div>
                 </div>
            </div>  

                     <?php } ?>  <!-- Converted $query_result as $data close bracket -->


            <input type="submit" class="btn btn-primary btn" data-toggle="modal" data-target="#myModal" id="sub" value="Update" />

              </form>
          </div>
      </div>
  </div>
</div>

<!-- Modal popup -->
<div class="modal fade modelr" id="modal-default">
        <div class="modal-lg modal-dialog">
            <div class="modal-content">              
            </div>
        </div>
</div>

<!-- Modal popup -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>

<script type="text/javascript">



// Modal Popup for single row
 
 $('#sub').on('click',function (e) {

        e.preventDefault();
        var id ='<?php echo $id;?>'; 
        var form = $("#myModal")[0]; // Modal popup 
        var data = new FormData(form);
        $.ajax({
        cache:false,
        type:'POST',
        data:data,
        contentType: false,
        processData: false,
        url: 'controller/Contr_subway_menu.php?action=Subwaymenuupdate&id='+id, 
        // url:'ajax/getmenudetails.php?', // + dataString
        success: function(response){
        $('#d3').load('subway_menu_listing.php?id=<?php echo $data['id']; ?>')          
        toastr.success('Data Updated successfully'); 
        
        }
    });
});



 // $("#Subwaymenuform").on('submit', (function (e) {
 //    event.preventDefault();
 //    var id ='<?php echo $id;?>'; 
 //    var form = $("#myModal")[0]; // Modal popup 
 //         $('#sub').prop("disabled",true);
 //        $.ajax({
 //            type: 'POST',
 //            cache: false,
 //            data: data,
 //            url: 'controller/Contr_subway_menu.php?action=Subwaymenuupdate&id='+id, 
 //            contentType: false,
 //            processData: false,
 //            success: function (response)
 //            {
 //                      $('#d3').load('subway_menu_listing.php?id=<?php echo $data['id']; ?>')             
 //                      toastr.success('Data Updated successfully'); 
             
 //            }
 //        });
      
 //    }));


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



</script>