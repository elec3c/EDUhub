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
    {block 'head'}
        {include 'file:chunks/head.tpl'}
    {/block}
</head>
<body>

{block 'content'}
<section class="error404" id="top">
    <div class="container">
        <a href="{1 | url}" class="error404__logo"><img src="assets/images/logo-white.svg" alt="eduhub.by"></a>
        <div class="error404__cols">
            <div class="error404__cont">
                <div class="error404__numb">{$_modx->resource.pagetitle}</div>
                <div class="error404__title">{$_modx->resource.introtext}</div>
                <div class="error404__buttons">
                    <a href="{1 | url}" class="btn btn--purple">На главную</a>
                    <a href="" class="btn" data-open-popup="call">Заказать звонок</a>
                </div>
            </div>
            <div class="error404__photo">
                <picture>
                    <source srcset="/assets/images/404-img-sm.svg" media="(max-width: 767px)">
                    <img src="/assets/images/404-img.svg" alt="">
                </picture>
            </div>
        </div>
    </div>
</section>
{/block}


{block 'modals'}
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
    {include 'file:chunks/modals/popup-thank.tpl'}
    {include 'file:chunks/modals/sale_remove.tpl'}
    {include 'file:chunks/modals/confirm_phone.tpl'}
    {include 'file:chunks/modals/confirm_phone_thank.tpl'}        
{/block}

{block 'scripts'}
    {include 'file:chunks/scripts.tpl'}
    {$_modx->resource.moreJs}
{/block}
    
</body>

</html>

