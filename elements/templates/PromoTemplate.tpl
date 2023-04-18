{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

{include 'file:chunks/crumbs/crumbs.tpl'}		
    {include 'file:chunks/promo/promo.description.tpl'}
    {include 'file:chunks/advantages/advantages.promo.tpl'}
    {include 'file:chunks/alg/alg.promo.tpl'}
    {include 'file:chunks/item/item.promo.tpl'}
    {include 'file:chunks/social/social.promo.tpl'}
    {include 'file:chunks/faq/faq.promo.tpl'}
    {include 'file:chunks/callback/callback.promo.tpl' color='blue'}
{/block}