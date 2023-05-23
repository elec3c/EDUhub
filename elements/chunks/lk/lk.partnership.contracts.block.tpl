{set $direction = '!getSchoolsCurrDirection' | snippet : ['user_id' => $from_user_id]}
{set $schoolsPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}

{foreach $direction as $k=>$v}
{set $title = $v | resource : 'pagetitle'}
{if $title}
    {set $a[$k]=$title}
{/if}
{/foreach}


{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.status.color.tpl'}  


<div class="cgcourse rollup-box">
    <div class="cghead leads__header lk__wraplr section__lr">
        <div class="cgtitle">
            <a href="{$schoolsPageID | url}?partnership_id={$id}">Заявка №&nbsp;{$id}&nbsp; / {$from_user_id | user : 'fullname'} / [<b style={"color:"~$color}>{$prefix}</b>]</a>
        </div>
        <a href="#" class="link__more rollup-toggle" style="display:block;">
            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
        </a>
    </div>
    <div class="rollup-tab">
        

        <div class="ppcontracts__item lk__wraplr section__lr">
            <div class="ppcontracts__rcols">
                <div class="ppcontracts__item-col ppcontracts__item-col--info">
                    <div class="ppcontracts__item-label">Дата/ Школа <br> Юр. и конт. лицо</div>
                    <div class="ppcontracts__item-val">{$date_create|date_format:'%d/%m/%Y'?:'-'}</div>
                    {if $schoolsPageID}
                    <div class="ppcontracts__item-val"><a href="{$schoolsPageID | url}" style="text-decoration:underline;">{$from_user_id | user : 'fullname'}</a></div>
                    {else}
                    <div class="ppcontracts__item-val">{$from_user_id | user : 'fullname'}</div>
                    {/if}
                    <div class="ppcontracts__item-val">Email: {$from_user_id | user : 'email'} <br> {$from_user_id | user : 'mobilephone'}</div>
                </div>
                    
                <div class="ppcontracts__item-col ppcontracts__item-col--category">
                    <div class="ppcontracts__item-label">Направления</div>
                        <div class="ppcontracts__item-val">{implode('<br>',$a)}</div>
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
            <div class="ppcontracts__item-buttons">Контактное лицо
                {include 'file:chunks/partnership/partnership.contact.btn.tpl' user_id=$from_user_id responsible='partnership' title='Контактное лицо' c='green'}
                {if $status_id in [3,5]}
                    <button class="btn btn--bdrred reject-partnership" data-id="{$id}" data-user="{$to_user_id}" data-status="6">Расторгнуть</button>
                {/if}
            </div>
        </div>
    </div>
</div>