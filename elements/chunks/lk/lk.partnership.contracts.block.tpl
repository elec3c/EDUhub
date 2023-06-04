{set $direction = '!getSchoolsCurrDirection' | snippet : ['user_id' => $from_user_id]}
{set $schoolsPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}

{foreach $direction as $k=>$v}
    {set $title = intval($v) | resource : 'pagetitle'}
    {if $title}
        {set $a[$k]=$title}
    {/if}
{/foreach}


{if $from_user_id}
    {set $employees = '!getEmployeesUserData' | snippet : ['user_id'=>$from_user_id]}
    {if is_array($employees['partnership'])}
        {set $r = $employees['partnership']}
    {else}
        {set $r = []}
    {/if}    
{/if}

{set $fio = ''}
{if $r['show_lastname']}{set $fio = $r['lastname']}{/if}
{if $r['show_name']}{set $fio = $r['name']}{/if}
{if $r['show_surname']}{set $fio = $r['surname']}{/if}

{set $email = ''}
{if $r['show_email']}{set $email = $r['email']}{/if}

{set $mobilephone = ''}
{if $r['show_phone']}{set $mobilephone = $r['mobilephone']}{/if}




{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}  

<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="title">
            {set $fullname = $from_user_id|user:'fullname'}
            <a href="{$schoolsPageID | url}?partnership_id={$id}">{if $date_start}{$date_start|date_format:"%d.%m.%Y"}&nbsp;(дата вступления в силу договора)&nbsp;/&nbsp;{/if}{if $fullname}{$fullname}{/if}</a>
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">

        <div class="ppcontracts__item lk__wraplr section__lr">
            <div class="ppcontracts__rcols">
                <div class="ppcontracts__item-col ppcontracts__item-col--info">
                    {*<div class="ppcontracts__item-label">Дата/ Школа <br> Юр. и конт. лицо</div>
                    <div class="ppcontracts__item-val">{$date_create|date_format:'%d/%m/%Y'?:'-'}</div>*}
                    {if $schoolsPageID && $fio}
                    <div class="ppcontracts__item-val"><a href="{$schoolsPageID | url}" style="text-decoration:underline;">{$fio?:''}</a></div>
                    {else}
                    <div class="ppcontracts__item-val">{$fio?:'Не назначен ответственный сотрудник'}</div>
                    {/if}
                    {if $email}
                    <div class="ppcontracts__item-label">Email:</div>
                    <div class="ppcontracts__item-val">{$email}</div>
                    {/if}
                    {if $mobilephone}
                    <div class="ppcontracts__item-label">Телефон:</div>
                    <div class="ppcontracts__item-val">{$mobilephone}</div>                    
                    {/if}
                </div>
                    
                <div class="ppcontracts__item-col ppcontracts__item-col--category">
                    <div class="ppcontracts__item-label">Курсы шаблоны</div>
                        <div class="ppcontracts__item-val">
                    <ul>
                        {set $couses_list = '!pdoResources' | snippet : [
                            'parents'=>'61',
                            'returnIds'=>'1',
                            'depth'=>0,
                            'limit'=>0,
                            'includeTVs'=>'course_group_title, course_owner',
                            'where'=>["course_owner"=>$from_user_id]
                        ]}
                        {set $courses_all = explode(',', $couses_list)}
                        {foreach $courses_all as $k=>$v}
                            {set $title = $v | resource : 'pagetitle'}
                            {if intval($v) && $title}
                                <li>{$title |truncate:60:" ..."}</li>
                            {/if}
                        {/foreach}
                    </ul>                            
                            
                        </div>
                </div>
                        
                <div class="ppcontracts__item-col ppcontracts__item-col--sale">
                    <div class="ppcontracts__item-label">Размер скидки</div>
                    <div class="ppcontracts__item-val">{$query['discount']}{switch  trim($query['discount_unit'])}{case 'percent'}%{case 'rub'}&nbsp;руб.{default}-{/switch}<br>{switch  trim($query['discount_for_what'])}{case 'course_fee'}cтоимость курса{case 'first_month'}первый месяц{case 'fixed_discount'}фиксированная скидка{default}-{/switch}</div>
                </div>
                                
                <div class="ppcontracts__item-col ppcontracts__item-col--note">
                    <div class="ppcontracts__item-label">Примечание</div>
                    <div class="ppcontracts__item-val">{$detail}</div>
                </div>
                                
                <div class="ppcontracts__item-col ppcontracts__item-col--count">
                    <div class="ppcontracts__item-label">Количество курсов на сайте</div>
                    <div class="ppcontracts__item-val">2</div>
                    <div class="ppcontracts__item-val"><a href="" class="link">Перейти</a></div>
                </div>
            </div>
            <div class="ppcontracts__item-buttons">
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership' title='Контактное лицо' c='green'}
                {if $status_id in [3,5]}
                    <button class="btn btn--bdrred reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="6">Расторгнуть</button>
                {/if}
            </div>
        </div>
    </div>
</div>