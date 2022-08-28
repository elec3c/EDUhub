{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Избранные школы</h2>
                </div>
                {include 'file:chunks/favorites/favorites.scools.tpl'}
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}