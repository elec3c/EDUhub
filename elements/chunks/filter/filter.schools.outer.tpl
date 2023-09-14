<section class="scools section__mgb row msearch2" id="mse2_mfilter">
    <div class="container">
        <div class="section__head">
            <h1 class="section__title">{$_modx->resource.longtitle?:$_modx->resource.pagetitle}</h1>
        </div>
                
        {include 'file:chunks/users/user.submenu.tpl' pid='1195'}                    

                
        <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
                <div class="snav">
                    <ul class="snav__list">
                        {*<li><a href="{$_modx->resource.id | url}" class="snav__link {if !$.get.schools_direction_b2b}active{/if}">Все направления</a></li>*}
                        {$filters}
                    </ul>
                </div>            
        </form>       
    </div>        
        
    <div class="container">
        <div class="choose__title">Найдено <span id="mse2_total">{$total}</span> {$total | declension : 'школа|школы|школ'}</div>
        <div class="scools__items rows" id="mse2_results">
            {$results}
        </div>
        <div class="mse2_pagination">
		    {$_modx->getPlaceholder('page.nav')}
	    </div>
    </div>
</section>
    
    
    

        
        
        
        




