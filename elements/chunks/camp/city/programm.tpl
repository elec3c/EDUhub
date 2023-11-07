<section class="cmp_program cmp_sbg">
    <div class="cmp_program__star2 cmp_star cmp_star--100"></div> 
    <div class="cmp_program__star3 cmp_star cmp_star--120"></div> 

    <div class="container">
        <div class="section__pd--mdx">
            <div class="section__head mb--md">
                <h2 class="section__title">Описание программы</h2>
            </div>
            <div class="cmp_program__desc">
                <div>{$description}</div>
                <div class="cmp_program__star1 cmp_star cmp_star--160 star--cc"></div> 
            </div>
        </div>
        
        <div class="section__pd--mdx">
            <div class="section__head mb--md">
                <h2 class="section__title">Программа</h2>
            </div>
            <div class="cmp_program__items">
                {foreach $programms as $programm}
                    <div class="cmp_program__item">
                        <div class="cmp_program__item-date">{$programm.start_date} - {$programm.end_date}</div>
                        <div class="cmp_program__item-photo"><img src="{$programm.image}" alt=""></div>
                        <div class="cmp_program__item-desc">{$programm.description}</div>
                    </div>
                {/foreach}
            </div>    
        </div>
    </div>
</section>