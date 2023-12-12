<section class="cmp_schedule  section__mg">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title">Расписание</h2>
        </div>
        <div class="cmp_schedule__items">
            {foreach $schedule as $item}
                <div class="cmp_schedule__item">
                    <div class="cmp_schedule__item-title">{$item.title}</div>
                    <div class="cmp_schedule__item-text">{$item.description}</div>
                </div>
            {/foreach}
        </div>
        <div class="cmp_schedule__star1 cmp_star cmp_star--120"></div>
        <div class="cmp_schedule__star2 cmp_star cmp_star--60"></div>
        <div class="cmp_schedule__star3 cmp_star cmp_star--90"></div>
    </div>
</section>