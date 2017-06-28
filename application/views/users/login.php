<?php echo form_open('users/login'); ?>
<div class="pmd-content" id="content">


	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center"><?php echo $title; ?></h1>
			<div class="input-group">
			<div class="input-group-addon"><i class="material-icons md-dark pmd-sm">perm_identity</i></div>		
				<input type="text" name="username" class="form-control" placeholder="Enter Username" required autofocus>
			</div>
			<div class="input-group">
		<div class="input-group-addon"><i class="material-icons md-dark pmd-sm">https</i></div>
				<input type="password" name="password" class="form-control" placeholder="Enter Password" required autofocus>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Login</button>
		</div>
	</div>
<?php echo form_close(); ?>
</div>