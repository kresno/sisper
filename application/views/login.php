<!doctype html>
<html lang="en">
  <head>
  	<title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="<?=base_url()?>assets/plugins/fontawesome-free/css/all.min.css">
	
	<link rel="stylesheet" href="<?=base_url()?>assets/login/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(<?=base_url()?>assets/login/images/bg-1.jpg);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sistem Informasi Persediaan Barang</h3>
			      		</div>
			      	</div>
				<form action="<?=site_url('auth/process')?>" class="signin-form" method="POST">
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Username</label>
			      			<input type="email" name="username" class="form-control" placeholder="Username" required>
			      		</div>
		            <div class="form-group mb-3">
		            	<label class="label" for="password">Password</label>
		              <input type="password" name="password" class="form-control" placeholder="Password" required>
		            </div>
					<div class="form-group mb-3">
		            	<label class="label" for="tahun">Pilih Tahun</label>
						<select class="form-control" name="tahun" required>
							<option value="">==Pilih Tahun==</option>
							<option value="2022">2022</option>
							<option value="2022">2023</option>
						</select>
		            </div>
		            <div class="form-group">
		            	<button type="submit" name="login" class="form-control btn btn-primary rounded submit px-3">Sign In</button>
		            </div>
					
		    	</form>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="<?=base_url()?>assets/login/js/jquery.min.js"></script>
  	<script src="<?=base_url()?>assets/login/js/popper.js"></script>
  	<script src="<?=base_url()?>assets/login/js/bootstrap.min.js"></script>
  	<script src="<?=base_url()?>assets/login/js/main.js"></script>

	</body>
</html>

