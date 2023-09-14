{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk analitics section__mgb">
            <div class="container">
                <div class="analitics__block  section__lr">
                    {if (($.get.delete) && ($.get.delete > 0) && ($.get.delete | user:'id'))}                 
                        <div class="section__head">
                            {if $.get.delete | ismember : 'Users'}                            
                                <h2 class="section__title">Удаление пользователя:<br> Имя {$.get.delete | user:'fullname'?:'пусто'},<br> Email: {$.get.delete | user:'email'?:'пусто'} </h2>
                            {elseif $.get.delete | ismember : ['Corporate', 'Organization']}
                                <h2 class="section__title">Удаление организации: <br><br>Наименование: {$.get.delete | user:'fullname'?:'пусто'},  <br>УНП {$.get.delete | user:'unp'?:'пусто'}, Email: {$.get.delete | user:'email'?:'пусто'} </h2>
                            {else}    
                            {/if}
                        </div>  
                          {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/user.form.delete.tpl',
                            'hooks' => 'Users2Delete',
                            'validate' => 'user_id:required',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Пользователь успешно удален!'
                         ]}
                    {else}
                        <p>Пользователь не существует</p>
                    {/if}                    
                </div>
            </div>
            <!--analitics__block-->
        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}