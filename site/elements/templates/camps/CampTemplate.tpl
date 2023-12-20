{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {if $.get['edit'] === 'true' && $_modx->user.id == $_modx->resource.id | resource: 'userId'}
        {'!FetchIt' | snippet : [
            'snippet' => 'createCamp',
            'form' => '@FILE chunks/camp/forms/create.tpl',
            'successMessage' => 'Успех',
            'clearFieldsOnSuccess' => false,
            'resourceId' => $_modx->resource.id,
            'edit' => true,
            'campType' => $.get['type']
        ]}
    {else}
        {'!PageBlocks' | snippet : [
            'context' => $_modx->resource.context_key,
            'cultureKey' => $_modx->config.cultureKey
        ]}
    {/if}
{/block}