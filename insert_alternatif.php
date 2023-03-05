<?php
include 'db/db_config.php';
extract($_POST);
$target_dir = "assets/foto_calon_alternatif/";
$file_name = $_FILES['foto']['name'];
$target_file = $target_dir . basename($_FILES['foto']['name']);
$file_type = $_FILES['foto']['type'];
if (empty($file_type)) {
	if ($file_type == 'jpg' || $file_type == 'gif' || $file_type == 'jpeg') {
		$file_type = 'image/' . $file_type;
	} else {
		header('location:input_alternatif.php?error_msg=error_type');
	}
}

if ($_FILES['foto']['size'] < 2000000) {
	//move_uploaded_file($_FILES['foto']['tmp_name'], $target_file);
	move_uploaded_file($_FILES["foto"]["tmp_name"], $target_dir . $_FILES["foto"]["name"]);
	$db->insert('alternatif', "'','$nama'")->count();
	header('location:tampil_alternatif.php');
	//} else {
	//	header('location:input_alternatif.php?error_msg=error_upload');
	//} 
} else {
	header('location:input_alternatif.php?error_msg=error_ukuran');
}
