{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk reviews section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Отзывы</h2>
                </div>

                <p class="section__intro">Вы еще не оставляли ни одного отзыва</p>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
