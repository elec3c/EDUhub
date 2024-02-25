{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk section__mgb">
            <div class="container">
                
                <div class="section__head">
                    <div class="lk__nav">
                        {insert 'file:chunks/menu/lkm.menu.tpl'}
                    </div>
                </div>
                    
                <div id="pdopage">
                    <div class="rows">
                        {'!pdoPage' | snippet :[
                            'ajaxMode'=>'scroll',
                            'showLog'=>0,
                            'element'=>'pdoUsers',
                            'limit'=>5,
                            'groups'=>'Corporate',
                            'sortby'=>'{"id":"DESC"}',
                            'tvPrefix'=>'',
                            'tpl'=>'@FILE chunks/lkm/lkm.verification.companies.list.block.tpl'
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}                            
                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>                    
            </div>
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}