<form action="{$_modx->resource.uri}" method="POST" id="call_to_school_reg">
    
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="user_name" value="{$_modx->user.id | user:'username'}" />
    <input type="hidden" name="school_id" value="{$schoolid?:$_modx->resource.course_owner}" />
    <input type="hidden" name="resource_id" value="{$groupid?:$_modx->resource.id}" />
	<input name="controll" class="no-display" type="text">
	<input type="hidden" name="form" value="Заказ обратного звонка пользователем">

	<button class="btn btn--red w-all">Да</button>
	<button class="btn btn--bdred w-all popup-close">Отмена</button>
	
</form>



