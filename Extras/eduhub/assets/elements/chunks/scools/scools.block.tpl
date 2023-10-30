{set $user_id = $_pls['tv.scools_owner']?:$scools_owner}
{if $user_id > 0}
{set $city = $user_id | user:'city'}
{set $website = $user_id | user:'website'}
{set $course_count = $_modx->runSnippet('!getCountCourses', ['user_id' => $user_id])}
{/if}

<style>
.scools__item-title a:hover, a:active {
  color: white;
}
</style>
<div class="scools__item">
    <div class="scools__item-link al-center">
        <div class="scools__item-photo">
            <a href="{$id | url}">{include 'file:chunks/courses/courses.block.photo.tpl' user_id=$user_id}</a>
        </div>
        <div class="scools__item-info">
            <div class="scools__item-title"><a href="{$id | url}">{$menutitle ?: $pagetitle}</a></div>
            {if ($_modx->resource.template != 23)}
                {if ($user_id > 0)}
                <ul class="scools__item-list listinf">
                    {if $city}
                    <li class="listinf__flex">
                        <div class="listinf__icon">
                            <svg width="20" height="22" viewBox="0 0 20 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M9.99891 12.4299C11.722 12.4299 13.1189 11.0331 13.1189 9.30994C13.1189 7.58681 11.722 6.18994 9.99891 6.18994C8.27578 6.18994 6.87891 7.58681 6.87891 9.30994C6.87891 11.0331 8.27578 12.4299 9.99891 12.4299Z" stroke="#7D7D7D"/>
                            <path d="M1.62166 7.49C3.59166 -1.17 16.4217 -1.16 18.3817 7.5C19.5317 12.58 16.3717 16.88 13.6017 19.54C11.5917 21.48 8.41166 21.48 6.39166 19.54C3.63166 16.88 0.471662 12.57 1.62166 7.49Z" stroke="#7D7D7D"/>
                            </svg>
                        </div> 
                        <div class="listinf__str">{$city}</div>
                    </li>
                    {/if}
                    {if $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $website])}
                    <li class="listinf__flex">
                        <div class="listinf__icon">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M11 21C16.5228 21 21 16.5228 21 11C21 5.47715 16.5228 1 11 1C5.47715 1 1 5.47715 1 11C1 16.5228 5.47715 21 11 21Z" stroke="#7D7D7D" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M7.00156 2H8.00156C6.05156 7.84 6.05156 14.16 8.00156 20H7.00156" stroke="#7D7D7D" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M14 2C15.95 7.84 15.95 14.16 14 20" stroke="#7D7D7D" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M2 15V14C7.84 15.95 14.16 15.95 20 14V15" stroke="#7D7D7D" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M2 7.99998C7.84 6.04998 14.16 6.04998 20 7.99998" stroke="#7D7D7D" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </div> 
                        <div class="listinf__str">{$.php.preg_replace("(^https?://)", "", $website)}</div>
                    </li>
                    {/if}
                    <li class="listinf__flex">
                        <div class="listinf__icon">
                            <svg width="20" height="22" viewBox="0 0 20 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M19 6V16C19 19 17.5 21 14 21H6C2.5 21 1 19 1 16V6C1 3 2.5 1 6 1H14C17.5 1 19 3 19 6Z" stroke="#7D7D7D" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M12.5 3.5V5.5C12.5 6.6 13.4 7.5 14.5 7.5H16.5" stroke="#7D7D7D" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M6 12H10" stroke="#7D7D7D" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M6 16H14" stroke="#7D7D7D" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </div> 
                        <div class="listinf__str">
                            {$course_count} - {$course_count | declension : 'курс|курса|курсов'}
                        </div>
                    </li>
                </ul>
                {else}
                  школа без владельца{$scools_owner}
                {/if}
            {/if}
        </div>
    </div>
    {if $_modx->resource.template != 23}
    {include 'file:chunks/favorites/favorites.scools.like.tpl' page_id=$id}            
    {/if}
</div>