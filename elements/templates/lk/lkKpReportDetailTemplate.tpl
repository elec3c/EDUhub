{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}        
        <section class="lk kpreport section__mgb">
            <div class="container">
                
                <div class="section__head">
                    <h2 class="section__title">Детальная информация по тендеру</h2>
                </div>
                
                <p>&nbsp;</p>
                <div id="pdopage">
                    <div class="rows">
                        {'!pdoPage' | snippet :[
                            'ajaxMode'=>'default',
                            'idx'=>5,
                            'class'=>'EduTender',
                            'tvPrefix'=>'',
                            'processTVs'=>'1',
                            'limit'=>'1',                            
                            'loadModels'=>'tender',
                            'sortby'=>[
                                'EduTender.id'=>'DESC',
                            ],
                            'where'=>[
                                'EduTender.user_id' => $user_id,
                                'EduTender.id'  => $.get.tender_id
                            ],                            
                            'tpl'=>'@FILE chunks/lk/lk.kpreport.detail.block.tpl'
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}
                    </div>
                </div>
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}
