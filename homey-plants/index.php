<?php include "functions.php" ?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

	<h1>
		<img class="logo" src="files\leaf-silhouette.png" alt="logo">
		HOMEY PLANTS
		<img class="logo" src="files\leaf-silhouette.png" alt="logo">
	</h1>

	<hr>
	
	<h2>
		Look for Plants & Essentials!
	</h2>
	
	<hr>
	
	<!-- <form>
		search by category
		<input type="text" name="category" placeholder="Enter Category">
		<input type="submit" >
	</form> -->

	
	<?php
		$category = isset($_GET['category'])?strtolower($_GET['category']):"";
	
		if( $category == "" )
		{ $plants = getAllPlants(); }
		else 
		{ $plants = getPlantsByCategory($category); }
		
		?>
		<div class="row">

		<?php
		foreach($plants as $plants) 
		{
		?>
		
		<div class="column">
			<img src="<?php echo $plants['image'] ?>" class="plant-img" /> 
				<h1 class="plant-name"><?php echo $plants['name'] ?></h1>
			<div class="overlay">
				<div class="category"><?php echo strtoupper($plants['category']) ?></div>
				<div class="description"><?php echo $plants['description'] ?></div>
			</div>
			
		</div>
		<?php	
		}
	?>

</body>

</html>