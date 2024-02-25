<div class="analitics__item">
    <div class="analitics__item-bl">
        {if !($idx % 5)}
        <div class="analitics__item-title">
        Кабинеты
        </div>
        {/if}
        
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Адрес</div>
                {$address}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Кабинет</div>
                {$room}
            </div>
        </div>
    </div>
    <div class="analitics__item-bl">
        {if !($idx % 5)}
        <div class="analitics__item-title">
        Действия
        </div>
        {/if}
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label"></div>
                <a class="btn w-all" href="{$_modx->makeUrl(319)}?type=rooms&delete={$id}&name={'!schoolAddressName' | snippet:['address_id'=>$addres_id]}">Удалить</a>
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <a class="btn w-all" href="{$_modx->makeUrl(319)}?type=rooms&edit={$id}&address_id={$addres_id}">Редактировать</a>
            </div>
        </div>
        <div class="analitics__item-col">
        </div>
        <div class="analitics__item-col">
        </div>        
    </div>
</div>