{set $form_of_study  = $page_id | resource: 'form_of_study'}

<div class="courses__block-info">
    <h3 class="courses__block-title"><a href="{$uri}">{$longtitle ?: $pagetitle}</a></h3>
    <ul class="courses__block-list listinf">
        {if $form_of_study}
        <li class="courses__block-training online">
            {switch  $form_of_study}
                {case 'онлайн'}
                    Онлайн-обучение
                {case 'очное'}
                    Очное-обучение
                {default}
                    {$form_of_study}-обучение
            {/switch}
        </li>
        {/if}
        <li class="listinf__flex">
            <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                <div class="listinf__str">Москва</div>
        </li>
        <li>
            <a href="skillbox.ru" class="listinf__flex">
                <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt=""></div>
                <div class="listinf__str">skillbox.ru</div>
            </a>    
        </li>
    </ul>
</div>