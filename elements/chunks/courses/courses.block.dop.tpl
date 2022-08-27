{set $thread = $_modx->resource.course_template?'thread-'~$_modx->resource.course_template:'resource-'~$id}
{set $page_id = $page_id ?: $res.id}
{set $sale  = $page_id | resource: 'sale'}
<div class="courses__block-dop">
    <a href="" class="courses__block-ditem">
        <div class="courses__block-ditem__icon">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M9.71094 18.0875L17.8859 9.91251" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M10.225 11.9625C11.0742 11.9625 11.7625 11.2742 11.7625 10.425C11.7625 9.57589 11.0742 8.88751 10.225 8.88751C9.37588 8.88751 8.6875 9.57589 8.6875 10.425C8.6875 11.2742 9.37588 11.9625 10.225 11.9625Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M18.4008 19.1125C19.2499 19.1125 19.9383 18.4241 19.9383 17.575C19.9383 16.7258 19.2499 16.0375 18.4008 16.0375C17.5516 16.0375 16.8633 16.7258 16.8633 17.575C16.8633 18.4241 17.5516 19.1125 18.4008 19.1125Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M14 26.5C20.9036 26.5 26.5 20.9036 26.5 14C26.5 7.09644 20.9036 1.5 14 1.5C7.09644 1.5 1.5 7.09644 1.5 14C1.5 20.9036 7.09644 26.5 14 26.5Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>                                    
        </div>
        {if $sale}
            <div class="courses__block-ditem__t">{$sale} % скидка</div>
        {else}
            <div class="courses__block-ditem__t">нет скидки</div>
        {/if}
    </a>
    <a href="{$_modx->makeUrl($page_id)}" class="courses__block-ditem courses__block-ditem--rate">
        <div class="courses__block-ditem__icon">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M16.1612 3.38749L18.3612 7.78749C18.6612 8.39999 19.4612 8.98749 20.1362 9.09999L24.1237 9.76249C26.6737 10.1875 27.2737 12.0375 25.4362 13.8625L22.3362 16.9625C21.8112 17.4875 21.5237 18.5 21.6862 19.225L22.5737 23.0625C23.2737 26.1 21.6612 27.275 18.9737 25.6875L15.2362 23.475C14.5612 23.075 13.4487 23.075 12.7612 23.475L9.02367 25.6875C6.34867 27.275 4.72367 26.0875 5.42367 23.0625L6.31117 19.225C6.47367 18.5 6.18617 17.4875 5.66117 16.9625L2.56117 13.8625C0.736166 12.0375 1.32367 10.1875 3.87367 9.76249L7.86117 9.09999C8.52367 8.98749 9.32367 8.39999 9.62367 7.78749L11.8237 3.38749C13.0237 0.999988 14.9737 0.999988 16.1612 3.38749Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>                                    
        </div>
        <div class="courses__block-ditem__t">{'!ecThreadRating'|snippet: ['thread' => $thread, 'tpl'=>'@INLINE {$.php.round($rating_wilson, 1)}']} баллов</div>
    </a>
    <a href="{$_modx->makeUrl($page_id)}" class="courses__block-ditem courses__block-ditem--rev">
        <div class="courses__block-ditem__icon">
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M9.625 22.75H9C4 22.75 1.5 21.5 1.5 15.25V9C1.5 4 4 1.5 9 1.5H19C24 1.5 26.5 4 26.5 9V15.25C26.5 20.25 24 22.75 19 22.75H18.375C17.9875 22.75 17.6125 22.9375 17.375 23.25L15.5 25.75C14.675 26.85 13.325 26.85 12.5 25.75L10.625 23.25C10.425 22.975 9.9625 22.75 9.625 22.75Z" stroke="#19191B" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M18.997 12.75H19.0083" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M13.9931 12.75H14.0044" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M8.99313 12.75H9.00436" stroke="#19191B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>                                    
        </div>
        <div class="courses__block-ditem__t">{'!ecMessagesCount'|snippet: ['thread' => $thread]} отзывов</div>
    </a>
</div>