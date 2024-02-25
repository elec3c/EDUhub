{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="rkp section__mg">
            <div class="container">
            {if $.get.delete is empty}
            <p class="section__intro">В форме * &mdash; обозначены поля, обязательные для заполнения.</p>
            <br>
            {/if}
            {if ($.get.edit && ($.get.delete is empty))}
                <div class="section__head">
                    <h2 class="section__title">Редактировать тендер</h2>
                </div>
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/request.kp.form.add.tpl',
                    'hooks' => 'FormIt2RequestKP',
                    'validate' => 'course_category:required',
                    'preHooks'=>'RequestKP2FormIt',
                    'requestkp2formitfields' => 'course_category,course_sub_category,course_sub_category_type,form_of_study,format_of_study,schedule,time,num_people_in_group,form_of_payment,covering_letter,date_expiration,date_deadline,detail,title,show_title,show_phone,show_email',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Тендер успешно отредактирован.',
                    'btn' => 'Редактировать тендер'
                 ]}
            {elseif ($.get.delete && ($.get.edit is empty))}                 
                <div class="section__head">
                    <h2 class="section__title">Удалить тендер</h2>
                </div>  
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/request.kp.form.delete.tpl',
                    'hooks' => 'RequestKP2Delete',
                    'validate' => 'tender_id:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Тендер успешно удален!',
                    'btn' => 'Удалить тендер'
                ]}
                {else}
                    <div class="section__head">
                        <h2 class="section__title">Создать тендер</h2>
                    </div>  
                    {'!AjaxForm'|snippet:[
                        'snippet' => 'FormIt',
                        'form' => '@FILE chunks/forms/request.kp.form.add.tpl',
                        'hooks' => 'FormIt2RequestKP',
                        'validate' => 'course_category:required',
                        'validationErrorMessage' => 'В форме содержатся ошибки!',
                        'successMessage' => 'Тендер успешно создан.',
                        'btn' => 'Создать тендер'
                     ]}                
                {/if}
            </div>
        </section><!-- rkp -->

	</main><!--content__wrapper-->

{/block}