{set $from_user_id = $.get.user_id? : $_modx->user.id}
{set $userPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}
{set $checkPartnershipUnique = '!checkPartnershipUnique' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{if !$checkPartnershipUnique}
{set $r = '!getPartnershipData' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
{set $partnershipData = $r[0]}
{set $response = '!getPartnershipResponseData' | snippet : ['id' => $partnershipData['id']]}
{/if}

{set $query = $partnershipData['query'] | fromJSON}
{if is_array($query['sales'])}
    {set $sales = $query['sales']}
{else}
    {set $sales = []} 
{/if}

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

            
            
                            <div class="ssrequest__item-label">Выберите способ подписания договора</div>
                            <div class="ssrequest__item-method">
                                <div class="ssrequest__item-method__sel">
                                    <select name="agreement" class="styler styler--white">
                                        {set $agreement = $query['agreement']?:'agreement_public_offer'}
                                        {set $aExclude = []}
                                        {set $agreement_paper = $to_user_id | user:'agreement_paper'}
                                        {set $agreement_public_offer = $to_user_id | user:'agreement_public_offer'}
                                        {if !$agreement_public_offer}
                                            {set $aExclude[] = "agreement_public_offer"}
                                        {/if}
                                        {if !$agreement_paper}
                                            {set $aExclude[] = "agreement_paper"}
                                        {/if} 
                                        {'!getValuesTV' | snippet : ['exclude'=>$aExclude, 'tvid'=>'115', 'curr'=>$agreement]}
                                    </select>
                                </div>
                                <div class="ssrequest__item-method__date">
                                    <div class="ssrequest__item-label">Дата</div>
                                    {$date_create|date_format:"%d/%m/%Y"}
                                </div>
                                
                                <div class="ssrequest__item-method__types">
                                    <label class="form__lcheck">
                                        <input type="radio" name="type" value="same" {if $partnershipData['type']=='same' || !isset($partnershipData['type'])}checked{/if} class="styler styler--check js-type-sale-partner" data-tab="1">
                                        <span>Одинаковая скидка на все курсы</span>
                                    </label>
                                    <label class="form__lcheck">
                                        <input type="radio" name="type" value="diff" {if $partnershipData['type']=='diff'}checked{/if} class="styler styler--check js-type-sale-partner" data-tab="2">
                                        <span>Разные скидки на разные курсы</span>
                                    </label>
                                </div>
                            </div>

                            <div class="ssrequest__item-types {if $partnershipData['type']=='same' || !isset($partnershipData['type'])}show active{/if} js-type-sale-partner-tab" data-tab="1">
                                <div class="ssrequest__item-types__row">
                                    <div class="ssrequest__item-types__col">
                                        <div class="ssrequest__item-label">Описание размера и условий предоставления скидок</div>
                                        <textarea name="detail" class="input input--white" placeholder="Указание размера скидки обязательно. Например: Скидка 15% на занятия в группах по направлению &laquo;Дизайн&raquo;. Скидка 10% на IT-курсы. Скидка на индивидуальное обучение по любым напарвлениям - 20%.">{$query['detail']}</textarea>
                                    </div>
                                    <div class="ssrequest__item-types__col">
                                        <div class="ssrequest__item-label hide-tablet-sm">Размер скидки</div>
                                        <input type="text" name="discount" class="input input--white" placeholder="Введите значение" inputmode="numeric" pattern="\d*" value="{$query['discount']}"/>
                                    </div>
                                    <div class="ssrequest__item-types__col">
                                        <div class="ssrequest__item-label hide-tablet-sm">Ед. изм.</div>
                                        <select name="discount_unit" class="styler styler--white place-mob" data-placeholder="Ед. измерения скидки">
                                            {set $discount_unit = $query['discount_unit']?:'percent'}
                                            {'!getValuesTV' | snippet : ['tvid'=>'118', 'curr'=>$discount_unit]}
                                        </select>
                                        
                                    </div>
                                    <div class="ssrequest__item-types__col">
                                        <div class="ssrequest__item-label">На что дается скидка</div>
                                        <select name="discount_for_what" class="styler styler--white">
                                            {set $discount_for_what = $query['discount_for_what']?:'course_fee'}
                                            {'!getValuesTV' | snippet : ['tvid'=>'119', 'curr'=>$discount_for_what]} 
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="ssrequest__item-types {if $partnershipData['type']=='diff'}show active{/if} js-type-sale-partner-tab" data-tab="2">




                                        
                                        
                                        
                                        
                            {'!pdoResources' | snippet : [
                                'parents'=>'61',
                                'depth'=>0,
                                'limit'=>0,
                                'includeTVs'=>'course_group_title, course_owner',
                                'sales'=>$sales,
                                'tpl'=>'@FILE chunks/forms/partnership.offer.form.item.tpl',
                                'where'=>["course_owner"=>$from_user_id]
                                
                            ]?:'<b style="color:red">Нет доступных курсов</b>'}


                                <div class="ssrequest__item-types__bottom">
                                    <div class="ssrequest__item-label">Описание размера и условий предоставления скидок</div>
                                    <textarea name="detail_diff" class="input input--white" placeholder="Указание размера скидки обязательно. Например: Скидка 15% на занятия в группах по направлению &laquo;Дизайн&raquo;. Скидка 10% на IT-курсы. Скидка на индивидуальное обучение по любым напарвлениям - 20%.">{$query['detail_diff']}</textarea>
                                </div>
                            </div>
                          
                            <div class="ssrequest__item-irow">
                                <div class="ssrequest__item-label">Сопроводительное письмо для компании-партнера</div>
                                <textarea name="letter" class="input input--white height-input" placeholder="Например: При возникновении вопросов вы можете связаться с менеджером нашей школы по тел. +375 (ХХ) ХХХ-ХХ-ХХ">{$query['letter']}</textarea>
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