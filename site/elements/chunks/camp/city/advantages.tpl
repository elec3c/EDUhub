<section class="cmp_advant cmp_sbg section__pd--mdx">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title">Наши преимущества</h2>
        </div>
        <div class="cmp_advant__items">
            {foreach $advantages as $advantage}
                <div class="cmp_advant__item">
                    <h3 class="cmp_advant__item-title"><span>{$advantage.title}</span></h3>
                    <div class="cmp_advant__item-desc">{$advantage.description}</div>
                </div>
            {/foreach}
        </div>
    </div>
</section>