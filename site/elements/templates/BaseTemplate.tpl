{set $res = $_modx->resource}
{set $site_start = ('site_start' | config) ?: 1}
{set $site_name = 'site_name' | config}
{set $site_url = 'site_url' | config}
{set $redirect = $_modx->resource.uri}
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="ru" class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="ru" class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="ru" class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="ru" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="{$lang = $.en ? 'en-US' : 'ru'}" dir="ltr" itemscope itemtype="https://schema.org/WebPage">
<!--<![endif]-->

<head>
    {1 | resource : 'header'}
    {block 'head'}
        {include 'file:chunks/head.tpl'}
    {/block}
    
    {'@FILE /snippets/verificationCode.php' | snippet : []} {*'!verificationCode' | snippet : []*}
    {'@FILE /snippets/verificationCompanyInvite.php' | snippet : []} {*'!verificationCompanyInvite' | snippet : []*}
    <meta name="google-site-verification" content="um1cT5KMa90BaXHbOghk0ropE71fkm88TxFmUnqJiQI" />
    <meta name="yandex-verification" content="caf13b33eca31984" />
</head>

<body>
    {1 | resource : 'body'}
    <div class="wrapper" id="top" data='test'>
        {block 'header'}
            {include 'file:chunks/header.tpl'}
        {/block}
        <main class="content__wrapper">
            {block 'content'}
            {/block}
        </main>
        {block 'footer'}
            {include 'file:chunks/footer.tpl'}
        {/block}
        <a href="#" class="scroll_top scroll-top" data-scroll="top"></a>
    </div>

    {block 'modals'}

        {include 'file:chunks/modals/verification_code_thank.tpl'}
        <div id="office-auth-form">
            {include 'file:chunks/modals/auth_course.tpl'}
            {include 'file:chunks/modals/auth_favour.tpl'}
            {include 'file:chunks/modals/auth_sale.tpl'}
            {include 'file:chunks/modals/auth.tpl'}
            {include 'file:chunks/modals/password.tpl'}
            {include 'file:chunks/modals/popup-reg.tpl'}
        </div>
        {include 'file:chunks/modals/call.tpl'}
        {include 'file:chunks/modals/call_to_school_reg.tpl'}
        {include 'file:chunks/modals/call_to_school_thx.tpl'}
        {include 'file:chunks/modals/call_to_school.tpl'}
        {include 'file:chunks/modals/dogovor_thank.tpl'}
        {include 'file:chunks/modals/lead_remove.tpl'}
        {include 'file:chunks/modals/password_thank.tpl'}
        {include 'file:chunks/modals/sale_add.tpl'}
        {include 'file:chunks/modals/sale_thank.tpl'}
        {include 'file:chunks/modals/sale_declain.tpl'}
        {include 'file:chunks/modals/sale_deny.tpl'}
        {include 'file:chunks/modals/sale_remove.tpl'}
        {include 'file:chunks/modals/popup-thank.tpl'}
        {include 'file:chunks/modals/confirm_phone.tpl'}
        {include 'file:chunks/modals/confirm_phone_thank.tpl'}        
        {include 'file:chunks/modals/confirm_phone_msg.tpl'}
        {set $partnership_join_rid =  $_modx->config['partnership_join_rid'] | split}
        {if $_modx->resource.id in $partnership_join_rid} {* partnership_join_rid *}
            {include 'file:chunks/modals/partnership_join_thank.tpl'}
        {/if}
        {set $tender_rid =  $_modx->config['tender_rid'] | split}
        {if $_modx->resource.id in $tender_rid} {* tender_rid *}        
            {include 'file:chunks/modals/tender_add.tpl'}
            {include 'file:chunks/modals/tender_dogovor_thank.tpl'}
            {include 'file:chunks/modals/tender_dogovor_declain.tpl'}
            {include 'file:chunks/modals/tender_wait_date_stop.tpl'}
            {include 'file:chunks/modals/tender_thank.tpl'}
            {include 'file:chunks/modals/tender_declain.tpl'}
            {include 'file:chunks/modals/tender_deny.tpl'}
            {include 'file:chunks/modals/tender_remove.tpl'}
            {include 'file:chunks/modals/tender_money.tpl'}
            {include 'file:chunks/modals/tender_no_set_direction.tpl'}
        {/if}
        {set $partnership_pid =  $_modx->config['partnership_pid'] | split}
        {if $_modx->resource.parent in $partnership_pid} {* partnership_pid *}
            {include 'file:chunks/modals/partnership_add.tpl'}
            {include 'file:chunks/modals/partnership_dogovor_wait_add.tpl'}
            {include 'file:chunks/modals/partnership_dogovor_wait.tpl'}
            {include 'file:chunks/modals/partnership_dogovor_add.tpl'}
            {include 'file:chunks/modals/partnership_dogovor_thank.tpl'}
            {include 'file:chunks/modals/partnership_thank.tpl'}
            {include 'file:chunks/modals/partnership_contact.tpl'}
            {include 'file:chunks/modals/partnership_declain.tpl'}
            {include 'file:chunks/modals/partnership_deny.tpl'}
            {include 'file:chunks/modals/partnership_remove.tpl'}
            {include 'file:chunks/modals/partnership_delete.tpl'}
            {include 'file:chunks/modals/partnership_clear.tpl'}
            {include 'file:chunks/modals/partnership_restore.tpl'}
            {include 'file:chunks/modals/partnership_dogovor_terminate.tpl'}
            {include 'file:chunks/modals/partnership_dogovor_declain.tpl'}
            
        {/if}        

        {set $promote_buy_rid =  $_modx->config['promote_buy_rid'] | split}
        {if $_modx->resource.id in $promote_buy_rid} {* promote_buy_rid *}        
            {include 'file:chunks/modals/promote_buy.tpl'}
        {/if}
        
        {set $employee_connect_rid =  $_modx->config['employee_connect_rid'] | split}
        {if $_modx->resource.id in $employee_connect_rid} {* employee_connect_rid *}        
            {include 'file:chunks/modals/compisreg_check.tpl'}
            {include 'file:chunks/modals/compisreg_thank.tpl'}
            {include 'file:chunks/modals/employee_connect_thank.tpl'}
        {/if}
        {include 'file:chunks/modals/policy_popup.tpl'}
        {set $queue_add_rid =  $_modx->config['queue_add_rid'] | split}
        {set $queue_add_tid =  $_modx->config['queue_add_tid'] | split}
        {if ($_modx->resource.id in $queue_add_rid) || ($_modx->resource.template in $queue_add_tid)}  {* queue_add_rid *} {* queue_add_tid *}        
            {include 'file:chunks/modals/queue_add_step_by_step.tpl'}
            {include 'file:chunks/modals/queue_thank.tpl'}
        {/if}
        {set $queue_camp_add_tid =  $_modx->config['queue_camp_add_tid'] | split}
        {if $_modx->resource.template in $queue_camp_add_tid} {* queue_camp_add_tid *}        
            {include 'file:chunks/modals/queue_camp_add_step_by_step.tpl'}
            {include 'file:chunks/modals/queue_camp_thank.tpl'}
        {/if}        
        
    {/block}

    {block 'scripts'}
        {include 'file:chunks/scripts.tpl'}
        {$_modx->resource.moreJs}
    {/block}

    {include 'debug'}

</body>

</html>