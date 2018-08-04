<?php function showIndicators($title, $value, $color = ''){ 
	$indicatorDiametr = 112;
	$radius = ($indicatorDiametr - 10) / 2;
	$perimetr = 2 * pi() * $radius;
	$offset = $perimetr * (1 - intval($value)/100);	?>
	<div class="indicator">
		<svg 
			width="<?=$indicatorDiametr?>" 
			height="<?=$indicatorDiametr?>" 
			class="circle" 
			viewbox="0 0 <?=$indicatorDiametr?> <?=$indicatorDiametr?>">
			<circle 
				class="circle__bg" 
				cx="<?=($indicatorDiametr / 2)?>" 
				cy="<?=($indicatorDiametr / 2)?>" 
				r="<?=$radius?>"></circle>
			<circle 
				class="circle__indicator <?=($color != '') ? "circle__indicator--$color" : '' ?>" 
				stroke-dashoffset="<?=$offset?>"
				stroke-dasharray="<?=$perimetr?>";
				rotate="90" 
				cx="<?=($indicatorDiametr / 2)?>" 
				cy="<?=($indicatorDiametr / 2)?>" 
				r="<?=$radius?>"></circle>
		</svg>
		<div class="indicator__value"><?=$title?></div>
	</div>
<?php } ?>

<div class="skills">
	<div class="container pt-55 pb-40 ">
		<div class="row">
			<div class="col-9 offset-3 resume">
				<div class="title-1 mt-0 mb-5">Технологии</div>
				<p class="mt-0 mb-50">Которые использую в работе</p>

				<?php if (isAdmin()): ?>
				<a class="button button--edit" href="<?HOST?>about/edit-skills">Редактировать</a>
				<?php endif ?>
			</div>
		</div>

		<div class="row mb-40">
			<div class="col-3">
				<div class="skill__title">Frontend</div>
			</div>

			<div class="col-9">

				<?php showIndicators('HTML5', $skills['html'], 'green') ?>
				<?php showIndicators('CSS3', $skills['css'], 'green') ?>
				<?php showIndicators('JS', $skills['js'], 'green') ?>
				<?php showIndicators('jquery', $skills['jquery'], 'green') ?>

			</div>
		</div>

		<div class="row mb-40">
			<div class="col-3">
				<div class="skill__title">Backend</div>
			</div>
			<div class="col-9">

				<?php showIndicators('PHP', $skills['php'], 'blue') ?>
				<?php showIndicators('MySql', $skills['mysql'], 'blue') ?>
				
			</div>
		</div>

		<div class="row mb-40">
			<div class="col-3">
				<div class="skill__title">Workflow</div>
			</div>
			<div class="col-9">

				<?php showIndicators('Git', $skills['git'], 'yellow') ?>
				<?php showIndicators('Gulp', $skills['gulp'], 'yellow') ?>
				<?php showIndicators('NPM', $skills['npm'], 'yellow') ?>
				<?php showIndicators('Yarn', $skills['yarn'], 'yellow') ?>

			</div>
		</div>

	</div>
</div>