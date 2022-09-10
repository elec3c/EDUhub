{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk replen section__mgb" id="app">
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
                        <form action="{$id | url}" class="search__form">
                            <input type="text" v-model="searchValue" name="unp" class="input search__input" placeholder="Поиск по УНП" method="GET">
                            <input type="submit" value="" class="search__btn">
                        </form>
                    </div>
                            
                    <div class="replen__dates">
                        <div class="replen__dates-item">
                            <input type="text" placeholder="Дата с" name="data_from" class="input input--date datepicker-input">
                        </div>
                        <div class="replen__dates-item">
                            <input type="text" placeholder="Дата по" name="data_to" class="input input--date datepicker-input">
                        </div>
                    </div>
                </div>
                    
                    
                <div v-for="recipe in filteredRecipes" :key="recipe.title">      
                
                    {*'!budgetListOperation' | snippet: [
                        'manager_id' => $_modx->user.id,
                        'tpl' => '@FILE chunks/budget/budget.operation.block.tpl',
                    ]*}
                    
                {ignore}    
                    <div class="replen__item" style="margin-top:10px;">
                        <div class="replen__item-col replen__item-number">{{ recipe.title }}</div>
                            <div class="replen__item-col replen__item-date">
                                <div class="replen__item-label show-tablet-sm">Дата пополнения</div>
                                    {{ recipe.data }}    
                                </div>
                                <div class="replen__item-col replen__item-price">
                                    <div class="replen__item-label show-tablet-sm">Сумма</div>
                                    {{ recipe.price }} руб.
                                </div>
                        </div>                                     
                    </div>
                {/ignore}      
            </div>
        </section><!-- lk -->

        {if $.get['unp'] > 0}
            {set $unp = $.get['unp']}
        {else}
            {set $unp = 0}
        {/if}
        
        {set $data = '!budgetListOperation' | snippet: [
            'manager_id' => $_modx->user.id,
            'tpl' => '@FILE chunks/budget/vue.budget.operation.block.tpl',
            'unp' => $.php.trim($unp)
        ]} 


{ignore}


<script>
  const { createApp } = Vue
  
  createApp({
    data() {
    
        return {
        
            ascending: true,      
            searchValue: '',
          
            recipes: [
                {/ignore}       
                
                {$data}
                
                {ignore}                
                
            ]};
    },
    
    computed: {
    
      filteredRecipes() {
      
        let tempRecipes = this.recipes
        
        if (this.searchValue != '' && this.searchValue) {
        
            tempRecipes = tempRecipes.filter((item) => {
            
              return item.title
                .toUpperCase()
                .includes(this.searchValue.toUpperCase())
                
            })
        }                    
          
        if (!this.ascending) {
        
            tempRecipes.reverse()
            
        }
            
        return tempRecipes
        
  }    
  
}
        }).mount('#app')
</script>


{/ignore}
        

	</main><!--content__wrapper-->
	
{/block}


