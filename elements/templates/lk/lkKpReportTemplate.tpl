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
                
{*                
                
                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => '85',
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li {if $.get.cat_id==$id}class="active"{/if}><a href="{803 | url}?cat_id={$id}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>   
*}                

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
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}
