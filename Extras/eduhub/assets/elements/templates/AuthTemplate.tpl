{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="lk section__mgb">
    <div class="container">
        <div class="section__head">
            <h2 class="section__title">Мой профиль</h2>
        </div>
        
        <div class="lk__profile">
            <div class="lk__profile-form lk__profile-form--mw">
                <div class="form__title lk__profile-title">Личные данные</div>
                    {$_modx->runSnippet('OfficeAuth', [
            			'loginResourceId' => '{$site_start}'
            		])}                
            </div>
            
        </div>
    </div>
</section>
{/block}



