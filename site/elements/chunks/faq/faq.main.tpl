{if $_modx->resource.faq}
{set $rows = json_decode($_modx->resource.faq, true)}
<section class="faq section__mg">
    <div class="container">	
        <div class="section__cols">
            <div class="section__head">
                <h2 class="section__title">Часто задаваемые вопросы [[++setting_site_parent_it']]</h2>
                <p class="section__intro">Мы попытались ответить<br> на часто задаваемые вопросы</p>
            </div>
            <div class="section__wrap">
                <div class="faq__items">
                    {foreach $rows as $idx => $row}                    
                    <div class="faq__item accord opened">
                        {if $row.question}
                        <div class="faq__item-head accord-toggle">
                            <div class="faq__item-title">{$row.question}</div>
                            <div class="faq__item-drop"></div>
                        </div>
                        {/if}
                        {if $row.answer}
                        <div class="faq__item-body accord-body" style="display: none;">
                            {$row.answer}
                        </div>
                        {/if}
                    </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>	
</section><!-- FAQ -->
{/if}