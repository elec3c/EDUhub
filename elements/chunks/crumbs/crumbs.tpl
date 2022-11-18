<div class="breadcrumbs">
	<div class="container">
    {$_modx->runSnippet('pdoCrumbs', [
        'showAtHome' => 0,
        'showHome' => 1,
        'exclude' => '85',
        'tpl' => '@INLINE <li class="breadcrumbs__item"><a href="{$link}" class="breadcrumbs__link">{$menutitle}</a></li>',
        'tplCurrent' => '@INLINE <li class="breadcrumbs__item">{$menutitle}</li>',
        'tplWrapper' => '@INLINE <ul class="breadcrumbs__list">{$output}</ul>',
    ])}
	</div>
</div>	