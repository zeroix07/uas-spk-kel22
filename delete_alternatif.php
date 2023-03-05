<?php
	include 'db/db_config.php';
	$id = $_GET['id'];
	if($db->delete('alternatif')->where('id_calon_kr='.$id)->count() == 1){
		header('location:tampil_alternatif.php');
	} else {
		header('location:tampil_alternatif.php?error_msg=error_delete');
	}
