{if ($id | ismember : ['Organization'])}
    {set $link = 35}
{elseif ($id | ismember : ['Users','Corporate'])}
    {set $link = 24}
{else}
    {set $link = 0}
{/if}


{set $group = '!getUsersGroup' | snippet: ['user_id' => $id]} 
<div class="leads__block">
    {set $website = $id | user:'website'}
    {if $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $website])}
        <div class="leads__header lk__wraplr section__lr"><a href="{$website}">{$id | user:'fullname'} - создан {$.php.date('d.m.Y H:s',$.php.strtotime($id | user:'createdon'))}</a></div>
    {else}
        <div class="leads__header lk__wraplr section__lr">{$id | user:'fullname'} - создан {$.php.date('d.m.Y H:s',$.php.strtotime($id | user:'createdon'))}</div>
    {/if}
    <div class="leads__item lk__wraplr section__lr">
        <div class="leads__item-head">
            <div class="leads__item-date">ID {$id}</div>
                <div class="leads__item-4cols">
                    <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Создан</div>
                           {$.php.date('d.m.Y H:s',$.php.strtotime($id | user:'createdon'))}
                    </div>
                </div>
                <div class="leads__item-col">
                    <div class="leads__item-prop">
                        <div class="leads__item-prop__label">Группа</div>
                        {if ($id | ismember : ['Users'])}
                            Обычный клиент
                        {elseif ($id | ismember : ['Corporate'])}
                            Корпортативный клиент
                        {elseif ($id | ismember : ['Organization'])}
                            Школа
                        {else}
                             Не определена
                        {/if}
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
        <div class="leads__item-prop leads__item-buttons">
            <a href="{$link | url}?user_id={$id}" class="link__icon" target="_blank">
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