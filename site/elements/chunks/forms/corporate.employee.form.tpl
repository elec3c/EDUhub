{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
{if $user_id > 0}
    {set $my_company_id = $user_id | user:'my_company_id'}
{else}
    {set $my_company_id = 0}
{/if}
<form method="post" >
    <input name="controll" class="no-display" type="text">
    <input type="hidden" name="employee_join" value="{if $my_company_id}0{else}1{/if}" >
    <div class="input__row">
        <input type="text" name="promocode_or_link" class="input" placeholder="Промокод" value="" {if $my_company_id}style="display:none;"{/if} {if $my_company_id}readonly{/if}>
    </div>   
    <div class="input__row">
        <input class="{if !$my_company_id}btn w-all{else}btn btn--red w-all{/if}" id="btnCorporateEmployeeJoin" value="{if !$my_company_id}Присоединиться к компании{else}Присоединиться к другой компании{/if}" readonly/>
        
        
    </div>    
</form>