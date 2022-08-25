{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk cadd section__mgb">
            <div class="container">
            {if ($.get.edit is empty)}
                <div class="section__head">
                    <h2 class="section__title">Добавить курс</h2>
                </div>                
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.add.tpl',
                    'hooks' => 'FormIt2Resource',
                    'validate' => 'nospam:blank,course_group_title:required,introtext:required,data_from:required,data_to:required,course_category:required,course_sub_category:required,course_type:required,course_city:required,price_course:required,price_lesson:required',
                    'template' => 8,
                    'redirectTo' => 36,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно сохранен.',
                    'btn' => 'Добавить'
                 ]}                
                <!--course_duration,,sale,form_of_study,format_of_study,for_ages_from,for_ages_to,for_levels_from,for_levels_to,num_people_in_group,lesson_duration,num_lesson_per_week-->
            {else}
                <div class="section__head">
                    <h2 class="section__title">Редактировать курс</h2>
                </div>
                {if $.get.edit | resource:'course_owner' == $_modx->user.id}
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.add.tpl',
                    'preHooks'=>'Resource2FormIt',
                    'resource2formitfields' => 'course_group_title,introtext,course_duration,course_city,course_region,course_metro,price_course,price_lesson,sale,form_of_study,format_of_study,for_ages_from,for_ages_to,for_levels_from,for_levels_to,num_people_in_group,course_category,course_sub_category,course_type,data_from,data_to,lesson_duration,num_lesson_per_week',
                    'hooks' => 'FormIt2Resource',
                    'validate' => 'nospam:blank,course_group_title:required,introtext:required,data_from:required,data_to:required,category:required,sub_category:required,type:required,course_city:required,price_course:required,price_lesson:required',
                    'template' => 8,
                    'redirectTo' => 36,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно отредактирован.'
                    'btn' => 'Отредактировать'
                 ]}
                 {else}
                     Курс вам не принадлежит. 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{36 | url}' $title='Просмотреть курсы'}
                 {/if}
            {/if}

                
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}