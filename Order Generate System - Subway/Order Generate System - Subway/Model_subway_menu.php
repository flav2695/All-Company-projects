<?php

include '../includes/connect.php';
class Model_subway_menu 
{
	public function getmenutype()
	{
		$query="SELECT tm.id, tm.menu_type from pun_subway_menu_type_master tm";
		$queryresult = $GLOBALS['connect']->rawQuery($query);
		return $queryresult;		
	}

	public function Addsubwaymenu()
	{
		// $value1=$_REQUEST['menu_type'];
    	$value2=$_REQUEST['menu_description'];
    	$value3=$_REQUEST['Created_At'];
    	$value4=$_REQUEST['6inch'];
    	$value5=$_REQUEST['footlong'];
    	$value6=$_REQUEST['salad'];
    	$value7=$_REQUEST['signature_wraps'];
    	$value8=$_REQUEST['6inch_combo'];
    	$value9=$_REQUEST['signature_wrap_combo'];
    	$value10=$_REQUEST['extra'];
  
    		

    		$query="INSERT INTO pun_subway_menu_master (menu_description,Created_At,6inch,footlong,salad,signature_wraps,6inch_combo,signature_wrap_combo,extra) VALUES ('$value2','$value3','$value4','$value5','$value6','$value7','$value8','$value9','$value10')"; //menu_type,   '$value1',
    	
        $query_result = $GLOBALS['connect']->rawQuery($query);	
	

}





function Subwaymenuupdate(){ //$id,$menu_description,$created_at,$sixinch,$footlong,$salad,$signature_wraps,$sixinch_combo,$signature_wrap_combo,$extra

        $id=$_REQUEST['id'];
		// $menu_type=$_REQUEST['menu_type'];
	 //    $menu_type_id=$_REQUEST['menu_type_id'];
    	$menu_description=$_REQUEST['menu_description'];
    	$created_at=$_REQUEST['created_at'];
    	$sixinch=$_REQUEST['6inch'];
    	$footlong=$_REQUEST['footlong'];
    	$salad=$_REQUEST['salad'];
    	$signature_wraps=$_REQUEST['signature_wraps'];
    	$sixinch_combo=$_REQUEST['6inch_combo'];
    	$signature_wrap_combo=$_REQUEST['signature_wrap_combo'];
    	$extra=$_REQUEST['extra'];

    // $count=count($id);

    //    for ($i=0; $i < $count; $i++) {
          
    $query="SELECT * FROM pun_subway_menu_master";
    $query_result = $GLOBALS['connect']->rawQuery($query);

    $updatequery = "UPDATE `pun_subway_menu_master` SET menu_description='$menu_description',created_at=now(),6inch='$sixinch',footlong='$footlong',salad='$salad',signature_wraps='$signature_wraps',6inch_combo='$sixinch_combo',signature_wrap_combo='$signature_wrap_combo',extra='$extra' WHERE id='$id' "; //menu_type_id='$menu_type_id', menu_type='$menu_type',
    $query_result = $GLOBALS['connect']->rawQuery($updatequery);
    // echo $updatequery;

        // }
   }


}



?>