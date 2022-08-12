{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои курсы</h2>
                </div>
                <div class="courses__filter">
                    <select name="category" data-placeholder="Категория курса" class="styler">
                        <option value=""></option>
                        <option value="Python">Python</option>
                        <option value="Java">Java</option>
                        <option value="JavaScript">JavaScript</option>
                        <option value="C++">C++</option>
                    </select>
                </div>
                {$_modx->runSnippet('pdoResources', [
                    'parents'=>65,
                    'tpl'=>'@FILE chunks/lks/lks.courses.item.tpl',
                    'includeTVs' => 'small_image',
                    'processTVs'=>'1',
                    'limit'=>'3',
                    'showUnpublished'=>'1',
                    'where' => '{"template":"8"}'
                ])}
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}