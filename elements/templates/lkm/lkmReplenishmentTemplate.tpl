{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk replen section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мой профиль</h2>
                </div>

                <div class="lk__nav">
                    <ul>
                        <li class="active">Пополнение кабинетов школ</li>
                        <li><a href="{$_modx->makeUrl(162)}">Аналитика</a></li>
                    </ul>
                </div>
                
                {'!AjaxForm'|snippet:[
                    'snippet'      => 'FormIt',
                    'form'         => '@FILE chunks/forms/budget.operation.form.tpl',
                    'hooks'        => 'FormSave,budgetTransactions',
                    'validate'     => 'unp:required,sum:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage'         => 'Счет учебного центра успешно пополнен!'
                ]}                
                
                <div class="replen__filter">
                    <div class="replen__search">
                        <form action="" class="search__form">
                            <input type="text" class="input search__input" placeholder="Поиск по УНП">
                            <input type="submit" value="" class="search__btn">
                        </form>
                    </div>
                        
                    <div class="replen__dates">
                        <div class="replen__dates-item">
                            <input type="text" placeholder="Дата с" class="input input--date datepicker-input">
                        </div>
                        <div class="replen__dates-item">
                            <input type="text" placeholder="Дата по" class="input input--date datepicker-input">
                        </div>
                    </div>
                </div>
                
                {'!budgetListOperation' | snippet: [
                    'manager_id' => $_modx->user.id,
                    'tpl' => '@FILE chunks/budget/budget.operation.block.tpl',
                ]}                   

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
