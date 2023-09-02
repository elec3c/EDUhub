{set $schoolsPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}
{set $checkPartnershipUnique = '!checkPartnershipUnique' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{if !$checkPartnershipUnique}
{set $r = '!getPartnershipData' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{set $partnershipData = $r[0]}
{/if}

{set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}


{set $direction = '!getSchoolsCurrDirection' | snippet : ['user_id' => $from_user_id]}
{foreach $direction as $k=>$v}
{set $title = $v | resource : 'pagetitle'}
{if $title}
    {set $a[$k]=$title}
{/if}
{/foreach}

{set $scope = $r[$from_user_id|user:'scope']}


{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}
{insert 'file:chunks/partnership/partnership.status.color.tpl'} 

<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="title">
            {set $fullname = $from_user_id|user:'fullname'}
            <a href="{$schoolsPageID | url}?partnership_id={$id}">{if $date_create}{$date_create|date_format:"%d.%m.%Y"}&nbsp;{/if}{if $fullname}{$fullname}{/if}&nbsp;<b style={"color:"~$color}>[{$prefix}]</b>{if $agreement}&nbsp;({$agreement}){/if}
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
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership'}
                {if $status_id != 2}
                <button class="btn btn--red  reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="2">Отклонить</button>
                {/if}
                        
                {if ($status_id in [1]) && (trim($query['agreement']) == 'agreement_paper')}
                    <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="3" data-agreement="{$query['agreement']}"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                {elseif $status_id in [8]}                                
                    <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="51" data-agreement="{$query['agreement']}"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                {elseif $status_id in [3]}
                    <button class="btn btn--more"><span>Договор подписан Вами</span></button>
                {/if}             
            </div>      
        </div>
    </div>                    
</div>                    