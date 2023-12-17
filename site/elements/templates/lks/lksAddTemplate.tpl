{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk cadd section__mgb">
            <div class="container">
            {set $r = ($.get.type | in : ["group","course"] ? 1 : 0)}
            {if !$r}
                {'!redirect' | snippet : ['id'=>313]}
            {else}
                {switch $.get.type}
                    {case "group"}
                        {set $type="группу"}
                        {set $ok_type="группы"}
                        {set $fields="name"}
                    {case "course"}
                        {set $type="курсы/шаблоны"}
                        {set $ok_type="курса/шаблона"}
                        {set $fields="address"}
                    {default}
                        {set $ok_type=""}
                        {set $type=""}
                {/switch}
            {/if}
                    
            {if ((($.get.type=="course") || ($.get.type=="group")) && ($.get.copy) && ($.get.edit is empty) && ($.get.delete is empty))}
                <div class="section__head">
                    <h2 class="section__title">Добавить {$type}<br/> на основе {$.get.copy | resource:'course_group_title'}</h2>
                </div>  
                {if $.get.copy | resource:'course_owner' == $_modx->user.id}
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.'~$.get.type~'.form.add.tpl',
                    'preHooks'=>'Resource2FormIt',
                    'hooks' => 'FormIt2Resource',
                    'validate'=>'introtext:allowTags:allowSpecialChars:required',
                    'resource2formitfields' => 'course_group_title,introtext,course_duration,course_city,course_region,course_metro,course_address,price_course,price_lesson,sale,form_of_study,format_of_study,for_ages_from,for_ages_to,for_levels,for_levels_from,for_levels_to,num_people_in_group,schedule,time,employment,course_category,course_sub_category,course_sub_category_type,course_type,lesson_duration,num_lesson_per_week,days,days_period,num_months_of_study,price_course_month',
                    'template' => 8,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Успешное создание '~$ok_type,
                    'btn' => 'Создать '~$type
                 ]}
                 {else}
                     <p class="section__intro">{$.php.ucfirst($type)} вам не принадлежит.</p> 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{314 | url}' $title='Просмотреть '~$type}
                 {/if}
                 
            {elseif ($.get.edit && ($.get.copy is empty) && ($.get.delete is empty))}
                <div class="section__head">
                    <h2 class="section__title">Редактировать {$type} / {$.get.edit | resource:'course_group_title'}</h2>
                </div>
                {if $.get.edit | resource:'course_owner' == $_modx->user.id}
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.'~$.get.type~'.form.add.tpl',
                    'preHooks'=>'Resource2FormIt',
                    'hooks' => 'FormIt2Resource',
                    'validate'=>'introtext:allowTags:allowSpecialChars:required',
                    'resource2formitfields' => 'course_group_title,introtext,course_duration,course_address,price_course,price_lesson,sale,form_of_study,format_of_study,for_ages_from,for_ages_to,for_levels,for_levels_from,for_levels_to,num_people_in_group,schedule,time,employment,course_category,course_sub_category,course_sub_category_type,course_type,data_from,data_continue,lesson_duration,num_lesson_per_week,days,days_period,num_months_of_study,price_course_month',
                    'template' => 8,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Успешное редактирование '~$ok_type,
                    'btn' => 'Сохранить изменения'
                 ]}
                 {else}
                    <p class="section__intro">{$.php.ucfirst($type)} вам не принадлежит.</p> 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{313 | url}' $title='Просмотреть '~$type}
                 {/if}
                 
            {elseif ($.get.delete && ($.get.edit is empty) && ($.get.copy is empty))}                 
                <div class="section__head">
                    <h2 class="section__title">Удалить {$type}<br/> {$.get.delete | resource:'course_group_title'}</h2>
                </div>              
                {if $.get.delete | resource:'course_owner' == $_modx->user.id}
                  {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.form.delete.tpl',
                    'hooks' => 'FormIt2Delete',
                    'validate' => 'resource_id:required',
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Успешное удаление '~$ok_type,
                    'btn' => 'Удалить '~$type

                 ]}
                {else}
                     <p class="section__intro">{$.php.ucfirst($type)} вам не принадлежит.</p> 
                     {include 'file:chunks/nav/nav.button.tpl' $url='{313 | url}' $title='Просмотреть '~$type}
                {/if}    
            {elseif $.get.type=="course"}
                <div class="section__head">
                    <h2 class="section__title">Добавить {$type}</h2>
                </div>  
                {'!AjaxForm'|snippet:[
                    'snippet' => 'FormIt',
                    'form' => '@FILE chunks/forms/courses.'~$.get.type~'.form.add.tpl',
                    'hooks' => 'FormIt2Resource',
                    'validate' => 'course_group_title:required,course_category:required,course_sub_category:required,course_duration,num_lesson_per_week:required, price_course,num_people_in_group:required,for_levels_from:required,for_levels_to:required,for_ages_from:required,for_ages_to:required,num_months_of_study,price_course_month',
                    'template' => 8,
                    'validationErrorMessage' => 'В форме содержатся ошибки!',
                    'successMessage' => 'Успешное создание '~$ok_type,
                    'btn' => 'Добавить '~$type
                 ]}                
            {/if}
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->
{/block}