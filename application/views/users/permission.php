<div class="pmd-content" id="content">
        <h2 class="headline"><?= $title; ?></h2>

<?php echo validation_errors();
echo form_open_multipart('users/set_permi'); 
	foreach ($user_data as $key => $value) {
		
	?>
	<div class="form-group">
		<label class="pmd-checkbox pmd-checkbox-ripple-effect">User <?php echo ($value['name']); ?></label>
		<input type="checkbox" class="form-control" name="name[]" value="<?php echo $value['id']; ?>" <?php echo (($value['user_type']==1)?"checked":""); ?>/>
	</div>
	

<?php }?>
<button type="submit" class="btn btn-default">Submit</button>
</form>
</div>