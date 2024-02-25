<div class="article__aside">
{$_modx->runSnippet('pdoResources', [
    'parents'=>$_modx->resource.parent,
    'tpl'=>'@FILE chunks/blog/blog.aside.item.tpl',
    'resources'=>'-'~$_modx->resource.id,
    'sortby'=>'RAND()',
    'includeTVs' => 'small_image',
    'processTVs'=>'1',
    'limit'=>'4'
])}
</div>