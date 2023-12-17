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
{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}

<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="title">
            {set $fullname = $from_user_id|user:'fullname'}
            <a href="{$schoolsPageID | url}?partnership_id={$id}">
                {if $status_id in [5,51]}
                    {if $date_start}<span style="color:green;">{$date_start|date_format:"%d.%m.%Y"}</span>&nbsp;/&nbsp;{/if}{if $fullname}{$fullname}{/if}&nbsp;<b style={"color:"~$color}>[{$prefix}]</b>{if $agreement}&nbsp;({$agreement}){/if}
                {else}
                    {if $fullname}{$fullname}{/if}
                {/if}
            </a>            
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">

            <div class="ssrequest__item lk__wraplr section__lr js-item">
                
            {insert 'file:chunks/partnership/partnership.info.tpl'}
            <div class="ssrequest__item-rcbuttons">
                {if intval($schools_id)}
                <a class="btn btn--bdrgreen" href="{$schools_id | url}" class="link">Перейти</a>
                {/if}
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership' title='Контактное лицо' c='green'}
                {if $status_id in [3,5,51]}
                    <button class="btn btn--bdrred reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="7">Расторгнуть</button>
                {/if}                
                </div>      
            </div>
        
    </div>
</div>