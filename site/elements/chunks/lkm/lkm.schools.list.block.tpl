<div class="leads__block">
    {set $website = $id | user:'website'}
    {if $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $website])}
        <div class="leads__header lk__wraplr section__lr"><a href="{$website}">{$id | user:'fullname'}</a></div>
    {else}
        <div class="leads__header lk__wraplr section__lr">{$id | user:'fullname'}</div>
    {/if}
    <div class="leads__item lk__wraplr section__lr">
        <div class="leads__item-head">
            <div class="leads__item-date">УНП {$id | user:'unp'?:'*'}</div>
                <div class="leads__item-4cols">
                    <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Наименование организации</div>
                           {$id | user:'ooo'?:'пусто'}
                    </div>
                </div>
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Адрес</div>
                        {$id | user:'city'?:'пусто'}
                    </div>
                </div>
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Электронная почта</div>
                        {$id | user:'email'?:'пусто'}
                    </div>
                </div>                                    
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Телефон</div>
                        {$id | user:'mobilephone'?:'пусто'}
                    </div>
                </div>
            </div>
        </div><!--leads__item-head-->
    </div>
</div>