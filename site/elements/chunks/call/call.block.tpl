<div class="leads__block">
    {if $group_name}
    <div class="leads__header lk__wraplr section__lr">{$group_name}</div>
    {/if}
    
    <div class="leads__item lk__wraplr section__lr">
        {if $name}
        <div class="leads__item-name show-desktop-sm">{$user_id | user:'fullname'}</div>
        

        <div class="leads__item-col col--first">
            <div class="leads__item-name hide-desktop-sm">{$name}</div>
        </div>
        {/if}

        <div class="leads__item-col hide-desktop-sm" style="text-align:left;">
            <div class="leads__item-prop">
                <div class="leads__item-prop__label">Группа</div>
                {if $group_id > 0}
                    {set $pagetitle = $group_id | resource : 'pagetitle'}
                    <a href="{$modx->makeUrl($group_id)}">{$group_id | resource : 'course_group_title'?:$pagetitle}</a>
                {/if}
            </div>
        </div>

        
        <div class="leads__item-col">
            <div class="leads__item-prop">
                <div class="leads__item-prop__label">Телефон</div>
                {*set $status = $_modx->runSnippet('!callCheckBuy', [
                    'user_id'      => $user_id, 
                    'group_id'     => $group_id,
                    'school_id'    => $school_id
                ])*}
                {set $mobilephone = $user_id | user:'mobilephone'}
                {set $confirm_phone = $user_id | user:'confirm_phone'}
                {*if ($status == 1)*}
                {if $confirm_phone}
                    <a href="tel:{$confirm_phone | clearphone}">{$confirm_phone}</a>
                {elseif $mobilephone}
                    <a href="tel:{$mobilephone | clearphone}">{$mobilephone}</a>}
                {elseif $phone}
                    <a href="tel:{$phone | clearphone}">{$phone}</a>}
                {else}
                    пусто
                {/if}
                {*elseif ($status == 2)*}                    
                    {*<i>Пользователь выбрал другую школу</i>*}
                {*else*}
                    {*<span style="color:red">Скрыт</span>*}
                {*/if*}
            </div>
        </div>
        
        {*<div class="leads__item-col leads__item-action">
                           
            {if $status == null || $status == 0}
             {'!AjaxForm'|snippet:[
                'snippet' => 'FormIt',
                'hooks' => 'budgetBuy',
                'form' => '@FILE chunks/forms/budget.buy.form.tpl',
                'user_id' => $user_id,
                'group_id' => $group_id,
                'school_id' => $school_id,
                'price' => 10
            ]}            
            {/if}
            
            
        </div>*}
        
    </div>
</div>                    

