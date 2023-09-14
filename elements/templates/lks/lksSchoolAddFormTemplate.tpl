{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk analitics section__mgb">
            <div class="container">
                <div class="analitics__head">
                    <div class="lk__nav">
                        {insert 'file:chunks/menu/lkm.menu.tpl'}
                    </div>
                </div>
                <div class="analitics__block  section__lr">
                    {set $r = ($.get.type | in : ["teachers","address","rooms"] ? 1 : 0)}
                    {if !$r}
                        {'!redirect' | snippet : ['id'=>315]}
                    {else}
                        {switch $.get.type}
                            {case "teachers"}
                                {set $type="учителя"}
                                {set $fields="name"}
                                {set $load_fields="name"}
                            {case "address"}
                                {set $type="адрес"}
                                {set $fields="address"}
                                {set $load_fields="address,course_city,course_region,course_metro,time_from,time_until"}
                            {case "rooms"}
                                {set $type="комнаты"}
                                {set $fields="addres_id"}
                                {set $load_fields="address_id"}
                            {default}
                                {set $type=""}
                        {/switch}
                    {/if}
                    {if ($.get.edit && ($.get.delete is empty))}
                        <div class="section__head">
                            <h2 class="section__title">Редактировать {$type}</h2>
                        </div>
                        {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/school.'~$.get.type~'.form.add.tpl',
                            'hooks' => 'FormIt2School',
                            'validate' => $fields~':required',
                            'preHooks'=>'School2FormIt',
                            'school2formitfields' => $load_fields,
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => $.php.ucfirst($type)~' успешно отредактирован.',
                            'btn' => 'Редактировать '~$type
                         ]}
                    {elseif ($.get.delete && ($.get.edit is empty))}                 
                        <div class="section__head">
                            <h2 class="section__title">Удалить {$type}{if $.get.name}: {$.get.name}{/if}</h2>
                        </div>  
                          {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/school.form.delete.tpl',
                            'hooks' => 'School2Delete',
                            'validate' => 'uid:required',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => $.php.ucfirst($type)~' успешно удален!',
                            'btn' => 'Удалить '~$type
                            
                         ]}
                    {else}
                        <div class="section__head">
                            <h2 class="section__title">Добавить {$type}</h2>
                        </div>  
                        {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/school.'~$.get.type~'.form.add.tpl',
                            'hooks' => 'FormIt2School',
                            'validate' => $fields~':required',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => $.php.ucfirst($type)~' успешно создан.',
                            'btn' => 'Создать '~$type
                         ]}                
                    {/if}                    
                </div>
            </div>
            <!--analitics__block-->
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}