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
                            <h2 class="section__title">Редактировать адрес</h2>
                        </div>
                        {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/address.form.add.tpl',
                            'preHooks'=>'Cities2FormIt',
                            'hooks' => 'FormIt2Cities',
                            'cities2formitfields' => 'country,city,districts,metro',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Адрес успешно отредактирован.'
                            'btn' => 'Отредактировать адрес'
                         ]}
                    {elseif ($.get.delete && ($.get.edit is empty))}                 
                        <div class="section__head">
                            <h2 class="section__title">Удаление адреса <br/>{if $.get.city}город {$.get.city}{/if}{if $.get.delete} ID = {$.get.delete}{/if}</h2>
                        </div>  
                          {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/address.form.delete.tpl',
                            'hooks' => 'Cities2Delete',
                            'validate' => 'cities_id:required',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Адрес успешно удален!'
                         ]}
                    {else}
                        <div class="section__head">
                            <h2 class="section__title">Добавить адрес</h2>
                        </div>  
                        {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/address.form.add.tpl',
                            'hooks' => 'FormIt2Cities',
                            'validate' => 'country:required',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Адрес успешно создан.',
                            'btn' => 'Создать адрес'
                         ]}                
                    {/if}                    
                </div>
            </div>
            <!--analitics__block-->
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}