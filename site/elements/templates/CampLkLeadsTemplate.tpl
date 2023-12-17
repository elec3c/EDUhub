
{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
<section class="wrapper capm-wrap" id="top">

    <header class="header cmp_header">
	<div class="container">	
		<div class="header__wrap cmp_header__wrap">
			<a href="#" class="cmp_header__burger" id="menu_toggler">
				<svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M4 9.8335H28" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"/>
					<path d="M4 16.5H28" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"/>
					<path d="M4 23.1665H28" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"/>
				</svg>									
			</a>


			
			
				<a href="/" class="header__logo"><img src="assets/images/logo.svg" alt=""></a>
			

			<div class="js-open-category-position hide-tablet">
				<a href="#" class="header__linkcat cmp_header__linkcat open-category">
					<span class="">Категории курсов</span>
					<svg class="icon-open" width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>			
					
					<svg class="icon-close" width="11" height="11" viewBox="0 0 11 11" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M1 1L5.25 5.5L9.5 1" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						<path d="M9.5 9.75L5.25 5.25L1 9.75" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					</svg>					
				</a>
			</div>


			<div class="cmp_header__search search  header-search hide-tablet-sm">
				<form action="" class="search__form header-search-form">
					<input type="text" class="input search__input" placeholder="Поиск">
					<input type="submit" value="" class="search__btn">
				</form>
			</div>

			
				<a href="#" class="cmp_header__profile btn btn--sm btn--purple" data-open-popup="auth">
					<svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M9 9.5C11.0711 9.5 12.75 7.82107 12.75 5.75C12.75 3.67893 11.0711 2 9 2C6.92893 2 5.25 3.67893 5.25 5.75C5.25 7.82107 6.92893 9.5 9 9.5Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						<path d="M15.4425 17C15.4425 14.0975 12.555 11.75 8.99999 11.75C5.44499 11.75 2.5575 14.0975 2.5575 17" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>								
					<span>Войти</span>			
				</a>
			
			

			
		</div>

		<div class="cmp_header__nav header-navfix">
			<a href="#" class="cmp_header__nav-close header__navfix-close close-menu show-tablet-sm"></a>

			<div class="cmp_header__menu js-cmp_header-menu">
				<ul>
					<li><a href="">Ваша скидка</a></li>
					<li><a href="">Школы</a></li>
					<li><a href="">Ближайшие страрты</a></li>
					<li><a href="">Действующие группы</a></li>
					<li><a href="">Детям на каникулах</a></li>
					<li><a href="">Индивидуальные занятия</a></li>
					<li><a href="">Популярные курсы</a></li>
					<li><a href="">Рейтинг ТОП - школ</a></li>
				</ul>
			</div>
		</div>	
	</div>	

	<div class="header__category header-category">
		<div class="container">
			<div class="header__category-wrap">
				<div class="header__category-col">
					<div class="header__category-col__name">Языковые курсы</div>
					<ul class="header__menu header__category-menu">
						<li><a href="">Английский</a></li>
						<li><a href="">Немецкий</a></li>
						<li><a href="">Китайский</a></li>
						<li><a href="">Итальянский</a></li>
						<li><a href="">Французский</a></li>
					</ul>
				</div>
				<div class="header__category-col w-2">
					<div class="header__category-col__name">IT курсы</div>
					<ul class="header__menu header__category-menu">
						<li><a href="">Программирование</a></li>
						<li><a href="">Python</a></li>
						<li><a href="">Java</a></li>
						<li><a href="">JavaScript</a></li>
						<li><a href="">C++</a></li>
						<li><a href="">Разработка для iOS</a></li>
						<li><a href="">Разработка для Android</a></li>
						<li><a href="">Рекрутинг в IT</a></li>
						<li><a href="">Бизнес-анализ</a></li>
						<li><a href="">Project Manager</a></li>
						<li><a href="">Тестировщики</a></li>
					</ul>
				</div>

			</div>
		</div>	
	</div>	

</header>

    <main class="content__wrapper">

        
        
        
        <div class="lknav lknav--camp">
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
        </div>

        <section class="cmp_create section__mg section__first">
            <div class="container">
                <div class="section__head section__head--cols mb--md">
                    <h2 class="section__title">Лиды</h2>
                </div>
                
                
                <div class="lk__nav lk__nav--camp">
                    <ul>
                        <li class="active">Лиды</li>
                        <li><a href="camp-lk-book.html">Бронь</a></li>
                        <li><a href="camp-lk-contracts.html">Договоры</a></li>
                    </ul>
                </div>

                <div class="cmp_lkthead mb--sm">
                    <div class="cmp_lkthead__act">
                        <div class="cmp_lkthead__label">Лиды (4)</div>
                        <div class="cmp_lkthead__buttons">
                            <button class="btn btn--sm btn--purple js-cmp-lktablesform-show">Добавить лид</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container container--lg">
                <div class="cmp_lktables fs--sm">
                    <table class="js-lktables" data-type="leads">
                        <tr>
                            <th class="text--left w-all">ФИО родителя</th>
                            <th class="text--left w-all">Контакты</th>
                            <th class="text--left w-all">ФИО ребенка</th>
                            <th>Пол <br>  Возраст</th>
                            <th class="text--left w-all">Адрес</th>
                            <th>Кабинет</th>
                            <th>Смена</th>
                            <th>Группа</th>
                            <th>Время <br> занятий</th>
                            <th>Сумма <br> договора</th>
                            <th>Скидка</th>
                            <th>Примечание</th>
                            <th></th>
                        </tr>

                        <tr class="js-cmp-lktables-row row--hide"  data-type="leads">
                            <td class="js-cmp-lktables-fio"></td>
                            <td class="js-cmp-lktables-contacts"></td>
                            <td class="js-cmp-lktables-child"></td>
                            <td class="js-cmp-lktables-age"></td>
                            <td class="js-cmp-lktables-address"></td>
                            <td><input type="text" name="cabinet" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="shift" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="group" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="time" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="sum" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><input type="text" name="sale" readonly class="input input--camp input--w-smx" value="" placeholder=""></td>
                            <td><div class="input__hhint">
                                    <input type="text" name="note" readonly class="input input--camp input--comment" value="" placeholder="">
                                    <div class="input__hhint-hint p-right"><div class="input__hhint-wrap js-cmp-lktables-note"></div></div>
                                </div>
                            </td>
                            <td>
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
                                            <li class="active">Договор заключен</li>
                                            <li><a href="" class="js-cmp-lktables-row-change">Редактировать</a></li>
                                            <li><a href="" class="js-cmp-lktables-row-clone">Создать копию</a></li>
                                            <li><a href="" class="js-cmp-lktables-row-delete">Удалить</a></li>
                                        </ul>
                                    </div>   
                                </div>
                            </td>
                        </tr>



                        <div id="pdopage">
                            <div class="rows">
                                {'!pdoPage' | snippet :[
                                    'ajaxMode'=>'default',
                                    'idx'=>5,
                                    'class'=>'EduCampLeads',
                                    'tvPrefix'=>'',
                                    'processTVs'=>'1',
                                    'limit'=>'1000',                            
                                    'loadModels'=>'camp',
                                    'where'=>[                              
                                        'EduCampLeads.user_id' => $_modx->user.id
                                    ],                                    
                                    'select'=>[
                                        'EduCampLeads'=>'*'
                                    ]
                                    'sortby'=>[
                                        'EduCampLeads.id'=>'DESC',
                                    ]
                                    'tpl'=>'@FILE chunks/lk/lk.camp.leads.block.tpl'
                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                            </div>
                            <div class="section__buttons">
                                {$_modx->getPlaceholder('page.nav')}
                            </div>
                        </div>
                        
                        <!--<tr class="js-cmp-lktables-row" data-id="1">
                            <td class="js-cmp-lktables-fio">Александровская Александра Александровна</td>
                            <td class="js-cmp-lktables-contacts">
                                <span class="nowrap">+ 375 (29) 219 - 84 - 00</span> <br>
                                @ghkjiuail.ru <br>
                                Telegram
                            </td>
                            <td class="js-cmp-lktables-child">
                                Адександровская Александра Александровна
                            </td>
                            <td class="js-cmp-lktables-age">
                                жен <br>
                                10 лет
                            </td>
                            <td class="js-cmp-lktables-address">г.Минск ул. Уручская,19</td>
                            <td><input type="text" name="cabinet" readonly class="input input--camp input--w-smx" value="12" placeholder=""></td>
                            <td><input type="text" name="shift" readonly class="input input--camp input--w-smx" value="1" placeholder=""></td>
                            <td><input type="text" name="group" readonly class="input input--camp input--w-smx" value="15" placeholder=""></td>
                            <td><input type="text" name="time" readonly class="input input--camp input--w-smx" value="9-12" placeholder=""></td>
                            <td><input type="text" name="sum" readonly class="input input--camp input--w-smx" value="350" placeholder=""></td>
                            <td><input type="text" name="sale" readonly class="input input--camp input--w-smx" value="20" placeholder=""></td>
                            <td><div class="input__hhint">
                                    <input type="text" name="note" readonly class="input input--camp input--comment" value="аллергия на апельсин, на кошек" placeholder="">
                                    <div class="input__hhint-hint p-right"><div class="input__hhint-wrap js-cmp-lktables-note">аллергия на апельсин, на кошек</div></div>
                                </div>
                            </td>
                            <td>
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
                                            <li class="active">Договор заключен</li>
                                            <li><a href="#" class="js-cmp-lktables-row-change">Редактировать</a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-clone">Создать копию</a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-delete">Удалить</a></li>
                                        </ul>
                                    </div>   
                                </div>
                            </td>
                        </tr>
                        <tr class="cmp_lktables__rowform js-cmp-lktables-row-form row--hide"  data-type="leads">
                            <td colspan="13">
                                <form method="post" action="" class="cmp_lktablesform js-cmp-lktablesform" data-form="change" data-type="leads" data-id="1">
                                    <div class="cmp_lktablesform__inner">
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО родителя</div>
                                            <input type="text" name="name" class="input input--camp  w--md" value="Александровская Александра Александровна" placeholder="ФИО родителя" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Телефон</div>
                                            <input type="tel" name="phone" class="input input--camp  w--md phone-mask" value="+375292198400" placeholder="Телефон" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">E-mail</div>
                                            <input type="text" name="email" class="input input--camp  w--md" value="@ghkjiuail.ru" placeholder="E-mail">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Telegram</div>
                                            <input type="text" name="tg" class="input input--camp  w--md" value="Telegram" placeholder="Telegram">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО ребенка</div>
                                            <input type="text" name="name_child" class="input input--camp  w--md" value="Александровская Александра Александровна" placeholder="ФИО ребенка">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Возраст</div>
                                            <input type="text" name="age" class="input input--camp  w--sm" value="10" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m"><span>муж.</span></label>
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w" checked><span>жен.</span></label>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Адрес</div>
                                            <select class="styler styler--camp w--md" name="address" data-placeholder="Адрес" data-required>
                                                <option value=""></option>
                                                <option value="г.Минск ул. Уручская,19" selected>г.Минск ул. Уручская,19</option>
                                                <option value="Адрес 2">Адрес 2</option>
                                                <option value="Адрес 3">Адрес 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Кабинет</div>
                                            <input type="text" name="cabinet" class="input input--camp w--sm" value="12" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Смена</div>
                                            <input type="text" name="shift" class="input input--camp w--sm" value="1" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Группа</div>
                                            <select class="styler styler--camp w--md" name="group" data-placeholder="Группа">
                                                <option value=""></option>
                                                <option value="15" selected>Группа 15</option>
                                                <option value="2">Группа 2</option>
                                                <option value="3">Группа 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Время занятий</div>
                                            <div class="cmp_lktablesform__icol-inputs">
                                                <input type="text" name="time_from" class="input input--camp w--sm" value="9" placeholder="9">
                                                <input type="text" name="time_to" class="input input--camp w--sm" value="12" placeholder="12">
                                            </div>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Сумма <br>договора</div>
                                            <input type="text" name="sum" class="input input--camp w--sm" value="350" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Скидка</div>
                                            <input type="text" name="sale" class="input input--camp w--sm" value="20" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">К оплате</div>
                                            <input type="text" name="to_pay" class="input input--camp w--sm" value="330" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--note">
                                            <div class="form__label">Примечание</div>
                                            <input type="text" name="note" class="input input--camp w--md" value="аллергия на апельсин, на кошек" placeholder="Примечание">
                                        </div>

                                    </div>
                                    <div class="cmp_lktablesform__buttons">
                                        <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                                    </div>
                                </form>
                            </td>
                        </tr>
                        
                        <tr class="js-cmp-lktables-row" data-id="2">
                            <td class="js-cmp-lktables-fio">Александровская Александра Александровна</td>
                            <td class="js-cmp-lktables-contacts">
                                <span class="nowrap">+ 375 (29) 219 - 84 - 00</span> <br>
                                @ghkjiuail.ru <br>
                                Telegram
                            </td>
                            <td class="js-cmp-lktables-child">
                                Адександровская Александра Александровна
                            </td>
                            <td class="js-cmp-lktables-age">
                                жен <br>
                                10 лет
                            </td>
                            <td class="js-cmp-lktables-address">г.Минск ул. Уручская,19</td>
                            <td><input type="text" name="cabinet" readonly class="input input--camp input--w-smx" value="12" placeholder=""></td>
                            <td><input type="text" name="shift" readonly class="input input--camp input--w-smx" value="2" placeholder=""></td>
                            <td><input type="text" name="group" readonly class="input input--camp input--w-smx" value="15" placeholder=""></td>
                            <td><input type="text" name="time" readonly class="input input--camp input--w-smx" value="9-12" placeholder=""></td>
                            <td><input type="text" name="sum" readonly class="input input--camp input--w-smx" value="350" placeholder=""></td>
                            <td><input type="text" name="sale" readonly class="input input--camp input--w-smx" value="20" placeholder=""></td>
                            <td><div class="input__hhint">
                                    <input type="text" name="note" readonly class="input input--camp input--comment" value="аллергия на апельсин, на кошек" placeholder="">
                                    <div class="input__hhint-hint p-right"><div class="input__hhint-wrap js-cmp-lktables-note">аллергия на апельсин, на кошек</div></div>
                                </div>
                            </td>
                            <td>
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
                                            <li class="active">Договор заключен</li>
                                            <li><a href="#" class="js-cmp-lktables-row-change">Редактировать</a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-clone">Создать копию</a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-delete">Удалить</a></li>
                                        </ul>
                                    </div>   
                                </div>
                            </td>
                        </tr>
                        <tr class="cmp_lktables__rowform js-cmp-lktables-row-form row--hide"  data-type="leads">
                            <td colspan="13">
                                <form method="post" action="" class="cmp_lktablesform js-cmp-lktablesform" data-form="change" data-type="leads" data-id="2">
                                    <div class="cmp_lktablesform__inner">
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО родителя</div>
                                            <input type="text" name="name" class="input input--camp  w--md" value="Александровская Александра Александровна" placeholder="ФИО родителя" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Телефон</div>
                                            <input type="tel" name="phone" class="input input--camp  w--md phone-mask" value="+375292198400" placeholder="Телефон" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">E-mail</div>
                                            <input type="text" name="email" class="input input--camp  w--md" value="@ghkjiuail.ru" placeholder="E-mail">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Telegram</div>
                                            <input type="text" name="tg" class="input input--camp  w--md" value="Telegram" placeholder="Telegram">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО ребенка</div>
                                            <input type="text" name="name_child" class="input input--camp  w--md" value="Александровская Александра Александровна" placeholder="ФИО ребенка">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Возраст</div>
                                            <input type="text" name="age" class="input input--camp  w--sm" value="10" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m"><span>муж.</span></label>
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w" checked><span>жен.</span></label>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Адрес</div>
                                            <select class="styler styler--camp w--md" name="address" data-placeholder="Адрес" data-required>
                                                <option value=""></option>
                                                <option value="г.Минск ул. Уручская,19" selected>г.Минск ул. Уручская,19</option>
                                                <option value="Адрес 2">Адрес 2</option>
                                                <option value="Адрес 3">Адрес 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Кабинет</div>
                                            <input type="text" name="cabinet" class="input input--camp w--sm" value="12" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Смена</div>
                                            <input type="text" name="shift" class="input input--camp w--sm" value="2" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Группа</div>
                                            <select class="styler styler--camp w--md" name="group" data-placeholder="Группа">
                                                <option value=""></option>
                                                <option value="15" selected>Группа 15</option>
                                                <option value="2">Группа 2</option>
                                                <option value="3">Группа 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Время занятий</div>
                                            <div class="cmp_lktablesform__icol-inputs">
                                                <input type="text" name="time_from" class="input input--camp w--sm" value="9" placeholder="9">
                                                <input type="text" name="time_to" class="input input--camp w--sm" value="12" placeholder="12">
                                            </div>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Сумма <br>договора</div>
                                            <input type="text" name="sum" class="input input--camp w--sm" value="350" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Скидка</div>
                                            <input type="text" name="sale" class="input input--camp w--sm" value="20" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">К оплате</div>
                                            <input type="text" name="to_pay" class="input input--camp w--sm" value="330" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--note">
                                            <div class="form__label">Примечание</div>
                                            <input type="text" name="note" class="input input--camp w--md" value="аллергия на апельсин, на кошек" placeholder="Примечание">
                                        </div>

                                    </div>
                                    <div class="cmp_lktablesform__buttons">
                                        <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                                    </div>
                                </form>
                            </td>
                        </tr>
                        
                        <tr class="js-cmp-lktables-row" data-id="3">
                            <td class="js-cmp-lktables-fio">Александровская Александра Александровна</td>
                            <td class="js-cmp-lktables-contacts">
                                <span class="nowrap">+ 375 (29) 219 - 84 - 00</span> <br>
                                @ghkjiuail.ru <br>
                                Telegram
                            </td>
                            <td class="js-cmp-lktables-child">
                                Адександровская Александра Александровна
                            </td>
                            <td class="js-cmp-lktables-age">
                                жен <br>
                                10 лет
                            </td>
                            <td class="js-cmp-lktables-address">г.Минск ул. Уручская,19</td>
                            <td><input type="text" name="cabinet" readonly class="input input--camp input--w-smx" value="12" placeholder=""></td>
                            <td><input type="text" name="shift" readonly class="input input--camp input--w-smx" value="3" placeholder=""></td>
                            <td><input type="text" name="group" readonly class="input input--camp input--w-smx" value="15" placeholder=""></td>
                            <td><input type="text" name="time" readonly class="input input--camp input--w-smx" value="9-12" placeholder=""></td>
                            <td><input type="text" name="sum" readonly class="input input--camp input--w-smx" value="350" placeholder=""></td>
                            <td><input type="text" name="sale" readonly class="input input--camp input--w-smx" value="20" placeholder=""></td>
                            <td><div class="input__hhint">
                                    <input type="text" name="note" readonly class="input input--camp input--comment" value="аллергия на апельсин, на кошек" placeholder="">
                                    <div class="input__hhint-hint p-right"><div class="input__hhint-wrap js-cmp-lktables-note">аллергия на апельсин, на кошек</div></div>
                                </div>
                            </td>
                            <td>
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
                                            <li class="active">Договор заключен</li>
                                            <li><a href="#" class="js-cmp-lktables-row-change">Редактировать</a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-clone">Создать копию</a></li>
                                            <li><a href="#" class="js-cmp-lktables-row-delete">Удалить</a></li>
                                        </ul>
                                    </div>   
                                </div>
                            </td>
                        </tr>
                        <tr class="cmp_lktables__rowform js-cmp-lktables-row-form row--hide"  data-type="leads">
                            <td colspan="13">
                                <form method="post" action="" class="cmp_lktablesform js-cmp-lktablesform" data-form="change" data-type="leads" data-id="3">
                                    <div class="cmp_lktablesform__inner">
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО родителя</div>
                                            <input type="text" name="name" class="input input--camp  w--md" value="Александровская Александра Александровна" placeholder="ФИО родителя" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Телефон</div>
                                            <input type="tel" name="phone" class="input input--camp  w--md phone-mask" value="+375292198400" placeholder="Телефон" data-required>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">E-mail</div>
                                            <input type="text" name="email" class="input input--camp  w--md" value="@ghkjiuail.ru" placeholder="E-mail">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Telegram</div>
                                            <input type="text" name="tg" class="input input--camp  w--md" value="Telegram" placeholder="Telegram">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">ФИО ребенка</div>
                                            <input type="text" name="name_child" class="input input--camp  w--md" value="Александровская Александра Александровна" placeholder="ФИО ребенка">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <div class="form__label">Возраст</div>
                                            <input type="text" name="age" class="input input--camp  w--sm" value="10" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--first">
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m"><span>муж.</span></label>
                                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w" checked><span>жен.</span></label>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Адрес</div>
                                            <select class="styler styler--camp w--md" name="address" data-placeholder="Адрес" data-required>
                                                <option value=""></option>
                                                <option value="г.Минск ул. Уручская,19" selected>г.Минск ул. Уручская,19</option>
                                                <option value="Адрес 2">Адрес 2</option>
                                                <option value="Адрес 3">Адрес 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Кабинет</div>
                                            <input type="text" name="cabinet" class="input input--camp w--sm" value="12" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Смена</div>
                                            <input type="text" name="shift" class="input input--camp w--sm" value="3" placeholder="1">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Группа</div>
                                            <select class="styler styler--camp w--md" name="group" data-placeholder="Группа">
                                                <option value=""></option>
                                                <option value="15" selected>Группа 15</option>
                                                <option value="2">Группа 2</option>
                                                <option value="3">Группа 3</option>
                                            </select>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Время занятий</div>
                                            <div class="cmp_lktablesform__icol-inputs">
                                                <input type="text" name="time_from" class="input input--camp w--sm" value="9" placeholder="9">
                                                <input type="text" name="time_to" class="input input--camp w--sm" value="12" placeholder="12">
                                            </div>
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Сумма <br>договора</div>
                                            <input type="text" name="sum" class="input input--camp w--sm" value="350" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">Скидка</div>
                                            <input type="text" name="sale" class="input input--camp w--sm" value="20" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--mr">
                                            <div class="form__label">К оплате</div>
                                            <input type="text" name="to_pay" class="input input--camp w--sm" value="330" placeholder="0">
                                        </div>
                                        <div class="cmp_lktablesform__icol icol--note">
                                            <div class="form__label">Примечание</div>
                                            <input type="text" name="note" class="input input--camp w--md" value="аллергия на апельсин, на кошек" placeholder="Примечание">
                                        </div>

                                    </div>
                                    <div class="cmp_lktablesform__buttons">
                                        <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                                    </div>
                                </form>
                            </td>
                        </tr>-->
                        
                        
                        
                        
                        
                    </table>
                </div>  
                <form method="post" action="" class="cmp_lktablesform js-cmp-lktablesform" data-form="new" data-action="create" data-user="{$_modx->user.id}" data-type="leads" style="display: none;">
                    <div class="cmp_lktablesform__inner">
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">ФИО родителя</div>
                            <input type="text" name="name" class="input input--camp  w--md" placeholder="ФИО родителя" data-required>
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <div class="form__label">Телефон</div>
                            <input type="tel" name="phone" class="input input--camp  w--md phone-mask" placeholder="Телефон" data-required>
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
                            <input type="text" name="age" class="input input--camp  w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--first">
                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="m" checked><span>муж.</span></label>
                            <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="w"><span>жен.</span></label>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Адрес</div>
                            <select class="styler styler--camp w--md" name="address" data-placeholder="Адрес" data-required>
                                <option value=""></option>
                                <option value="Адрес 1">Адрес 1</option>
                                <option value="Адрес 2">Адрес 2</option>
                                <option value="Адрес 3">Адрес 3</option>
                            </select>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Кабинет</div>
                            <input type="text" name="cabinet" class="input input--camp w--sm" placeholder="1">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Смена</div>
                            <input type="text" name="shift" class="input input--camp w--sm" placeholder="1">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Группа</div>
                            <select class="styler styler--camp w--md" name="group" data-placeholder="Группа">
                                <option value=""></option>
                                <option value="1">Группа 1</option>
                                <option value="2">Группа 2</option>
                                <option value="3">Группа 3</option>
                            </select>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Время занятий</div>
                            <div class="cmp_lktablesform__icol-inputs">
                                <input type="text" name="time_from" class="input input--camp w--sm" placeholder="9">
                                <input type="text" name="time_to" class="input input--camp w--sm" placeholder="12">
                            </div>
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Сумма <br>договора</div>
                            <input type="text" name="sum" class="input input--camp w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">Скидка</div>
                            <input type="text" name="sale" class="input input--camp w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--mr">
                            <div class="form__label">К оплате</div>
                            <input type="text" name="to_pay" class="input input--camp w--sm" placeholder="0">
                        </div>
                        <div class="cmp_lktablesform__icol icol--note">
                            <div class="form__label">Примечание</div>
                            <input type="text" name="note" class="input input--camp w--md" placeholder="Примечание">
                        </div>

                    </div>
                    <div class="cmp_lktablesform__buttons">
                        <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                    </div>
                </form>
                
            </div>
        </section><!--  -->


    </main>
    <!--content__wrapper-->
   
    <footer class="footer cmp_footer">
    <div class="container">
        <div class="footer__wrap footer__top">
            <div class="footer__col footer__col--left">
                
                
                    <a href="/" class="footer__logo"><img src="assets/images/logo-white.svg" alt=""></a>
                

                
                <div class="cmp_footer__social social">
                    <div class="social__title">Мы в социальных сетях</div>
                    <div class="social__items">
                        <a href="" class="social__item" target="_blank"><svg class="icon icon--fill"><use xlink:href="assets/images/icons/sprite.svg#vk"></use></svg></a>
                        <a href="" class="social__item" target="_blank"><svg class="icon icon--fill"><use xlink:href="assets/images/icons/sprite.svg#insta"></use></svg></a>
                        <a href="" class="social__item" target="_blank"><svg class="icon icon--fill"><use xlink:href="assets/images/icons/sprite.svg#linked"></use></svg></a>
                    </div>
                </div>
            </div>
            <div class="footer__col footer__col--center">
                <div class="footer__gmi">
                    <ul class="footer__menu cmp_footer__menu">
                        <li><a href="">Поиск курсов</a></li>
                        <li><a href="">Все школы</a></li>
                        <li><a href="">Онлайн-тесты</a></li>
                        <li><a href="">Блог</a></li>
                        <li><a href="">Контакты</a></li>
                    </ul>

                    <ul class="footer__menu cmp_footer__menu">
                        <li><a href="">Партнерская программа</a></li>
                        <li><a href="">Тарифы (для ученбых центров)</a></li>
                        <li><a href="">Политика конфидециальности</a></li>
                        <li><a href="">Публичная оферта</a></li>
                        <li><a href="">Пользовательское соглашение</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer__col footer__col--right">
                <div class="cmp_footer__contacts">
                    <div class="cmp_footer__contacts-item">
                        <div class="cmp_footer__contacts-icon"><img src="assets/images/icons/call.svg" alt=""></div>
                        <a href="tel:+375445635930">+375 44 563 - 59 - 30</a>
                    </div>
                    <div class="cmp_footer__contacts-item">
                        <div class="cmp_footer__contacts-icon"><img src="assets/images/icons/sms.svg" alt=""></div>
                        <a href="mailto:eduhub@gmail.com">eduhub@gmail.com</a>
                    </div>
                    <div class="cmp_footer__contacts-item">
                        <div class="cmp_footer__contacts-icon"><img src="assets/images/icons/location-white.svg" alt=""></div>

                        <span>220125, г. Минск, ул. Уручская, д. 19-6, каб. 24.</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="cmp_footer__bottom">
            <div class="footer__copy cmp_footer__copy">© Copyright 2023, EDUHUB</div>
        </div>
    </div>
</footer>

<!-- 
<a href="#" class="scroll_top scroll-top" data-scroll="top"></a> -->

</section>
{/block}
