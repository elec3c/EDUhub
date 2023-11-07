{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {if $.get['edit'] === 'true' && $.get['id']}
        {set $snippet = 'editCamp'}
    {else}
        {set $snippet = 'createCamp'}
    {/if}
    {'!FetchIt' | snippet : [
        'snippet' => $snippet,
        'form' => '@FILE chunks/camp/forms/create.tpl',
        'successMessage' => 'Успех',
        'clearFieldsOnSuccess' => true,
        'resourceId' => $_modx->resource.id,
        'edit' => true,
    ]}
{/block}