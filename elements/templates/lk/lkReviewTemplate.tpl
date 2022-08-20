{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk reviews section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Отзывы</h2>
                </div>

                <div class="reviews__items">
                    
                {include 'file:chunks/reviews/reviews.row.tpl'}                    
                {include 'file:chunks/reviews/reviews.row.tpl'}
                {include 'file:chunks/reviews/reviews.row.tpl'}
                   {*set $thread = $_modx->resource.course_template?'thread-'~$_modx->resource.course_template:$id*}
                    {*'!ecMessages'| snippet: [
                        'tpl' => '@FILE chunks/reviews/reviews.row.tpl',
                        'thread' => $thread,
                        'limit' => 10
                    ]*} 
                </div><!--reviews__items-->

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}