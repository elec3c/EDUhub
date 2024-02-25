<div class="leads__block">
    {set $website = $id | user:'website'}
    {if $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $website])}
        <div class="leads__header lk__wraplr section__lr"><a href="{$website}">{$id | user:'fullname'} - создан {$.php.date('d.m.Y H:s',$.php.strtotime($id | user:'createdon'))}</a>{if !$active}&nbsp;<b style="color:red">не активирован</b>{/if}</div>
    {else}
        <div class="leads__header lk__wraplr section__lr">{$id | user:'fullname'} - создан {$.php.date('d.m.Y H:s',$.php.strtotime($id | user:'createdon'))}{if !$active}&nbsp;<b style="color:red">не активирован</b>{/if}</div>
    {/if}
    <div class="leads__item lk__wraplr section__lr">
        <div class="leads__item-head">
            {*<div class="leads__item-date">УНП {$id | user:'unp'?:'*'}</div>*}
                <div class="leads__item-4cols">
                    <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Наименование организации</div>
                        {$fullname?:'пусто'}
                    </div>
                </div>
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Адрес</div>
                        {$city?:'пусто'}
                    </div>
                </div>
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Электронная почта</div>
                        {$email?:'пусто'}
                    </div>
                </div>                                    
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Телефон</div>
                        {$mobilephone?:'пусто'}
                    </div>
                </div>
            </div>
        </div><!--leads__item-head-->
        <div class="leads__item-prop leads__item-buttons">
            <a href="{24 | url}?user_id={$id}" class="link__icon" target="_blank">
                <img src="assets/images/icons/eye.svg" alt="View">
                <span>Просмотреть</span>
            </a>
            <a href="{1064 | url}?delete={$id}" class="link__icon link__icon--red">
                <img src="assets/images/icons/remove.svg" alt="Remove">
                <span>Удалить</span>
            </a>
        </div>        
    </div>
</div>