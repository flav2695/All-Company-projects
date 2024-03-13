<?php

if (session_status() == PHP_SESSION_NONE) {
    @session_start();
}
include '../includes/Function.php';
include '../models/Model_subway_menu.php';


$action = getRequest('action');
if ($action == 'getmenutype') {
	getmenutype();
}else if ($action == 'Addsubwaymenu'){
  Addsubwaymenu();
}else if ($action == 'Subwaymenuupdate'){
  Subwaymenuupdate();
}


function getmenutype() 
{
   // $menu_type=$_REQUEST['menu_type'];
   $menu= new Model_subway_menu();
   $menutype = $menu->getmenutype();  //$menu_type
   echo json_encode ($menutype);
}


function Addsubwaymenu() 
{

   $Addmenu= new Model_subway_menu();
   $add = $Addmenu->Addsubwaymenu();
   echo json_encode ($add);
}


function Subwaymenuupdate() 
{


      $id=$_REQUEST['id'];
      // $menu_type=$_REQUEST['menu_type'];
       // $menu_type_id=$_REQUEST['menu_type_id'];
      $menu_description=$_REQUEST['menu_description'];
      $created_at=$_REQUEST['created_at'];
      $sixinch=$_REQUEST['6inch'];
      $footlong=$_REQUEST['footlong'];
      $salad=$_REQUEST['salad'];
      $signature_wraps=$_REQUEST['signature_wraps'];
      $sixinch_combo=$_REQUEST['6inch_combo'];
      $signature_wrap_combo=$_REQUEST['signature_wrap_combo'];
      $extra=$_REQUEST['extra'];

   $updatemenu= new Model_subway_menu();
   $update = $updatemenu->Subwaymenuupdate();
   echo json_encode ($update);
}



?>