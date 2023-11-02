{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои курсы</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='36'}                
                
                {include 'file:chunks/forms/courses.select.group.form.add.tpl'}
  
                <p>&nbsp;</p>
                <div id="pdopage">
                    <div class="rows">
                        {$_modx->runSnippet('!pdoPage', [
                            'parents'=>85,
                            'tpl'=>'@FILE chunks/lks/lks.courses.group.item.tpl',
                            'includeTVs' => 'small_image, course_owner, course_address, course_city, course_region, course_metro, data_from, data_continue, res_type, time, schedule,price_course_month,num_months_of_study',
                            'templates' => '8',
                            'processTVs'=>'1',
                            'limit'=>'10',
                            'sortby'=>'{"id":"DESC"}'
                            'showUnpublished'=>'1',
                            'where' => '{"course_owner":'~$user_id~'}',
                        ])?:'<p class="section__intro">Вы еще не добавляли ни одной группы на основе шаблона.</p>'}
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