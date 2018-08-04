<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить сообщение</div>

			<p>Вы действительно хотите удалить сообщение посетителя <strong><?=$message['name']?></strong> с id = <?=$message['id']?> от <?=rus_date("j F Y H:i", strtotime($message['date_time']))?>?</p>
			
			<form action="<?=HOST?>message-delete?id=<?=$message['id']?>" method="POST"  >
				<input type="submit" name="messageDelete" class="button button--delete button--delete--big mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>messages">Отмена</a>
			</form>

			
		</div>
	</div>
</div>