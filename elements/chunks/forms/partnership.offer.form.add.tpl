{set $from_user_id = $.get.user_id? : $_modx->user.id}
{set $userPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}
{set $checkPartnershipUnique = '!checkPartnershipUnique' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{if !$checkPartnershipUnique}
{set $r = '!getPartnershipData' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{set $partnershipData = $r[0]}
{set $response = '!getPartnershipResponseData' | snippet : ['id' => $partnershipData['id']]}
{/if}

{set $query = $partnershipData['query'] | fromJSON}
{set $courses = $query['courses'] | fromJSON}

{if $from_user_id}    
    <form method="post" enctype="multipart/form-data" action="[[~[[*id]]]]" class="ssrequest__item-body js-body" id="partnershipOfferFormAdd{$to_user_id}">
        {*<input type="hidden" name="resource_id" value="{$userPageID}" />*}
        <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
        <input type="hidden" name="nospam:blank" />
        <input type="hidden" name="uid" value="{$partnershipData['id']}" />
        <input type="hidden" name="from_user_id" value="{$from_user_id}" />
        <input type="hidden" name="to_user_id" value="{$to_user_id}" />
        
        <input name="controll" class="no-display" type="text"> 
        <div class="ssrequest__item-irow ssrequest__item-cols ssrequest__item-cols--3">
        <div class="ssrequest__item-icol ssrequest__item-icol--date">
        <div class="ssrequest__item-label">Дата</div>
           {$date_create|date_format:"%d/%m/%Y"}
        </div>
        <div class="ssrequest__item-icol">
        {*<div class="ssrequest__item-label">Направления</div>
            <div class="checkselect checkselect--white  check-select" data-placeholder="Все">
            <input type="hidden" name="course_metro" class="check-select-value">
                                            <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Все</div>
                                            <div class="checkselect__dropdown check-select-dropdown">
                                                <div class="checkselect__list">
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value="all"><span>Все</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>IT</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Языковые</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Маркетинг</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Бизнес</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Финансы</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Продажи</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Управление персоналом</span></label>
                                                    <label><input type="checkbox"  class="styler check-param" name="city[]" checked value=""><span>Дизайн и графика</span></label>
                                                </div>
                                            </div>
                                        </div> *}
                                    </div>
                                    <div class="ssrequest__item-icol ssrequest__item-icol--course">
                                        <div class="ssrequest__item-label">Выбрать курсы</div>
                                        <div class="checkselect checkselect--white  check-select" data-placeholder="Выбрать все">
                                            <input type="hidden" name="course_metro" class="check-select-value">
                                            <div class="checkselect__select checkselect__select--check placeholder check-select-toggle check-select-text">Выбрать все</div>
                                            <div class="checkselect__dropdown check-select-dropdown">
                                                <div class="checkselect__list">
                                                    {if $checkPartnershipUnique}
                                                    <label><input type="checkbox"  class="styler check-param" name="courses[]" checked value="all"><span>Выбрать все</span></label>
                                                    
                                                    {'!pdoResources' | snippet : [
                                                        'parents'=>'61',
                                                        'depth'=>0,
                                                        'limit'=>0,
                                                        'includeTVs'=>'course_group_title, course_owner',
                                                        'tpl'=>'@CODE <label><input type="checkbox"  class="styler check-param" name="courses[]" checked value="{$id}"><span>{$_pls["tv.course_group_title"]?:$pagetitle}</span></label>',
                                                        'where'=>["course_owner"=>$from_user_id]
                                                    ]}
                                                    {else}
                                                    {set $couses_list = '!pdoResources' | snippet : [
                                                        'parents'=>'61',
                                                        'returnIds'=>'1',
                                                        'depth'=>0,
                                                        'limit'=>0,
                                                        'includeTVs'=>'course_group_title, course_owner',
                                                        'where'=>["course_owner"=>$from_user_id]
                                                    ]}
                                                    {set $courses_all = explode(',', $couses_list)}
                                                    <label><input type="checkbox"  class="styler check-param" name="courses[]" {if in_array('all', $courses)}checked{/if} value="all"><span>Выбрать все</span></label>
                                                    {foreach $courses_all as $k=>$v}
                                                        {set $title = $v | resource : 'pagetitle'}
                                                        {if intval($v) && $title}
                                                            <label><input type="checkbox"  class="styler check-param" name="courses[]" {if in_array($v, $courses)}checked{/if} value="{$v}"><span>{$title |truncate:60:" ..."}</span></label>
                                                        {else}
                                                            <label><input type="checkbox"  class="styler check-param" name="courses[]" checked value="{$v}"><span>Выбрать все</span></label>
                                                        {/if}
                                                    {/foreach}
                                                    {/if}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        </div>
        <div class="ssrequest__item-irow ssrequest__item-cols">
            <div class="ssrequest__item-icol">
                <div class="ssrequest__item-label">Размер скидки / ед. изм</div>
                <input type="text" name="discount" class="input input--white" placeholder="Введите числовое значение" inputmode="numeric" pattern="\d*" value="{$query['discount']}" required/>
            </div>
            <div class="ssrequest__item-icol">
                <div class="ssrequest__item-label ssrequest__item-label--empty">&nbsp;</div>
                <select name="discount_unit" class="styler styler--white">
                    {set $discount_unit = $query['discount_unit']?:'percent'}
                    {'!getValuesTV' | snippet : ['tvid'=>'117', 'curr'=>$discount_unit]}
                </select>            
            </div>
            <div class="ssrequest__item-icol">
                <div class="ssrequest__item-label">На что дается скидка</div>
                <select name="discount_for_what" class="styler styler--white">
                    {set $discount_for_what = $query['discount_for_what']?:'course_fee'}
                    {'!getValuesTV' | snippet : ['tvid'=>'116', 'curr'=>$discount_for_what]} 
                </select>
            </div>
            <div class="ssrequest__item-icol">
                <div class="ssrequest__item-label">Выберите способ подписания договора</div>
                <select name="agreement" class="styler styler--white">
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
        </div>
        <div class="ssrequest__item-irow">
            <textarea name="detail" class="input input--white height-input" placeholder="Примечание">{$partnershipData['detail']}</textarea>
        </div>

            {if $partnershipData['id']}
                {if $response['status_id'] in [3,5]}
                    {set $date = $partnershipData['date_start'] | dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
                    {set $prefix = "заключен договор "~$date}
                    {set $color = 'green'}
                    <br>
                    <p>Изменение запроса недоступно:&nbsp;<b style={"color:"~$color}>{$prefix}</b></p>
                    <div class="ssrequest__item-buttons">
                    <button  type="button" data-form="{$to_user_id}" class="btn btn--red partnership-offer-form-reset">Отмена</button>
                    </div>
                {else}        
                    <div class="ssrequest__item-buttons">
                    <button class="btn btn--purple" type="submit">Изменить</button>
                    {if $partnershipData['id']}
                    <a href="{1169 | url}?delete={$partnershipData['id']}" class="btn btn--bdrred">Удалить предложение</a>
                    {/if}                    
                    <button  type="button" data-form="{$to_user_id}" class="btn btn--red partnership-offer-form-reset">Отмена</button>
                    </div>
                {/if}
            {else}
            <div class="ssrequest__item-buttons">
                {if $from_user_id && $to_user_id}
                    <button class="btn btn--purple" type="submit">Создать</button>
                {/if}
                <button  type="button" data-form="{$to_user_id}" class="btn btn--red partnership-offer-form-reset">Отмена</button>
            </div>                
                
            {/if}
    </form>
{else}
    <p>Ошибочка вышла!</p>
{/if} 