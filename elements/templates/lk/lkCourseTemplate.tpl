{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">        
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk courses section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Избранные курсы</h2>
                </div>

                <div class="courses__filter">
                    {*include 'file:chunks/forms/fields/fields.courses.sub_category.tpl'*}
                </div>

                {include 'file:chunks/favorites/favorites.courses.tpl'}
                
                {*<div class="courses__compare">
                    <a href="lk-compare.html" class="btn btn--purple">Сравнить 2 курса</a>
                    <a href="" class="btn btn--remove">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M18.8499 9.14014L18.1999 19.2101C18.0899 20.7801 17.9999 22.0001 15.2099 22.0001H8.7899C5.9999 22.0001 5.9099 20.7801 5.7999 19.2101L5.1499 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M10.3301 16.5H13.6601" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>                            
                    </a>
                </div>*}
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}