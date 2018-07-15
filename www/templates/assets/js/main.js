$(document).ready(function() {
	
	// $(".left-panel").customScrollbar({preventDefaultScroll: true});

	// ::::::::: ENTER FORM VALIDATE ::::::::
	var validateForm = (function(){

		// Поменять id форм на что-нибкдь более логично-универсальное. Утром...
		// #form пока занято...
		var _form = $('#enter-form');
		var _input = _form.find('input[data-required="required"], textarea[data-required="required"]');

		var init = function(){
			_setUpListeners();
		}

		var _setUpListeners = function(){
			_form.on('submit', function(e){
				_validateForm(e);
			});
		}

		var _validateForm = function(e){

			$.each(_input, function(index, val){
				var input = $(val),
				value = input.val().trim(),
				textError = input.attr('data-text-error').toLowerCase(),
				errorMsg = $('<div class="error"><div class="error__title">Введите ' + textError + '</div></div>'),
				pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

				if (value.length === 0) {
					e.preventDefault();
					input.next('.error').slideUp(500, function(){$(this).remove()});
					errorMsg.insertAfter(input).hide().slideDown(500);
				}

				if (input.attr('name') === 'email') {
					if (!pattern.test(value) && value.length > 0) {
						e.preventDefault();
						input.next('.error').slideUp(500, function(){$(this).remove()});
						errorMsg = $('<div class="error"><div class="error__title">Неверный формат ' + textError + '</div></div>');
						errorMsg.insertAfter(input).hide().slideDown(500);
					}
				} 	

				input.on('focus', function(){
					input.next('.error').slideUp(500, function(){$(this).remove()});
				});
			})
		}

		return { init }
	}());

	validateForm.init();

	// ::::::::: COMMENT FORM VALIDATE ::::::::
	// Удалить после реализации комментария !!!!!
	// Код validateForm работает !! 
	var commentCheck = (function(){
		var _form = $('#form');
		var _input = _form.find('textarea');
		var _error = _form.find('.error');

		 function init(){
			_setUpListeners();
		}

		function _setUpListeners() {
			_form.on('submit', function(event){
				_formValidate(event)
			})
		}

		function _formValidate(event) {
			if (_input.val().trim() == '') {
				_error.slideDown(500);
				event.preventDefault();
			}

			_input.on('keydown', function(){
				_error.slideUp(500);
			})
		}

		return { init }

	}());

	commentCheck.init();

	//:::::::: DELETE AVATAR ::::::::::
	var deleteAvatar = $('#enter-form').find('#delete-avatar');
	deleteAvatar.on('click', function(){
		if ($(deleteAvatar).is(':checked')) {
			$('#enter-form').find('.file-upload__thumb-delete').fadeIn();	
			deleteAvatar.next('span').text('Не удалять');
		} else {
			$('#enter-form').find('.file-upload__thumb-delete').fadeOut();
			deleteAvatar.next('span').text('Удалить');
		}
	})



});