{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk cadd section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Добавить курс</h2>
                </div>
                
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.add.tpl',
                    'hooks' => 'FormIt2Resource',
                    'validate' => 'pagetitle:required',
                    'template' => 8,
                    'redirectTo' => 36,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно опубликован.'
                 ]}                
                
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}
