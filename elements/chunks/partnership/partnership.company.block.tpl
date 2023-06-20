{set $to_user_id = $_pls['tv.scools_owner']}
{if $to_user_id > 0}
    {set $fullname = $to_user_id | user:'fullname'}
    {set $show_user = $to_user_id | user:'show_user'}
    {set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}
    {set $scope = $r[$to_user_id|user:'scope']?:'не указано'}
    {set $count_employees = $to_user_id | user:'count_employees'}
{/if}


{set $from_user_id = $.get.user_id? : $_modx->user.id}
{set $checkPartnershipUnique = '!checkPartnershipUnique' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}


{set $partnership_join_paper = $to_user_id | user:'partnership_join_paper'}
{set $partnership_join_offer = $to_user_id | user:'partnership_join_offer'}

{if !$partnership_join_paper && !$partnership_join_offer}

    {set $partnership_join = 0}
    
{else}

    {set $partnership_join = 1}
    
{/if}



{set $agreement_paper = $to_user_id | user:'agreement_paper'}
{set $agreement_public_offer = $to_user_id | user:'agreement_public_offer'}
{if !$agreement_paper && !$agreement_public_offer}
    {set $agreement = 0}
{else}
    {set $agreement = 1}
{/if}

{if $fullname && $partnership_join}


    
    {if !$checkPartnershipUnique}
        {set $partnershipData = '!getPartnershipData' | snippet : ['from_user_id' => $from_user_id, 'to_user_id'=>$to_user_id]}
        {set $partnershipResponseData = '!getPartnershipResponseData' | snippet : ['id' => $partnershipData['0']['id']]}
        {set $status_id=$partnershipResponseData['status_id']}
    {else}
        {set $status_id=''}
    {/if}
    
    {if $checkPartnershipUnique}
    {insert 'file:chunks/partnership/partnership.status.color.tpl'}
    <div class="ssrequest__item pd0 lk__wraplr section__lr js-item">
                            <div class="ssrequest__item-head">
                                <div class="ssrequest__item-col">
                                    <div class="ssrequest__item-label show-tablet">Компании, открытые <br> для предложений <br class="hide-tablet-sm">о партнерстве</div>
                                    {$fullname}
                                </div>
                                <div class="ssrequest__item-col">
                                    <div class="ssrequest__item-label show-tablet">Сфера дейтельности</div>
                                    {$scope}
                                </div>
                                <div class="ssrequest__item-col">
                                    <div class="ssrequest__item-label show-tablet">Количество сотрудников компании</div>
                                    {$count_employees}
                                </div>
                                <div class="ssrequest__item-col ssrequest__item-col--status">
                                    <div class="ssrequest__item-label show-tablet">Статус</div>
                                    {if $checkPartnershipUnique}предложение не отправлено{else}{$status}{/if}
                                </div>
                                <div class="ssrequest__item-col ssrequest__item-col--buttons">
                                    {if $agreement}
                                        {if $status_id && !($status_id in [2,4,6])}
                                            <button class="btn js-toggle-proposal w-all">
                                                Редактировать предложение
                                            </button>
                                        {else}
                                            <button class="btn js-toggle-proposal w-all">Добавить предложение</button>
                                        {/if}
                                    {else}
                                        {if $partnership_join}
                                            <p>Не указаны способы заключения договора</p>
                                        {else}
                                            <p>Не приняты условия партнерской программы</p>
                                        {/if}
                                    {/if}
                                </div>
                            </div>
                            {if $checkPartnershipUnique}
                                {set $successMessage = 'Предложение добавлено успешно!'}
                            {else}
                                {set $successMessage = 'Предложение отредактировано успешно!'}
                            {/if}
                            {'!AjaxFormitLogin'|snippet:[
                                'snippet' => 'FormIt',
                                'redirectTimeout'=>2000,
                                'redirectTo'=>1124,
                                'hooks' => 'FormIt2Partnership',
                                'form' => '@FILE chunks/forms/partnership.offer.form.add.tpl',
                                'to_user_id' => $to_user_id,
                                'clearFieldsOnSuccess' => 0,
                                'from_user_id' => $from_user_id,
                                'validationErrorMessage' => 'В форме содержатся ошибки!',
                                'successMessage' => $successMessage
                             ]}                        
                        </div><!--ssrequest__item-->
    {/if}
    
{/if}                    