{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}        
        
        <section class="lk kpreport section__mgb">
            <div class="container">
                
                <div class="section__head">
                    <h2 class="section__title">Коммерческие предложения</h2>
                </div>
                
                {set $verified = $user_id | user:'verified'}
                {if $verified}
                    {if !$_modx->user.manager}
                    <a class="btn" href="{$_modx->makeUrl(804)}">Создать тендер</a>
                    <p>&nbsp;</p>
                    {/if}
                    <div id="pdopage">
                        <div class="rows">
                            {if $.get.cat_id}
                                {set $cat_id = [$.get.cat_id]}
                            {else}
                                {set $cat_id = [11,10,520,521,522,523,524,623]}
                            {/if}
                            {'!pdoPage' | snippet :[
                                'ajaxMode'=>'default',
                                'idx'=>5,
                                'class'=>'EduTender',
                                'tvPrefix'=>'',
                                'processTVs'=>'1',
                                'limit'=>'10',                            
                                'loadModels'=>'tender',
                                'sortby'=>[
                                    'EduTender.id'=>'DESC',
                                ],
                                'where'=>[
                                    'EduTender.user_id' => $user_id,
                                    'EduTender.cat_id:IN'  => $cat_id 
                                ],                            
                                'tpl'=>'@FILE chunks/lk/lk.kpreport.block.tpl'
                            ]?:'<p class="section__intro">Ничего не найдено</p>'}
                        </div>
                        <div class="section__buttons">
                            {$_modx->getPlaceholder('page.nav')}
                        </div>
                    </div>
                    {else}
                        <p class="section__intro">Для того, чтобы воспользоваться услугой "Тендеры", необходимо пройти верификацию Вашей компании. Для этого необходимо заполнить информацию в Профиле и сохранить ее. На официальный e-mail, указанный на Вашем сайте, будет выслана верификационная ссылка, по которой Вам необходимо перейти, чтобы завершить процесс верификации.</p>
                    {/if} 
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}
