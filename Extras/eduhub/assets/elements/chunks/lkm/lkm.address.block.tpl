<div class="analitics__item">
    <div class="analitics__item-bl">
        {if !($idx % 5)}
        <div class="analitics__item-title">
        Город
        </div>
        {/if}
        
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Город</div>
                {$city?:'-'}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Районы</div>
                {foreach $districts as $v}
                {$v}<br>
                {/foreach}
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <div class="analitics__item-prop__label">Метро</div>
                {foreach $metro as $v}
                {$v}<br>
                {/foreach}
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
                <a class="btn w-all" href="{$_modx->makeUrl(307)}?delete={$id}&city={$city}">Удалить</a>
                
            </div>
        </div>
        <div class="analitics__item-col">
            <div class="analitics__item-prop">
                <a class="btn w-all" href="{$_modx->makeUrl(307)}?edit={$id}">Редактировать</a>
            </div>
        </div>
        <div class="analitics__item-col">

        </div>
    </div>
</div>