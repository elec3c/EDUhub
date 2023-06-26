{set $page_id = $page_id ?: $res.id}
{set $form_of_study  = $page_id | resource: 'form_of_study'}
{set $format_of_study  = $page_id | resource: 'format_of_study'}
{set $course_address  = $page_id | resource: 'course_address'}
{set $course_owner  = $page_id | resource: 'course_owner'}
{set $course_user = $course_owner | user: 'username'}
{set $course_group_title = $page_id | resource:'course_group_title'}

{set $promote = $_modx->runSnippet('promoteCheckLead', ['group_id'=>$page_id])}


<div class="courses__block-info">
    <h3 class="courses__block-title"><a href="{$uri}">{$course_group_title ?: $pagetitle}</a></h3>
    <ul class="courses__block-list listinf">
        {if ($promote['lead'] > 0) && ($data_from!='2099-01-01') && ($format_of_study!='individual')}
        <li class="listinf__flex">
            {if $.php.strtotime($data_from) > $.php.strtotime("now")}
                Группа стартует:&nbsp;{$data_from|dateago:'{"dateNow":0, "dateFormat":"d F Y"}'}
            {else}
                Действующая группа:&nbsp;с {$data_from|dateago:'{"dateNow":0, "dateFormat":"d F Y"}'}
            {/if}
        </li>
        {/if}
        
        <li class="courses__block-training online">
        {if $form_of_study}            
            {switch  $form_of_study}
                {case 'online'}
                    Онлайн-обучение
                {case 'offline'}
                    Офлайн-обучение
                {case 'online-micro'}
                    Онлайн микрокурсы (15-20 мин в день)
                {case 'hybrid'}                    
                    Гибридное-обучение
                {case 'recording'}
                    Обучение в записи
                {default}
                    Форма обучения не указана
            {/switch}
        {else}
            - 
        {/if}
        </li>
        
        
        {if $course_address}
            {set $addr = $_modx->runSnippet('getListCities', ['name'=>'address', 'uid'=>$course_address, 'arr'=>1, 'index'=>1])}
            {if $addr[$course_address]}
            <li class="listinf__flex">
                <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                <div class="listinf__str">{$addr[$course_address]}</div>
            </li>
            {/if}
        {/if}
        {*if $course_user}
        <li>
            <a class="listinf__flex">
                <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt=""></div>
                <div class="listinf__str">{$course_user}</div>
            </a>    
        </li>
        {/if*}
    </ul>
</div>