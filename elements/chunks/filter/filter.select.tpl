{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
    <select name="{$filter_key}" id="{$table}{$delimeter}{$filter}_0" class="styler" data-placeholder="{$caption}">
         <option value=""></option>
         {$rows}
    </select>
</div>

{if !('standard' | mobiledetect) && ($filter == 'course_type')}
<a href="#" class="choose__inputs-more choose-more-filters">
    <span class="t-opened">Еще фильтры</span>
    <span class="t-closed">Свернуть фильтры</span>
    <svg width="10" height="6" viewBox="0 0 10 6" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>                                        
</a>
<div class="choose__inputs-dopf choose-dopf-filters">
{/if}

