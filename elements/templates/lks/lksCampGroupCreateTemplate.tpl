{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
        {set $pid = $.get.pid?:0}                    
        {set $res_tpl = $pid | resource : 'template'}
        {set $userId = $pid | resource : 'userId'}
        {set $isCamp = ($res_tpl in [27,33])?1:0}
        {set $isCampOwner = ($userId == $_modx->user.id)?1:0}
        
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

        <section class="cmp_create section__mg section__first">
            <div class="container container--lg">
                {if $isCamp && $isCampOwner}
                <div class="section__head section__head--cols mb--md">
                    <h2 class="section__title">Создание групп  / {$.get.pid | resource : 'pagetitle'}</h2>
                </div>
                {/if}
                <div class="cmp_lkthead">
                    <div class="cmp_lkthead__title">{if $isCamp && $isCampOwner}{$pid | resource : 'pagetitle'}{else}Лагерь не найден{/if}</div>
                    <div class="cmp_lkthead__act">
                        {if $isCamp && $isCampOwner}
                        <div class="cmp_lkthead__label">Группа</div>
                        <div class="cmp_lkthead__buttons ml--auto">
                            <button class="btn btn--sm btn--purple js-cmp-tbform-group-add-row">Добавить группу</button>
                            <a class="btn btn--sm btn--purple" href="{$.get.pid | url}">Просмотреть лагерь</a>
                        </div>
                        {/if}
                    </div>
                </div>
                {if ($res_tpl) && ($isCampOwner)}
                    <div class="cmp_lktables">
                    <form action="" method="post" class="js-cmp-tbform-group" data-user="{$_modx->user.id}" data-pid="{$pid}">
                        <table>
                            <tr class="hide-desktop">
                                <th>№</th>
                                <th class="text--left w-all">Название группы</th>
                                <th class="text--left w-all">Адрес</th>
                                <th>Кабинет</th>
                                <th>Смена</th>
                                <th>Количество <br>  детей</th>
                                <th>Период</th>
                                <th>Возраст детей</th>
                                <th></th>
                            </tr>
                            
                            {set $camp_group = $pid | resource : 'camp_group'}
                            {if $camp_group}
                                {set $rows = json_decode($camp_group, true)}
                            {/if}
                            
                            {if $camp_group && $rows}
                                {set $rows = json_decode($camp_group, true)}
                                {foreach $rows as $idx => $row}
                                    <tr class="js-cmp-tbform-group-row">
                                        <input type="hidden" name="id[]" value="{$idx + 1}">
                                        <input type="hidden" name="action[]" value="edit">
                                        <td class="nowrap hide-desktop">№ {$idx + 1}</td>
                                        <td class="td-input td-mob-wall">
                                            <div class="td-label">Название группы</div>
                                            <input type="text" name="name[]" value = "{$row.name}" class="input input--camp no-display" placeholder="Введите название">
                                            {if $row.name}<div class="js-cmp-tbform-group-name">{$row.name}</div>{/if}
                                        </td>
                                        <td class="td-input td-mob-wall">
                                            <div class="td-label">Адрес</div>
                                            {if $row.address}
                                            {*<select class="styler styler--camp input--city" name="address[]" data-placeholder="Выбрать адрес">
                                                <option class="option-hide" value=""></option>
                                                {set $city = $_modx->runSnippet('RU2LAT',['str'=>$row.address])}
                                                {$_modx->runSnippet('getListCities',['name'=>'city','option'=>1,'curr'=>$city])}
                                            </select>*}
                                            <select class="styler styler--camp input--city" name="address[]" data-placeholder="Выбрать адрес">
                                                <option class="option-hide" value=""></option>
                                                <option value="Минск" {if $row.address=='Минск'}selected{/if}>Минск</option>
                                                <option value="Брест" {if $row.address=='Брест'}selected{/if}>Брест</option>
                                                <option value="Витебск" {if $row.address=='Витебск'}selected{/if}>Витебск</option>
                                                <option value="Гродно" {if $row.address=='Гродно'}selected{/if}>Гродно</option>
                                                <option value="Гомель" {if $row.address=='Гомель'}selected{/if}>Гомель</option>
                                                <option value="Могилёв" {if $row.address=='Могилёв'}selected{/if}>Могилёв</option>
                                            </select>                                            
                                            {/if}
                                        </td>
                                        <td class="td-input">
                                            <div class="td-label">Кабинет</div>
                                            <input type="text" name="cabinet[]" class="input input--camp input--w-sm" value="{if $row.cabinet}{$row.cabinet}{/if}" placeholder="№">
                                        </td>
                                        <td class="td-input">
                                            <div class="td-label">Смена</div>
                                            <input type="text" name="shift[]" class="input input--camp input--w-sm" value="{if $row.shift}{$row.shift}{/if}" placeholder="Смена">
                                        </td>
                                        <td class="td-input">
                                            <div class="td-label">Количество</div>
                                            <input type="text" name="count[]" class="input input--camp input--w-sm" value="{if $row.count}{$row.count}{/if}" placeholder="Кол-во">
                                        </td>
                                        <td class="nowrap td-input">
                                            <div class="td-label">Период</div>
                                            <input type="text" name="date_from[]" class="input input--camp input--date datepicker-input-min" value="{if $row.date_from}{$row.date_from}{/if}" placeholder="Дата с">
                                            <input type="text" name="date_to[]" class="input input--camp input--date datepicker-input-min" value="{if $row.date_to}{$row.date_to}{/if}" placeholder="Дата по">
                                        </td>
                                        <td class="nowrap td-input">
                                            <div class="td-label">Возраст</div>
                                            <input type="text" name="age_from[]" class="input input--camp input--w-sm" value="{if $row.age_from}{$row.age_from}{/if}" placeholder="От">
                                            <input type="text" name="age_to[]" class="input input--camp input--w-sm" value="{if $row.age_to}{$row.age_to}{/if}" placeholder="До">
                                        </td>
                                        <td class="td-action">
                                            <div class="cmp_lktables__act">
                                                <button class="cmp_lktables__act-open">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M7 12C7 13.1046 6.10457 14 5 14C3.89543 14 3 13.1046 3 12C3 10.8954 3.89543 10 5 10C6.10457 10 7 10.8954 7 12Z" fill="#C8C8E4"/>
                                                        <path d="M14 12C14 13.1046 13.1046 14 12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12Z" fill="#C8C8E4"/>
                                                        <path d="M21 12C21 13.1046 20.1046 14 19 14C17.8954 14 17 13.1046 17 12C17 10.8954 17.8954 10 19 10C20.1046 10 21 10.8954 21 12Z" fill="#C8C8E4"/>
                                                    </svg>
                                                </button>
                                                <div class="cmp_lktables__act-menu">
                                                    <ul>
                                                        <li><a href="#" class="js-cmp-tbform-group-row-clone">Создать копию</a></li>
                                                        <li><a href="#" class="js-cmp-tbform-group-row-delete">Удалить</a></li>
                                                    </ul>
                                                </div>   
                                            </div>
                                        </td>
                                    </tr>
                                {/foreach}
                            {else}
                            
                            <tr class="js-cmp-tbform-group-row">
                                                            <input type="hidden" name="action[]" value="new">
                                                            <td class="nowrap hide-desktop">№ 1</td>
                                                            <td class="td-input td-mob-wall"><div class="td-label">Название группы</div>
                                                                <input type="text" name="name[]" class="input input--camp" placeholder="Введите название">
                                                            </td>
                                                            <td class="td-input td-mob-wall"><div class="td-label">Адрес</div>
                                                                <select class="styler styler--camp input--city" name="address[]" data-placeholder="Выбрать адрес">
                                                                    <option value=""></option>
                                                                    <option value="Минск">Минск</option>
                                                                    <option value="Брест">Брест</option>
                                                                    <option value="Витебск">Витебск</option>
                                                                    <option value="Гродно">Гродно</option>
                                                                    <option value="Гомель">Гомель</option>
                                                                    <option value="Могилёв">Могилёв</option>
                                                                </select>
                                                            </td>
                                                            <td class="td-input"><div class="td-label">Кабинет</div>
                                                                <input type="text" name="cabinet[]" class="input input--camp input--w-sm" placeholder="№"></td>
                                                            <td class="td-input"><div class="td-label">Смена</div>
                                                                <input type="text" name="shift[]" class="input input--camp input--w-sm" placeholder="Смена"></td>
                                                            <td class="td-input"><div class="td-label">Количество</div>
                                                                <input type="text" name="count[]" class="input input--camp input--w-sm" placeholder="Кол-во"></td>
                                                            <td class="nowrap td-input">
                                                                <div class="td-label">Период</div>
                                                                <input type="text" name="date_from[]" class="input input--camp input--date datepicker-input-min" placeholder="Дата с">
                                                                <input type="text" name="date_to[]" class="input input--camp input--date datepicker-input-min" placeholder="Дата по">
                                                            </td>
                                                            <td class="nowrap td-input">
                                                                <div class="td-label">Возраст</div>
                                                                <input type="text" name="age_form[]" class="input input--camp input--w-sm" placeholder="От">
                                                                <input type="text" name="age_to[]" class="input input--camp input--w-sm" placeholder="До">
                                                            </td>
                                                            <td class="td-action">
                                                                <div class="cmp_lktables__act">
                                                                    <button class="cmp_lktables__act-open">
                                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                            <path d="M7 12C7 13.1046 6.10457 14 5 14C3.89543 14 3 13.1046 3 12C3 10.8954 3.89543 10 5 10C6.10457 10 7 10.8954 7 12Z" fill="#C8C8E4"/>
                                                                            <path d="M14 12C14 13.1046 13.1046 14 12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12Z" fill="#C8C8E4"/>
                                                                            <path d="M21 12C21 13.1046 20.1046 14 19 14C17.8954 14 17 13.1046 17 12C17 10.8954 17.8954 10 19 10C20.1046 10 21 10.8954 21 12Z" fill="#C8C8E4"/>
                                                                            </svg>
                                                                    </button>
                                                                    <div class="cmp_lktables__act-menu">
                                                                        <ul>
                                                                            <li><a href="#" class="js-cmp-tbform-group-row-clone">Создать копию</a></li>
                                                                            <li><a href="#" class="js-cmp-tbform-group-row-delete">Удалить</a></li>
                                                                        </ul>
                                                                    </div>   
                                                                </div>
                                                            </td>
                                                        </tr>                            
                            {/if}                            
                        </table>
                
                        <div class="cmp_create__buttons gap--sm">
                            <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                            <a class="btn btn--bdpurple btn--sm" href="{$_modx->makeUrl(2044)}">Отмена</a>
                        </div>
                    </form>

                    
                    <table class="no-display">
                        <tr class="js-cmp-tbform-group-row" data-type="group">
                            <input type="hidden" name="action[]" value="new">
                            <td class="nowrap hide-desktop">№ 2</td>
                            <td class="td-input td-mob-wall"><div class="td-label">Название группы</div>
                                <input type="text" name="name[]" class="input input--camp" placeholder="Введите название">
                            </td>
                            <td class="td-input td-mob-wall"><div class="td-label">Адрес</div>
                                <select class="styler styler--camp input--city" name="address[]" data-placeholder="Выбрать адрес">
                                    <option value=""></option>
                                    <option value="Минск">Минск</option>
                                    <option value="Брест">Брест</option>
                                    <option value="Витебск">Витебск</option>
                                    <option value="Гродно">Гродно</option>
                                    <option value="Гомель">Гомель</option>
                                    <option value="Могилёв">Могилёв</option>
                                </select>
                            </td>
                            <td class="td-input"><div class="td-label">Кабинет</div>
                                <input type="text" name="cabinet[]" class="input input--camp input--w-sm" placeholder="№"></td>
                            <td class="td-input"><div class="td-label">Смена</div>
                                <input type="text" name="shift[]" class="input input--camp input--w-sm" placeholder="Смена"></td>
                            <td class="td-input"><div class="td-label">Количество</div>
                                <input type="text" name="count[]" class="input input--camp input--w-sm" placeholder="Кол-во"></td>
                            <td class="nowrap td-input">
                                <div class="td-label">Период</div>
                                <input type="text" name="date_from[]" class="input input--camp input--date datepicker-input-min" placeholder="Дата с">
                                <input type="text" name="date_to[]" class="input input--camp input--date datepicker-input-min" placeholder="Дата по">
                            </td>
                            <td class="nowrap td-input">
                                <div class="td-label">Возраст</div>
                                <input type="text" name="age_form[]" class="input input--camp input--w-sm" placeholder="От">
                                <input type="text" name="age_to[]" class="input input--camp input--w-sm" placeholder="До">
                            </td>
                            <td class="td-action">
                                <div class="cmp_lktables__act">
                                    <button class="cmp_lktables__act-open">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M7 12C7 13.1046 6.10457 14 5 14C3.89543 14 3 13.1046 3 12C3 10.8954 3.89543 10 5 10C6.10457 10 7 10.8954 7 12Z" fill="#C8C8E4"/>
                                            <path d="M14 12C14 13.1046 13.1046 14 12 14C10.8954 14 10 13.1046 10 12C10 10.8954 10.8954 10 12 10C13.1046 10 14 10.8954 14 12Z" fill="#C8C8E4"/>
                                            <path d="M21 12C21 13.1046 20.1046 14 19 14C17.8954 14 17 13.1046 17 12C17 10.8954 17.8954 10 19 10C20.1046 10 21 10.8954 21 12Z" fill="#C8C8E4"/>
                                            </svg>
                                    </button>
                                    <div class="cmp_lktables__act-menu">
                                        <ul>
                                            <li><a href="#" class="js-cmp-tbform-group-row-clone">Создать копию</a></li>
                                            <li><a href="#" class="js-cmp-tbform-group-row-delete">Удалить</a></li>
                                        </ul>
                                    </div>   
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>  
                {else}
                    {if (!$res_tpl) || (!$isCamp)}
                        <p style="color:red;">Не существует данного лагеря</p>
                    {else}
                        <p style="color:red;">Вы не являетесь владельцем  данного лагеря: {$pid | resource : 'pagetitle'}</p>
                    {/if}
                    
                {/if}
            </div>
        </section><!--  -->
{/block}
