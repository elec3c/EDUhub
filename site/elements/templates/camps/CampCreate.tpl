{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {'!FetchIt' | snippet : [
        'snippet' => 'createCamp',
        'form' => '@FILE chunks/camp/forms/create.tpl',
        'successMessage' => 'Успех',
        'clearFieldsOnSuccess' => true,
        'resourceId' => $_modx->resource.id,
        'campType' => $.get['type']
    ]}
{/block}