<?php
	require "functions.php";

	if(isset($_POST['category'])){
		$category = $_POST['category'];

		if($category === ""){
			$plants = getAllPlants();
		}
		else {
			$plants = getPlantsByCategory($category);
		}

		echo json_encode($plants);
	}