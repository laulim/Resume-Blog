<div class="container mt-40 mb-100">
	<div class="row">
		<div class="col">
			<h3 class="title-3 mb-10">Опыт работы</h3>
			<?php require ROOT. "templates/about/_results.tpl" ?>

			<?php foreach ($jobs as $job):
				include ROOT. "templates/about/_job-card-edit.tpl";
			endforeach ?>

			<h3 class="title-3 mb-20">Добавить новое место</h3>
			<?php require ROOT. "templates/_parts/errors.tpl" ?>
			<div class="user-message add-job-item mt-10">
				<form id="validate-form" action="edit-jobs" method="POST">
					<div class="title-6">Период</div>
					<input 
						class="input mb-5" type="text" name="period" 
						placeholder="Введите даты начала и окончания работы" 
						data-required="required" data-text-error="период работы" 
						value="<?=(isset($_POST['period'])) ? $_POST['period'] : ''?>" />
					
					<div class="title-6">Название должности</div>
					<input 
						class="input mb-5" type="text" name="title" 
						placeholder="Введите название должности" 
						data-required="required" data-text-error="должность" 
						value="<?=(isset($_POST['title'])) ? $_POST['title'] : ''?>" />
					
					<div class="title-6">Описание работы, должностные обязанности, достигнутые результаты</div>
					<textarea class="textarea" name="description" placeholder="Напишите интересное краткое содержательное описание"><?=(isset($_POST['description'])) ? $_POST['description'] : ''?></textarea>

					<input class="button button--save mt-30" type="submit" name="newJob" value="Добавить">
					<a class="button ml-20" href="<?=HOST?>about">Отмена</a>
				</form>
			</div>
		</div>
	</div>
	
</div>