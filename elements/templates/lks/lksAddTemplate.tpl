{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk cadd section__mgb">
            <div class="container">
            {if ($.get.copy && ($.get.edit is empty) && ($.get.delete is empty))}
                <div class="section__head">
                    <h2 class="section__title">Создание группы на основе курса/шаблона</h2>
                </div>  
                {if $.get.copy | resource:'course_owner' == $_modx->user.id}
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.add.tpl',
                    'preHooks'=>'Resource2FormIt',
                    'hooks' => 'FormIt2Resource',
                    'resource2formitfields' => 'course_group_title,introtext,course_duration,course_city,course_region,course_metro,course_address,price_course,price_lesson,sale,form_of_study,format_of_study,for_ages_from,for_ages_to,for_levels_from,for_levels_to,num_people_in_group,schedule,time,course_category,course_sub_category,course_sub_category_type,course_type,lesson_duration,num_lesson_per_week',
                    'template' => 8,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно создан на основе шаблона.'
                    'btn' => 'Создать курс из шаблона'
                 ]}
                 {else}
                     Курс вам не принадлежит. 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{36 | url}' $title='Просмотреть курсы'}
                 {/if}
                 
            {elseif ($.get.edit && ($.get.copy is empty) && ($.get.delete is empty))}

                <div class="section__head">
                    <h2 class="section__title">Редактировать курс</h2>
                </div>
                {if $.get.edit | resource:'course_owner' == $_modx->user.id}
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.add.tpl',
                    'preHooks'=>'Resource2FormIt',
                    'hooks' => 'FormIt2Resource',
                    'resource2formitfields' => 'course_group_title,introtext,course_duration,course_city,course_region,course_metro,course_address,price_course,price_lesson,sale,form_of_study,format_of_study,for_ages_from,for_ages_to,for_levels_from,for_levels_to,num_people_in_group,schedule,time,course_category,course_sub_category,course_sub_category_type,course_type,data_from,lesson_duration,num_lesson_per_week',
                    'template' => 8,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно отредактирован.'
                    'btn' => 'Отредактировать курс'
                 ]}
                 {else}
                    <p class="section__intro">Курс вам не принадлежит.</p> 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{36 | url}' $title='Просмотреть курсы'}
                 {/if}
                 
            {elseif ($.get.delete && ($.get.edit is empty) && ($.get.copy is empty))}                 
                <div class="section__head">
                    <h2 class="section__title">Удаление курса <br/> {$.get.delete | resource:'course_group_title'}</h2>
                </div>  
                {if $.get.delete | resource:'course_owner' == $_modx->user.id}
                  {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/course.form.delete.tpl',
                    'hooks' => 'FormIt2Delete',
                    'validate' => 'resource_id:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно удален!'
                 ]}
                {else}
                     <p class="section__intro">Курс вам не принадлежит.</p> 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{36 | url}' $title='Просмотреть курсы'}
                {/if}    
            {else}
                <div class="section__head">
                    <h2 class="section__title">Добавить курс</h2>
                </div>  
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.add.tpl',
                    'hooks' => 'FormIt2Resource',
                    'validate' => 'course_group_title:required,introtext:required,course_category:required,course_sub_category:required,course_type:required,course_city:required,price_course:required,price_lesson:required',
                    'template' => 8,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Курс успешно создан.',
                    'btn' => 'Добавить курс'
                 ]}                
            {/if}
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}