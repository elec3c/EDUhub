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
                
                {*
                <div class="courses__filter">
                    <select name="category" data-placeholder="Категория курса" class="styler"
                        id="category-select">
                        <option value=""></option>
                        {'!pdoResources' | snippet : [
                            'parents'=>'85'
                            'depth'=>0,
                            'tpl'=>'@CODE <option value="{$id}">{$menutitle}</option>{$wrapper}',
                        ]}
                    </select>
                </div>
                *}
                {if !$_modx->user.manager}
                <a class="btn" href="{$_modx->makeUrl(39)}?type=course">Создать курс/шаблон</a>
                <p>&nbsp;</p>
                {/if}
                <div id="pdopage">
                    <div class="rows">
                        {$_modx->runSnippet('!pdoPage', [
                            'parents'=>61,
                            'tpl'=>'@FILE chunks/lks/lks.courses.course.item.tpl',
                            'includeTVs' => 'small_image, course_owner, course_address, course_city, course_region, course_metro, data_from, res_type, course_duration, num_lesson_per_week, lesson_duration, format_of_study, form_of_study, num_people_in_group, for_ages_from, for_ages_to, price_course, price_lesson,price_course_month,num_months_of_study',
                            'templates' => '8',
                            'processTVs'=>'1',
                            'limit'=>'10',
                            'sortby'=>'{"id":"DESC"}',
                            'showUnpublished'=>'1',
                            'where' => '{"course_owner":'~$user_id~'}',
              
                            
                        ])?:'<p class="section__intro">Вы еще не добавляли ни одного шаблона курса.</p>'}
                    </div>
                    <div class="section__buttons">
                        {$_modx->getPlaceholder('page.nav')}
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}