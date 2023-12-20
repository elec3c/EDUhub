{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}


        {*<div class="lknav lknav--camp">
            <div class="container">
                <div class="lknav__list ">
                    <ul>
                        <li ><a href="" class="lknav__list-item">
                            <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9 9.5C11.0711 9.5 12.75 7.82107 12.75 5.75C12.75 3.67893 11.0711 2 9 2C6.92893 2 5.25 3.67893 5.25 5.75C5.25 7.82107 6.92893 9.5 9 9.5Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M15.4416 17C15.4416 14.0975 12.5541 11.75 8.99914 11.75C5.44414 11.75 2.55664 14.0975 2.55664 17" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                                                            
                            <span>Мой профиль</span>
                        </a></li>
                        <li ><a href="" class="lknav__list-item">
                            <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M16.5 4.00228V13.0548C16.5 13.7748 15.915 14.4498 15.195 14.5398L14.9475 14.5698C13.3125 14.7873 10.7925 15.6198 9.35248 16.4148C9.15748 16.5273 8.83501 16.5273 8.63251 16.4148L8.60248 16.3998C7.16248 15.6123 4.65002 14.7873 3.02252 14.5698L2.80499 14.5398C2.08499 14.4498 1.5 13.7748 1.5 13.0548V3.99477C1.5 3.10227 2.22748 2.42728 3.11998 2.50228C4.69498 2.62978 7.07998 3.4248 8.41498 4.2573L8.60248 4.36977C8.81998 4.50477 9.18002 4.50477 9.39752 4.36977L9.52501 4.28728C9.99751 3.99478 10.5975 3.70228 11.25 3.43978V6.49979L12.75 5.50228L14.25 6.49979V2.58481C14.4525 2.54731 14.6475 2.52478 14.8275 2.50978H14.8725C15.765 2.43478 16.5 3.10228 16.5 4.00228Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M9 4.61768V15.8677" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M14.25 2.58496V6.49994L12.75 5.50243L11.25 6.49994V3.43993C12.2325 3.04993 13.3275 2.73496 14.25 2.58496Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>                                
                            <span>Курсы и группы</span>
                        </a></li>
                        <li class="active"><a href="" class="lknav__list-item">
                            <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.75 17H17.25" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M14.8359 17.0076V13.6626" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M14.8492 8.66748C13.9342 8.66748 13.1992 9.40249 13.1992 10.3175V12.02C13.1992 12.935 13.9342 13.67 14.8492 13.67C15.7642 13.67 16.4992 12.935 16.4992 12.02V10.3175C16.4992 9.40249 15.7642 8.66748 14.8492 8.66748Z" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M1.57422 16.9998V5.02234C1.57422 3.51484 2.32426 2.75732 3.81676 2.75732H8.48924C9.98174 2.75732 10.7242 3.51484 10.7242 5.02234V16.9998" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M4.34961 6.6875H8.06212" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M4.34961 9.5H8.06212" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M6.1875 17V14.1875" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>                                                             
                            <span>Лагерь</span>
                        </a></li>
                        <li ><a href="" class="lknav__list-item">
                            <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M14.25 6.5C15.4926 6.5 16.5 5.49264 16.5 4.25C16.5 3.00736 15.4926 2 14.25 2C13.0074 2 12 3.00736 12 4.25C12 5.49264 13.0074 6.5 14.25 6.5Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M10.5 2H6.75C3 2 1.5 3.5 1.5 7.25V11.75C1.5 15.5 3 17 6.75 17H11.25C15 17 16.5 15.5 16.5 11.75V8" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M5.10834 11.6974C4.84584 10.8724 5.15334 9.84491 6.02334 9.56741C6.48084 9.41741 7.04334 9.54491 7.36584 9.98741C7.66584 9.52991 8.25084 9.42491 8.70084 9.56741C9.57084 9.84491 9.87834 10.8724 9.61584 11.6974C9.20334 13.0099 7.76334 13.6924 7.36584 13.6924C6.96084 13.6849 5.53584 13.0174 5.10834 11.6974Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>                                                              
                            <span>Подписки</span>
                        </a></li>
                        <li ><a href="" class="lknav__list-item">
                            <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9 9.5C11.0711 9.5 12.75 7.82107 12.75 5.75C12.75 3.67893 11.0711 2 9 2C6.92893 2 5.25 3.67893 5.25 5.75C5.25 7.82107 6.92893 9.5 9 9.5Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M2.55664 17C2.55664 14.0975 5.44414 11.75 8.99914 11.75C9.71914 11.75 10.4166 11.8475 11.0691 12.0275" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M16.5 14C16.5 14.24 16.47 14.4725 16.41 14.6975C16.3425 14.9975 16.2225 15.29 16.065 15.545C15.5475 16.415 14.595 17 13.5 17C12.7275 17 12.03 16.7075 11.505 16.2275C11.28 16.0325 11.085 15.8 10.935 15.545C10.6575 15.095 10.5 14.5625 10.5 14C10.5 13.19 10.8225 12.4475 11.3475 11.9075C11.895 11.345 12.66 11 13.5 11C14.385 11 15.1875 11.3825 15.7275 11.9975C16.2075 12.53 16.5 13.235 16.5 14Z" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M14.6178 13.9854H12.3828" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M13.5 12.8901V15.1326" stroke="#C8C8E4" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                                                                                          
                            <span>Запросы на обучение</span>
                        </a></li>
                        <li ><a href="" class="lknav__list-item">
                            <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M16.5 9.5V13.25C16.5 15.5 15 17 12.75 17H5.25C3 17 1.5 15.5 1.5 13.25V9.5C1.5 7.46 2.73 6.035 4.6425 5.795C4.8375 5.765 5.04 5.75 5.25 5.75H12.75C12.945 5.75 13.1325 5.75749 13.3125 5.78749C15.2475 6.01249 16.5 7.445 16.5 9.5Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M13.3145 5.7875C13.1345 5.7575 12.947 5.75001 12.752 5.75001H5.25203C5.04203 5.75001 4.83953 5.76501 4.64453 5.79501C4.74953 5.58501 4.89953 5.39001 5.07953 5.21001L7.51703 2.765C8.54453 1.745 10.2095 1.745 11.237 2.765L12.5495 4.09251C13.0295 4.56501 13.2845 5.165 13.3145 5.7875Z" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M16.5 9.875H14.25C13.425 9.875 12.75 10.55 12.75 11.375C12.75 12.2 13.425 12.875 14.25 12.875H16.5" stroke="#C8C8E4" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                                                                                          
                            <span>Баланс</span>
                        </a></li>

                    </ul>
                </div>
            </div>
        </div>*}
        {set $pid = $.get.pid?:0}
        {set $userId = $pid | resource :'userId'}
        {if (($userId > 0) && ($_modx->user.id==$userId))}
            <section class="cmp_create section__mg section__first">
            <div class="container">
                <div class="section__head section__head--cols mb--md">
                    <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
                </div>
                
                <div class="lk__nav lk__nav--camp">
                    {include 'file:chunks/users/user.submenu.tpl' pid='2097'}
                </div>
                
                
                {*<div class="lk__nav lk__nav--camp">
                    <ul>
                        <li><a href="">Летний</a></li>
                        <li class="active">Зимний</li>
                        <li><a href="">Весенний</a></li>
                        <li><a href="">Осенний</a></li>
                    </ul>
                </div>*}

                {set $pid = $.get.pid?:0}
                {set $camp_group = $pid | resource :'camp_group'}
                {if $camp_group}
                    {set $rows = json_decode($camp_group, true)}            
                    {foreach $rows as $idx => $row}
                        {set $date_unique = strtotime($row.date_from)~'_'~strtotime($row.date_to)}
                        {set $group_name = $row.name}
                        
                        {set $G[$row.address][$date_unique][$group_name]['address'] = $row.address}
                        {set $G[$row.address][$date_unique][$group_name]['name'] = $row.name}
                        {set $G[$row.address][$date_unique][$group_name]['cabinet'] = $row.cabinet}
                        {set $G[$row.address][$date_unique][$group_name]['shift'] = $row.shift}
                        {set $G[$row.address][$date_unique][$group_name]['count'] = $row.count}
                        {set $G[$row.address][$date_unique][$group_name]['date_from'] = $row.date_from}
                        {set $G[$row.address][$date_unique][$group_name]['date_to'] = $row.date_to}
                        {set $G[$row.address][$date_unique][$group_name]['age_from'] = $row.age_from}
                        {set $G[$row.address][$date_unique][$group_name]['age_to'] = $row.age_to}
                        {set $G[$row.address][$date_unique][$group_name]['time_from'] = strtotime($row.date_from)}
                        {set $G[$row.address][$date_unique][$group_name]['time_to'] = strtotime($row.date_to)}
                        
                    {/foreach}                    
                {/if}
                
                <div class="cmp_lknav">
                    {if $G}
                        {set $n = 0}
                        {foreach $G as $address_id => $data}                    
                            <a href="#" class="cmp_lknav__item {if $n == 0}active{/if} js-nav-link" data-tab="{$n}">Адрес {$address_id}</a>
                            {*set $GROUP = $data*}
                            {set $n = $n + 1}
                        {/foreach}
                    {/if}
                </div>

                <div class="cmp_lkfilter">
                    <div class="cmp_lkfilter__col">
                        <div class="form__label">Группа</div>
                        <select class="styler styler--camp" name="group" data-placeholder="">
                            {if $G}
                            {set $n = 0}
                            {foreach $G as $address_id => $date_list}
                                {set $f = 1}
                                {foreach $date_list as $date_unique => $GROUP}
                                    {foreach $GROUP as $name => $v}            
                                        <option value="{$name}">{$name}</option>
                                    {/foreach}
                                    {set $f = 0}
                                {/foreach}
                                {set $n = $n + 1}
                            {/foreach}
                            {/if}                            
                        </select>
                    </div>
                    <div class="cmp_lkfilter__col col--sm">
                        <div class="form__label">Смена</div>
                        <select class="styler styler--camp" name="group" data-placeholder="">
                            {if $G}
                            {set $n = 0}
                            {foreach $G as $address_id => $date_list}
                                {set $f = 1}
                                {foreach $date_list as $date_unique => $GROUP}
                                    {foreach $GROUP as $name => $v}            
                                        <option value="{$v['shift']}">{$v['shift']}</option>
                                    {/foreach}
                                    {set $f = 0}
                                {/foreach}
                                {set $n = $n + 1}
                            {/foreach}
                            {/if}
                        </select>
                    </div>
                </div>
            </div>
            

            <div class="container container--lg">
                <a href="" class="link link--nound cmp_lktoggle js-cpm-grouplk-toggle-all">Свернуть все</a>


                {if $G}
                {set $n = 0}
                {foreach $G as $address_id => $date_list}
                    {set $f = 1}
                    {foreach $date_list as $date_unique => $GROUP}
                        {set $d = explode('_',$date_unique)}
                        {foreach $GROUP as $name => $v}            

                            <div class="cpm_grouplk js-cpm-grouplk">
                                <div class="cpm_grouplk__inner">
                                    <div class="cpm_grouplk__info">
                                        <div class="cpm_grouplk__name">{$name}</div>
                                        <div class="cpm_grouplk__val cpm_grouplk__addr">{$v['address']}</div>
                                        <div class="cpm_grouplk__val">Кабинет: {$v['cabinet']}</div>
                                        <div class="cpm_grouplk__val">Смена: {$v['shift']}</div>
                                        <div class="cpm_grouplk__val">{date($d[0], 'd.m.Y')~'-'~date($d[1], 'd.m.Y')}</div>
                                        <div class="cpm_grouplk__val">{$v['age_from']} - {$v['age_to']} лет</div>
                                        <div class="cpm_grouplk__val">350 руб#</div>
                                    </div>
            
                                    <div class="cpm_grouplk__props">
                                        <div class="cpm_grouplk__props-icol">
                                            <div class="form__label">Договоров</div>
                                            <input type="text" name="contracts" class="input input--camp" value="10" placeholder="0">
                                        </div>
                                        <div class="cpm_grouplk__props-icol">
                                            <div class="form__label">Бронь</div>
                                            <input type="text" name="book" class="input input--camp" value="0" placeholder="0">
                                        </div>
                                        <div class="cpm_grouplk__props-icol">
                                            <div class="form__label">Лидов</div>
                                            <input type="text" name="leads" class="input input--camp" value="10" placeholder="0">
                                        </div>
                                        <div class="cpm_grouplk__props-icol">
                                            <div class="form__label">Свободно</div>
                                            <input type="text" name="freely" class="input input--camp" value="7" placeholder="0">
                                        </div>
                                    </div>
            
                                    <div class="cpm_grouplk__toggle">
                                        <button class="cpm_grouplk__btntoggl js-cpm-grouplk-toggle"></button>
                                    </div>
                                </div>
                                {set $pid = $.get.pid?:0}
                                {set $userId = $pid | resource :'userId'}
                                {set $tplId = $pid | resource :'template'}
                                
                                {if (($userId > 0) && ($_modx->user.id==$userId))}
                                    {set $countLeads = '!getCountDataForCamp' | snippet :['user_id'=>$userId,'pid'=>$pid,'type'=>'leads']}
                                    {set $countBook = '!getCountDataForCamp' | snippet :['user_id'=>$userId,'pid'=>$pid,'type'=>'book']}
                                    {set $countContracts = '!getCountDataForCamp' | snippet :['user_id'=>$userId,'pid'=>$pid,'type'=>'contracts']}
                                <div class="cpm_grouplk__body js-cpm-grouplk-body">
                                    
                                    <div class="cpm_grouplk__btables">
                            <div class="cmp_lkthead mb--sm">
                                <div class="cmp_lkthead__act">
                                    <div class="cmp_lkthead__label">Договоры ({$countContracts})</div>
                                    <div class="cmp_lkthead__buttons">
                                        <a class="btn btn--sm btn--purple" href="{2100 | url}?pid={$pid}">Добавить договор</a>
                                    </div>
                                </div>
                            </div>
                            <div class="cmp_lktables fs--md">
                                <table>
                                    <tr>
                                        <th class="text--left w-all">ФИО родителя</th>
                                        <th class="text--left w-all">Контакты</th>
                                        <th class="text--left w-all">ФИО ребенка</th>
                                        <th>Пол <br>  Возраст</th>
                                        <th>Стоимость</th>
                                        <th>Скидка</th>
                                        <th>Оплачено</th>
                                        <th>К оплате</th>
                                        <th>Время <br> занятий</th>
                                        <th>Примечание</th>
                                        <th></th>
                                    </tr>
                                    
                                    {'!pdoPage' | snippet :[
                                        'ajaxMode'=>'default',
                                        'idx'=>5,
                                        'class'=>'EduCampLeads',
                                        'tvPrefix'=>'',
                                        'processTVs'=>'1',
                                        'limit'=>'0',                            
                                        'loadModels'=>'camp',
                                        'where'=>[                              
                                            'EduCampLeads.user_id' => $_modx->user.id,
                                            'EduCampLeads.pid' => $pid
                                        ],                                    
                                        'select'=>[
                                            'EduCampLeads'=>'*'
                                        ]
                                        'sortby'=>[
                                            'EduCampLeads.id'=>'DESC',
                                        ]
                                        'tpl'=>'@FILE chunks/lks/lks.camp.contracts.block.tpl'
                                    ]?:'<p class="section__intro">Ничего не найдено</p>'}
                                    
                                </table>
                            </div>  
                            <form method="post" action="" class="cmp_lktablesform">
                                <div class="cmp_lktablesform__inner">
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <div class="form__label">ФИО родителя</div>
                                        <input type="text" name="name" class="input input--camp  w--md" placeholder="ФИО родителя">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <div class="form__label">Телефон</div>
                                        <input type="tel" name="phone" class="input input--camp  w--md phone-mask" placeholder="Телефон">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <div class="form__label">E-mail</div>
                                        <input type="text" name="email" class="input input--camp  w--md" placeholder="E-mail">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <div class="form__label">Telegram</div>
                                        <input type="text" name="tg" class="input input--camp  w--md" placeholder="Telegram">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <div class="form__label">ФИО ребенка</div>
                                        <input type="text" name="name_child" class="input input--camp  w--md" placeholder="ФИО ребенка">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <div class="form__label">Возраст</div>
                                        <input type="text" name="age" class="input input--camp  w--sml" placeholder="0">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--first">
                                        <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m" checked><span>муж.</span></label>
                                        <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w"><span>жен.</span></label>
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--mr">
                                        <div class="form__label">Стоимость</div>
                                        <input type="text" name="price" class="input input--camp w--sml" placeholder="0">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--mr">
                                        <div class="form__label">Скидка</div>
                                        <input type="text" name="sale" class="input input--camp w--sml" placeholder="0">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--mr">
                                        <div class="form__label">Оплачено</div>
                                        <input type="text" name="paid" class="input input--camp w--sml" placeholder="0">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--mr">
                                        <div class="form__label">К оплате</div>
                                        <input type="text" name="to_pay" class="input input--camp w--sml" placeholder="0">
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--mr">
                                        <div class="form__label">Время занятий</div>
                                        <div class="cmp_lktablesform__icol-inputs">
                                            <input type="text" name="time_from" class="input input--camp w--sml" placeholder="9">
                                            <input type="text" name="time_to" class="input input--camp w--sml" placeholder="12">
                                        </div>
                                    </div>
                                    <div class="cmp_lktablesform__icol icol--note">
                                        <div class="form__label">Примечание</div>
                                        <input type="text" name="note" class="input input--camp w--lg" placeholder="Примечание">
                                    </div>
            
                                </div>
                                <div class="cmp_lktablesform__buttons">
                                    <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                                </div>
                            </form>
                        </div>  
            
                                    <div class="cpm_grouplk__btables">
                                        <div class="cmp_lkthead mb--sm">
                                            <div class="cmp_lkthead__act">
                                                <div class="cmp_lkthead__label">Бронь через EDUHUB ({$countBook})</div>
                                            </div>
                                        </div>
                                        <div class="cmp_lktables fs--md">
                                            <table>
                                                <tr>
                                                    <th class="text--left w-all">ФИО родителя</th>
                                                    <th class="text--left w-all">Контакты</th>
                                                    <th class="text--left w-all">ФИО ребенка</th>
                                                    <th>Пол <br>  Возраст</th>
                                                    <th>Стоимость</th>
                                                    <th>Скидка</th>
                                                    <th>Оплачено</th>
                                                    <th>К оплате</th>
                                                    <th>Время <br> занятий</th>
                                                    <th>Примечание</th>
                                                    <th></th>
                                                </tr>

                                                {'!pdoPage' | snippet :[
                                                    'ajaxMode'=>'default',
                                                    'idx'=>5,
                                                    'class'=>'EduCampLeads',
                                                    'tvPrefix'=>'',
                                                    'processTVs'=>'1',
                                                    'limit'=>'0',                            
                                                    'loadModels'=>'camp',
                                                    'where'=>[                              
                                                        'EduCampLeads.user_id' => $_modx->user.id,
                                                        'EduCampLeads.pid' => $pid
                                                    ],                                    
                                                    'select'=>[
                                                        'EduCampLeads'=>'*'
                                                    ]
                                                    'sortby'=>[
                                                        'EduCampLeads.id'=>'DESC',
                                                    ]
                                                    'tpl'=>'@FILE chunks/lks/lks.camp.book.block.tpl'
                                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                                                
                                            </table>
                                        </div>  
                                    </div>  
            
                                    <div class="cpm_grouplk__btables">
                                        <div class="cmp_lkthead mb--sm">
                                            <div class="cmp_lkthead__act">
                                                <div class="cmp_lkthead__label">Лиды ({$countLeads})</div>
                                                <div class="cmp_lkthead__buttons">
                                                    <a class="btn btn--sm btn--purple" href="{2047 | url}?pid={$pid}">Добавить лид</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cmp_lktables fs--md">
                                            <table>
                                                <tr>
                                                    <th class="text--left w-all">ФИО родителя</th>
                                                    <th class="text--left w-all">Контакты</th>
                                                    <th class="text--left w-all">ФИО ребенка</th>
                                                    <th>Пол <br>  Возраст</th>
                                                    <th>Стоимость</th>
                                                    <th>Скидка</th>
                                                    <th>Оплачено</th>
                                                    <th>К оплате</th>
                                                    <th>Время <br> занятий</th>
                                                    <th>Примечание</th>
                                                    <th></th>
                                                </tr>
                                                
                                                {'!pdoPage' | snippet :[
                                                    'ajaxMode'=>'default',
                                                    'idx'=>5,
                                                    'class'=>'EduCampLeads',
                                                    'tvPrefix'=>'',
                                                    'processTVs'=>'1',
                                                    'limit'=>'0',                            
                                                    'loadModels'=>'camp',
                                                    'where'=>[                              
                                                        'EduCampLeads.user_id' => $_modx->user.id,
                                                        'EduCampLeads.pid' => $pid
                                                    ],                                    
                                                    'select'=>[
                                                        'EduCampLeads'=>'*'
                                                    ]
                                                    'sortby'=>[
                                                        'EduCampLeads.id'=>'DESC',
                                                    ]
                                                    'tpl'=>'@FILE chunks/lks/lks.camp.leads.block.tpl'
                                                ]?:'<p class="section__intro">Ничего не найдено</p>'}                                                
                                                
                                            </table>
                                        </div>  
                                    </div>     
                                </div>
                                {else}
                                    <div class="container">
                                    {if ($userId > 0) && ($tplId in [27,33])}
                                        <p>Вы не являетесь владельцем лагеря!</p>
                                    {else}
                                        <p>Ошибочка вышла!</p>
                                    {/if}
                                    </div>
                                {/if}
                            </div>
                                       
                        {/foreach}
                        {set $f = 0}
                    {/foreach}
                    {set $n = $n + 1}
                {/foreach}
                {/if}
                
               
            </div>

        </section><!--  -->
        {else}
            <div class="container">
                {if ($userId > 0) && ($tplId in [27,33])}
                    <p>Вы не являетесь владельцем лагеря!</p>
                {else}
                    <p>Ошибочка вышла!</p>
                {/if}
            </div>
        {/if}

{/block}