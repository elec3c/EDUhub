{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk replen section__mgb" id="appBonus">
            <div class="container">

                <div class="lk__nav">
                        {insert 'file:chunks/menu/lkm.menu.tpl'}
                    </div>
                
                {'!AjaxFormitLogin'|snippet:[
                    'snippet'      => 'FormIt',
                    'form'         => '@FILE chunks/forms/budget.bonus.operation.form.tpl',
                    'hooks'        => 'FormSave,budgetBonusTransactions',
                    'redirectTo'   => 1563,    
                    'validate'     => 'unp:required,sum:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage'         => 'Бонусный счет учебного центра успешно пополнен!'
                ]}                
                
                <div class="replen__filter">
                    <div class="replen__search">
                        <form action="{$id | url}" class="search__form">
                            <input type="text" v-model="searchValue" name="unp" class="input search__input" placeholder="Поиск по УНП" method="GET">
                            <input type="submit" value="&nbsp;" class="search__btn"/>
                        </form>
                    </div>
                            
                    <div class="replen__dates">
                        <div class="replen__dates-item">
                            <input type="date" placeholder="Дата с" name="data_from" class="input input--date" v-model="startDate" value="">
                        </div>
                        <div class="replen__dates-item">
                            <input type="date" placeholder="Дата по" name="data_to" class="input input--date" v-model="endDate" value="">
                        </div>
                    </div>
                </div>
                    
                <div v-for="recipe in filteredRecipes" :key="recipe.title">      
                {insert 'replenishment.item.bonus'}
                </div>
        </section><!-- lk -->

                {insert 'vue.replenishment.bonus'}
        
        

	</main><!--content__wrapper-->
	
{/block}