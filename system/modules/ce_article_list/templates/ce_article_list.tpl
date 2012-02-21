
<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>

<?php foreach ($this->pages as $page): ?>
<?php if ($this->hlPage): ?>
<<?php echo $this->hlPage; ?>><?php echo $page['title']; ?></<?php echo $this->hlPage; ?>>
<?php endif; ?>
<?php if (strlen($page['articles'][0]['teaser'])): ?>
<div><?php echo $page['articles'][0]['teaser']; ?></div>
<?php endif; ?>
<ul>
<?php foreach ($page['articles'] as $article): ?>
	<li><?php if ($article['image']): ?>  
    <div class="image_container<?php echo $article['image']->floatClass; ?>"<?php if ($article['image']->margin || $article['image']->float): ?> style="<?php echo trim($article['image']->margin . $article['image']->float); ?>"<?php endif; ?>>  
    <?php if ($article['image']->href): ?><a href="<?php echo $article['image']->href; ?>"<?php echo $article['image']->attributes; ?> title="<?php echo $article['image']->alt; ?>"><?php endif; ?>  
    <img src="<?php echo $article['image']->src; ?>"<?php echo $article['image']->imgSize; ?> alt="<?php echo $article['image']->alt; ?>">  
    <?php if ($article['image']->href): ?></a><?php endif; ?>  
    <?php if ($article['image']->caption): ?><p class="caption"><?php echo $article['image']->caption; ?></p><?php endif; ?>  
    </div>  
  <?php endif; ?><a href="<?php echo $article['link']; ?>"><?php echo $article['title']; ?></a></li>
<?php endforeach; ?>
</ul>
<?php endforeach; ?>

</div>