{if $user_id && $responsible}
    {set $employees = '!getEmployeesUserData' | snippet : ['user_id'=>$user_id]}
    {if is_array($employees[$responsible])}
        {set $r = $employees[$responsible]}
    {else}
        {set $r = []}
    {/if}    
<button class="btn btn--{$c?:'blue'} contact-partnership {$w==1?'w-all':''}" {if $r['show_lastname']}data-lastname="{$r['lastname']}" {/if}{if $r['show_name']}data-name="{$r['name']}" {/if}{if $r['show_surname']}data-surname="{$r['surname']}" {/if}{if $r['show_post']}data-post="{$r['post']}" {/if}{if $r['show_email']}data-email="{$r['email']}" {/if}{if $r['show_phone']}data-mobilephone="{$r['mobilephone']}" {/if}{if $r['show_viber']}data-viber="{$r['viber']}" {/if}{if $r['show_telegram']}data-telegram="{$r['telegram']}" {/if}>Контакты</button>
{/if}