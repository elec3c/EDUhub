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
        
        <div class="ssrequest__item lk__wraplr section__lr js-item">
                        {*<div class="ssrequest__item-4cols">
                            <div class="ssrequest__item-4col col--company">
                                <div class="ssrequest__item-label">Компания</div>
                                {if $schoolsPageID}
                                <a href="{$schoolsPageID | url}" style="text-decoration:underline;">{$from_user_id | user : 'fullname'}</a>
                                {else}
                                {$from_user_id | user : 'fullname'}
                                {/if}                                
                                <br>Сотрудников - {$from_user_id|user:'count_employees'?:'*'}<br>Сфера - {implode(',',$a)?:'*'}
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Дата</div>
                                {$date_create|date_format:'%d/%m/%Y'?:'-'}
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Статус</div>
                                <b style={"color:"~$color}>{$status}</b>
                            </div>
                        </div>*}

                        <div class="ssrequest__item-4cols">
                            <div class="ssrequest__item-4col col--category">
                                <div class="ssrequest__item-label">Список курсов</div>
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
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Размер скидки / ед.изм</div>
                                {$query['discount']}{switch  trim($query['discount_unit'])}{case 'percent'}%{case 'rub'}&nbsp;руб.{default}-{/switch}
                                
                                <div class="ssrequest__item-label">На что дается скидка</div>
                                {switch  trim($query['discount_for_what'])}{case 'course_fee'}cтоимость курса{case 'first_month'}первый месяц{case 'fixed_discount'}фиксированная скидка{default}-{/switch}
                            </div>
                            <div class="ssrequest__item-4col">
                                <div class="ssrequest__item-label">Форма подписания договора</div>
                                {switch  trim($query['agreement'])}{case 'agreement_paper'}бумажный носитель{case 'agreement_public_offer'}публичная оферта EDUHub{default}-{/switch}
                            </div>
                            <div class="ssrequest__item-4col col--note">
                                <div class="ssrequest__item-label">Примечание</div>
                                <div class="ssrequest__item-note">{if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}</div>
                            </div>
                        </div>

                        
                        <div class="pprequest__item-buttons">
                            
                            {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership'}
                            {if $status_id != 2}
                            <button class="btn btn--red  reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="2">Отклонить</button>
                            {/if}
                            
                            {if ($status_id in [1]) && (trim($query['agreement']) == 'agreement_paper')}
                                <button class="btn btn--purple f-all accept-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="3"><span>Подтвердить <span class="nowrap">подписание договора</span></span></button>
                            {elseif $status_id in [3]}
                                <button class="btn btn--more"><span>Договор подписан Вами</span></button>
                            {/if}
                         </div>
                       
                    </div><!--ssrequest__item-->
                    
    </div>                    
</div>                    