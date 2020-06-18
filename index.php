<?php 
session_start();
ob_start();
require_once "header.php"; require_once './config/database.php';
require"config/config.php";
spl_autoload_register(function($class_name) {
	require	'./app/Models/' . $class_name . '.php';
});
$page = (isset($_GET['page'])) ? $_GET['page'] : 1;
$perPage = 6;
$objproducts = new Product();
$products = $objproducts->getAllItems();
//Tổng số dòng
$totalRow = count($products);
$pageLinks = $objproducts->createPageLinks($totalRow, $perPage);

//$product: tập hợp con sản phẩm trong một trang
$products = $objproducts->createPageItems($page, $perPage, $products);
if (isset($_SESSION['current_user'])) 
{
	$current_user = $_SESSION['current_user'];
} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="top-sub">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<form action="search_result.php" method="GET">
						<div class="row">
							<div class="col-sm-8"><input class="search" type="text" id="search" name="search_query" placeholder="Search" value="" ></div>
							<div class="col-sm-4">
								<button type="submit" name="submit_search" class="button-search" value="true">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-5">
					<div class="cart" style="float: left; padding: 10px;">
						<a href="cart.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
							<?php 
							if (isset($_SESSION['cart'])) {
								$total_qty = 0;
								foreach ($_SESSION['cart'] as $key => $value) {
									$total_qty += $value;
								}
								echo '(' . $total_qty .')';
							}
							?>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="right-side">
						
						<div class="dropdown">
							<div class="top-btn" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" >
								<?php if (isset($current_user)) {
									echo $current_user[0]['user_fullname'];
								}else{
									echo "Account";
								} ?>
								<span class="caret"></span>
							</div>
							<ul class="dropdown-menu">
								<?php if (isset($current_user)) {
									echo '<li><a href="myaccount.php?username=' . $current_user[0]["user_name"] .'">Manage my account</a></li>';
									echo '<li><a href="logout.php">Logout</a></li>';
								}else{
									echo "<li><a href='login.php'>Login</a></li>";
									echo "<li><a href='formregistration.php' >Register</a></li>";
								} ?>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="top-header">
				<div class="container">
					<div class="sub-menu">
						<nav class="navbar navbar-default" role="navigation">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="index.php"><img src="public/images/posbrize-logo-1448548663.jpg" alt="logo"></a>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse navbar-ex1-collapse">
									<ul class="nav navbar-nav">
										<li class="active"><a href="index.php"  >Trang chủ</a></li>
										<li ><a href="#" >Máy tính</a></li>
										<li ><a href="#" >Điện thoại</a></li>
										<li ><a href="#" >Thiết bị khác</a></li>
									</ul>



								</div><!-- /.navbar-collapse -->
							</div>
						</nav>
					</div>


					<div id="myslide" class="carousel slide" data-ride= "carousel">
						<ol class="carousel-indicators">
							<li data-target = "#myslide" data-slide-to="0" class="active"></li>
							<li data-target = "#myslide" data-slide-to="1" ></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img name="slide" src="public//images/asus-x45c-2372g50_clip_image004.png" alt="" class="img-responsive">
							</div>
							<div class="item">
								<img name="slide" src="public//images/asus-x45c-2372g50_clip_image004.png" alt="" class="img-responsive">
							</div>
						</div>
						<a class="carousel-control left" href="#myslide" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="carousel-control right" href="#myslide" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
			</div>
			<div class="top-content">
				<!-- <div class="container">
					<div class="row">
						<div class="col-md-4">
							<div class="top-item"> 
								<a href="#"><img src="public/images/top1.jpg" alt="img-item1" class="img-responsive"></a>
								<p class="text-banner">
									<span>look book</span>
								</p>
							</div>	
						</div>
						<div class="col-md-4">
							<div class="top-item"> 
								<a href="#"><img src="public/images/top5.jpg" alt="img-item1" class="img-responsive"></a>
								<p class="text-banner">
									<span>look book</span>
								</p>
							</div>	
						</div>
						<div class="col-md-4">
							<div class="top-item"> 
								<a href="#"><img src="public/images/top3.png" alt="img-item1" class="img-responsive"></a>
								<p class="text-banner">
									<span>look book</span>
								</p>
							</div>	
						</div>
					</div>
				</div>	 -->
			</div>
			<div class="header-product">
				<div class="container">
					<div class="pos-title">
						<h2>Sản phẩm tiêu biểu</h2>
					</div>
				</div>
			</div>
			<div class="product">
				<div class="container">
					<div class="row">
						<?php foreach ($products as $key => $product): ?>
							<div class="col-md-4">
								<div class="item-product">
									<a class="new-box" href="#">
										<span class="new-label">New</span>
									</a>
									<a href="Details.php?id=<?php echo $product['product_id']; ?>"><img src=<?php echo 'public/uploads/'.$product['product_image']; ?>></a>
									<div class="evaluate-product">
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>

										</a>

										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
										</a>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
										</a>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
										</a>

										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
										</a>
									</div>
									<h3><a href="Details.php?id=<?php echo $product['product_id']; ?>"><?php echo $product['product_name']; ?></a></h3>
									<div class="price-product">
										<b>£ <?php echo  $product['product_price']; ?>  VND </b>&nbsp&nbsp 
									</div>
									<div class="and-cart">
										<a href="cart.php?action=add&id=<?php echo $product['product_id']; ?>&qty=1">Add Cart</a>
									</div>

								</div>
							</div>	
						<?php endforeach ?>

					</div>
				</div>
			</div>
			<div class="link-page">
				<?php
					if ($page !=1 ) {
					 	$pev = $page -1;
					 	echo "<a href='?page=$pev'><</a>";
					 } 
				?>
				<?php echo  $pageLinks ?>
				<?php
				 	$totalPage = ceil($totalRow/$perPage);
					if ($page !=$totalPage) {

					 	$next = $page +1;
					 	echo "<a href='?page=$next'>></a>";
					 } 
				 ?>
			</div>
			<?php include"footer.php" ;?>
		</div>
	</div>
</body>
</html>
