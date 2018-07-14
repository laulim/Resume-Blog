$(document).ready(function(){

	// var loginFormCheck = (function(){

	// 	var _form = $('#login-form');
	// 	var _input = _form.find('.input');
	// 	var _email = _form.find('[name="email"]');
	// 	var _password = _form.find('[name="password"]');

	// 	var init = function(){
	// 		_setUpListeners();
	// 	}

	// 	var _setUpListeners = function(){
	// 		_form.on('submit', function(e){
	// 			_validateForm(e);
	// 		});
	// 	}

	// 	var _validateForm = function(e){

	// 		$.each(_input, function(index, val){
	// 			var input = $(val),
	// 			value = input.val().trim(),
	// 			textError = input.attr('placeholder').toLowerCase(),
	// 			errorMsg = $('<div class="error"><div class="error__title">Введите ' + textError + '</div></div>'),
	// 			pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i,
	// 			emailVal = _email.val().trim(),
	// 			passwordVal = _password.val().trim();

	// 			if (value.length === 0) {
	// 				e.preventDefault();
	// 				input.next('.error').slideUp(500, function(){$(this).remove()});
	// 				errorMsg.insertAfter(input).hide().slideDown(500);
	// 			}

	// 			if (input.attr('name') === 'email') {
	// 				if (pattern.test(value) && passwordVal.length > 0) {
	// 					console.log('Yeeep');
	// 				} else if (value.length > 0) {
	// 					e.preventDefault();
	// 					input.next('.error').slideUp(500, function(){$(this).remove()});
	// 					errorMsg = $('<div class="error"><div class="error__title">Неверный формат ' + textError + '</div></div>');
	// 					errorMsg.insertAfter(input).hide().slideDown(500);
	// 				}
	// 			} 	

	// 			input.on('focus', function(){
	// 				input.next('.error').slideUp(500, function(){$(this).remove()});
	// 			});
	// 		})
	// 	}

	// 	return { init }
	// }());

// loginFormCheck.init();

});