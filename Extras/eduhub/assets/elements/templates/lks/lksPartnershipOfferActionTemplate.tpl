{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="rkp section__mg">
            <div class="container">
            {if ($.get.delete && ($.get.edit is empty))}
                {set $partnershipData = '!getPartnershipData' | snippet : ['id'=>$.get.delete]}
                {set $company = $partnershipData['to_user_id'] | user:'fullname'}
                <div class="section__head">
                    <h2 class="section__title">Удаление партнерского предложения для {$company}</h2>
                </div>
                {if $partnershipData && $_modx->user.id == $partnershipData['from_user_id']}
                {'!AjaxFormitLogin'|snippet:[
                    'snippet' => 'FormIt',
                    'redirectTimeout'=>2000,
                    'redirectTo'=>1127,
                    'form' => '@FILE chunks/forms/partnership.offer.form.delete.tpl',
                    'hooks' => 'Partnership2Delete',
                    'validate' => 'partnership_id:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Партнерское предложение для успешно удалено!',
                    'btn' => 'Удалить'
                ]}
                {else}
                    {if $partnershipData}
                        <p>Вам не пренадлежит данное коммерческое предложение!</p>
                    {else}
                        {$_modx->sendRedirect($_modx->makeUrl(1))}
                    {/if}
                {/if}
            {else}
                <p>Ошибочка вышла!</p>
            {/if}
            
            </div>
        </section><!-- rkp -->

	</main><!--content__wrapper-->

{/block}