$(document).ready(function() {
	
	// $(".left-panel").customScrollbar({preventDefaultScroll: true});

	// ::::::::: ENTER FORM VALIDATE ::::::::
	var validateForm = (function(){

		var _form = $('#validate-form');
		var _input = _form.find('input, textarea');

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
				textError = input.attr('data-text-error'),
				errorMsg = $('<div class="error"><div class="error__title">Введите ' + textError + '</div></div>'),
				pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

				if (input.attr('data-required') === 'required' && value.length === 0) {
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

	//:::::::: DELETE AVATAR ::::::::::
	var deleteAvatar = $('#validate-form').find('#delete-avatar');
	deleteAvatar.on('click', function(){
		if ($(deleteAvatar).is(':checked')) {
			$('#validate-form').find('.file-upload__thumb-delete').fadeIn();	
			deleteAvatar.next('span').text('Не удалять');
		} else {
			$('#validate-form').find('.file-upload__thumb-delete').fadeOut();
			deleteAvatar.next('span').text('Удалить');
		}
	})

	//:::::::: DATA NOTIFY HIDE ::::::::::
	var notifyHide = $('[data-notify-hide]');
	setTimeout(function(){notifyHide.slideUp(400);}, 2000);
	notifyHide.dblclick(function(){$(this).slideUp(400);});

});