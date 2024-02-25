{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="rkp section__mg">
            <div class="container">
            {if ($.get.edit && ($.get.delete is empty))}
     
                {set $partnershipData = '!getPartnershipData' | snippet : ['id'=>$.get.edit]}
                {set $company = $partnershipData['to_user_id'] | user:'fullname'}
                {set $to_user_id = $partnershipData['to_user_id']? : 0}
                {set $from_user_id = $partnershipData['from_user_id']? : 0}
                <div class="section__head">
                    <h2 class="section__title">Редактировать партнерского предложения для {$company}</h2>
                </div>
                {if $partnershipData && $_modx->user.id == $partnershipData['from_user_id']}
                
                
                {if $to_user_id > 0}
                    {set $address = $to_user_id | user:'city'}
                    {set $fullname = $to_user_id | user:'fullname'}
                    {set $show_user = $to_user_id | user:'show_user'}
                    {set $r = '!getValuesTV' | snippet : ['tvid'=>'114', 'arr'=>1]}
                    {set $scope = $r[$to_user_id|user:'scope']?:'не указано'}
                    {set $count_employees = $to_user_id | user:'count_employees'}
                    {set $city = $modx->runSnippet('getListCities', ['name' => 'city', 'arr'=>1])}
                    {set $company_id = $modx->runSnippet('getCompanyPageID', ['company_id' => $to_user_id])}
                    
                    {set $resident_cities = $modx->runSnippet('outputMultipleTV', ['resourceId' => $company_id, 'tvName' => 'resident_cities', 'arr'=>'1'])}
                    
                    {set $arr = array_keys($resident_cities)}
                    
                    {foreach $arr as $i=>$val}
                        {set $city_arr[$i]=$city[$val]}
                    {/foreach}
                {/if}
   
                {set $agreement_paper = $to_user_id | user:'agreement_paper'}
                {set $agreement_public_offer = $to_user_id | user:'agreement_public_offer'}
                {if !$agreement_paper && !$agreement_public_offer}
                    {set $agreement = 0}
                {else}
                    {set $agreement = 1}
                {/if}
                    <div class="ssrequest__header">
                        <div class="ssrequest__item-col">Компания</div>
                        <div class="ssrequest__item-col">Город</div>
                        <div class="ssrequest__item-col">Сфера деятельности</div>
                        <div class="ssrequest__item-col">Количество сотрудников компании</div>
                    </div>                
                
                <div class="ssrequest__item pd0 lk__wraplr section__lr js-item">
                            <div class="ssrequest__item-head">
                                <div class="ssrequest__item-col">
                                    <div class="ssrequest__item-label show-tablet">Компании, открытые <br> для предложений <br class="hide-tablet-sm">о партнерстве</div>
                                    {$fullname}
                                </div>
                                <div class="ssrequest__item-col ssrequest__item-col--city">
                                    <div class="ssrequest__item-label show-tablet">Город</div>
                                    <ul class="city-list">
                                    {foreach $city_arr as $k=>$v}
                                        <li class="city-item">{$v}</li>
                                    {/foreach}
                                    </ul>
                                </div>                                
                                <div class="ssrequest__item-col">
                                    <div class="ssrequest__item-label show-tablet">Сфера дейтельности</div>
                                    {$scope}
                                </div>
                                <div class="ssrequest__item-col">
                                    <div class="ssrequest__item-label show-tablet">Количество сотрудников компании</div>
                                    {$count_employees}
                                </div>
                            </div>
                    
                            {'!AjaxFormitLogin'|snippet:[
                                'snippet' => 'FormIt',
                                'redirectTimeout'=>0,
                                'redirectTo'=>1124,
                                'hooks' => 'FormIt2Partnership',
                                'showUploadProgress'=>0,
                                'form' => '@FILE chunks/forms/partnership.offer.form.add.tpl',
                                'to_user_id' => $to_user_id,
                                'clearFieldsOnSuccess' => 1,
                                'from_user_id' => $from_user_id,
                                'validationErrorMessage' => 'В форме содержатся ошибки!',
                                'successMessage' => 'Предложение отредактировано успешно!',
                                'btn' => 'Редактировать'
                            ]}  
                </div>
                {else}
                    {if $partnershipData}
                        <p>Вам не пренадлежит данное партнерское предложение!</p>
                    {else}
                        {$_modx->sendRedirect($_modx->makeUrl(1))}
                    {/if}
                {/if}                
            {elseif ($.get.delete && ($.get.edit is empty))} 
                {set $partnershipData = '!getPartnershipData' | snippet : ['id'=>$.get.delete]}
                {set $company = $partnershipData['to_user_id'] | user:'fullname'}
                <div class="section__head">
                    <h2 class="section__title">Удаление партнерского предложения для {$company}</h2>
                </div>
                {if $partnershipData && $_modx->user.id == $partnershipData['from_user_id']}
                {'!AjaxFormitLogin'|snippet:[
                    'snippet' => 'FormIt',
                    'redirectTimeout'=>500,
                    'redirectTo'=>1127,
                    'form' => '@FILE chunks/forms/partnership.offer.form.delete.tpl',
                    'hooks' => 'Partnership2Delete',
                    'validate' => 'partnership_id:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Партнерское предложение для успешно удалено!',
                    'btn' => 'Удалить'
                ]}
                {else}
                    {if $partnershipData}
                        <p>Вам не пренадлежит данное партнерское предложение!</p>
                    {else}
                        {$_modx->sendRedirect($_modx->makeUrl(1))}
                    {/if}
                {/if}
            {else}
                <p>Ошибочка вышла!</p>
            {/if}
            
            </div>
        </section><!-- rkp -->

	</main><!--content__wrapper-->

{/block}