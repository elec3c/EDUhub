<div class="popup popup--camp popup--kviz" data-popup="kviz2">
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
				
				<form action="{$_modx->resource.uri}" method="post" class="kviz js-kviz form--camp" id="queueCampStepByStepForm">
					<input name="controll" class="no-display" type="text">
					<input type="hidden" name="form" value="">

                    <div class="kviz__step js-step-form js-step-radio active" data-step="1">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Выберите формат и тематику лагеря</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item current">1</div>
                            <div class="kviz__progress-item ">2</div>
                            <div class="kviz__progress-item">3</div>
                            <div class="kviz__progress-item">4</div>
                        </div>
                    
                        <div class="kviz__colscheck cols--center">
                            {set $camp_format  = $_modx->runSnippet('getValuesTV', ['tvid' => 144, 'arr' => 1])}
                            {if $camp_format}
                            <div class="kviz__colscheck-col col--auto">
                                <div class="kviz__colscheck-label form__label">Формат<span class="req">*</span></div>
                                {set $n = 0}
                                {foreach $camp_format as $k=>$v}
                                <label class="form__lcheck"><input {if $n == 0}checked{/if} type="radio" class="styler styler--camp" name="camp_format" ><span>{$v}</span></label>
                                {set $n = $n + 1}
                                {/foreach}
                            </div>
                            {/if}
                            {set $camp_subjects  = $_modx->runSnippet('getValuesTV', ['tvid' => 145, 'arr' => 1])}
                            {if $camp_subjects}
                            <div class="kviz__colscheck-col col--auto">
                                <div class="kviz__colscheck-label">Тематика</div>
                                <div class="kviz__rchm">
                                    {foreach $camp_subjects as $k=>$v}
                                    <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="camp_subjects" value="{$k}"><span>{$v}</span></label>
                                    {/foreach}
                                </div>
                            </div>
                            {/if}
                        </div>
                        <div class="kviz__buttons">
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button">Далее</button>
                        </div>
                    </div>  
                    
                    <div class="kviz__step js-step-form js-step-radio " data-step="2">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Где искать?</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item current">2</div>
                            <div class="kviz__progress-item">3</div>
                            <div class="kviz__progress-item">4</div>
                        </div>

                        <div class="kviz__body">
                            <div class="form__row">
                                <div class="form__label">Город<span class="req">*</span></div>
                                    <select class="styler styler--camp" name="camp_city" id="course_city" data-required="" data-placeholder="Город">
                                        <option class="option-hide" value="">&nbsp;</option>
                                        {'!getListCities' | snippet : ['name' => 'city','option'=>'1', 'chained' => 'offline']}
                                    </select>
                            </div>
                            <div class="form__row">
                                <div class="form__label">Район</div>
                                    <select class="styler styler--camp" name="camp_region" id="course_region" data-placeholder="Район">
                                        <option class="option-hide" value="">&nbsp;</option>
                                        {'!getListCities' | snippet : ['name' => 'districts','option'=>'1', 'chained' => 'minsk', 'city'=>'Минск']}
                                        {'!getListCities' | snippet : ['name' => 'districts','option'=>'1', 'chained' => 'brest', 'city'=>'Брест']}
                                        {'!getListCities' | snippet : ['name' => 'districts','option'=>'1', 'chained' => 'grodno', 'city'=>'Гродно']}
                                    </select>
                            </div>
                            {*<div class="form__row">
                                <div class="form__label">Микрорайон</div>
                                <select class="styler styler--camp" name="m-area" data-placeholder="Микрорайон">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    <option value="Категория 1">Категория 1</option>
                                    <option value="Категория 2">Категория 2</option>
                                    <option value="Категория 3">Категория 3</option>
                                </select>
                            </div>*}
                            <div class="form__row">
                                <div class="form__label">Метро</div>
                                    <select class="styler styler--camp" name="camp_metro" id="course_metro" data-placeholder="Метро">
                                        <option class="option-hide" value="">&nbsp;</option>
                                        {'!getListCities' | snippet : ['name' => 'metro','option'=>'1', 'chained' => 'minsk', 'city'=>'Минск']}
                                    </select>
                            </div>
                        </div>
                    
                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
    
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button">Далее</button>
                        </div>
                    </div>  
                    <div class="kviz__step js-step-form js-step-radio " data-step="2">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Где искать?</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item current">2</div>
                            <div class="kviz__progress-item">3</div>
                            <div class="kviz__progress-item">4</div>
                        </div>

                        <div class="kviz__body">
                            <div class="form__row">
                                <div class="form__label">Область</div>
                                <select class="styler styler--camp" name="transfer_region" data-placeholder="Область">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    <option value="Категория 1">Категория 1</option>
                                    <option value="Категория 2">Категория 2</option>
                                    <option value="Категория 3">Категория 3</option>
                                </select>
                            </div>
                            <div class="form__row">
                                <div class="form__label">Трансфер из города</div>
                                <select class="styler styler--camp" name="transfer_from_city" data-placeholder="Город">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getListCities' | snippet : ['name' => 'city','option'=>'1', 'chained' => 'offline']}
                                </select>
                            </div>
                            {*<div class="form__row">
                                <div class="form__label">Расстояние от города не более</div>
                                <select class="styler styler--camp" name="distance" data-placeholder="Расстояние">
                                    <option class="option-hide" value="">&nbsp;</option>
                                    <option value="Категория 1">Категория 1</option>
                                    <option value="Категория 2">Категория 2</option>
                                    <option value="Категория 3">Категория 3</option>
                                </select>
                            </div>*}
                        </div>
                    
                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button">Далее</button>
                        </div>
                    </div> 
                     
                    
                    
                    <div class="kviz__step js-step-form js-step-radio " data-step="4">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Выберите период</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item active">2</div>
                            <div class="kviz__progress-item current">3</div>
                            <div class="kviz__progress-item ">4</div>
                        </div>
                    
                        <div class="kviz__body">
                            <div class="form__label">Период</div>
                            <div class="input__row kviz__cid">
                                <input type="text" name="camp_date_from" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата с">
                                <input type="text" name="camp_date_to" class="input input--camp input--date cmp_create__inpwsm datepicker-input date-mask" placeholder="Дата по">
                            </div>
                            {set $camp_class_time  = $_modx->runSnippet('getValuesTV', ['tvid' => 146, 'arr' => 1])}
                            {foreach $camp_class_time as $k=>$v}
                            <label class="form__lcheck"><input type="checkbox" class="styler styler--camp" name="camp_class_time" value="{$k}"><span>{$v}</span></label>
                            {/foreach}
                        </div>
                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" type="button">Далее</button>
                        </div>
                    </div>   

                    
                    <div class="kviz__step js-step-form js-step-radio " data-step="5">
						<div class="kviz__step-head">
							<div class="kviz__step-title">Ваши данные</div>
						</div>
                        <div class="kviz__progress">
                            <div class="kviz__progress-item active">1</div>
                            <div class="kviz__progress-item active">2</div>
                            <div class="kviz__progress-item active">3</div>
                            <div class="kviz__progress-item current">4</div>
                        </div>
                    
                        <div class="kviz__body">
                            <div class="form__row">
                                <div class="form__label">Ваш возраст<span class="req">*</span></div>
                                <select class="styler styler--camp" name="camp_ages" data-placeholder="Возраст" data-required>
                                    <option class="option-hide" value="">&nbsp;</option>
                                    {'!getValuesTV' | snippet : ['tvid' => '149']}
                                </select>
                                {*<input name="age2" class="input input--camp" placeholder="Возраст" >*}
                            </div>
                            <div class="form__row">
                                <div class="form__label">Пол ребенка<span class="req">*</span></div>
                                <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="boy"><span>Мальчик</span></label>
                                <label class="form__lcheck"><input type="radio" class="styler styler--camp" name="gender" value="girl"><span>Девочка</span></label>
                            </div>
                            <div class="kviz__t">Если нужно найти отдых для еще одного ребенка, добавьте его через кнопку.</div>
                            <button class="btn btn--purple btn--sm" type="button"><img src="assets/images/icons/add-white.svg" alt=""><span>Добавить</span></button>

                            <div class="kviz__bmt">
                                <div class="kviz__t">Мы отправим вам подборку лагерей <span class="nowrap"> на ваш E-mail.</span></div>
                                <div class="form__row">
                                    <div class="form__label">E-mail<span class="req">*</span></div>
                                    <input name="email" class="input input--camp" data-required="" placeholder="E-mail" id="camp_email">
                                </div>
                            </div>
                        </div>
                        <div class="kviz__buttons">
                            <button class="btn btn--bdpurple btn--bd btn--sm kviz__buttons-prev js-kviz-prev" type="button">Назад</button>
                            <button class="btn btn--purple btn--sm kviz__buttons-next js-kviz-next" id="btnSaveCampFilter" data-userid="{$_modx->user.id}">Отправить</button>
                        </div>
                    </div>  
				</form>
			</div>
		</div><!--popup__container-->
	</div>
</div>