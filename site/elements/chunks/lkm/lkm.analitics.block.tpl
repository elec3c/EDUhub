<div class="analitics__item">
    <div class="analitics__item-bl">
        <div class="analitics__item-title">лид</div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Имя</div>
                {set $fullname = $userId | user : 'fullname'}
                {$fullname?:'-'}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Образовательный центр</div>
                {set $school_name = $course_owner | user : 'fullname'}
                {$school_name?:'-'}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Курс</div>
                {set $title = $course_group_title?:$pagetitle}
                <a href="{$res_id | url}">{$title | truncate : 20}</a>
            </div>
        </div>
    </div>
    <div class="analitics__item-bl">
        <div class="analitics__item-title">
            Промокоды
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Дата получения</div>
                {$data_from | date : "d.m.Y"}<br/>
                {if $active and empty($deleted)}<b><i>{$code}</i></b>{else}<i style="color:red;">Отменен</i>{/if}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Срок действия</div>
                {set $data_valid = ($data_from | date : "Y-m-d" ~ " +7 days")}
                {$.php.strtotime($data_valid) | date : "d.m.Y"}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Комиссия</div>
                {$cur_commission} руб
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Договор</div>
                {if $deal}
                    <b><i>Заключен</i></b>
                {else}
                    <i style="color:red;">Отменен</i>
                {/if}
            </div>
        </div>
    </div>
</div>