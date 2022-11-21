{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
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
                    {if ($.get.edit && ($.get.delete is empty))}
                        <div class="section__head">
                            <h2 class="section__title">Редактировать запрос</h2>
                        </div>
                        {*'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/queue.form.add.tpl',
                            'preHooks'=>'Cities2FormIt',
                            'hooks' => 'FormIt2Cities',
                            'cities2formitfields' => 'country,city,districts,metro',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Запрос успешно отредактирован.'
                            'btn' => 'Отредактировать запрос'
                         ]*}
                    {elseif ($.get.delete && ($.get.edit is empty))}                 
                        <div class="section__head">
                            <h2 class="section__title">Удаление запроса {$.get.edit}</h2>
                        </div>  
                          {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/queue.form.delete.tpl',
                            'hooks' => 'Queue2Delete',
                            'validate' => 'queue_id:required',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Запрос успешно удален!'
                         ]}
                    {/if}                    
                </div>
            </div>
            <!--analitics__block-->
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}