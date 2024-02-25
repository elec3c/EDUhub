<div class="analitics__item">
    <div class="analitics__item-bl">
        {if !($idx % 5)}
        <div class="analitics__item-title">
        Месторасположение
        </div>
        {/if}
        
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Адрес</div>
                {$address?:'-'}
            </div>
        </div>
    </div>
    <div class="analitics__item-bl">
        {*if !($idx % 5)}
        <div class="analitics__item-title">
        Действия
        </div>
        {/if*}

        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <a class="btn w-all" href="{$_modx->makeUrl(319)}?type=address&edit={$id}&name={$address?:'-'}">Редактировать</a>
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <a class="btn w-all" href="{$_modx->makeUrl(319)}?type=address&delete={$id}&name={$address?:'-'}">Удалить</a>
            </div>
        </div>        
    </div>
</div>