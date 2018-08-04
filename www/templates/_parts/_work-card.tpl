<div class="col-md-4 mb-50">
	<div class="card-portfolio">
		<div class="card-portfolio__img">
			<?php if ($work->image_small != '') { ?>
				<img src="<?=HOST?>usercontent/works/<?=$work->image_small?>" />
			<?php } else { ?>
			<img src="<?=HOST?>usercontent/works-no-image.jpg" />
			<?php } ?>
		</div>
		<div class="card-portfolio__title"><?=mbCutString($work->title, 25)?></div>
		<a class="button" href="<?=HOST?>portfolio/work?id=<?=$work->id?>">Смотреть кейс</a>
	</div>
</div>	