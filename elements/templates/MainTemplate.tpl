{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {include 'file:chunks/promo/promo.tpl'}
    {include 'file:chunks/choose/choose.tpl'}
    {include 'file:chunks/skillbox/skillbox.tpl'}
    {include 'file:chunks/courses/courses.starts.tpl'}
    {include 'file:chunks/courses/courses.popular.tpl'}
    {include 'file:chunks/advantages/advantages.tpl'}
    {include 'file:chunks/blog/blog.tpl'}
    {include 'file:chunks/reviews/reviews.tpl'}
    {include 'file:chunks/callback/callback.tpl'}
    {include 'file:chunks/faq/faq.tpl'}
{/block}