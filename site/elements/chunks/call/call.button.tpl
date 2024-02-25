{if ('' | isloggedin : 'web')}
    {if !$_modx->user.urlico && !$_modx->user.manager}
        <button class="btn w-all " data-open-popup="call_to_school_reg">Заказать звонок</button>
    {else}
        <button class="btn w-all" data-open-popup="call_to_school">Заказать звонок</button>
    {/if}
{else}
    <button class="btn w-all " data-open-popup="call">Заказать звонок</button>
{/if}



