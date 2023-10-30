{set $isManagerOK = ($_modx->user.id | ismember : ['Managers'])}
{if $isManagerOK}
    {set $user_id = ($.get.user_id > 0) ? $.get.user_id : 0}
{else}
    {set $user_id = $_modx->user.id}
{/if}

{set $corporateID = '!getCorporatePageID' | snippet : ['corporate_id'=>$user_id]}

<form action="{$_modx->resource.uri}" method="post" id="profileCompany">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="resource_id" value="{$corporateID?:0}">
    <input type="hidden" name="form" value="Данные компании">
    <div class="input__row mw-i">
        {set $country = $user_id | user:'country'}
        <select name="resident_country" id="resident-country" class="styler" data-placeholder="Резидент страны *" required>
            <option value=""></option>
            <option value="BY" {if $country=='BY'}selected{/if}>Республика Беларусь</option>
            {*'!getValuesTV' | snippet : ['tvid'=>'107', 'curr'=>$country]*}
        </select>
    </div>  
    
    <div class="input__row mw-i">
        {include 'file:chunks/forms/fields/fields.corporate.resident.cities.tpl' userPageID = $corporateID}
    </div>
    <br>
                                    
    {*<div class="input__row mw-i">
        {set $city = $user_id | user:'city'}
        <select name="resident_city" id="resident-city" class="styler" data-placeholder="Город *" required>
            <option value=""></option>
            {'!getListCities' | snippet : ['name'=>'city', 'curr'=>$city, 'chained'=>'BY', 'option'=>1]}
        </select>
    </div>   *}
    <div class="input__row mw-i">
        {set $scope = $user_id | user:'scope'}
        <select name="scope" class="styler" data-placeholder="Сфера деятельности компании *" required>
            <option value=""></option>
            {'!getValuesTV' | snippet : ['tvid'=>'114', 'curr'=>$scope]}
        </select>
    </div>    
    <div class="input__row mw-i">
        {set $count_employees = $user_id | user:'count_employees'}
        <input type="text" name="count_employees" value="{if $count_employees}{$count_employees}{/if}" class="input" placeholder="Количество сотрудников в компании  *" required inputmode="numeric" pattern="\d*" {if $req==1}required{/if}>
    </div>   
    <div class="input__row mw-i">
        {set $site = $user_id | user:'website'}
        <input type="url" name="site" value="{$site}" class="input" placeholder="Официальный сайт *" pattern="^(http|https):\/\/.*" required>
    </div>
    <div class="input__row">
        {set $show_user = $user_id | user:'show_user'}
        <label class="form__lcheck">
            <input type="radio" name="show_user" value="0" class="styler" {if !$show_user}checked{/if}>
            <span>Не показывать пользователям сайта в списке зарегистрированных компаний</span>
        </label>
        <label class="form__lcheck">
            <input type="radio" name="show_user" value="1" class="styler" {if $show_user}checked{/if}>
            <span>Показывать пользователям сайта в списке зарегистрированных компаний</span>
        </label>
    </div>
    <button class="btn w-all mw-i" type="submit">Сохранить</button>
</form>