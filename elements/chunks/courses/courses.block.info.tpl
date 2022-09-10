{set $page_id = $page_id ?: $res.id}
{set $form_of_study  = $page_id | resource: 'form_of_study'}
{set $course_address  = $page_id | resource: 'course_address'}
{set $course_owner  = $page_id | resource: 'course_owner'}
{set $course_user = $course_owner | user: 'username'}
{set $course_group_title = $page_id | resource:'course_group_title'}

<div class="courses__block-info">
    <h3 class="courses__block-title"><a href="{$uri}">{$course_group_title ?: $pagetitle}</a></h3>
    <ul class="courses__block-list listinf">
        <li class="listinf__flex">
            Группа стартует: {$data_from|dateago:'{"dateNow":0, "dateFormat":"d F Y"}'}
        </li>
        {if $form_of_study}
        <li class="courses__block-training online">
            {switch  $form_of_study}
                {case 'online'}
                    Онлайн-обучение
                {case 'offline'}
                    Офлайн-обучение
                {default}
                    {$form_of_study}-обучение
            {/switch}
        </li>
        {/if}
        {if $course_address}
        <li class="listinf__flex">
            <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                <div class="listinf__str">{$course_address}</div>
        </li>
        {/if}
        {if $course_user}
        <li>
            <a href="#" class="listinf__flex">
                <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt=""></div>
                <div class="listinf__str">{$course_user}</div>
            </a>    
        </li>
        {/if}
    </ul>
</div>