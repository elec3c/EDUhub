<div class="analitics__item">
    <div class="analitics__item-bl">
        {if ($idx == 5)}
        <div class="analitics__item-title">
        лид
        </div>
        {/if}
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Имя</div>{/if}
                {set $fullname = $userId | user : 'fullname'}
                {$fullname?:'-'}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Образовательный центр</div>{/if}
                {set $school_name = $course_owner | user : 'fullname'}
                {$school_name?:'-'}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Курс</div>{/if}
                {set $title = $course_group_title?:$pagetitle}
                <a href="{$res_id | url}">{$title | truncate : 20}</a>
            </div>
        </div>
    </div>
    <div class="analitics__item-bl">
        {if ($idx == 5)}
        <div class="analitics__item-title">
        Промокоды    
        </div>
        {/if}
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Значение</div>{/if}
                {*$data_from | date : "d.m.Y"}<br/>*}
                {if $active and empty($deleted)}<b><i>{$code}</i></b>{else}<i style="color:red;">Отменен</i>{/if}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Дата создания</div>{/if}
                {if $created}
                {$.php.strtotime($created) | date : "d.m.Y"}
                {else}
                  00-00-000
                {/if}
            </div>
        </div>        
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Срок действия</div>{/if}
                {set $data_valid = ($data_from | date : "Y-m-d" ~ " +7 days")}
                {if $data_valid}
                {$.php.strtotime($data_valid) | date : "d.m.Y"}
                {else}
                  00-00-000
                {/if}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Комиссия</div>{/if}
                {$cur_commission} руб
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                {if ($idx == 5)}<div class="analitics__item-prop__label">Договор</div>{/if}
                {if $deal}
                    <b><i>Заключен</i></b>
                {else}
                    <i style="color:red;">Отменен</i>
                {/if}
            </div>
        </div>
    </div>
</div>