{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои преподаватели</h2>
                </div>
                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => '315',
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>                
                <a class="btn" href="{$_modx->makeUrl(319)}?type=teachers">Создать преподавателя школы</a>
                <p>&nbsp;</p>                
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
                                'school'=>$_modx->user.id
                            ]
                        ]}
                    </div>
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}