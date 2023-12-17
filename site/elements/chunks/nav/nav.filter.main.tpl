{set $menu  = '!pdoResources' | snippet : [
    'parents' => $_modx->config['site_parent_courses'],
    'depth' => 0,
    'showHidden' => 0,
    'sortby' => '{"menuindex":"ASC"}',
    'limit' => 0,
    'returnIds' => 1
]}


{set $submenu = '!pdoResources' | snippet : [
    'parents' => $menu,
    'depth' => 0,
    'showHidden' => 1,
    'sortby' => '{"menuindex":"ASC"}',
    'limit' => 0,
    'returnIds' => 1
]}

<section class="choose section__mg" id="choose">
    <div class="container">

        {set $my_company_id = $_modx->user.id | user:'my_company_id'}
        {set $isCorporate = ($my_company_id | ismember : ['Corporate'])}        
        {if ($my_company_id > 0) && ($isCorporate)}
        {set $fullname = $my_company_id | user : 'fullname'}
        <h2 class="choose_how__title">Ваша компания: <a href="{1136 | url}" style="text-decoration:none;">{$fullname}</a><br><br>
        <div class="buttons--3col">
            <a href="{1136 | url}" class="btn btn--purple">Список школ-партнеров</a>
            <a href="{1386 | url}" class="btn btn--purple">Просмотреть все курсы со скидками от школ-партнеров</a>
        </div>                        
        {/if}
        
        
        <h3 class="choose_how__title">Поиск по группам, на которые идет набор слушателей</h3><br>
        <div class="snav">
            <ul class="snav__list js-filter-scool" style="background:#F1F1F1;padding:30px;border-radius: 15px; margin: 0 0px;">
            {set $idx = 0}
            <li><a href="{18 | url}"><label class="snav__label"><div class="snav__label-wrap">Все направления</div></label></a></li>
            {foreach explode(',',$menu) as $index}
                <li><label class="snav__label"><input type="radio" name="nav-filter" value="{$index}" data-url="{$index | url}"><div class="snav__label-wrap">{$index | resource: 'pagetitle'}</div></label></li>
                {set $idx = $idx + 1}
            {/foreach}
            </ul>
            <ul class="snav__list js-filter-scool-more">
            {foreach explode(',',$menu) as $index}
            <li class="hide"><label class="snav__label"><a href="{$index | url}"><input type="radio" name="nav-filter-sub" value="{$index}" data-choose="{$index}" data-url="{$index | url}"><div class="snav__label-wrap">Все направления</div></a></label></li>
            {/foreach}
            {set $idx = 0}
            {foreach explode(',',$submenu) as $subindex}
                <li class="hide"><label class="snav__label"><a href="{$subindex | url}"><input type="radio" name="nav-filter-sub" value="{$subindex}" data-choose="{$subindex | resource: 'parent'}" data-url="{$subidnex | url}"><div class="snav__label-wrap">{$subindex | resource: 'pagetitle'}</div></a></label></li>
                {set $idx = $idx + 1}
            {/foreach}
            </ul>            
        </div>
    </div>
</section>
