<div class="analitics__item">
    <div class="analitics__item-bl">
        {if !($idx % 5)}
        <div class="analitics__item-title">
        Преподаватель
        </div>
        {/if}
        
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">ФИО</div>
                {$name?:'-'}
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
                <a class="btn w-all" href="{$_modx->makeUrl(319)}?type=teachers&delete={$id}&name={$name?:'-'}">Удалить</a>
                
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <a class="btn w-all" href="{$_modx->makeUrl(319)}?type=teachers&edit={$id}&name={$name?:'-'}">Редактировать</a>
            </div>
        </div>
    </div>
</div>