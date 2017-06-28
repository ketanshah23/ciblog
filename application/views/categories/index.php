<div class="pmd-content" id="content">
        <h2 class="headline"><?= $title; ?></h2>
<ul class="list-group">
<?php foreach($categories as $category) : ?>
	<li class="list-group-item"><a href="<?php echo site_url('/categories/posts/'.$category['id']); ?>"><?php echo $category['name']; ?></a>
		<?php if($this->session->userdata('user_id') == $category['user_id']): ?>
			<form class="cat-delete" action="categories/delete/<?php echo $category['id']; ?>" method="POST">
				<input type="submit" class="pmd-btn-raised" value="[X]">
			</form>
		<?php endif; ?>
	</li>
<?php endforeach; ?>
</ul>
</div>