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
<html lang="{$lang = $.en ? 'en-US' : 'ru-RU'}" dir="ltr" itemscope itemtype="https://schema.org/WebPage">
<!--<![endif]-->

<head>
    {1 | resource : 'header'}
    {block 'head'}
        {include 'file:chunks/head.tpl'}
    {/block}
    {'!verificationCode'|snippet:[]}
    {'!verificationCompanyInvite'|snippet:[]}
</head>

<body>
    {1 | resource : 'body'}
    <section class="wrapper" id="top">
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
    </section>

    {block 'modals'}

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
        {if $_modx->resource.id in [1127,1128]}
            {include 'file:chunks/modals/partnership_join_offer_thank.tpl'}
        {/if}
        {if $_modx->resource.id in [803,802]}
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
    {/block}

    {block 'scripts'}
        {include 'file:chunks/scripts.tpl'}
        {$_modx->resource.moreJs}
    {/block}

    {include 'debug'}

</body>

</html>