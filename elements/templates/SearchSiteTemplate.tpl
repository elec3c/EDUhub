{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'} 
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="row">
                {'!pdoPage' | snippet: [
                    'element' => 'mSearch2',
                    'hideContainers' => true,
                    'cache' => 0,
                    'cacheTime' => 84600,
                    'tpl' => '@FILE chunks/search/search.result.row.tpl',
                    'tplWrapper' => '@FILE chunks/search/search.result.tpl',
                    'ajax' => '0'
                ]}                
                
                [[!+page.nav]]
            </div>
        </div>
    </div>
</div>
        
{/block}