{set $website = $id | user:'website'}
{if !($website = $_modx->runSnippet('!parseIfValidURL', ['url' => $website]))}
    {set $website="пусто"}
{/if}
{set $fullname = $id | user:'fullname'?:'пусто'}
{set $unp = $id | user:'unp'?:'*'}
{set $ooo = $id | user:'ooo'?:'пусто'}
{set $address = $id | user:'city'?:'пусто'}
{set $email = $id | user:'email'?:'пусто'}
{set $mobilephone = $id | user:'mobilephone'?:'пусто'}
["fullname":"{$fullname}", "unp":"{$unp}", "ooo":"{$ooo}", "address":"{$address}", "email":"{$email}", "mobilephone":"{$mobilephone}","website":"{$website}"],