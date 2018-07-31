<div class="single-work__bg">
	<div class="single-work__bg-opacity">
		<div class="single-work__bg-gradient pt-40 pb-30">
			<div class="logo">
				<div class="logo__icon logo__icon--dark">
					<i class="far fa-paper-plane"></i>
				</div>
				<div class="logo__text">
					<a class="header-logo__title header-logo__title--dark" href="<?=HOST?>">Digital Lifestyle</a>
					<div class="header-logo__sub header-logo__sub--dark">Сайт IT специалиста</div>
				</div>
			</div>
			
			<div class="container">

				<div class="row justify-content-center single-work-title">
					<div class="col-10">
						<div class="row">
							<div class="col">
								<div class="single-work-title__title mb-15"><?=$work['title']?></div>
							</div>
							<?php if (isAdmin()): ?>
								<div class="col-auto">
									<a class="button button--edit" href="<?=HOST?>portfolio/work-edit?id=<?=$work['id']?>">Редактировать</a>
									<a class="button button--delete" href="<?=HOST?>portfolio/work-delete?id=<?=$work['id']?>">Удалить</a>
								</div>
							<?php endif ?>
						</div>

						<?php if (isset($_GET['result'])) {
							include ROOT . "templates/portfolio/_results.tpl";
						} ?>

						<a 
							class="single-work-title__link" 
							<?php if ($work['author_id'] == @$_SESSION['logged_user']['id']) { ?>
								href="<?=HOST?>profile" 
							<?php } else { ?>
								href="<?=HOST?>user-profile?id=<?=$work['author_id']?>" 
							<?php } ?>
							/>
							<?=$work['firstname']?> <?=$work['lastname']?>
						</a>
						<a class="single-work-title__link single-work-title__link--tag" href="<?=HOST?>portfolio">Работы</a>
						<span class="single-work-title__link"><?=rus_date("j F Y", strtotime($work['date_time']))?></span>

						<div class="single-work-title__img" target="_blank">
							<img src="<?=HOST?>usercontent/works/<?=$work['image']?>" alt="<?=$work['title']?>"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container single-work-desc ">
	<div class="row justify-content-center mb-30">
		<div class="col-5 user-content">
			<div>
				<h3>Кратко о проекте</h3>
				<?=$work['description']?>
			</div>
			
			
			<?php if ($work['result'] != ''): ?>
				<div>
					<h3>Результат</h3>
					<p><?=$work['result']?></p>
				</div>
			<?php endif ?>
			
		</div>
		<div class="col-5 user-content">
			<div>
				<h3>Технологии</h3>
				<?=$work['tecnologies']?>	
			</div>

			<?php if ($work['demo'] != ''): ?>
				<h3>Ссылка на проект</h3>
				<div class="mt-5 mb-40">
					<a target="_blank" href="<?=$work['demo']?>"><?=$work['demo']?></a>
				</div>
			<?php endif ?>
			
			<?php if ($work['github'] != ''): ?>
				<h3>Код на github</h3>
				<div class="mt-5">
					<a target="_blank" href="<?=$work['github']?>"><?=$work['github']?></a>
				</div>
			<?php endif ?>
		</div>
	</div>
	<div class="row justify-content-center">
		<div class="col-10 single-work-buttons">
			<a class="button" href="<?=HOST?>portfolio"><i class="fas fa-arrow-left"></i>&nbsp;Все работы</a>
			<a 
				class="button <?=($nextId == '') ? 'button--off' : ''?>" 
				<?php if ($nextId != ''): ?>
					href="<?=HOST?>portfolio/work?id=<?=$nextId?>"
				<?php endif ?>
				/>
				Следующая работа&nbsp;
				<i class="fas fa-arrow-right"></i>
			</a>
		</div>
	</div>
</div>