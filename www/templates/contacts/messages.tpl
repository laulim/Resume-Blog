<div class="container">
	<div class="row justify-content-center">
		<div class="col-10 align-self-center mb-15 mt-60">
			<div class="title-1 mt-0 mb-15">Сообщения от посетителей</div>
			<?php if (isset($_GET['result'])) {
				include ROOT . "templates/contacts/_results.tpl";
			} ?>
		</div>
	</div>
	<div class="row mb-100 justify-content-center">
		<div class="col-10 align-self-center">

			<?php foreach ($messages as $message) {
				include ROOT . "templates/contacts/_message-card.tpl";
			 } ?>

		</div>
	</div>
</div>