<form action="{$_modx->resource.uri}" method="POST">
    
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="user_name" value="{$_modx->user.id | user:'username'}" />
    <input type="hidden" id="schoolID" name="school_id" value="{$_modx->resource.course_owner}" />
    <input type="hidden" id="resourceID" name="resource_id" value="{$_modx->resource.id}" />
    
	<input name="controll" class="no-display" type="text">
	<input type="hidden" name="form" value="Заказ обратного звонка анонимным пользователем">
	<div class="input__row">
		<input type="text" name="name" class="input" placeholder="Имя">
	</div>  
	<div class="input__row">
		<input type="tel" name="phone" class="input phone-mask" placeholder="Телефон" required>
	</div>
	<label class="form__polit">
		<input type="checkbox" name="polit" class="styler" required>
		<span>Ознакомлен с <a href="{370 | url}">пользовательским соглашением</a></span>
	</label>
	<div class="form__btn">
	    <button class="btn w-all">Отправить</button>
	</div>
</form>