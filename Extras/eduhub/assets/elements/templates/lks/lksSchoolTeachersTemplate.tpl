{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои преподаватели</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='315'}                
                
                {if !$_modx->user.manager}                
                    <a class="btn" href="{$_modx->makeUrl(319)}?type=teachers">Создать преподавателя школы</a>
                <p>&nbsp;</p>                
                {/if}
                

                <div id="pdopage">
                    <div class="rows">
                        {'!pdoPage' | snippet :[
                            'ajaxMode'=>'default',
                            'idx'=>5,
                            'class'=>'EduTeachers',
                            'tvPrefix'=>'',
                            'processTVs'=>'1',
                            'limit'=>'10',                            
                            'loadModels'=>'school',
                            'sortby'=>[
                                'EduTeachers.id'=>'DESC',
                            ],
                            'tpl'=>'@FILE chunks/lks/lks.school.teachers.block.tpl',
                            'where'=>[
                                'school'=>$user_id
                            ]
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