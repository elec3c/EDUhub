function changeDiscount(id){
    
    const discount_unit = document.querySelector('select[name="discount_unit'+id+'"]');
    const discount_for_what = document.querySelector('select[name="discount_for_what'+id+'"]');
    

    if(($('select[name="discount_for_what'+id+'"]').val() == 'fixed_discount') && ($('select[name="discount_unit'+id+'"]').val() != 'rub')){
        
        $('select[name="discount_unit'+id+'"]').val('rub');
        $('select[name="discount_unit'+id+'"]').trigger('change');
        
    } else if(($('select[name="discount_for_what'+id+'"]').val() != 'fixed_discount') && ($('select[name="discount_unit'+id+'"]').val() == 'rub')){
        
        $('select[name="discount_unit'+id+'"]').val('percent');
        $('select[name="discount_unit'+id+'"]').trigger('change');
        
    } 
    
    discount_for_what.querySelectorAll('option').forEach(opt => {
        
        if (opt.dataset.id != discount_unit.value) {
            
            opt.hidden = true;
            
        } else {
            
            opt.hidden = false;
            
        }
        
    });
    
}

$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if (results==null) {
       return null;
    }
    return decodeURI(results[1]) || 0;
}



function offline(){
    
    $('#course_address').val('').change();
    $("#course_address").prop("required", true);
    $('#address').show();
           
    $('#course_city').show();
    $('#course_city-styler').show();
    $('#course_city').prop( "disabled", false);
    $('#course_region').show(); 
    $('#course_region-styler').show(); 
    $('#course_region').prop( "disabled", false);
    $('#course_metro').show();
    $('#course_metro-styler').show(); 
    $('#course_metro').prop( "disabled", false);
    
}

function online() {
    
    
    $('#course_address').val('').change(); 
    $("#course_address").prop("required", false);
    $('#address').hide();
            
            
    $('#course_city').val('').change(); 
    
    $('#course_city').hide();
    $('#course_city-styler').hide();
    $('#course_city').prop( "disabled", true);
    $('#course_region').val('').change(); 
    $('#course_region').hide(); 
    $('#course_region-styler').hide(); 
    $('#course_region').prop( "disabled", true);
    $('#course_metro').val('').change(); 
    $('#course_metro').hide();
    $('#course_metro-styler').hide(); 
    $('#course_metro').prop( "disabled", true);
            
    
}

function init_format_of_study(){
    
               
    $('#request_num_people_in_group').prop( "disabled", true);
    $("#sub_category_type-select").prop("required", false);
    $("#type-select").prop("required", false);
    $("#num_months_of_study").prop("required", false);
    $("#course_duration").prop("required", false);
    $("#price_course").prop("required", false);
    $("#price_course_month").prop("required", false);
    
    $("#num_lesson_per_week").prop("required", false);
    $("#lesson_duration").prop("required", false);
    
}




function individual(){
    
           $('#num_people_in_group').val(1); 
           $('#num_people_in_group').hide();
            
           $('#request_num_people_in_group').val(1); 
           $('#request_num_people_in_group').prop( "disabled", true);
            
            if($("#sub_category_type-select").length) {
               $("#sub_category_type-select").prop("required", false);
               $('#sub_category_type-select').attr("placeholder", "Направление");
               $('#sub_category_type-select').data("placeholder", "Направление");
               $('#sub_category_type-select-styler').attr("placeholder", "Направление");
               $('#sub_category_type-select-styler').data("placeholder", "Направление");
            }
           
           if($("#type-select").length) {
               $("#type-select").prop("required", false);
               $('#type-select').attr("placeholder", "Особенности");
               $('#type-select').data("placeholder", "Особенности");
               $('#type-select-styler').attr("placeholder", "Особенности");
               $('#type-select-styler').data("placeholder", "Особенности");
           }
           
           
            
           $("#num_months_of_study").prop("required", false);
           $('#num_months_of_study').attr("placeholder", "Кол-во месяцев обучения");
           
           $("#course_duration").prop("required", false);
           $('#course_duration').attr("placeholder", "Длительность курса в часах");
           
           $("#price_course").prop("required", false);
           $('#price_course').attr("placeholder", "Стоимость курса в руб.");
           
           $("#price_course_month").prop("required", false);
           $('#price_course_month').attr("placeholder", "Стоимость курса в месяц в руб.");
           
           $("#num_lesson_per_week").prop("required", false);
           $('#num_lesson_per_week').attr("placeholder", "Кол-во занятий в неделю");            
           $("#lesson_duration").prop("required", false);
           $('#lesson_duration').attr("placeholder", "Длительность занятия в мин.");      
           
           $("#price_lesson").prop("required", true);
           $('#price_lesson').attr("placeholder", "Стоимость занятия в руб. *");            
           
}


function group(){
    
    $('#num_people_in_group').show();
    
    $('#request_num_people_in_group').val(''); 
    $('#request_num_people_in_group').prop( "disabled", false);
         
             
    if($("#sub_category_type-select").length) {
    
        $("#sub_category_type-select").attr("required", "true");
        //document.getElementById("#sub_category_type-select").required = true;
        
        $('#sub_category_type-select').attr("placeholder", "Направление *");
        $('#sub_category_type-select').data("placeholder", "Направление *");
        $('#sub_category_type-select-styler').attr("placeholder", "Направление *");
        $('#sub_category_type-select-styler').data("placeholder", "Направление *");
        
    }
           
    
    if($("#type-select").length) {
        
       $("#type-select").attr("required", "true");
       //document.getElementById("#type-select").required = true;
       
       $('#type-select').attr("placeholder", "Особенности *");
       $('#type-select').data("placeholder", "Особенности *");
       $('#type-select-styler').attr("placeholder", "Особенности *");
       $('#type-select-styler').data("placeholder", "Особенности *");
       
    }
    
    
    $("#num_months_of_study").prop("required", true);
    $('#num_months_of_study').attr("placeholder", "Кол-во месяцев обучения *");
           
    $("#course_duration").prop("required", true);
    $('#course_duration').attr("placeholder", "Длительность курса в часах *");
           
    $("#price_course").prop("required", true);
    $('#price_course').attr("placeholder", "Стоимость курса в руб. *");
           
    $("#price_course_month").prop("required", true);
    $('#price_course_month').attr("placeholder", "Стоимость курса в месяц в руб. *");            
    
    
    $("#num_lesson_per_week").prop("required", true);
    $('#num_lesson_per_week').attr("placeholder", "Кол-во занятий в неделю *");            
    $("#lesson_duration").prop("required", true);
    $('#lesson_duration').attr("placeholder", "Длительность занятия в мин. *");
    
    $("#price_lesson").prop("required", false);
    $('#price_lesson').attr("placeholder", "Стоимость занятия в руб.");            
    
    
}

$(document).ready(function() {
	
    init_format_of_study();
    
    if($('#format_of_study').val()=='individual'){
        
        individual();
        
    } else if($('#format_of_study').val()=='group'){
        
        group();
        
        
    }	
    
    
    
    
	
	
	
	
	if($.urlParam('auth')){
	    
	     openModal('reg_user');
	    
	}
	
	var errorVerification = $.urlParam('errorVerification');
	
	if(errorVerification) {
	    
	    if(errorVerification == 1) {
	        
	        $("#verificationСodeErrorMsg").html("Необходимо Вам авторизироваться на сайте!");
	        
	    } else if(errorVerification == 3) {
	        
	        $("#verificationСodeErrorMsg").html("Вы уже верифицированы.");
	        
	    } else if(errorVerification == 4) {
	        
	        $("#verificationСodeErrorMsg").html("Код верификации не найден.");
	        
	    } else if(errorVerification == 2) {
	        
	        $("#verificationСodeErrorMsg").html("Не найдена компания для верификации.");
	        
	    } else if(errorVerification == 5) {
	        
	        $("#verificationСodeErrorMsg").html("К Вам нельзя применить данное приглашение от компании.");
	        
	    }
	    
	    openModal('verification_code_error');
	    
	} else if($.urlParam('successVerification') || $.urlParam('successVerificationInvite')) {
	    
	    if($.urlParam('successVerification')) {
	       
	       if($.urlParam('verified')) {
	           
                $("#verificationСodeMsg").html("Ваша компания уже верифицирована!");   
                
	       } else {
	           
	           $("#verificationСodeMsg").html("Верификация Вашей компании <br> прошла успешно!");
	           
	       }
	        
	    } else if($.urlParam('successVerificationInvite')) {
	        
	        if($.urlParam('newCompany') == 1) {
	        
	            $("#verificationСodeMsg").html("Присоединение к новой компании <br> прошло успешно!");
	        
	        } else if($.urlParam('newCompany') == 0) {
	            
	            $("#verificationСodeMsg").html("Вы уже присоединены к данной компании!");
	            
	        } else {
	            
	            $("#verificationСodeMsg").html("Поздравляем! <br> Присоединение к  компании <br> прошло успешно!");
	            
	        }
	        
	    }
	    
	    openModal('verification_code_thank');
	    
	}
	
	
	
	
	$(document).on('click','.form-reset',function(e){
        e.preventDefault();
        
        $('#partnershipOfferFormAdd'+$(this).data("form")).hide('slow');
        $('#btnOfferAdd'+$(this).data("form")).removeClass( "btn js-toggle-proposal w-all disabled");
        $('#btnOfferAdd'+$(this).data("form")).removeClass('btn js-toggle-proposal w-all disabled').addClass('btn js-toggle-proposal w-all'); 
        
        
        
        
            
    });
        
	
    $("#btnReset").click(function () {
        
       window.location.href=window.location.href.split('?')[0];
			
    });	
    
    var counterDistrict = $('.inputDistrict').length + 1;
    
	$('#addDistrictBtn').click(function() {
	    
	    if(counterDistrict > 23){
	        
            alert("Only 23 input region allow");
            return false;
            
	    } 
	    
	    var newDistrict = $(document.createElement('div')).attr("id", 'InputDistrictDiv' + counterDistrict);
	    newDistrict.after().html('<input type="text" class="input inputDistrict"  name="districts[]" placeholder="Название района ' + counterDistrict + '" id="inputDistrict' + counterDistrict + '" value="" style="margin-bottom:5px;">');
	    newDistrict.appendTo("#InputDistrictGroup");
	
	    counterDistrict++;
	});
	
	var counterMetro = $('.inputMetro').length + 1;
	
	    
	$('#addMetroBtn').click(function() {
	    
	    if(counterMetro > 100){
	        
            alert("Only 100 input metro allow");
            return false;
            
	    } 
	    
	    var newMetro = $(document.createElement('div')).attr("id", 'InputMetroDiv' + counterMetro);
	    newMetro.after().html('<input type="text" class="input inputMetro"  name="metro[]" placeholder="Название метро ' + counterMetro + '" id="inputMetro' + counterMetro + '" value="" style="margin-bottom:5px;">');
	    newMetro.appendTo("#InputMetroGroup");
	
	    counterMetro++;
	});
	
	
    $("#deleteMetroBtn").click(function () {
        
	    if(counterMetro == 1) {
	        
          alert("No more input metro to remove");
          return false;
          
       }   
        
	   counterMetro--;
       $("#inputMetro" + counterMetro).remove();
			
    });	
    
    $("#deleteDistrictBtn").click(function () {
        
	    if(counterDistrict == 1) {
	        
          alert("No more input region to remove");
          return false;
          
       }   
        
	   counterDistrict--;
       $("#inputDistrict" + counterDistrict).remove();
			
    }); 
    
	var counterRoom = $('.inputRoom').length + 1;
    
	$('#addRoomBtn').click(function() {
	    
	    if(counterRoom > 25){
	        
            alert("Only 25 input room allow");
            return false;
            
	    } 
	    
	    var newRoom = $(document.createElement('div')).attr("id", 'InputRoomDiv' + counterRoom);
	    newRoom.after().html('<input type="text" class="input inputRoom"  name="room[]" placeholder="Название комнаты ' + counterRoom + '" id="inputRoom' + counterRoom + '" value="" style="margin-bottom:5px;">');
	    newRoom.appendTo("#InputRoomGroup");
	
	    counterRoom++;
	});   
	    
});


/*
$(document).ready(function() {

    $('#office-auth-login').keypress(function (e) {
        
        var keyCode = e.keyCode ? e.keyCode : e.which;       
        
        if (keyCode == 13)  {
            
          e.preventDefault();
          $('#office-auth-login').submit();
          
          return false; 
          
        } else {
            
            $('#office-auth-login-username').focus();
            
        }
        
    });
    
});

*/
$(document).ready(function() {
    
    $('[name=price_lesson]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=price_course]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });    
    
    $('[name=course_duration]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=lesson_duration]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });

    $('[name=num_people_in_group]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });

    $('[name=sale]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=num_months_of_study]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    $('[name=price_course_month]').bind("change keyup input click", function() {
        if (this.value.match(/[^0-9\.\,]/g)) {
            this.value = this.value.replace(/[^0-9\.\,]/g, '');
        }
    });
    
    if(($('#form_of_study').val()=='online')||($('#form_of_study').val()=='online-micro')) {
        
        online();
        
    }
    
    $("#form_of_study").change(function () {
        
	    if(($('#form_of_study').val()=='online')||($('#form_of_study').val()=='online-micro')) {
	        
            online();    
            
       } else {
           
            offline();
            
       }
			
    });     
    

    $("#format_of_study").change(function () {
        
	    if($('#format_of_study').val()=='individual') {
	        
            individual();
          
	    } else if($('#format_of_study').val()=='group') {

            group();
           
       }
			
    });
    
});







$(document).ready(function() {
	
    $("#organization-register").click(function () {
        
        
       if ($('#organization-polit-styler').attr('class') != "jq-checkbox styler checked") {
       //if (!$('#organization-polit').is(':checked')) {
           
            AjaxForm.Message.error('Необходимо указать, что Вы ознакомлены с пользовательским соглашением и политикой конфиденциальности');    
        
       }
			
    });	
    
    $("#user-register").click(function () {
       
       if ($('#user-polit-styler').attr('class') != "jq-checkbox styler checked") {
       //if (!$('#user-polit').is(':checked')){
           
            AjaxForm.Message.error('Необходимо указать, что Вы ознакомлены с пользовательским соглашением и политикой конфиденциальности');      
        
       }
			
    });
    
    $("#company-register").click(function () {
       
       if ($('#company-polit-styler').attr('class') != "jq-checkbox styler checked") {
       //if (!$('#company-polit').is(':checked')){
           
            AjaxForm.Message.error('Необходимо указать, что Вы ознакомлены с пользовательским соглашением и политикой конфиденциальности');        
            
       }
			
    });
    
});


function date_check(flag) {
    
  start = $('#start_date').val();
  start_s = start.split('.');

  day_start = parseInt(start_s[0]);
  month_start = parseInt(start_s[1]);
  year_start = parseInt(start_s[2]);

  start_t = new Date(year_start, month_start - 1, day_start);
  start_u = Date.parse(start_t);

  finish = $('#end_date').val();
  finish_s = finish.split('.');

  day_finish = parseInt(finish_s[0]);
  month_finish = parseInt(finish_s[1]);
  year_finish = parseInt(finish_s[2]);

  finish_t = new Date(year_finish, month_finish - 1, day_finish);
  finish_u = Date.parse(finish_t);

  if (start_u == finish_u) {
      
      mod_finish_u = start_u + 86400 * 1000;
      mod_finish_t = new Date(mod_finish_u);
      
      $('#end_date').datepicker("setDate", mod_finish_t);
      $('#end_date').datepicker("option", { minDate:  mod_finish_t });
      
  }
}


function custom_range_end(input) 
{ 

    var start = $("#start_date").datepicker("getDate");

return {
            minDate: (input.id == "end_date" ? start : new Date())
      }; 
}


function custom_range_start(input) 
{ 

     var end = $("#end_date").datepicker("getDate");
    
    
return {
            maxDate:(input.id == "start_date" ? end : null)

      }; 
}



$(document).ready(function() {

   $('#date_expiration').datepicker(
   {
       yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2),
       maxDate: null,
       dateFormat: 'dd.mm.yy',
       changeMonth: true,
       changeYear: true
       
   });
   

   $('#date_deadline').datepicker(
   {
       yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2),
       maxDate: null,
       dateFormat: 'dd.mm.yy',
       changeMonth: true,
       changeYear: true
       
   });

   $('#data_from').datepicker(
   {
       yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2),
       maxDate: null,
       dateFormat: 'dd.mm.yy',
       changeMonth: true,
       changeYear: true
       
   });
   

   $('#start_date').datepicker(
   {
       yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2),
       beforeShow: custom_range_start,
       maxDate: null,
       dateFormat: 'dd.mm.yy',
       changeMonth: true,
       changeYear: true,
       onSelect: function() {
            flag = 0;
            date_check(flag);
       }
   });

   $('#end_date').datepicker(
   {
	   yearRange: (new Date().getFullYear() - 1) + ':' + (new Date().getFullYear() + 2),
       beforeShow: custom_range_end,
       dateFormat: 'dd.mm.yy',
       changeMonth: true,
       changeYear: true,
       onSelect: function() {
            flag = 1;
            date_check(flag);
       }
   });
   
   
   
});

$(document).ready(function(){
	$('form').submit(function(){

		$(this).find('input[type=submit], button[type=submit]').prop('disabled', true);
		
		setTimeout(function(){
			$(this).find('input[type=submit], button[type=submit]').prop('disabled', false);
		},5000);
	});
});





function filterCategory(category, sub_category, schedule, time, form_of_study, course_city) {
    
    // reset results list
    $('.filter-cat-results .f-cat').removeClass('active');
    
    // the filtering in action for all criteria
    var selector = ".filtering .f-cat";
    if (category && (category !== '')) {
        selector = '[data-category=' + category + "]";
    }
    if (sub_category && (sub_category !== '')) {
        selector = selector + '[data-sub_category=' + sub_category + "]";
    }
    if (schedule && (schedule !== '')) {
        selector = selector + '[data-schedule=' + schedule + "]";
    }
    if (time && (time !== '')) {
        selector = selector + '[data-time=' + time + "]";
    }
    if (form_of_study && (form_of_study !== '')) {
        selector = selector + '[data-form_of_study=' + form_of_study + "]";
    }
    if (course_city && (course_city !== '')) {
        selector = selector + '[data-course_city=' + course_city + "]";
    }    
    
    // show all results
    $(selector).addClass('active');

    // reset active filter
    filterActive = category;
    
}


$(document).ready(function(){
    
    var filterActive;
    
    // start by showing all items
    $('.filtering .f-cat').addClass('active');
    
    // call the filtering function when selects are changed
    $('.filtering select').change(function() {
        
        filterCategory($('#category-select-2').val(), $('#sub_category-select-2').val(), $('#schedule-select-2').val(), $('#time-select-2').val(), $('#form_of_study-select-2').val(), $('#course_city-select-2').val());
        
    });

});



$(".checkbox-parent input").on('click',function() {
    
  var _parent=$(this);
  var nextli=$(this).parent().next().children().children();
  
  if(_parent.prop('checked')) {
      
    nextli.each(function() {
        
        $(this).children().prop('checked',true);
        
    });
    
  } else {
      
    nextli.each(function() {
        
        $(this).children().prop('checked',false);
        
    });
    
  }
  
});

$(".checkbox-child input").on('click',function(){
  
  var ths=$(this);
  var parentinput=ths.closest('div').prev().children();
  var sibblingsli=ths.closest('ul').find('li');
  
  if(ths.prop('checked')){
      
    parentinput.prop('checked',true);
    
  } else {
      
    var status=true;
    
    sibblingsli.each(function(){
        
        if($(this).children().prop('checked')) {
            
            status=false;
            
        }
        
    });
     
    if(status) parentinput.prop('checked',false);
  }
  
});


$(document).ready(function() {
    
    var acc = document.getElementsByClassName("accordion");
    var i;
    
    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            this.classList.toggle("accordion--active");
            var panel = this.nextElementSibling;
            if (panel.style.maxHeight){
                panel.style.maxHeight = null;
            } else {
                panel.style.maxHeight = panel.scrollHeight + "px";
            } 
        });
    }

});

$(document).ready(function() {
	$(".accordion__icon").on("click", function(e) {
		var $icon = $(this);
		var $header = $(this).parent();
		var $content = $(this).parent().next();
		if (!$icon.hasClass("accordion__active")) {
			$(".accordion__content").slideUp(400);
			$(".accordion__header").removeClass("accordion__active");
			$('.accordion__icon').removeClass("accordion__active");
		}
		$icon.toggleClass("accordion__active");
		$header.toggleClass("accordion__active");
		$content.slideToggle();
	});
});


$(document).ready(function() {
    $(document).on('change', '.js-filter-scool input', function(e) {
	    $('#schools_sub_direction_all').removeClass('snav__label-wrap active').addClass('snav__label-wrap');
    });
});


function queue_weekdays(){
    
    
      $('#days6 input[type=checkbox]').prop("disabled", true);
      $('#days7 input[type=checkbox]').prop("disabled", true);

      
      $('#days1 input[type=checkbox]').removeAttr("disabled");
      $('#days2 input[type=checkbox]').removeAttr("disabled");
      $('#days3 input[type=checkbox]').removeAttr("disabled");
      $('#days4 input[type=checkbox]').removeAttr("disabled");
      $('#days5 input[type=checkbox]').removeAttr("disabled");
      
      
      $('#days6').hide();
      $('#days7').hide();
      
      $('#days1').show();
      $('#days2').show();
      $('#days3').show();
      $('#days4').show();
      $('#days5').show();
      
    
}


function queue_weekend(){
    
       $('#days6 input[type=checkbox]').removeAttr("disabled");
       $('#days7 input[type=checkbox]').removeAttr("disabled");
    
      $('#days1 input[type=checkbox]').prop("disabled", true);
      $('#days2 input[type=checkbox]').prop("disabled", true);
      $('#days3 input[type=checkbox]').prop("disabled", true);
      $('#days4 input[type=checkbox]').prop("disabled", true);
      $('#days5 input[type=checkbox]').prop("disabled", true);   
    
    
      $('#days6').show();
      $('#days7').show();
      
      $('#days1').hide();
      $('#days2').hide();
      $('#days3').hide();
      $('#days4').hide();
      $('#days5').hide();
      
    
}


$(document).ready(function() {
  
  $("#days_block").hide();
  $("#address_block").css("display", "none");
  
    var schedule = $('[name="schedule"]');
    var form_of_study = $('[name="form_of_study"]');

    
    form_of_study.on("change", function() {
    
        var is_form_of_study = $("input[name='form_of_study']:checked").val();
            
        
            if((is_form_of_study=='online')||(is_form_of_study=='online-micro') || (is_form_of_study=='recording')) {
            
                $("#address_block").hide();
                $('#course_city').val('').change(); 
                $('#course_region').val('').change(); 
                $('#course_metro').val('').change(); 
                
            } else {
                
                $("#address_block").show();
                
            }
    }); 





    schedule.on("change", function() {

    if($('#days1 input[type=checkbox]').is(":checked"))
        $('#days1 input[type=checkbox]').trigger('click');
        
    if($('#days2 input[type=checkbox]').is(":checked"))
        $('#days2 input[type=checkbox]').trigger('click');
        
    if($('#days3 input[type=checkbox]').is(":checked"))
        $('#days3 input[type=checkbox]').trigger('click');
        
    if($('#days4 input[type=checkbox]').is(":checked"))
        $('#days4 input[type=checkbox]').trigger('click');
        
    if($('#days5 input[type=checkbox]').is(":checked"))
        $('#days5 input[type=checkbox]').trigger('click');
        
    if($('#days6 input[type=checkbox]').is(":checked"))
        $('#days6 input[type=checkbox]').trigger('click');
        
    if($('#days7 input[type=checkbox]').is(":checked"))
        $('#days7 input[type=checkbox]').trigger('click');
    

  if(this.value === "weekdays"){
  
    $("#days_block").show();    
    queue_weekdays();
     

  } else if(this.value === "weekend"){
  
    $("#days_block").show();    
    queue_weekend();
    
  } else {
  
    
      $("#days_block").hide();    
    
      $('#days1').prop("disabled", true);
      $('#days2').prop("disabled", true);
      $('#days3').prop("disabled", true);
      $('#days4').prop("disabled", true);
      $('#days5').prop("disabled", true);
      $('#days6').prop("disabled", true);
      $('#days7').prop("disabled", true);
      
  }

  
});



});