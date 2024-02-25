{if $_modx->resource.faq}
{set $rows = json_decode($_modx->resource.faq, true)}
        <section class="faq section__mgb--sm">
            <div class="container">
                <div class="section__cols section__cols--11">
                    <div class="section__head mb--sm">
                        <h2 class="section__title fs--md">Часто задаваемые вопросы</h2>
                    </div>

                    <div class="section__wrap">
                        <div class="faq__items">
                            {foreach $rows as $idx => $row}                    
                            <div class="faq__item accord">
                                {if $row.question}
                                <div class="faq__item-head accord-toggle">
                                    <div class="faq__item-title">{$row.question}</div>
                                    <div class="faq__item-drop"></div>
                                </div>
                                {/if}
                                {if $row.answer}
                                <div class="faq__item-body accord-body{if $idx==$.php.count($rows)} bd0{/if}" style="display: none;">
                                    {$row.answer}
                                </div>
                                {/if}
                            </div>
                            {/foreach}
                            
                        </div>

                        <div class="faq__button">
                            <button class="btn w-all" data-open-popup="reg">Зарегистрировать компанию</button>
                        </div>
                    </div>
                </div>

            </div>
        </section>

                </div>
            </div>
        </div>
    </div>	
</section><!-- FAQ -->
{/if}