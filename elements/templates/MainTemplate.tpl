{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {include 'file:chunks/promo/promo.main.tpl'}
    {include 'file:chunks/choose/choose.main.tpl'}
    {include 'file:chunks/skillbox/skillbox.main.tpl'}
    {include 'file:chunks/courses/courses.starts.main.tpl'}
    {include 'file:chunks/courses/courses.continue.main.tpl'}
    {*include 'file:chunks/courses/courses.popular.main.tpl'*}
    {include 'file:chunks/advantages/advantages.main.tpl'}
    {*{include 'file:chunks/blog/blog.main.tpl'}*}
    {*include 'file:chunks/reviews/reviews.main.tpl'*}
    {*include 'file:chunks/callback/callback.main.tpl'*}
    {include 'file:chunks/faq/faq.main.tpl'}
{/block}