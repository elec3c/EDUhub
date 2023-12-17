{if $user_id}
    {set $fullname = $user_id | user : 'fullname'}
    {set $fullname = $fullname?:'-'}
{else}
    {set $fullname = 'анонимный'}
{/if}

{set $name = $name?:'-'}
{set $email = $email?:'-'}
{set $data_start = $date | date : "d.m.Y"}

{if $openDate > 0}
    {set $data_open = $openDate | date : "d.m.Y"}
{else}
    {set $data_open = 0}
{/if}
["fullname":"{$fullname}", "name":"{$name}", "email":"{$email}", "data_start":"{$data_start}","data_open": "{$data_open}"],