function isMobile() {
	if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
		|| /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) {
		return true;
	}
	return false;
}
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}
function declOfNum(n, text_forms) {  
    n = Math.abs(n) % 100; 
    var n1 = n % 10;
    if (n > 10 && n < 20) { return text_forms[2]; }
    if (n1 > 1 && n1 < 5) { return text_forms[1]; }
    if (n1 == 1) { return text_forms[0]; }
    return text_forms[2];
}

function openModal(popup_n) {
	$('.popup').fadeOut(800);

	let popup = $('.popup[data-popup="' + popup_n + '"]');
	$(popup).fadeIn(800);
	$('body').addClass('noscroll');
}
function closeModal() {
	$('.popup').fadeOut(500);
	$('body').removeClass('noscroll');
}

$(function () {
	if (!$('.header').hasClass('cmp_header')) {
		$('.wrapper').css('padding-top', $('.header').outerHeight());
	}

	const getParam = getUrlVars();
	if ($('#choose').length > 0) {
		$('[name=course_category] option[value='+getParam['course_category']+']').prop('selected', true);
		$('[name=course_sub_category] option[value='+getParam['course_sub_category']+']').prop('selected', true);
		$('[name=course_sub_category_type] option[value='+getParam['course_sub_category_type']+']').prop('selected', true);
		$('[name=course_type] option[value='+getParam['course_type']+']').prop('selected', true);
		$('[name=for_ages] option[value='+getParam['for_ages']+']').prop('selected', true);
		$('[name=for_levels] option[value='+getParam['for_levels']+']').prop('selected', true);
		$('[name=form_of_study] option[value='+getParam['form_of_study']+']').prop('selected', true);
		$('[name=format_of_study] option[value='+getParam['format_of_study']+']').prop('selected', true);
		$('[name=schedule] option[value='+getParam['schedule']+']').prop('selected', true);
		$('[name=form_of_study] option[value='+getParam['form_of_study']+']').prop('selected', true);
		$('[name=time] option[value='+getParam['time']+']').prop('selected', true);
		$('[name=course_city] option[value='+getParam['course_city']+']').prop('selected', true);
		$('[name=course_region] option[value='+getParam['course_region']+']').prop('selected', true);
		$('[name=course_metro] option[value='+getParam['course_metro']+']').prop('selected', true);
		$('[name=data_from]').val(getParam['data_from']);
	}
	
	
	$(".phone-mask").mask("+375(99)999-99-99");
	$(".time-mask").mask("99:99");
	$(".date-mask").mask("99.99.9999");

	Fancybox.bind('[data-fancybox]', {
        Thumbs : {
			type: "classic",
			showOnStart: false
		  }
    });  

	$.datepicker.regional['ru'] = {
		closeText: 'Закрыть',
		prevText: 'M',
		nextText: 'M',
		currentText: 'Сегодня',
		monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
		monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
		dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
		dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
		dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
		weekHeader: 'Не',
		dateFormat: 'dd.mm.yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: true,
		yearSuffix: '',
		navigationAsDateFormat: true

	};
	$.datepicker.setDefaults($.datepicker.regional['ru']);
	$('.datepicker-input').datepicker({
		// minDate: 0,
		format: 'dd/mm/yyyy',
		changeMonth: true,
		changeYear: true,
		yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2)
	});
	$('.datepicker-input-min').datepicker({
		minDate: 0,
		format: 'dd/mm/yyyy',
		changeMonth: true,
		changeYear: true
	});



	/**************************************************************
	СКРОЛЛ
	**************************************************************/
	$('body').on('click', '[data-scroll]', function (e) {
		e.preventDefault();
		var hash = '#' + $(this).attr("data-scroll");

		$('html, body').stop().animate({
			scrollTop: $(hash).offset().top - 100
		}, 1000, 'easeInOutExpo');
	});

	$(window).scroll(function () {
		var top_scroll = window.pageYOffset || document.documentElement.scrollTop;
		if (top_scroll > 300) {
			$('.scroll-top').fadeIn();
		}
		else {
			$('.scroll-top').fadeOut();
		}
		if (top_scroll > 0) {
			$('header').addClass('fixed');
		}
		else {
			$('header').removeClass('fixed');
		}
	});

	/**************************************************************
	ПОПАПЫ
	**************************************************************/


	$('body').on('click', '[data-open-popup]', function (e) {
		e.preventDefault();

		openModal($(this).attr('data-open-popup'));
	})
	$('.popup-close').click(function (e) {
		e.preventDefault();

		closeModal();
	})


	/**************************************************************
	меню
	**************************************************************/
	$('#menu_toggler').click(function (e) {
		e.preventDefault();
		$('.open-category').removeClass('active');
		$('.header-category').removeClass('active');

		$(this).toggleClass('active');
		$('.header-navfix').toggleClass('active');
		// $('body').toggleClass('noscroll');
	})
	$('.close-menu').click(function (e) {
		e.preventDefault();
		$('#menu_toggler').removeClass('active');
		$('.header-navfix').removeClass('active');
		$('body').removeClass('noscroll');
	})

	$('.open-category').click(function (e) {
		e.preventDefault();
		$('.open-category').toggleClass('active');
		$('.header-category').toggleClass('active');
		// $('body').removeClass('noscroll');
	})


	$('.header-search-open').click(function (e) {
		e.preventDefault();
		$(this).prev().toggleClass('active');
		// $('body').removeClass('noscroll');
	})


	let openCatAppend = '';

	function replaceHeader() { 
		const windowWidth = $(window).width();
		
		let targetSelector;
		
		if (windowWidth >= 980) {
			targetSelector = '.js-open-category-position';
		} else {
			targetSelector = '.js-cmp_header-menu ul';
		}
		if (targetSelector !== openCatAppend) {
			if (windowWidth >= 980) {
				$(targetSelector).append($('.open-category'));
				$('.js-cmp_header-menu ul').find('.l-c').remove();
			}
			else {
				console.log('1');
				$(targetSelector).prepend( '<li class="l-c"></li>');
				$(targetSelector).find('li').eq(0).prepend( $('.open-category') );
			}
			openCatAppend = targetSelector;
		}
	}

	$(window).on('resize', replaceHeader);

	replaceHeader();

	$(document).mouseup(function (e) {

		var div = $(".header-navfix");
		if (!div.is(e.target)
			&& div.has(e.target).length === 0
			&& !$('.close-menu').is(e.target)) {
			$('#menu_toggler').removeClass('active');
			$('.header-navfix').removeClass('active');
			//$('body').removeClass('noscroll');
		}

		var div = $(".header-category");
		if (!div.is(e.target)
			&& div.has(e.target).length === 0
			&& !$('.open-category').is(e.target) && $('.open-category').has(e.target).length === 0) {
			$('.open-category').removeClass('active');
			$('.header-category').removeClass('active');
		}


		var div = $(".header-search");
		if (!div.is(e.target)
			&& div.has(e.target).length === 0) {
			$('.header-search-form').removeClass('active');
		}
	});

	$(document).keyup(function (e) {
		if (e.key === "Escape" || e.keyCode === 27) {
			$('#menu_toggler').removeClass('active');
			$('.header-navfix').removeClass('active');
			$('body').removeClass('noscroll');


			$('.open-category').removeClass('active');
			$('.header-category').removeClass('active');


			closeModal();
		}
	});

	
	/**************************************************************
	NAV
	**************************************************************/
	$('.js-nav-link').click(function (e) {
		e.preventDefault();
		let tab_name = $(this).attr('data-tab'),
			tabs = $(this).closest('.js-tabs'),
			level = $(tabs).attr('data-level');
		
		if (level !== undefined) level = '[data-tab-level="'+level+'"]';
		else level = '';

		$(this).closest('.js-nav').find('.js-nav-link').removeClass('active');
		$(this).addClass('active');


		$(tabs).find('.js-tabs-content'+level).removeClass("active").fadeOut(300).promise().done(function () {

			let ct = $(tabs).find('.js-tabs-content[data-tab=' + tab_name + ']');
			$(ct).addClass("active").fadeIn(300);


		});
	})

	/**************************************************************
	Блокировка ввода
	**************************************************************/
	$('body').on('input', '.input-number', function () {
		this.value = this.value.replace(/[^0-9\.\,]/g, '');
	});
	$('body').on('input', '.input-spch', function () {
		this.value = this.value.replace(/[№~`!@#$%\^&*()+=\-\[\]\\';,/{}|\\":<>\?]/g, '');
	});


	/**************************************************************
	Мульти селект
	**************************************************************/
	$('.check-select:not(.disabled)').each(function () {
		let str = [], value = [];
		$(this).find('.check-param:checked').each(function () {
			str.push($(this).parents('label').find('span').text());
			value.push($(this).val());
			console.log($(this).val());
			if ($(this).val() === 'all') return false;
		})
		if (value.length == 0) return;
		$(this).find('.check-select-text').removeClass('placeholder').text(str.join(', '));
		$(this).find('.check-select-value').val(value.join(','));
	})
	$('.check-select-toggle').click(function () {

		if ($(this).parents('.check-select').hasClass('disabled')) return;
		$(this).parents('.check-select').toggleClass('opened');
	})
	$('.check-select .check-param').change(function () {
		let str = [], value = [];
		let all = false;
		if ($(this).val() === 'all' && $(this).is(':checked')) {
			console.log('==');
			$(this).parents('.check-select-dropdown').find('.check-param').prop('checked', true);
			str.push($(this).parents('label').find('span').text());
			all = true;
		} else if ($(this).val() === 'all' && !($(this).is(':checked'))) {

			$(this).parents('.check-select-dropdown').find('.check-param').prop('checked', false);
			str.push($(this).parents('label').find('span').text());
			all = false;

		}

		if ($(this).val() !== 'all') {

			$(this).parents('.check-select-dropdown').find('.check-param[value="all"]').addClass('fdsfsd')
			$(this).parents('.check-select-dropdown').find('.check-param[value="all"]').prop('checked', false);
		}
		setTimeout(function () {
			$('.check-param.styler').trigger('refresh');
		}, 1)

		$(this).parents('.check-select-dropdown').find('.check-param:checked').each(function () {
			if (!all) str.push($(this).parents('label').find('span').text());
			value.push($(this).val());

		})
		if (value.length == 0) {
			let s = $(this).parents('.check-select');
			$(s).find('.check-select-text').addClass('placeholder').text($(s).attr('data-placeholder'));
			$(s).find('.check-select-value').val('');
			return;
		}
		$(this).parents('.check-select').find('.check-select-text').removeClass('placeholder').text(str.join(', '));
		$(this).parents('.check-select').find('.check-select-value').val(value.join(','));

		let id_select = $(this).parents('.check-select').attr('data-check-select');
		if (id_select === undefined || id_select === '') return;

		id_select = id_select.split(',')

		$(id_select).each(function (i, el) {
			el = $.trim(el);
			$(el).removeClass('disabled').find('.check-select-dropdown label').addClass('hide').find('.check-param').prop('checked', false);
			setTimeout(function () {
				$('.check-param.styler').trigger('refresh');
			}, 1)

			$(value).each(function (i_c, el_c) {
				$(el).find('.check-param[data-chained="' + el_c + '"]').parents('label').removeClass('hide');
			});

			$(el).find('.check-select-text').addClass('placeholder').text($(el).attr('data-placeholder'));
			$(el).find('.check-select-value').val('');
		});
	})

	$(document).mouseup(function (e) {
		if (!$(".check-select").is(e.target) && $(".check-select").has(e.target).length === 0
		) {
			$('.check-select').removeClass('opened');
		}

	});

	function chainedCheckSelect(select) {
		let chained = $(select).val(),
			id_select = $(select).attr('data-check-select').split(',');

		if (chained === '') return;


		$(id_select).each(function (i, el) {
			el = $.trim(el);
			$(el).removeClass('disabled').find('.check-select-dropdown label').addClass('hide').find('.check-param').prop('checked', false);
			setTimeout(function () {
				$('.check-param.styler').trigger('refresh');
			}, 1)

			$(el).find('.check-param[data-chained="' + chained + '"]').parents('label').removeClass('hide');
			$(el).find('.check-select-text').addClass('placeholder').text($(el).attr('data-placeholder'));
			$(el).find('.check-select-value').val('');
		});
	}
	$('[data-check-select]').each(function () {

		if ($(this).hasClass('check-select')) {


			return;
		}

		chainedCheckSelect(this);
	})
	$('[data-check-select]').change(function () {
		chainedCheckSelect(this);

	})

	/**************************************************************
	ФИльтр на главной
	**************************************************************/
	$('body').on('click', '.choose-more-filters', function (e) {
		e.preventDefault();

		$(this).toggleClass('opened').next().slideToggle();
	})
	$("#sub_category-select-2").chained("#category-select-2");
    $("#sub_category_type-select-2").chained("#sub_category-select-2");
    $("#type-select-2").chained("#category-select-2");
    $("#level-select-2").chained("#category-select-2");

	$("#sub_category-select").chained("#category-select");
	$("#sub_category_type-select").chained("#sub_category-select");
	$("#type-select").chained("#category-select");
	$("#level-select").chained("#category-select");
	$("#level-from-select").chained("#category-select");
	$("#level-to-select").chained("#category-select");
	$("#for_ages_to").chained("#for_ages_from");
	
	$("#course_metro").chained("#course_city");
	$("#course_region").chained("#course_city");


	$('body').on('change', 'select.styler', function (e) {
		e.preventDefault();

		setTimeout(function () {
			$('select.styler').trigger('refresh');
		}, 1)
	})

	$('.js-choose-clear').on('click', function (e) {
		e.preventDefault();
		console.log('clear');

		$('.choose-filters').trigger("reset");
		$('.choose-filters [type="checkbox"]').prop('checked', false);
		//$('.choose-filters select').val('');
		$('.choose-filters select').prop('selectedIndex', 0);


		$('.checkselect').each(function () {
			$(this).find('.check-select-text').addClass('placeholder').text($(this).attr('data-placeholder'));
			$(this).find('.check-select-value').val('');
			$(this).find('.check-select-dropdown label').addClass('hide');
		})
		$("#sub_category-select").chained("#category-select");
		$("#sub_category_type-select").chained("#sub_category-select");
		$("#type-select").chained("#category-select");
		$("#level-select").chained("#category-select");

		setTimeout(function () {
			$('.choose-filters .styler').trigger('refresh');
		}, 1);
	});


	/**************************************************************
	accord
	**************************************************************/
	$(".accord").on("click", function (e) {
		e.preventDefault();

		$(this).toggleClass('opened');
		$(this).find('.accord-body').slideToggle();
	});


	/**************************************************************
	Карусель курсов
	**************************************************************/
	$(".courses-carousel").each(function () {
		var courses_carousel = new Swiper(this, {
			slidesPerView: 4,
			spaceBetween: 30,
			// loop: true,
			speed: 600,
			// autoplay: {
			//     delay: 0,
			//     disableOnInteraction: false
			// },
			navigation: {
				nextEl: $(this).parents('.courses').find(".swiper-button-next")[0],
				prevEl: $(this).parents('.courses').find(".swiper-button-prev")[0],
			},
			breakpoints: {
				0: {
					slidesPerView: "auto",
					spaceBetween: 10
				},
				768: {
					slidesPerView: 2.3,
					spaceBetween: 30
				},
				980: {
					slidesPerView: 3,
					spaceBetween: 30
				},
				1370: {
					slidesPerView: 4,
					spaceBetween: 30
				}
			}
		});
	})

	/**************************************************************
	Карусель Статей
	**************************************************************/
	// if (!isMobile()) {
	if ($(window).outerWidth() >= 768) {
		$(".blog-carousel").each(function () {
			var blog_carousel = new Swiper(this, {
				slidesPerView: 3,
				spaceBetween: 30,
				// loop: true,
				speed: 600,
				breakpoints: {
					0: {
						slidesPerView: 1.2,
						spaceBetween: 10
					},
					480: {
						slidesPerView: 2.1,
						spaceBetween: 15
					},
					609: {
						slidesPerView: 1.75,
						spaceBetween: 30
					},
					980: {
						slidesPerView: 2,
						spaceBetween: 30
					},
					1370: {
						slidesPerView: 3,
						spaceBetween: 30
					}
				}
			});
		})
	}

	/**************************************************************
	Слайдер отзывов
	**************************************************************/
	$(".reviews-slider").each(function () {
		var reviews_slider = new Swiper(this, {
			slidesPerView: 1,

			spaceBetween: 30,
			loop: true,
			speed: 600,
			autoHeight: true,
			navigation: {
				nextEl: $(this).parents('.reviews').find(".swiper-button-next")[0],
				prevEl: $(this).parents('.reviews').find(".swiper-button-prev")[0],
			}
		});
	})


	/**************************************************************
	Карусель сравнение
	**************************************************************/
	// if (!isMobile()) {
	if ($(window).outerWidth() >= 980) {

		var compare_carousel = new Swiper(".compare-carousel", {
			slidesPerView: "auto",
			spaceBetween: 30,
			// loop: true,
			speed: 600,
			scrollbar: {
				el: '.swiper-scrollbar',
				draggable: true,
			}
			// ,
			// breakpoints: {
			// 	0: {
			// 		slidesPerView: 1.2,
			// 		spaceBetween: 10
			// 	},
			// 	480: {
			// 		slidesPerView: 2.1,
			// 		spaceBetween: 15
			// 	},
			// 	609: {
			// 		slidesPerView: 1.75,
			// 		spaceBetween: 30
			// 	},
			// 	980: {
			// 		slidesPerView: 2,
			// 		spaceBetween: 30
			// 	},
			// 	1370: {
			// 		slidesPerView: 3,
			// 		spaceBetween: 30
			// 	}
			// }
		});

	}
	$('.compare-item-remove').on('click', function (e) {
		e.preventDefault();

		if ($(window).outerWidth() >= 980) {
			compare_carousel.removeSlide($(this).parents('.swiper-slide').index());
			if ($('.compare-carousel .swiper-slide').length < 3)
				$('.compare').addClass('compare--2');
		} else {
			$(this).parents('.swiper-slide').remove();
		}
	});




	/**************************************************************
	Табы в регистрации
	**************************************************************/
	$('body').on('click', '.reg-navt-link', function (e) {
		e.preventDefault();
		$('.reg-navt-link').removeClass('active')
		$(this).addClass('active');
		$('.reg-tab').fadeOut(0);
		$('.reg-tab[data-tab=' + $(this).attr('data-tab') + ']').fadeIn(0);
	});


	/**************************************************************
	Покахать/Скрыть пароль
	**************************************************************/
	$('body').on('click', '.pass-view', function (e) {
		e.preventDefault();
		if ($(this).hasClass('view')) {
			$(this).prev().attr('type', 'password');
		} else {
			$(this).prev().attr('type', 'text');
		}
		$(this).toggleClass('view')
	});



	/**************************************************************
	Удаление скидки
	**************************************************************/
	$('body').on('click', '.sale-remove', function (e) {
		e.preventDefault();

		openModal('sale_remove');
	});


	/**************************************************************
	Удаление лида
	**************************************************************/
	$('body').on('click', '.lead-remove', function (e) {
		e.preventDefault();

		openModal('lead_remove');
	});

	/**************************************************************
	Заключение договора
	**************************************************************/
	$('body').on('click', '.dogovor-add', function (e) {
		e.preventDefault();

		openModal('dogovor_thank');
	});

	/**************************************************************
	в отчете
	**************************************************************/
	$('body').on('click', '.reports-open-contacts', function (e) {
		e.preventDefault();

		$('[data-popup=reports_contacts] .popup__body').html($(this).next('.reports-popup-contacts').html());
		openModal('reports_contacts');
	});
	$('body').on('click', '.reports-item-more', function (e) {
		e.preventDefault();

		$(this).toggleClass('opened').next('.reports-item-dop').slideToggle();
	});


	/**************************************************************
	отказать в кп
	**************************************************************/
	$('body').on('click', '.kpreport-refuse', function (e) {
		e.preventDefault();

		openModal('refuse_kp');
	});




	/**************************************************************
	Добавление фото
	**************************************************************/
	$("body").on('change', '.uploading [type=file]', function (event) {
		var input = $(this)[0];
		if (input.files && input.files[0]) {
			if (input.files[0].type.match('image.*')) {
				var file = input.files[0];


				var filesAmount = input.files.length;
				for (i = 0; i < filesAmount; i++) {

					var reader = new FileReader();
					var numb = 0;
					reader.onload = function (event) {
						var dataUri = event.target.result,
							img = document.createElement("img");
						const canvas = document.createElement("canvas");

						(img.onload = function () {
							let width = img.width,
								height = img.height;
							const maxHeight = 1500,
								maxWidth = 1500;
							var photoClass = "photoV";
							width > height
								? (width > maxWidth && ((height = Math.round((height *= maxWidth / width))), (width = maxWidth)), (photoClass = "photoH"))
								: (height > maxHeight && ((width = Math.round((width *= maxHeight / height))), (height = maxHeight)), (photoClass = "photoV")),
								(canvas.width = width),
								(canvas.height = height);
							const ctx = canvas.getContext("2d");
							ctx.drawImage(img, 0, 0, width, height);
							let compressedData = canvas.toDataURL("image/jpeg", 0.7);


							$(input).parent('.uploading').find('img').remove()
							$(input).parent('.uploading').addClass('no-empty').append('<img class="" src="' + compressedData + '" />');

							if ($(input).hasClass('js-cmp-create-addprogr-uploading')) {
								console.log('upd');
								$(input).parents('.js-cmp-create-addprogr').find('.js-cmp-create-addprogr-action').removeClass('hide');
							}
						}),
							(img.onerror = function (err) {
								reject(err);
							}),
							(img.src = dataUri);
					}
					reader.readAsDataURL(input.files[i]);

				}

			} else {
				console.log('Не изображение');
			}
		} else {
			console.log('Нет файла');
		}

	});


	/**************************************************************
	Формы
	**************************************************************/
	if ($('.add-schedule').is(':checked')) $('.schedule').show();
	$('.add-schedule').change(function (e) {
		e.preventDefault();
		$('.schedule').slideToggle();
	});

	$('.add-schedule-time').each(function () {
		if ($(this).is(':checked')) $(this).parents('.schedule-row').find('.schedule-inputs').show();
	})
	$('.add-schedule-time').change(function (e) {
		e.preventDefault();

		$(this).parents('.schedule-row').find('.schedule-inputs').slideToggle();
	});



	$('.rollup-toggle').click(function (e) {
		e.preventDefault();

		$(this).toggleClass('opened').parents('.rollup-box').find('.rollup-tab').slideToggle();
	});


	
	$('.js-toggle-joined').click(function (e) {
		e.preventDefault();

		$(this).toggleClass('opened');
		$('.js-joined-ihidden').slideToggle();
	});


	$('body').on('click', '.js-loyalty-citem-more', function (e) {
		e.preventDefault();

		$(this).toggleClass('opened').prev().slideToggle();
	});
	

	/**************************************************************
	Партнерские программы
	**************************************************************/
	$('.js-toggle-proposal').click(function (e) {
		e.preventDefault();
		if ($(this).hasClass('disabled')) return;
		$(this).addClass('disabled').parents('.js-item').find('.js-body').slideToggle();
	});

	$('.js-type-sale-partner').change(function(e) {
		e.preventDefault();

		let tab_name = $(this).attr('data-tab'),
			tabs = $(this).parents('.js-body');
			
		$(tabs).find('.js-type-sale-partner-tab').removeClass("active").fadeOut(300).promise().done(function () {

			let ct = $(tabs).find('.js-type-sale-partner-tab[data-tab*=' + tab_name + ']');
			$(ct).addClass("active").fadeIn(300);


		});
	});
	$('.js-type-sale-partner[data-tab=1]').click();

	/**************************************************************
	Переписка
	**************************************************************/
	function chatScrollBottom() {
		setTimeout(function () {
			$('#chat_messages').mCustomScrollbar('scrollTo', 'bottom');
		}, 100);
	}

	$(".chat-scroll").mCustomScrollbar({
		scrollButtons: {
			enable: false
		},
		scrollInertia: 50,
		horizontalScroll: false,
		autoDraggerLength: true,
		autoHideScrollbar: false,
		advanced: { autoScrollOnFocus: false, autoExpandHorizontalScroll: true, updateOnContentResize: true }
	});
	chatScrollBottom();

	
	/**************************************************************
	ФИльтр в школах
	**************************************************************/
	$(document).on('change', '.js-filter-scool input', function(e) {
		const val = $(this).val();
		
		if (val === '' ||  $('.js-filter-scool-more input[data-choose='+val+']').length==0) {
			$('.js-filter-scool-more').addClass('hide');
			return;
		}

		$('.js-filter-scool-more').removeClass('hide');
		$('.js-filter-scool-more li').addClass('hide');
		$('.js-filter-scool-more input[value=""]').prop('checked', true);
		$('.js-filter-scool-more input[value=""]').parents('li').removeClass('hide');
		$('.js-filter-scool-more input[data-choose='+val+']').parents('li').removeClass('hide');
	})

	
	/**************************************************************
	cookie
	**************************************************************/
	function getCookie(name) {

		var matches = document.cookie.match(new RegExp("(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"));
	
		return matches ? decodeURIComponent(matches[1]) : undefined;
	
	}

	if (document.querySelector('.js-cookie'))
		if (getCookie('cookie_inf') === '1') {
			document.querySelector('.js-cookie').remove();					
		}  else {
			setTimeout(() => {
				document.querySelector('.js-cookie').classList.add('opened');
			}, 200);
		}

	document.addEventListener('click', function(e){

		if(e.target.classList.contains('js-cookie-save')) {
			document.querySelector('.js-cookie').classList.remove('opened');
			document.cookie = "cookie_inf=1; path=/; max-age="+60*60*24*30;
		}
		
		if(e.target.classList.contains('js-cookie-close')) {
			document.querySelector('.js-cookie').classList.remove('opened');
		}
	});




	/**************************************************************
	CAMP
	**************************************************************/
	$(".js-accord-toggle").on("click", function (e) {
		e.preventDefault();

		$(this).parents('.js-accord-item').toggleClass('opened');
		$(this).parents('.js-accord-item').find('.js-accord-body').slideToggle();
	});
	$('.js-accord-toggle-all').on("click", function(e) {
		e.preventDefault();

		$(this).toggleClass('active');		
		if ($(this).hasClass('active')) {
			$(this).parents('.js-accord-all')
				.find('.js-accord-item').addClass('opened')
				.find('.js-accord-body').slideDown();
		} else {
			$(this).parents('.js-accord-all')
				.find('.js-accord-item').removeClass('opened')
				.find('.js-accord-body').slideUp();
		}
	})

	
	
	$('.js-cmp-create-addprogr-remove').click(function (e) {
		e.preventDefault();

		const parent = $(this).parents('.js-cmp-create-addprogr');
		$(parent).find('.js-cmp-create-addprogr-uploading').val(null);
		$(parent).find('.uploading').removeClass('no-empty').find('img').remove();
		$(this).parents('.js-cmp-create-addprogr-action').addClass('hide');
	});
	
	$('.js-camp-inputs-add').on("click", function(e) {
		e.preventDefault();

		const parent = $(this).closest('.js-camp-inputs');
		const row_new = $(parent).find('.js-camp-inputs-row').first().clone(true);

		$(row_new).find('.js-camp-inputs-remove').first().removeClass('hide');
		$(row_new).find('.js-camp-inputs-add').first().addClass('hide');
		$(row_new).find('input, textarea').val(null).attr('id', '').removeClass('hasDatepicker');

		$(row_new).find('.uploading').removeClass('no-empty').find('img').remove();

		$(row_new).find('input.styler').each(function() {
			const input = $(this).clone();
			$(input).attr('name', $(this).attr('name') + $(parent).find('.js-camp-inputs-row').length);
			$(input).val( $(this).attr('data-value') );
			$(this).parent().after(input);
			$(this).parent().remove();
		})
		$(row_new).find('select.styler').each(function() {
			const select = $(this).clone();
			// $(select).attr('name', $(this).attr('name') + $(parent).find('.js-camp-inputs-row').length);
			// $(select).val( $(this).attr('data-value') );
			$(this).parent().after(select);
			$(this).parent().remove();
		})
		

		$(parent).find('.js-camp-inputs-row').last().after(row_new);
		$(row_new).find('.styler').styler();
		$(row_new).find('.datepicker-input').datepicker({
			// minDate: 0,
			format: 'dd/mm/yyyy',
			changeMonth: true,
			changeYear: true,
			yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2)
		});
		$(row_new).find(".date-mask").mask("99.99.9999");
		setTimeout(function () {
			$('.js-camp-inputs-row .styler').trigger('refresh');
			$(".js-camp-inputs-row  .datepicker-input").datepicker("refresh");
		}, 1)
	})
	$('.js-camp-inputs-remove').on("click", function(e) {
		e.preventDefault();

		$(this).closest('.js-camp-inputs-row').remove();
	})

	$('.js-filters-open').click(function(e) {
		e.preventDefault();

		$(this).toggleClass('opened');
		$('.js-filters').toggleClass('opened');
		//$('body').css('overflow', 'hidden');
	})
	$('.js-filters-close').click(function(e) {
		e.preventDefault();

		$('.js-filters-open').removeClass('opened');
		$('.js-filters').removeClass('opened');
		//$('body').css('overflow', '');
	})


	$('.js-cpm-grouplk-toggle').click(function(e) {
		e.preventDefault();

		$(this).parents('.js-cpm-grouplk').toggleClass('opened').find('.js-cpm-grouplk-body').slideToggle();
	})
	$('.js-cpm-grouplk-toggle-all').click(function(e) {
		e.preventDefault();

		$('.js-cpm-grouplk').removeClass('opened')
		$('.js-cpm-grouplk-body').slideUp();
	})


	
	$('.js-cmp-address-item-ageshow').click(function(e) {
		e.preventDefault();

		$(this).toggleClass('active').next('.js-cmp-address-item-age').slideToggle();
	})
	/**************************************************************
	CAMP  таблицы
	**************************************************************/
	$('.js-cmp-lktablesform-show').click(function(e) {
		e.preventDefault();

		$('.js-cmp-lktablesform[data-form="new"]').slideDown();
	})

	$('body').on('change', 'select[data-required]', function () {
		$(this).removeClass('error');
		setTimeout(function () {
			$(this).trigger('refresh');
		}, 1)
	})
	$('body').on('keyup', 'input[data-required]', function () {
		if ($(this).val().trim() !== '') {
			$(this).removeClass('error');
		}
	});

	$('.js-cmp-lktablesform').submit(function(e){
		e.preventDefault();

		const form = $(this);
		let error = false;
	
		$(form).find('[data-required]').each(function() {
			if ($(this).val().trim() === '') {
				error = true;
				$(this).addClass('error');
			}
		})
		
		if (error) {				
			setTimeout(function () {
				$(form).find('.styler').trigger('refresh');
			}, 1)
			
			return;
		}

		const data = new FormData($(form)[0]);
		const action = $(form).attr('data-form');
		data.append('action', action);

		const type = $(form).attr('data-type');
		const lktables = $('.js-lktables[data-type='+type+']');
		
		let row_new = '';
		if (action == 'new') {
			row_new = $('.js-cmp-lktables-row[data-type='+type+']').clone(true);
			$(row_new).removeClass('row--hide').attr('data-type', '');
		} else {
			row_new = $(form).parents('.js-cmp-lktables-row-form').prev('.js-cmp-lktables-row');
			data.append('id', $(row_new).attr('data-id'));
		}




		$.ajax({
			type: 'POST',
			url: '/assets/connectors/camp-leads.php',
			data: data,
			processData: false,
			contentType: false,
			//dataType: 'JSON',
			success: function(res) {
				res = JSON.parse(res);
				if (res.code !== 200) return;


				$(row_new).find('.js-cmp-lktables-fio').html( data.get('name') );
				$(row_new).find('.js-cmp-lktables-contacts').html( `<div class="nowrap">${data.get('phone')}</div><div class="">${data.get('email')}</div><div class="">${data.get('tg')}</div>` );
				const age = (data.get('age') !== '') ? data.get('age') + ' ' + declOfNum(data.get('age'), ['год', 'года', 'лет']) : '';
				const gender = (data.get('gender') === 'm') ? 'муж' : 'жен';
				$(row_new).find('.js-cmp-lktables-age').html( `<div class="nowrap">${gender}</div><div class="">${age}</div>` );
				$(row_new).find('.js-cmp-lktables-child').html( data.get('name_child') );
				$(row_new).find('.js-cmp-lktables-address').text( data.get('address') );
				$(row_new).find('.js-cmp-lktables-note').text( data.get('note') );
				$(row_new).find('input').each(function() {
					const n_i = $(this).attr('name');
					let val = data.get(n_i);
					if (n_i == 'time') val = data.get('time_from') + ' - ' + data.get('time_to');
					$(this).val( val );
				})


				if (action == 'new') {
					$(row_new).attr('data-id', res.id);
					$(lktables).append(row_new);
					$(form).trigger('reset');			
					setTimeout(function () {
						$(form).find('.styler').trigger('refresh');
					}, 1)


					const row_form = $(form).clone(true);
					$(row_form).attr({'data-type': '', 'data-form': 'change', 'data-id': res.id});
					
					$(row_form).find('input.styler').each(function() {
		
						const input = $(this).clone();
						$(input).prop('checked', $(this).is(':checked'));
						$(this).parent().after(input);
						$(this).parent().remove();
					})
					$(row_form).find('select.styler').each(function() {
						const select = $(this).clone();
						$(select).find('option[value="'+data.get($(this).attr('name'))+'"]').prop('selected', true);
						$(this).parent().after(select);
						$(this).parent().remove();
					})
					
			
					$(lktables).append(`<tr class="cmp_lktables__rowform row--hide js-cmp-lktables-row-form"><td colspan="${$(row_new).find('td').length}"></td></tr>`);
					$(lktables).find('.js-cmp-lktables-row-form').last().find('td').append(row_form);
					
					$(row_form).find('.styler').styler();
					$(row_form).find(".phone-mask").mask("+375(99)999-99-99");
					setTimeout(function () {
						$(row_form).find('.styler').trigger('refresh');
					}, 1)
				}
				if (action == 'change') {
					$(form).parents('.js-cmp-lktables-row-form').addClass('row--hide');
				}
			},
			error: function(error) {
			 
			}
		});

	});
	
	$('body').on('click', '.js-cmp-lktables-row-change', function (e) {
		e.preventDefault();
		
		const row = $(this).parents('.js-cmp-lktables-row');
		$(row).next().removeClass('row--hide');

	});
	$('body').on('click', '.js-cmp-lktables-row-delete', function (e) {
		e.preventDefault();

		const row = $(this).parents('.js-cmp-lktables-row');
		const data = new FormData();
		data.append('action', 'delete');
		data.append('id', $(row).attr('data-id'));

		$.ajax({
			type: 'POST',
			url: '/assets/connectors/camp-leads.php',
			data: data,
			processData: false,
			contentType: false,
			//dataType: 'JSON',
			success: function(res) {
				
				res = JSON.parse(res);
				if (res.code !== 200) return;

				$(row).next().remove();
				$(row).remove();
			},
			error: function(error) {
			 
			}
		});

	});
	
	$('body').on('click', '.js-cmp-lktables-row-change_status', function (e) {
		e.preventDefault();

		const row = $(this).parents('.js-cmp-lktables-row');
		const data = new FormData();
		data.append('action', 'change_status');
		data.append('status', $(this).attr('data-status'));
		data.append('id', $(row).attr('data-id'));

		const res = changeStatusContract(data);
		if (res.code !== 200) return;
		
		$(row).next('.js-cmp-lktables-row-form').remove();
		$(row).remove();

	});

	function changeStatusContract(data) {
		
		$.ajax({
			type: 'POST',
			url: '/assets/connectors/camp-leads.php',
			data: data,
			processData: false,
			contentType: false,
			//dataType: 'JSON',
			success: function(res) {
				
				res = JSON.parse(res);
				//if (res.code !== 200) 
				
				return res;

			},
			error: function(error) {
			 
			}
		});
	}


	$('body').on('click', '.js-cmp-lktables-row-clone', function (e) {
		e.preventDefault();

		const row = $(this).parents('.js-cmp-lktables-row');
		const data = new FormData();
		data.append('action', 'clone');
		data.append('id', $(row).attr('data-id'));

		const row_new = $(row).clone(true);
		$(row_new).attr('data-id', '');


		$.ajax({
			type: 'POST',
			url: '/assets/connectors/camp-leads.php',
			data: data,
			processData: false,
			contentType: false,
			//dataType: 'JSON',
			success: function(res) {
				res = JSON.parse(res);
				if (res.code !== 200) return;

				
				$(row_new).attr('data-id', res.id);
				
				const row_form = $(row).next();
				const row_form_new = $(row_form).clone(true);
				$(row_form_new).attr('data-id', res.id);
				
				$(row_form_new).find('input.styler').each(function() {

					const input = $(this).clone();
					$(input).prop('checked', $(this).is(':checked'));
					$(this).parent().after(input);
					$(this).parent().remove();
				})
				$(row_form_new).find('select.styler').each(function() {
					const select = $(this).clone();
					$(select).find('option[value="'+data.get($(this).attr('name'))+'"]').prop('selected', true);
					$(this).parent().after(select);
					$(this).parent().remove();
				})
				
				$(row_form_new).find('.styler').styler();
				$(row_form_new).find(".phone-mask").mask("+375(99)999-99-99");
				setTimeout(function () {
					$(row_form_new).find('.styler').trigger('refresh');
				}, 1)

				$(row_form).after(row_new);
				$(row_new).after(row_form_new);
			},
			error: function(error) {
			 
			}
		});

	});


	/**************************************************************
	CAMP  Скидки
	**************************************************************/
	var cmp_sale_carousel = new Swiper(".js-cmp-sale-carousel", {
		slidesPerView: "auto",
		spaceBetween: 30,
		loop: true,
		speed: 600,
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
		breakpoints: {
			0: {
				initialSlide: 1,
				loop: false,
				centeredSlides: false,
				slidesPerView: "auto",
				spaceBetween: 16
			},
			609: {
				initialSlide: 1,
				centeredSlides: false,
				slidesPerView: 2,
				spaceBetween: 20
			},
			980: {
				initialSlide: 2,
				centeredSlides: true,
				slidesPerView: 3,
				spaceBetween: 20
			},
		}
	});

	$('.js-cmp-sale-item-lmore').click(function(e) {
		e.preventDefault();

		$(this).toggleClass('opened').parents('.js-cmp-sale-item-info').toggleClass('opened');
	})


	/**************************************************************
	CAMP KVIZ
	**************************************************************/


	$('.js-kviz-next').click(function(){
		let step_form = $(this).parents('.js-step-form');

		// if ($(step_form).find('.js-kviz-itemr').length)
		// 	if (!$(step_form).find('.js-kviz-itemr input[type=radio]').is(':checked')) {
		// 		$(step_form).find('.js-kviz-error span').fadeIn(400);
		// 		return;
		// 	} else {
		// 		$(step_form).find('.js-kviz-error span').hide();
		// 	}
			
		let error = false;
		//$(step_form).find('[data-required]').removeClass('error')
		$(step_form).find('[data-required]').each(function() {
			if ($(this).val().trim() === '') {
				error = true;
				$(this).addClass('error');
			}
		})
		
		if (error) {
				
			setTimeout(function () {
				$(step_form).find('.styler').trigger('refresh');
			}, 1)
			
			return;
		}

		$(step_form).removeClass('active').next('.js-step-form').addClass('active');
		
		
	});
	$('.js-kviz-prev').click(function(e){
		e.preventDefault();

		let step_form = $(this).parents('.js-step-form');

		$(step_form).removeClass('active').prev('.js-step-form').addClass('active');

	});	
});


/**************************************************************
СТИЛИЗАЦИЯ ИНПУТОВ
**************************************************************/
(function ($) {
	$(function () {
		$('.styler').styler({
			selectSearch: true
		});
	});
})(jQuery);

