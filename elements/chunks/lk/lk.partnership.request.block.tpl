{set $schoolsPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}
{set $checkPartnershipUnique = '!checkPartnershipUnique' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{if !$checkPartnershipUnique}
{set $r = '!getPartnershipData' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{set $partnershipData = $r[0]}
{/if}

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
                {if !($status_id in [2,4,6,7,9])}                                    
                    <button style="margin-bottom:5px;" class="btn btn--green w-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-agreement="{$query['agreement']}" {if $agreement_key=='agreement_public_offer'}data-status="51"{else}data-status="1"{/if} id="btnPartnershipAgreement">{if $agreement_key=='agreement_public_offer'}Заключить договор{else}Принять{/if}</button>
                {/if}
                            
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership' w=1}
                                        
                {if !($status_id in [2,4,6,7,9])}
                    <button style="margin-top:5px;" class="btn btn--red  reject-partnership w-all" data-id="{$id}" data-user="{$to_user_id}" data-status="2">Отклонить</button>
                {/if}                        
            </div>      
        </div>
    </div>
</div>