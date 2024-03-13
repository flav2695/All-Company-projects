<?php
include('./includes/session.php');
@session_start();
?>
<ul class="page-breadcrumb breadcrumb">
    <li>
        <i class="fa fa-home"></i>
        <a onclick="refresh()">Home</a>
    </li>
    <li>
        Subway Menu Listing</span>
    </li>
</ul>
<div class="row">
    <div class="col-md-12" id="table1">
        <div class="portlet light">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-list" aria-hidden="true"></i>
                    <span class="caption-subject bold uppercase">Subway Menu Listing</span>
                </div>
            </div>
        <div class="portlet-body">
             
             <!-- Add New Menu -->
            <div class="row">
             	<div class="col-md-12">
             	    <input type="button" id="addMenu" class="btn btn-primary" value="Add New Menu" onclick="addNewMenu()">
            </div><br>

        <table class="table table-striped table-bordered" id="datatable_ajax" style="margin:0px !important">
            <thead>
                <tr>
                    <th style="width: 50px!important;"> Sr No. </th>
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
            <tbody >
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

<!-- to click on ajax view icon to give view table data on modal popup screen. -->
<div class="modal fade modelr" id="modal-default">
        <div class="modal-lg modal-dialog">
            <div class="modal-content">              
            </div>
        </div>
</div>



<script type="text/javascript">
    $(document).ready(function () {
            var dNow = new Date();
            var currentdate = dNow.getFullYear() + '' + (dNow.getMonth() + 1) + '' + dNow.getDate() + '' + dNow.getHours() + '' + dNow.getMinutes() + '' + dNow.getSeconds();
            var filenm = "Inventory_Request_Quotation" + currentdate;
            // Setup - add a text input to each footer cell
            $('#datatable_ajax tfoot th').each(function (i) {
                // var title = $('#datatable_ajax tfoot th').eq($(this).index()).text();
                // $(this).html('<input type="text" class="form-control form-filter input-sm txt"  placeholder="Search ' + title + '" data-index="' + i + '" />');

            var title = $(this).text();
               if($(this).index() == 0){
             $(this).html('<input type="text" style="display:none"  class="form-control form-filter input-sm txt" "width:160px !important"  placeholder="Search ' +  '" data-index="' + i + '" />');
               }else{
                $(this).html( '<input type="text" class="form-control form-filter input-sm txt" placeholder="Search" />' );
               }

            });

    var table = $('#datatable_ajax').DataTable({
                "lengthChange": false,
                "paging": true,
                "pageLength": 10,
                "ordering": false,
                "language": {
                    "paginate": {
                        "previous": "<",
                        "next": ">",
                    },
                    "zeroRecords": "No Records Found"
                },
                "pagingType": "simple_numbers",
                "dom": 'lBrtip',
                "ajax": {
                    url: 'ajax/getmenudetails.php',
                    type: 'POST',
                },
                buttons: [{
                        extend: 'collection',
                        text: 'Export',
                        buttons: [
                            {
                                extend: 'excel',
                                title: filenm
                            },
                            {
                                extend: 'csv',
                                title: filenm
                            },
                            {
                                extend: 'pdf',
                                title: filenm,
                                extend: 'pdfHtml5',
                                pageSize: 'LEGAL'
                            },
                            {
                                extend: 'print',
                                title: filenm
                            },
                        ]
                    }],    
        });

            table.columns().eq(0).each(function (t) {
                $('input', table.column(t).footer()).on('keyup change', function () {
                    table.column(t).search(this.value.replace(/(;|,)\s?/g, "|"), true, false).draw();
                });
            });
});

// function viewGRN(id) {
//             $('.modal-content').load('ajax/getQuotationview.php?id=' + id, function () {
//                 $('#modal-default').modal({show: true});
//             });
//         }
// function compare(id) {
//             $('#d3').load('InventoryCompareQuotation.php?ids=' + id);

//         }
//         function comparequotes1(id) {
//             $('#d3').load('InventoryPOByCompareQuotes.php?ids=' + id);

//         }


   function addNewMenu(){

   	$('#d3').load('AddSubwayMenu.php');  //Will go to AddSubwayMenu.php file on click of Add button.

   }


   function editsubwaymenu(id){

   	$('.modal-content').load('EditSubwayMenu.php?id='+ id);  //Will go to EditSubwayMenu.php file on click of Edit icon and modal popup shown on this edit icon. <!-- Modal popup -->
     $('#modal-default').modal({show: true}); // Modal popup 
   }


        

</script>