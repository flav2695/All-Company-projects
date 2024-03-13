<?php

if (!isset($_SESSION)) {
    @session_start();
}
include '../includes/Function.php';
include_once '../includes/connect.php';
// $last_key = getRequest('key', 0);
// $start = getRequest('start', 0);
// $maindb = $_SESSION['login_masterdb'];
 //   $status = $_REQUEST['action'];
	// if($status == 1)
	// {
	// 	$condition = "WHERE im.Record_Status != 'D'";
	// }
	// else if($status == 2)
	// {
	// 	$condition="WHERE im.`Total_Stock` > im.`Min_Requirement` and im.Record_Status != 'D'";
	// }
	// else if($status == 3)
	// {
	// 	$condition="WHERE im.Total_Stock < im.Min_Requirement and im.Record_Status != 'D'";
	// }
	// else
	// {
	// 	$condition = "WHERE im.Record_Status != 'D'";
	// }	
		
$query = "SELECT mm.id,tm.menu_type,mm.menu_type_id,mm.menu_description,mm.6inch,mm.footlong,mm.salad,mm.signature_wraps,mm.6inch_combo,mm.signature_wrap_combo,mm.extra,mm.Created_At FROM pun_subway_menu_master mm 
LEFT JOIN `pun_subway_menu_type_master` tm ON tm.id=mm.menu_type_id";

$result = $GLOBALS['connect']->rawQuery($query);

// $action = getRequest('action');

$data = array();
$row_count = 0;
$index = 1;
foreach ($result as $record) {

	// $Total_Stock=$record['Freezer']+$record['Chiller']+$record['Display']+$record['Upper_Dry_Stock']+$record['Lower_Dry_Stock'];
    $array = array();
    $ids=$record['id'];
    $array[] = $index++;
    $array[] = $record['menu_type'];
    $array[] = $record['menu_description'];
    $array[] = $record['6inch'];
    $array[] = $record['footlong'];
    $array[] = $record['salad'];
    $array[] = $record['signature_wraps'];
    $array[] = $record['6inch_combo'];
    $array[] = $record['signature_wrap_combo'];
    $array[] = $record['extra'];
    $array[] = $record['Created_At'];
 

    $array[] = '<a  title="viewstock" class="btn btn-circle btn-danger" style="padding:2.5px 5.5px;" onclick="viewstock(\'' . $ids . '\')"><span><i class="fa fa-eye" ></i></span></a><a  title="editsubwaymenu" class="btn btn-circle btn-danger" style="padding:2.5px 5.5px;" onclick="editsubwaymenu(\'' . $ids . '\')"><span><i class="fa fa-edit" ></i></span></a>';
	// $array[] = $record['Auto_Id'];
    $data[] = $array;
}
echo json_encode(array(
    'data' => $data,
));
?>