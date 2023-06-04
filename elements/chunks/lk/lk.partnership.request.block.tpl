{set $schoolsPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}
{set $checkPartnershipUnique = '!checkPartnershipUnique' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{if !$checkPartnershipUnique}
{set $r = '!getPartnershipData' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{set $partnershipData = $r[0]}
{/if}

{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}

<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="title">
            {set $fullname = $from_user_id|user:'fullname'}
            <a href="{$schoolsPageID | url}?partnership_id={$id}">{if $date_create}{$date_create|date_format:"%d.%m.%Y"}&nbsp;{/if}{if $fullname}{$fullname}{/if}&nbsp;[<b style={"color:"~$color}>{$prefix}</b>]</a>
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">



                        

<div class="pprequest">
                    {*<div class="pprequest__head">
                        <div class="pprequest__date">{$date_create|date_format:'%d/%m/%Y'?:'-'}</div>    
                        {if $schoolsPageID}
                        <div class="pprequest__name"><a href="{$schoolsPageID | url}" style="text-decoration:underline;">{$from_user_id | user : 'fullname'}</a></div>
                        {else}
                        <div class="pprequest__name">{$from_user_id | user : 'fullname'}</div>
                        {/if}                        
                    </div>*}
                    <div class="pprequest__item lk__wraplr section__lr">
                        <div class="pprequest__item-col">
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Список курсов</div>
                                <div class="pprequest__item-val">
                                    <ul class="pprequest__item-list">
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
                        </div>
                        
                        <div class="pprequest__item-col">
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Размер скидки</div>
                                <div class="pprequest__item-val">{$query['discount']}{switch  trim($query['discount_unit'])}{case 'percent'}%{case 'rub'}&nbsp;руб.{default}-{/switch}</div>
                            </div>
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">На что дается скидка</div>
                                <div class="pprequest__item-val">{switch  trim($query['discount_for_what'])}{case 'course_fee'}cтоимость курса{case 'first_month'}первый месяц{case 'fixed_discount'}фиксированная скидка{default}-{/switch}</div>
                            </div>
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Примечание</div>
                                <div class="pprequest__item-val">{$detail}</div>
                            </div>
                        </div>
                        
                        <div class="pprequest__item-col col-last">
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Форма подписания договора школой</div>
                                <div class="pprequest__item-val">Любая форма</div>
                            </div>
                            <div class="pprequest__item-prop">
                                <div class="pprequest__item-label">Выберите способ подписания договора</div>
                                <div class="pprequest__item-val">Оферта: приняв предложение договора будет подписан. <br> Бумажный носитель: приняв предложение договор не будет подписан, он переместится на страницу"На подписании"</div>
                                
                                <div class="pprequest__item-pf">
                                    <div class="input__row">
                                        <select name="agreement" class="styler styler--white" id="partnershipAgreement" disabled>
                                            {set $agreement = $query['agreement']?:'agreement_public_offer'}
                                            {set $aExclude = []}
                                            {set $agreement_paper = $to_user_id | user:'agreement_paper'}
                                            {set $agreement_public_offer = $to_user_id | user:'agreement_public_offer'}
                                            {if !$agreement_public_offer}
                                                {set $r1 = ["agreement_public_offer"]}
                                            {/if}
                                            {if !$agreement_paper}
                                                {set $r2 = ["agreement_paper"]}
                                            {/if}
                                            {set $aExclude = array_merge($r1, $r2)}
                                            
                                            {'!getValuesTV' | snippet : ['exclude'=>$aExclude, 'tvid'=>'115', 'curr'=>$agreement]}
                                        </select>
                                    </div>
                                    {if !($status_id in [2,6,7,9])}                                    
                                    <button class="btn btn--green w-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" {if $agreement=='agreement_public_offer'}data-status="3"{else}data-status="1"{/if} id="btnPartnershipAgreement">{if $agreement=='agreement_public_offer'}Заключить догоров{else}Принять{/if}</button>
                                    {/if}
                                </div>
                            </div>
                        </div>
                        <div class="pprequest__item-buttons">
                            
                            {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership'}
                            
                            {if !($status_id in [2,6,7,9])}
                            <button class="btn btn--red  reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="2">Отклонить</button>
                            {/if}
                        </div>
                    </div>
                </div>
        </div>
</div>