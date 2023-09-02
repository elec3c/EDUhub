{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    {set $my_company_id = $user_id | user:'my_company_id'}
    {set $company_id =  $.php.intval($my_company_id)}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">{if $company_id}{$company_id | user:'fullname'}{else}Компания не определена{/if}</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='1134'}
                
                <div class="waccount">
                    <div class="waccount__intro">Заполните профиль сотрудника компании</div>
                    {var $validate = $validate ?: 'lastname:required,name:required'}
                    {var $success  = $success  ?: 'Данные Вашего профиля сотрудника компании изменены.'}
                    {var $error    = $error    ?: 'В форме содержатся ошибки!'}
                    {var $form      = $tpl      ?: '@FILE chunks/forms/lk.form.user.company.edit.tpl'}
                    {'!AjaxForm'|snippet:[
                        'snippet' => 'FormIt',
                        'form' => $form,
                        'hooks' => 'csrf,profileUserCompanySave',
                        'validate' => $validate,
                        'validationErrorMessage' => $error,
                        'successMessage' => $success
                    ]}
                </div><!--waccount-->
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}