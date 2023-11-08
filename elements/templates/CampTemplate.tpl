{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
<link rel="stylesheet" href="/app/assets/css/styles.min.css">
    {'!PageBlocks' | snippet : [
        'context' => $_modx->resource.context_key,
        'cultureKey' => $_modx->config.cultureKey
    ]}
{/block}