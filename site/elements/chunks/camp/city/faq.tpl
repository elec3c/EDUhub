<section class="cmp_faq section__mg">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title"><span class="text--purple">???</span> Часто задаваемые вопросы</h2>
        </div>
        <div class="cmp_faq__items">
            {foreach $faq as $item}
                <div class="cmp_faq__item accord">
                    <div class="cmp_faq__item-head accord-toggle">
                        <div class="cmp_faq__item-title">{$item.question}</div>
                        <div class="cmp_faq__item-drop"></div>
                    </div>
                    <div class="cmp_faq__item-body accord-body" style="display: none;">
                        <p>{$item.answer}</p>
                    </div>
                </div>
            {/foreach}
        </div>
        <div class="cmp_faq__star1 cmp_star"></div>
        <div class="cmp_faq__star2 cmp_star"></div>
        <div class="cmp_faq__star3 cmp_star cmp_star--60 star--cc"></div>
        <div class="cmp_faq__star4 cmp_star cmp_star--140"></div>
    </div>
</section>