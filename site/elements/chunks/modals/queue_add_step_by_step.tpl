

<div class="popup popup--camp popup--kviz" data-popup="kviz">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a href="#" class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
			    
				{*<div id="msgSubmit" class="form-message" style="padding-bottom:20px;"></div>*}
				
				<form action="{$_modx->resource.uri}" method="post" class="kviz js-kviz form--camp" id="queueStepByStepForm">

                    <div class="kviz__step js-step-form js-step-radio active" data-step="1">
						<div class="kviz__step-head">
                            <div class="kviz__step-subtitle">Вы можете оставить до 12 запросов с различными вариантами обучения</div>
							<div class="kviz__step-title">Что вы хотите изучать?</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item current">1</div>
                            <div class="kviz__progress-item">2</div>
                            <div class="kviz__progress-item">3</div>
                            <div class="kviz__progress-item">4</div>
                        </div>

                        <div class="kviz__body">
                            <div class="form__row">
                                <div class="form__label">Категория<span class="req">*</span></div>
                                <select class="styler styler--camp" name="course_category" data-placeholder="Категория курса" id="category-select-2" data-required>
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getValuesTV' | snippet : ['tvid' => '16', 'option'=>'1', 'chained' => '11']}
                                </select>
                            </div>
                            <div class="form__row">
                                <div class="form__label">Подкатегория<span class="req">*</span></div>
                                <select class="styler styler--camp" name="course_sub_category" data-placeholder="Подкатегория курса" id="sub_category-select-2" data-required>
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getList' | snippet : ['id' => '11', 'option'=>'1', 'chained' => '11']}
                                    {'!getList' | snippet : ['id' => '10', 'option'=>'1', 'chained' => '10']}
                                    {'!getList' | snippet : ['id' => '520', 'option'=>'1', 'chained' => '520']}
                                    {'!getList' | snippet : ['id' => '521', 'option'=>'1', 'chained' => '521']}
                                    {'!getList' | snippet : ['id' => '522', 'option'=>'1', 'chained' => '522']}
                                    {'!getList' | snippet : ['id' => '523', 'option'=>'1', 'chained' => '523']}
                                    {'!getList' | snippet : ['id' => '524', 'option'=>'1', 'chained' => '524']}
                                    {'!getList' | snippet : ['id' => '623', 'option'=>'1', 'chained' => '623']}
                                    {'!getList' | snippet : ['id' => '1347', 'option'=>'1', 'chained' => '1347']}
                                    {'!getList' | snippet : ['id' => '1357', 'option'=>'1', 'chained' => '1357']}
                                    {'!getList' | snippet : ['id' => '1358', 'option'=>'1', 'chained' => '1358']}
                                    {'!getList' | snippet : ['id' => '1360', 'option'=>'1', 'chained' => '1360']}
                                    {'!getList' | snippet : ['id' => '1362', 'option'=>'1', 'chained' => '1362']}
                                </select>
                            </div>
                            <div class="form__row">
                                <div class="form__label">Направление</div>
                                <select class="styler styler--camp" name="course_sub_category_type" data-placeholder="Направление " id="sub_category_type-select-2">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getValuesTV' | snippet : ['tvid' => '61', 'option'=>'1', 'chained' => '44']}
                                    {'!getValuesTV' | snippet : ['tvid' => '121', 'option'=>'1', 'chained' => '1348']}
                                    {'!getValuesTV' | snippet : ['tvid' => '122', 'option'=>'1', 'chained' => '1349']}
                                    {'!getValuesTV' | snippet : ['tvid' => '123', 'option'=>'1', 'chained' => '1351']}
                                    {'!getValuesTV' | snippet : ['tvid' => '124', 'option'=>'1', 'chained' => '1352']}
                                    {'!getValuesTV' | snippet : ['tvid' => '125', 'option'=>'1', 'chained' => '1353']}
                                    {'!getValuesTV' | snippet : ['tvid' => '126', 'option'=>'1', 'chained' => '1354']}
                                    {'!getValuesTV' | snippet : ['tvid' => '127', 'option'=>'1', 'chained' => '1355']}
                                    {'!getValuesTV' | snippet : ['tvid' => '128', 'option'=>'1', 'chained' => '1356']}
                                    {'!getValuesTV' | snippet : ['tvid' => '131', 'option'=>'1', 'chained' => '1364']}
                                    {'!getValuesTV' | snippet : ['tvid' => '132', 'option'=>'1', 'chained' => '1368']}
                                    {'!getValuesTV' | snippet : ['tvid' => '133', 'option'=>'1', 'chained' => '1369']}
                                    {'!getValuesTV' | snippet : ['tvid' => '134', 'option'=>'1', 'chained' => '1372']}
                                </select>
                            </div>                            
                            
                            {*
                            <div class="form__row">
                                <div class="form__label">Направления</div>
                                <div class="checkselect  checkselect--camp check-select" data-placeholder="Направления">
                                    <input type="hidden" name="directions" class="check-select-value">
                                    <div class="checkselect__select  placeholder check-select-toggle check-select-text">Направления</div>
                                    <div class="checkselect__dropdown check-select-dropdown">
                                        <div class="checkselect__list">
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value="all"><span>Все направления</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>IT</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Языковые</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Маркетинг</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Бизнес</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Финансы</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Продажи</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Управление персоналом</span></label>
                                            <label><input type="checkbox"  class="styler styler--camp check-param" name="directions[]" value=""><span>Дизайн и графика</span></label>
                                        </div>
                                    </div>
                                </div> 
                            </div>*}
                            <div class="form__row">
                                <div class="form__label">Особенности</div>
                                <select class="styler styler--camp" name="course_type" id="type-select-2" data-placeholder="Особенности">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '11']}
                                    {'!getValuesTV' | snippet : ['tvid' => '54', 'chained' => '10']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '520']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '521']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '522']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '523']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '524']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '623']}
                                    {'!getValuesTV' | snippet : ['tvid' => '53', 'chained' => '1269']}
                                </select>
                            </div>
                        </div>
                    
                        <div class="kviz__buttons">
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button"  id="nextStep">Далее</button>
                        </div>
                    </div>  
                    
                    <div class="kviz__step js-step-form js-step-radio " data-step="2">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Выберите формат и удобное время для занятий</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item current">2</div>
                            <div class="kviz__progress-item">3</div>
                            <div class="kviz__progress-item">4</div>
                        </div>
                    
                        <div class="kviz__colscheck">
                            <div class="kviz__colscheck-col">
                                <div class="kviz__colscheck-label">Форма обучения</div>
                                {set $form_of_study = $_modx->runSnippet('getValuesTV', ['tvid' => 25, 'arr' => 1])}        
                                {foreach $form_of_study as $k=>$v}
                                <label class="form__lcheck"><input type="radio" class="styler styler--camp" id="form_of_study" name="form_of_study" value="{$k}"><span>{$v}</span></label>
                                {/foreach}
                            </div>
                            <div class="kviz__colscheck-col">
                                <div class="kviz__colscheck-label">Формат обучения</div>
                                {set $format_of_study = $_modx->runSnippet('getValuesTV', ['tvid' => 36, 'arr' => 1])}        
                                {foreach $format_of_study as $k=>$v}
                                <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="format_of_study" value="{$k}"><span>{$v}</span></label>
                                {/foreach}
                            </div>
                            <div class="kviz__colscheck-col">
                                <div class="kviz__colscheck-label">День</div>
                                <div class="input__row">
                                    <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="schedule" value="weekdays"><span>Будние</span></label>
                                    <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="schedule" value="weekend"><span>Выходные</span></label>
                                </div>

                                <div class="kviz__rchm" id="days_block">
                                    <label class="form__lcheck" id="days1"><input type="checkbox" class="styler styler--camp"  name="days" value="пн"><span>пн</span></label>
                                    <label class="form__lcheck" id="days2"><input type="checkbox" class="styler styler--camp"  name="days" value="вт"><span>вт</span></label>
                                    <label class="form__lcheck" id="days3"><input type="checkbox" class="styler styler--camp"  name="days" value="ср"><span>ср</span></label>
                                    <label class="form__lcheck" id="days4"><input type="checkbox" class="styler styler--camp"  name="days" value="чт"><span>чт</span></label>
                                    <label class="form__lcheck" id="days5"><input type="checkbox" class="styler styler--camp"  name="days" value="пт"><span>пт</span></label>
                                    <label class="form__lcheck" id="days6"><input type="checkbox" class="styler styler--camp"  name="days" value="сб"><span>сб</span></label>
                                    <label class="form__lcheck" id="days7"><input type="checkbox" class="styler styler--camp"  name="days" value="вс"><span>вс</span></label>
                                </div>
                            </div>
                            
                            <div class="kviz__colscheck-col">
                                <div class="kviz__colscheck-label">Время</div>
                                <div class="input__row">
                                    {set $time = $_modx->runSnippet('getValuesTV', ['tvid' => 66, 'arr' => 1])}        
                                    {foreach $time as $k=>$v}
                                    <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="time" value="{$k}"><span>{$v}</span></label>
                                    {/foreach}                                    
                                </div>    

                                <div class="kviz__times">
                                    <div class="input__row kviz__ci">
                                        <div class="kviz__colscheck-label">От</div>
                                        <select class="styler styler--camp kviz__inpwsm" name="time_from" data-placeholder="выбрать">
                                            <option class="option-hide" value="">&nbsp;</option>
                                            <option value="8:00">8:00</option>
                                            <option value="8:30">8:30</option>
                                            <option value="9:00">9:00</option>
                                            <option value="9:30">9:30</option>
                                            <option value="10:00">10:00</option>
                                            <option value="10:30">10:30</option>
                                            <option value="11:00">11:00</option>
                                            <option value="11:30">11:30</option>
                                            <option value="12:00">12:00</option>
                                            <option value="12:30">12:30</option>
                                            <option value="13:00">13:00</option>
                                            <option value="13:30">13:30</option>
                                            <option value="14:00">14:00</option>
                                            <option value="14:30">14:30</option>
                                            <option value="15:00">15:00</option>
                                            <option value="15:30">15:30</option>
                                            <option value="16:00">16:00</option>
                                            <option value="16:30">16:30</option>
                                            <option value="17:00">17:00</option>
                                            <option value="17:30">17:30</option>
                                            <option value="18:00">18:00</option>
                                            <option value="18:30">18:30</option>
                                            <option value="19:00">19:00</option>
                                            <option value="19:30">19:30</option>
                                            <option value="20:00">20:00</option>
                                            <option value="20:30">20:30</option>
                                            <option value="21:00">21:00</option>
                                            <option value="21:30">21:30</option>
                                            <option value="22:00">22:00</option>
                                            <option value="22:30">22:30</option>
                                        </select>
                                    </div>
                                    
                                    <div class="input__row kviz__ci">
                                        <div class="kviz__colscheck-label">До</div>
                                        <select class="styler styler--camp kviz__inpwsm" name="time_to" data-placeholder="выбрать">
                                            <option class="option-hide" value="">&nbsp;</option>
                                            <option value="8:30">8:30</option>
                                            <option value="9:00">9:00</option>
                                            <option value="9:30">9:30</option>
                                            <option value="10:00">10:00</option>
                                            <option value="10:30">10:30</option>
                                            <option value="11:00">11:00</option>
                                            <option value="11:30">11:30</option>
                                            <option value="12:00">12:00</option>
                                            <option value="12:30">12:30</option>
                                            <option value="13:00">13:00</option>
                                            <option value="13:30">13:30</option>
                                            <option value="14:00">14:00</option>
                                            <option value="14:30">14:30</option>
                                            <option value="15:00">15:00</option>
                                            <option value="15:30">15:30</option>
                                            <option value="16:00">16:00</option>
                                            <option value="16:30">16:30</option>
                                            <option value="17:00">17:00</option>
                                            <option value="17:30">17:30</option>
                                            <option value="18:00">18:00</option>
                                            <option value="18:30">18:30</option>
                                            <option value="19:00">19:00</option>
                                            <option value="19:30">19:30</option>
                                            <option value="20:00">20:00</option>
                                            <option value="20:30">20:30</option>
                                            <option value="21:00">21:00</option>
                                            <option value="21:30">21:30</option>
                                            <option value="22:00">22:00</option>
                                            <option value="22:30">22:30</option>
                                            <option value="23:00">23:00</option>                                            
                                        </select>
                                    </div> 
                                </div>
                            </div>
                        </div>

                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button">Далее</button>
                        </div>
                    </div>   
                    
                    
                    <div class="kviz__step js-step-form js-step-radio " data-step="3">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Для какого возраста и в каком городе искать курсы?</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item active">2</div>
                            <div class="kviz__progress-item current">3</div>
                            <div class="kviz__progress-item ">4</div>
                        </div>
                    
                        <div class="kviz__body">
                            <div class="form__row">
                                <div class="form__label">Ваш возраст <span class="req">*</span></div>
                                <select class="styler styler--camp" name="for_ages" data-placeholder="Возраст" data-required>
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getValuesTV' | snippet : ['tvid' => '59']}
                                </select>
                            </div>
                            <div class="form__row">
                                <div class="form__label">Ваш уровень</div>
                                <select class="styler styler--camp" name="for_levels" id="level-select-2" data-placeholder="Уровень">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '11']}
                                    {'!getValuesTV' | snippet : ['tvid' => '46', 'chained' => '10']}
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '520']}
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '521']}
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '522']}
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '523']}
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '524']}
                                    {'!getValuesTV' | snippet : ['tvid' => '27', 'chained' => '623']}
                                    {'!getValuesTV' | snippet : ['tvid' => '129', 'chained' => '1347']}
                                    {'!getValuesTV' | snippet : ['tvid' => '129', 'chained' => '1357']}
                                    {'!getValuesTV' | snippet : ['tvid' => '129', 'chained' => '1358']}
                                    {'!getValuesTV' | snippet : ['tvid' => '129', 'chained' => '1360']}
                                    {'!getValuesTV' | snippet : ['tvid' => '129', 'chained' => '1362']}
                                </select>
                            </div>
                            <div class="form__row">
                                <div class="form__label">Когда готовы начать обучение?</div>
                                <input type="text" name="begin_date_from" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата с">
                            </div>
                            <div id="address_block">    
                                <div class="form__row">
                                    <div class="form__label">Город</div>
                                    <select class="styler styler--camp" name="course_city" id="course_city" data-placeholder="Город">
                                        <option class="option-hide" value="">&nbsp;</option>
                                        {'!getListCities' | snippet : ['name' => 'city','option'=>'1', 'chained' => 'offline']}
                                    </select>
                                </div>
                                <div class="form__row">
                                    <div class="form__label">Район</div>
                                    <select class="styler styler--camp" name="course_region" id="course_region" data-placeholder="Район">
                                        <option class="option-hide" value="">&nbsp;</option>
                                        {'!getListCities' | snippet : ['name' => 'districts','option'=>'1', 'chained' => 'minsk', 'city'=>'Минск']}
                                        {'!getListCities' | snippet : ['name' => 'districts','option'=>'1', 'chained' => 'brest', 'city'=>'Брест']}
                                        {'!getListCities' | snippet : ['name' => 'districts','option'=>'1', 'chained' => 'grodno', 'city'=>'Гродно']}
                                    </select>
                                </div>
                                <div class="form__row">
                                    <div class="form__label">Метро</div>
                                    <select class="styler styler--camp" name="course_metro" id="course_metro" data-placeholder="Метро">
                                        <option class="option-hide" value="">&nbsp;</option>
                                        {'!getListCities' | snippet : ['name' => 'metro','option'=>'1', 'chained' => 'minsk', 'city'=>'Минск']}
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button">Далее</button>
                        </div>
                    </div>   

                    
                    <div class="kviz__step js-step-form js-step-radio" data-step="4">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Куда отправить информацию?</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item active">2</div>
                            <div class="kviz__progress-item active">3</div>
                            <div class="kviz__progress-item current">4</div>
                        </div>
                    
                        <div class="kviz__body">
                            {*
                            <div class="form__row">
                                <div class="form__label">СМС на номер</div>
                                <input id="queuePhone" type="hidden" name="phone" class="input input--camp" placeholder="Номер">
                            </div>
                            *}
                            <div class="form__row">
                                <div class="form__label">Мы отправим вам сообщение о подходящих курсах на ваш email</div>
                                <input id="queueEmail" name="email" class="input input--camp" placeholder="E-mail" value="{$_modx->user.id | user : 'email'}">
                            </div>
                        </div>
                        
                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
                            <button class="btn btn--purple btn--sm kviz__buttons-next {*js-kviz-next*}" id="btnSaveFilter" data-userid="{$_modx->user.id}">Отправить</button>
                        </div>
                        
                    </div>  
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>