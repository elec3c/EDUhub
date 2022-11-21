{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
<main class="content__wrapper">
    {insert 'file:chunks/users/user.menu.tpl'}
    <section class="lk queue section__mgb">
        <div class="container">
            <div class="section__head">
                <h2 class="section__title">Мои запросы</h2>
            </div>
            <div class="content__text section__mgb--sm">
                <h3>Как воспользоваться запросом</h3>
                <p>Все запросы хранятся в личном кабинете.</p>
            </div>

            <div id="pdopage">        
                <div class="rows">  
                {'!pdoPage' | snippet :[
                    'ajaxMode'=>'default',
                    'limit'=>10,
                    'class'=>'EduQueue',
                    'tvPrefix'=>'',
                    'loadModels'=>'queue',
                    'sortby'=>[
                        'EduQueue.id'=>'DESC',
                    ],
                    'where' => '{"user_id":'~$_modx->user.id~'}',
                    'tpl'=>'@INLINE
                    
                            <div class="cglistener__row">
                                <div class="cglistener__col cglistener__col--number"><div class="cglistener__label show-tablet-sm">Номер</div>{$idx}</div>
                                <div class="cglistener__col"><div class="cglistener__label show-tablet">Дата внесения</div>{$date | date : "d.m.Y"}</div>
                                <div class="cglistener__col"><div class="cglistener__label show-tablet">Запрос</div>{$.php.base64_decode($queue)}</div>
                                <div class="cglistener__col cglistener__col--action">
                                    {*<a href="" class="cglistener-edit">
                                        <img src="assets/images/icons/edit-purple.svg" alt="Edit">
                                    </a>*}
                                    <a href="{$_modx->makeUrl(505)}?delete={$id}" class="cglistener-remove">
                                        <img src="assets/images/icons/remove.svg" alt="Remove">
                                    </a>
                                </div>
                            </div>                    
                    
                    ',
                    'tplWrapper'=>'@INLINE 
            			<div class="cgcourse rollup-box">
                            <div class="cglistener rollup-box">
                                <div class="rollup-tab">
                                    <div class="cglistener__table">
                                        <div class="cglistener__row cglistener__row--head">
                                            <div class="cglistener__col cglistener__col--number cglistener__label">Номер</div>
                                            <div class="cglistener__col cglistener__label">Дата внесения</div>
                                            <div class="cglistener__col cglistener__label">Запрос</div>
                                            <div class="cglistener__col cglistener__col--action"></div>
                                        </div>
                                        {$output}            
                                    </div>
                                </div>
                            </div>
                        </div>                                
                    '
                ]}
            </div>
            <div class="section__buttons">
                {'page.nav' | placeholder}
            </div>
        </div>
    </section><!-- lk -->
</main><!--content__wrapper-->
{/block}