<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function(){
		//:::::::: CKEDITOR ::::::::::
		CKEDITOR.replace( 'ckEditor', {
			customConfig: '<?=HOST?>templates/assets/js/ckEditorConfig.js'
		});
	});
</script>