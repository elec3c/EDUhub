{'!Partnership' | snippet :[]}
{insert 'file:chunks/partnership/partnership.data.prepare.tpl'}


{set $my_company_id = $to_user_id}
{set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
{set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}

{set $fullname = $userId | user : 'fullname'}
{set $mobilephone = $userId | user : 'mobilephone'}
{set $telegram = $userId | user : 'telegram'}

                


                <div class="leads__block">
                    {set $title = $course_title?:$pagetitle}
                    <div class="leads__header lk__wraplr section__lr">
                        
                    {set $corporatePageID = '!getCorporatePageID' | snippet :['corporate_id'=>$to_user_id]?:'#'}
                    {if $corporatePageID != '#'}<a href="{$corporatePageID | url}">{/if}{$my_company_id | user : 'fullname'} сотрудник {$fullname} {if $corporatePageID != '#'}</a>{/if}
                        
                    </div>
                    
                    <div class="leads__item lk__wraplr section__lr">
                        <div class="leads__item-col col--first">
                            <div class="leads__item-name hide-desktop-sm">{$fullname}</div>
                            
                            {if $my_company_id > 0}
                            <div class="leads__item-prop">
                                {set $company_name = ($my_company_id | user:'fullname')}
                                {set $cid  = $_modx->runSnippet('!getCompanyPageID', ['company_id' => $my_company_id])}
                                {set $company_url = ($cid | url)}
                                <div class="leads__item-prop__label">Компания</div>
                                {*<a href="{$company_url}">*}{$company_name}{*</a>*}
                            </div>
                            {/if}

                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Телефон</div>
                                {if $mobilephone}<a href="tel:{$mobilephone}">{$mobilephone}</a>{else}не указан{/if}
                            </div>
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Telegram</div>
                                {if $telegram}<a href="https://t.me/{$telegram}">{$telegram}</a>{else}не указан{/if}
                            </div>
                        </div>
                        <div class="leads__item-col hide-desktop-sm">

                        </div>
                        <div class="leads__item-col show-desktop-sm">
                        </div>
                        <div class="leads__item-col">
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Скидка</div>
                                <b style="color:green;">{$discount}{$discount_unit} ({$discount_for_what})</b><br>
                            </div>
                        </div>
                        <div class="leads__item-col leads__item-action">
                            <input type="text" class="input input--white" readonly value="Промокод: {$code}">
                            {if $active && !$deal && !$deleted}
                                <button class="btn promocode-dogovor-add" data-id="{$id}" data-type="template" data-pageId="0">Заключить договор</button>
                            {else}
                                {if $deal}
                                    <button class="btn btn--green">Договор заключен {$deal|date:"d.m.Y"}</button>
                                {elseif $deleted}
                                    <button class="btn btn--red">Промокод удален {$deleted|date:"d.m.Y"}</button>
                                {/if}
                            {/if}
                            {if $active && !$deal && !$deleted}
                            <button class="btn btn--remove leads__item-remove a-promocode-delete" data-id="{$id}" data-type="template" data-pageId="0">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path
                                        d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                </svg>
                                <span class="show-tablet-sm">Удалить</span>
                            </button>
                            {else}
                            <button class="btn btn--remove leads__item-remove">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path
                                        d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014"
                                        stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                </svg>
                                <span class="show-tablet-sm">Удалить</span>
                            </button>
                            {/if}    
                        </div>
                    </div>
                </div>