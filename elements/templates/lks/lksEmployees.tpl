{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}

    {set $user_id = $.get.user_id? : $_modx->user.id}
    {set $employees = '!getEmployeesUserData' | snippet : ['user_id'=>$user_id]}
    
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk section__mgb">
            <div class="container">
                
                <div class="section__head">
                    <h2 class="section__title">{$_modx->resource.pagetitle}</h2>
                </div>
                
                {include 'file:chunks/users/user.submenu.tpl' pid='817'}                

                <div class="employees">
                    <div class="employees__adds">

                        {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/employees.form.add.tpl',
                            'index'=> 'lksEmployeesForm',
                            'responsible' => 'partnership',
                            'prefix' => 'компаниям',
                            'intro' =>'Укажите контактные данные работника, с кем компании смогут вести коммуникацию <b>по вопросам партнерских программ.</b>',
                            'hooks' => 'profileEmployeesSave',
                            'data'=> $employees,
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Контактные данные сотрудника по вопросам партнерских программ сохранены успешно!'
                         ]} 
                         
                         
                        {'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/employees.form.add.tpl',
                            'index'=>'lksEmployeesForm',
                            'responsible' => 'tender',
                            'data'=> $employees,
                            'prefix' => 'компаниям',
                            'intro' =>'Укажите контактные данные работника, с кем компании смогут вести коммуникацию <b>по вопросам участия в тендерах.</b>',
                            'hooks' => 'profileEmployeesSave',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Контактные данные сотрудника по вопросам участия в тендерах сохранены успешно!'
                         ]}                          
                        
                         {*'!AjaxForm'|snippet:[
                            'snippet' => 'FormIt',
                            'form' => '@FILE chunks/forms/employees.form.add.tpl',
                            'index'=>'lksEmployeesForm',
                            'responsible' => 'cooperation',
                            'data'=> $employees,
                            'prefix' => 'компаниям',
                            'intro' =>'Укажите контактные данные работника, с кем компании смогут вести коммуникацию <b>по вопросам сотрудничества.</b>',
                            'hooks' => 'profileEmployeesSave',
                            'validationErrorMessage' => 'В форме содержатся ошибки!',
                            'successMessage' => 'Контактные данные сотрудника по вопросам сотрудничества сохранены успешно!'
                         ]*}
                        
                        
                    </div>
                </div>                
                
            </div>
        </section><!-- lk -->

	</main><!--content__wrapper-->
{/block}