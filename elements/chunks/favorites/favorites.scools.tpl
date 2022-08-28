{'!msFavorites.initialize' | snippet}
{set $ids = '!msFavorites.ids' | snippet:['type'=>'scools']}
                
<div id="pdopage" class="msfavorites-parent">
    <div class="scools__items rows">
        {'!pdoPage'|snippet:[
        'parents'=>'0',
        'resources'=> $ids,
        'sortby'=>'pagetitle'
        'totalVar'=>'total',
        'includeTVs' => 'scools_owner',
        'limit'=>'6',
        'tpl'=>'@FILE chunks/scools/scools.block.tpl',
        'ajaxMode' => 'button',
        'ajaxElemMore'=>'#pdopage .btn--more',
        'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
        </svg><span>Показать еще статьи</span></button></div>' 
        ]}
    </div>
    
    {$_modx->getPlaceholder('page.nav')}
    
    [[!+total:gt=`0`:then=`
        <div class="section__buttons">
        <button class="btn btn-default btn--more msfavorites msfavorites-action"
                data-click
                data-data-list="default"
                data-data-type="scools"
                data-data-method="clear"
        >
            Очистить список
        </button></div>
    `:else=``]]
</div>