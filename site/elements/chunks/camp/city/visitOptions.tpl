{if $table}
<section class="cmp_visit  section__mg">
    <div class="container">
        <div class="section__head mb--md">
            <h2 class="section__title">Варианты посещений</h2>
        </div>
        <div class="cmp_visit__items">
            {foreach $table as $item}
                {switch $item.period}
                    {case 'beforeLunch'}
                        {set $image = 'clock-color-1.svg'}
                        {set $title = 'Первая половина дня'}
                    {case 'afterLunch'}
                        {set $image = 'clock-color-2.svg'}
                        {set $title = 'Вторая половина дня'}
                    {case 'fullday'}
                        {set $image = 'clock-color-3.svg'}
                        {set $title = 'На полный день'}
                    {case 'oneday'}
                        {set $image = 'clock-color-4.svg'}
                        {set $title = 'На один день'}
                {/switch}
                <div class="cmp_visit__item">
                    <div class="cmp_visit__item-icon">
                        <img src="/app/assets/images/icons/{$image}" alt="">
                    </div>
                    <div class="cmp_visit__item-info">
                        <div class="cmp_visit__item-title">{$title}</div>
                        <div class="cmp_visit__item-text">({$item.timeFrom} - {$item.timeTo}) <br>
                            {$item.description}</div>
                    </div>
                </div>
            {/foreach}
        </div>
        <div class="cmp_visit__star1 cmp_star star--cc"></div>
        <div class="cmp_visit__star2 cmp_star cmp_star--60 star--cc"></div>
        <div class="cmp_visit__star3 cmp_star cmp_star--100 star--cc"></div>
    </div>
    <div class="cmp_visit__star4 cmp_star cmp_star--200"></div>
</section>
{/if}