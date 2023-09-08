<?php
	function connect() {
		$mysqli = new mysqli('localhost', 'homey_plants', 'pl@nt_l0v3R','plants');
		
		if($mysqli->connect_errno != 0) {
			return $mysqli->connect_error;
		}
		else {
			// echo "Connected to database!";
			return $mysqli;
		}
	}

	function getAllPlants() 
	{
		$mysqli = connect();
		$res = $mysqli->query("SELECT * FROM plants WHERE category != 'Flag';");
		
		while($row = $res->fetch_assoc()){
			$plants[] = $row;
		}
		return $plants;
	}

	function getPlantsByCategory($category) {
		$cat = array("indoor", "outdoor", "essential", "flag");

		if( in_array($category, $cat) )
		{
			$mysqli = connect();
			$res = $mysqli->query("SELECT * FROM plants WHERE category = '$category';");

			while($row = $res->fetch_assoc()){
				$plants[] = $row;
			}
		}
		else
		{
			$plants[0] = array( "name" => "Not a valid category.", "category" => "", "description" => "", "image"=>"images\white.jpg");
		}

		
		return $plants;
	}