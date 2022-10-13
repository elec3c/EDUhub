{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk analitics section__mgb">
            <div class="container">
                <div class="analitics__head">
                    <div class="lk__nav">
                        {insert 'file:chunks/menu/lkm.menu.tpl'}
                    </div>
                </div>
                <p><a class="btn" href="{$_modx->makeUrl(307)}">Создать</a></p>
                <p>&nbsp;</p>
                    
                <div id="pdopage">
                    <div class="analitics__block lk__wraplr section__lr">
                        <div class="rows">
                            {'!pdoPage' | snippet :[
                                'ajaxMode'=>'default',
                                'limit'=>20,
                                'idx'=>5,
                                'class'=>'EduCities',
                                'tvPrefix'=>'',
                                'loadModels'=>'cities',
                                'sortby'=>[
                                    'EduCities.id'=>'DESC',
                                ],
                                'tpl'=>'@FILE chunks/lkm/lkm.address.block.tpl'
                            ]}
                        </div>
                    </div><!--analitics__block-->
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>                        

            </div>
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}