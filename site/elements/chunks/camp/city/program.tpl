<section class="cmp_program cmp_sbg">
    <div class="cmp_program__star2 cmp_star cmp_star--100"></div> 
    <div class="cmp_program__star3 cmp_star cmp_star--120"></div> 

    <div class="container">
        {if $description}
        <div class="section__pd--mdx">
            <div class="section__head mb--md">
                <h2 class="section__title">Описание программы</h2>
            </div>
            <div class="cmp_program__desc">
                <div>{$description}</div>
                <div class="cmp_program__star1 cmp_star cmp_star--160 star--cc"></div> 
            </div>
        </div>
        {/if}
        <div class="section__pd--mdx">
            <div class="section__head mb--md">
                <h2 class="section__title">Программа</h2>
            </div>
            <div class="cmp_program__items">
                {foreach $programs as $program}
                    <div class="cmp_program__item">
                        <div class="cmp_program__item-date">{$program.start_date | date : "d.m.Y"} - {$program.end_date | date : "d.m.Y"}</div>
                        <div class="cmp_program__item-photo"><img src="{$program.image | phpthumbon: 'w=320&h=320&q=100&zc=1'}" alt=""></div>
                        <div class="cmp_program__item-desc">{$program.description}</div>
                    </div>
                {/foreach}
            </div>    
        </div>
    </div>
</section>