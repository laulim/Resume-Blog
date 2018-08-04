<?php function skillItem($title, $name) { 
	global $skills; ?>
	<div class="col-2">
		<div class="title-6"><?=$title?></div>
		<input class="input input--number" type="number" name="<?=$name?>" placeholder="50" 
		value="<?=$skills[$name]?>"  />
		<span>&nbsp;%</span>
	</div>
<?php } ?>

<div class="container technology__form mt-40 mb-100">
	<form id="validate-form" action="edit-skills" method="POST">
		<div class="row">
			<div class="col">
				<h3 class="title-3">Технологии</h3>
				<?php require ROOT. "templates/_parts/errors.tpl" ?>
			</div>
		</div>

		<div class="row mb-20">
			<?php skillItem('HTML5', 'html') ?>
			<?php skillItem('CSS3', 'css') ?>
			<?php skillItem('JS', 'js') ?>
			<?php skillItem('jQuery', 'jquery') ?>
		</div>

		<div class="row mb-20">
			<?php skillItem('PHP', 'php') ?>
			<?php skillItem('MySql', 'mysql') ?>
		</div>

		<div class="row">
			<?php skillItem('Git', 'git') ?>
			<?php skillItem('Gulp', 'gulp') ?>
			<?php skillItem('Yarn', 'yarn') ?>
			<?php skillItem('NPM', 'npm') ?>
		</div>
		<div class="row">
			<div class="col">
				<input class="button button--save mt-30" type="submit" name="skillsUpdate" value="Сохранить">
				<a class="button ml-20" href="<?=HOST?>about">Отмена</a>
			</div>
		</div>
	</form>
</div>