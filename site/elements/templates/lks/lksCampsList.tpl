{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head section__head--cols cols--tabcol mb--md">
                    <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
                    <div class="section__head-action">

                        <a href="{$_modx->config.resource_id_camp_form | url}?type=urban" class="btn btn--sm btn--purple"><img src="app/assets/images/icons/add-circle.svg" alt=""><span>Создать программу (городской)</span></a>
                        <a href="{$_modx->config.resource_id_camp_form | url}?type=outcall" class="btn btn--sm btn--purple"><img src="app/assets/images/icons/add-circle.svg" alt=""><span>Создать программу (выездной)</span></a>
                    </div>
                </div>
                <div class="lk__nav lk__nav--camp">
                    <ul>
                        <li class="active">Программы</li>
                        <li><a href="">Группы</a></li>
                    </ul>
                </div>
                {'!pdoPage' | snippet : [
                    'parents' => $_modx->config.section_id_created_camps,
                    'limit' => '20',
                    'includeTVs' => 'userId',
                    'tvPrefix' => '',
                    'showUnpublished' => 1,
                    'where' => [
                        'userId' => $_modx->user.id,
                    ],
                    'tpl' => '@FILE chunks/camp/lk/programmRow.tpl'
                ]}
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}
{block 'scripts'}
    {include 'file:chunks/modals/camps/campDelete.tpl'}
    {include 'file:chunks/modals/camps/campChangeStatus.tpl'}
    {include 'file:chunks/scripts.tpl'}
    <script src="/assets/custom/camp.js"></script>
{/block}