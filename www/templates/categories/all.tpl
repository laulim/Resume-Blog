<div class="container mt-40 mb-60">

	<div class="row justify-content-center">
		<div class="col-10">
			<?php if (isset($_GET['result'])) {
				include ROOT . "templates/categories/_results.tpl";
			} ?>
			<div class="row mb-20 align-items-center">
				<div class="col-8">
					<div class="title-1">Категории блога</div>
				</div>
				<div class="col-4 text-right">
					<a class="button button--edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col">
					<table class="table">
						<thead class="thead-light">
							<tr>
								<th scope="col">id</th>
								<th scope="col">Название</th>
								<th scope="col">Редактировать</th>
								<th scope="col">Удалить</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($cats as $cat): ?>
							<tr>
								<th><?=$cat['id']?></th>
								<td><?=$cat['cat_title']?></th>
								<td><a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a></th>
								<td><a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a></th>
							</tr>
							<?php endforeach ?>
							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	
</div>