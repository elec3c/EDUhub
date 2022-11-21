{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои курсы</h2>
                </div>
                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => '36',
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>                
                
                {include 'file:chunks/forms/courses.select.group.form.add.tpl'}
  
                <p>&nbsp;</p>
                <div id="pdopage">
                    <div class="rows">
                        {$_modx->runSnippet('!pdoPage', [
                            'parents'=>85,
                            'tpl'=>'@FILE chunks/lks/lks.courses.group.item.tpl',
                            'includeTVs' => 'small_image, course_owner, course_address, course_city, course_region, course_metro, data_from, res_type, time, schedule',
                            'templates' => '8',
                            'processTVs'=>'1',
                            'limit'=>'10',
                            'sortby'=>'{"id":"DESC"}'
                            'showUnpublished'=>'1',
                            'where' => '{"course_owner":'~$_modx->user.id~'}',
                        ])}
                        {*'sortby'=>'{"data_from":"ASC"}',*}
                    </div>
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}