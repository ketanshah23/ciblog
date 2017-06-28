<div class="pmd-content" id="content">
        <h2 class="headline"><?= $title ?></h2>
        <div class="row">
	<?php echo form_open_multipart('posts/index/'); ?>
<div class="form-group">
  <label class="control-label">Search</label>
    <input type="text" class="form-control" name="title" placeholder="Add Title">
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
<?php foreach($posts as $post) : ?>
	<h3><?php echo $post['title']; ?></h3>
	<div class="row">
		<div class="col-md-3" style="width:30%">
			<img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>" height="25%" width="92%">
		</div>
		<div class="col-md-8">
			<small class="post-date">Posted on: <?php echo $post['created_at']; ?> in <strong><?php echo $post['name']; ?></strong></small><br>
		<?php echo word_limiter($post['body'], 60); ?>
		<br><br>
		<p><a class="btn btn-default" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More</a></p>
		</div>
	</div>
<?php endforeach; ?>
<div class="pagination-links">
		<?php echo $this->pagination->create_links(); ?>
</div>
</div>