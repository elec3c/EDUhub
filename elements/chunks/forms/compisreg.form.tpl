				{set $company_list = $_modx->runSnippet('!pdoResources', [
                    'parents' => 1132,
                    'tpl' => '@INLINE <option value="{$id}">{$pagetitle}</option>',
                    'showLog' => 1
                ])}
                
   
				
				<form action="{$_modx->resource.uri}" method="post" id="compisregForm">
				    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
                    <input name="controll" class="no-display" type="text">
                    <input type="hidden" name="form" value="Запрос на добавление компании">
					<div class="input__row">
						<div class="form__label">Выберите компанию из списка</div>
						<select name="copmany" data-placeholder="Список компаний" class="styler styler--white">
							<option value=""></option>
                            {$company_list}
						</select>
					</div> 
					<div class="form__tb">здесь будет появляться инструкция для получения промокода. Инструкция заполняется администратором партнерских программ в личном кабинете компании</div> 
					
					
					<div class="popup__head">
						<div class="popup__title">Нет вашей компании в списке?</div>
					</div>
					<div class="input__row">
						<div class="form__label">Укажите название вашей компании в формате:</div>
						<input type="text" name="name" class="input input--white" placeholder="Название компании, ООО">
					</div>
					<div class="input__row">
						<div class="form__label">Добавьте комментарий</div>
						<textarea name="comment" class="input input--white" placeholder="Комментарий"></textarea>
					</div>

					<div class="input__row">
						<button class="btn btn--purple w-all">Отправить запрос</button>
					</div>
					<div class="form__tb">здесь будет появляться инструкция для получения промокода. Инструкция заполняется администром партнерских программ в личном кабинете компании</div>
				</form>