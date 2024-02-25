{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk balance section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='817'}                
                
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/profile.settings.form.tpl',
                    'hooks' => 'profileSettingSave',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Настройки сохранены успешно!'
                 ]}

                
            </div>
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}