<div class="analitics__item">
    <div class="analitics__item-bl">
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Имя</div>
                {$name?:'-'}
            </div>
            <div class="analitics__item-prop" style="text-align:left;">
                <div class="analitics__item-prop__label">Курс</div>
                {set $group_name = '!pdoField' | snippet : ['id' => $res_id, 'field' => 'course_group_title']}
                <a href="{$group_id | url}">{$group_name?:$pagetitle}</a>
            </div>            
        </div>
    </div>
    <div class="analitics__item-bl">
        {*<div class="analitics__item-col">
            <div class="analitics__item-prop" style="text-align:left;">
                <div class="analitics__item-prop__label">Курс</div>
                {set $group_name = '!pdoField' | snippet : ['id' => $res_id, 'field' => 'course_group_title']}
                <a href="{$group_id | url}">{$group_name?:$pagetitle}</a>
            </div>
        </div>                            *}
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Заказан</div>
                {$date | date : "d.m.Y"}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Телефон</div>
                {set $mobilephone = $user_id | user:'mobilephone'}
                {set $confirm_phone = $user_id | user:'confirm_phone'}
                {*if ($status == 1)*}
                {if $confirm_phone}
                    <a href="tel:{$confirm_phone | clearphone}">{$confirm_phone}</a>
                {elseif $mobilephone}
                    <a href="tel:{$mobilephone | clearphone}">{$mobilephone}</a>
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
    </div>
</div><!--analitics__item-->




