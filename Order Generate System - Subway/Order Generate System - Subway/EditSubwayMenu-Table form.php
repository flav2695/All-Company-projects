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

                 <div class="modal-body">
            </div>

            
    <div class="portlet-body hack1">
      <div class="panel-body hack2">     
        <table class="table table-striped table-bordered" id="subwaymenuform" style="margin:0px !important">
            <thead>
                <tr>
                    <th style="width: 50px!important;">Sr No. </th>
                    <th style="width: 102px!important;">Menu type </th>
                    <th style="width: 90px!important;">Menu Description</th>
                    <th style="width: 146px!important;">6inch</th>
                    <th style="width: 146px!important;">Footlong</th>
                    <th style="width: 146px!important;">Salad</th>
                    <th style="width: 146px!important;">Signature Wraps</th>
                    <th style="width: 146px!important;">6inch Combo</th>
                    <th style="width: 146px!important;">Signature wrap combo</th>
                    <th style="width: 146px!important;">Extra</th>
                    <th style="width: 130px!important;">Created At</th>
                    <th style="width: 90px!important;">Action</th>
                </tr>                          
            </thead>
            <tbody>
                           <?php
                                foreach($query_result as $data) {
                           ?>
                                <tr>
                                    <td><?php echo $data['id'];?></td> <!-- serial number 1 to 10.. -->
                                    <td><input type="text" name="menu_type" value="<?php echo $data['menu_type']; ?>"></td>
                                    <td><input type="text" name="menu_description" value="<?php echo $data['menu_description']; ?>"></td>
                                    <td><input type="text" name="6inch" value="<?php echo $data['6inch']; ?>"></td>
                                    <td><input type="text" name="footlong" value="<?php echo $data['footlong']; ?>"></td>
                                    <td><input type="text" name="salad" value="<?php echo $data['salad']; ?>"></td>
                                    <td><input type="text" name="signature_wraps" value="<?php echo $data['signature_wraps']; ?>"></td>
                                    <td><input type="text" name="6inch_combo" value="<?php echo $data['6inch_combo']; ?>"></td>
                                    <td><input type="text" name="signature_wrap_combo" value="<?php echo $data['signature_wrap_combo']; ?>"></td>
                                    <td><input type="text" name="extra" value="<?php echo $data['extra']; ?>"></td>
                                    <td><input type="text" name="created_at" value="<?php echo $data['created_at']; ?>"></td> 
                                    
                                    <td><input type="submit"  class="btn btn-primary btn" data-toggle="modal" data-target="#myModal" name="subwaymenu" id="sub" value="Update" /></td> <!-- update manually -->  <!-- onclick="Updatesubwaymenu();" --> <!--  Modal Popup -->
                                   
                                </tr>
                             <?php } ?>
                        </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <th>Menu type </th>
                    <th>Menu Description</th>
                    <th>6inch</th>
                    <th>Footlong</th>
                    <th>Salad</th>
                    <th>Signature Wraps</th>
                    <th>6inch Combo</th>
                    <th>Signature wrap combo</th>
                    <th>Extra</th>
                    <th>Created At</th>
                     <td></td>
                </tr>
            </tfoot>
        </table>
       </div>
     </div>
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

$(document).ready(function(){

                // var action = 'getreport';
                // var qty=$('#quantity').val();
                // var dataString = "&action=" + action+"&quantity="+qty;
    });   


  
// Edit for single row and update by MVC
//   function Updatesubwaymenu(){

// $("#subwaymenuform").on('submit', (function (e) {
//     event.preventDefault();
//     var id ='<?php echo $id;?>'; 
//          $('#sub').prop("disabled",true);
//         $.ajax({
//             type: 'POST',
//             cache: false,
//             data: new FormData(this),
//             url: 'controller/Contr_subway_menu.php?action=Subwaymenuupdate&id='+id, 
//             contentType: false,
//             processData: false,
//             success: function (data)
//             {
//                 // $('#d3').load('subway_menu_listing.php?id=<?php echo $data['id']; ?>')
//                       $('#sub').load('subway_menu_listing.php');               
//                       toastr.success('Data Updated successfully'); 
             
//             }
//         });
      
//     }));
// }


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
        $('#sub').load('subway_menu_listing.php');               
        toastr.success('Data Updated successfully'); 
        
        }
    });
});


       
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