<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>

<?php foreach ($this->pages as $page): ?>
<?php if ($this->hlPage): ?>
<<?php echo $this->hlPage; ?><?php if ($page['protected']): ?> class="protected"<?php endif; ?>><?php echo $page['title']; ?></<?php echo $this->hlPage; ?>>
<?php endif; ?>

<ul>
<?php foreach ($page['articles'] as $article): ?>

<?php $objArticle = (object)$article; ?>

<?php if ($page['protected']): ?>
	<li class="protected"><?php echo $objArticle->title; ?></li>
<?php else: ?>

<?php if ($objArticle->teaser != ''): ?>
	<li><a href="<?php echo $objArticle->link; ?>"><?php echo $objArticle->title; ?></a>
<?php if ($objArticle->addImage): ?>


<?php if (!$objArticle->image->addBefore): ?>
	<?php echo $objArticle->teaser; ?>
<?php endif; ?>

<div class="image_container<?php echo $objArticle->image->floatClass; ?>"<?php if ($objArticle->image->margin || $objArticle->image->float): ?> style="<?php echo trim($objArticle->image->margin . $objArticle->image->float); ?>"<?php endif; ?>>
<?php if ($objArticle->image->href): ?>
<a href="<?php echo $objArticle->image->href; ?>"<?php if ($objArticle->image->linkTitle): ?> title="<?php echo $objArticle->image->linkTitle; ?>"<?php endif; ?><?php echo $objArticle->image->attributes; ?>>
<?php endif; ?>
<img src="<?php echo $objArticle->image->src; ?>"<?php echo $objArticle->image->imgSize; ?> alt="<?php echo $objArticle->image->alt; ?>"<?php if ($objArticle->image->title): ?> title="<?php echo $objArticle->image->title; ?>"<?php endif; ?> />
<?php if ($objArticle->image->href): ?>
</a>
<?php endif; ?>
<?php if ($objArticle->image->caption): ?>
<p class="caption" style="width:<?php echo $objArticle->image->arrSize[0]; ?>px"><?php echo $objArticle->image->caption; ?></p>
<?php endif; ?>
</div>

<?php if ($objArticle->image->addBefore): ?>
	<?php echo $objArticle->teaser; ?>
<?php endif; ?>


<?php else: /* image */ ?>
	<?php echo $objArticle->teaser; ?>
<?php endif; /* image */ ?>
	</li>
<?php else: /* teaser */ ?>
	<li><a href="<?php echo $article['link']; ?>"><?php echo $article['title']; ?></a></li>
<?php endif; /* teaser */ ?>

<?php endif; /* !protected */ ?>
<?php endforeach; /* articles */ ?>
</ul>
<?php endforeach; /* pages */ ?>
</div>
