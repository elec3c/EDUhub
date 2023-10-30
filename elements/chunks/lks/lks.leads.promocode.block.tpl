                {set $page_id = $page_id ?: $res_id}
                
                {set $course_owner  = $page_id | resource: 'course_owner'}
                {set $num_months_of_study =  $page_id | resource: 'num_months_of_study'}
                {set $price_course =  $page_id | resource: 'price_course'}
                
                
                
                
                {if intval($userId)}
                    {set $my_company_id = ($userId | user:'my_company_id')}
                {else}
                    {set $my_company_id = $_modx->user.id | user:'my_company_id'}
                {/if}
                
                {set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
                {set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}
                
                {set $parent  = $page_id | resource: 'parent'}
                {if $parent != 61}
                    {set $isCourseTemplate = 0}
                    {set $course_template =  $page_id | resource: 'course_template'}
                {else}
                    {set $isCourseTemplate = 1}
                    {set $course_template =  $page_id}
                {/if}
                
                {if ($my_company_id > 0) && ($isCorporate) && ($course_template > 0)}
                    {set $partnershipDiscount = '!getPartnershipDiscount' | snippet : ['from_user_id' => $course_owner, 'to_user_id' => $my_company_id, 'course_template_id'=>$course_template]}
                {/if}                
                
                {set $course_sub_category_id = ($page_id | resource:'course_sub_category')}
                {set $course_category = ($page_id | resource:'course_category')}
                {set $course_sub_category = ($page_id | resource:'course_sub_category')}
                {set $course_sub_category_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_sub_category_type', 'resourceId' => $page_id])}
                {set $for_levels  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'for_levels', 'resourceId' => $page_id])}
                {set $time  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'time', 'resourceId' => $page_id])}
                {set $schedule  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'schedule', 'resourceId' => $page_id])}
                {set $course_type  = $_modx->runSnippet('!outputMultipleTV', ['tvName' => 'course_type', 'resourceId' => $page_id])}
                {set $course_sub_category_title = ($course_sub_category_id | resource:'pagetitle')}
                {set $course_title = ($page_id | resource:'course_group_title')}
                {set $format_of_study  = ($page_id | resource: 'format_of_study')}
                {set $form_of_study  = ($page_id | resource: 'form_of_study')}
                {set $data_from  = ($page_id | resource: 'data_from')}
                
                {set $parent  = $page_id | resource: 'parent'}
                
                
                {if $parent != 61}
                    {set $isCourseTemplate = 0}
                    {set $course_template =  $page_id | resource: 'course_template'}
                {else}
                    {set $isCourseTemplate = 1}
                    {set $course_template =  $page_id}
                {/if}


{if $partnershipDiscount['discount'] > 0}

    {set $discount          = $partnershipDiscount['discount']}
    {set $discount_unit     = $partnershipDiscount['discount_unit']}
    {set $discount_for_what = $partnershipDiscount['discount_for_what']}
    {set $unit              = $partnershipDiscount['unit']}
    {set $for_what          = $partnershipDiscount['for_what']}
                        
                        

                 {switch $for_what}
                     {case 'course_fee'}
                        {if ($price_course > 0) && $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                          {set $calc_discount = (($discount * $price_course)/100.0)}
                          {set $price_course_partnership_sale = $price_course - $calc_discount}
                          {set $isSale = 1}
                        {/if}  
                     {case 'first_month'}
                        {if ($price_course > 0) && $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                             {set $calc_discount = (($discount * $price_course)/100.0)}
                             {set $price_course_partnership_sale = $price_course - $calc_discount}
                             {if $num_months_of_study == 1}
                                 {set $isSaleFirstMonth = 1}
                                 {set $isSale = 1}
                             {else}
                                 {set $isSale = 1}
                             {/if}
                        {/if}
                     {case 'fixed_discount'}
                         {if $.php.intval($discount) && ($unit == 'rub')}
                             {set $calc_discount = $discount}
                             {set $price_course_partnership_sale = $price_course - $calc_discount}
                             {set $isSale = 1}
                         {else}
                             {set $calc_discount = $discount}
                         {/if}
                     {default}
                          {set $price_course_partnership_sale = 123}
                {/switch}
                
                
                {if $isSale}
                    {if !$.php.intval($discount)}
                        {set $discount = $title_sale}
                    {/if}
                {/if}
                
                {if $.php.intval($price_course_partnership_sale)}
                    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_partnership_sale])}
                {else}
                    {set $isSale = 1}
                    {set $calc_discount = $discount}
                    {set $price_course_partnership_sale = $price_course - $discount}
                    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_partnership_sale])}
                {/if}
                
                {set $isPartnership = 1}    
    
{elseif ($sale > 0) && ($price_course > $sale)}
    {set $isSale = 1}
    {set $discount = $sale}
    {set $price_course_sale = $price_course - $sale}
    {set $price_course_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_course_sale])}
    {set $title_sale = 'EDUHub '~$discount~' руб. '~$discount_unit~' (от стоимости курса)'}   
{else}
    {set $isSale = 0}
    {set $discount = "Нет скидки"}
{/if}


                <div class="leads__block">
                    {set $title = $course_title?:$pagetitle}
                    <div class="leads__header lk__wraplr section__lr"><a href="{$page_id | url}">{$isCourseTemplate?str_replace('Шаблон','Курс',$title):$title} / {$course_sub_category_title}</a></div>
                    
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
                            {*<div class="leads__item-prop"><a href="#" class="link">Показать контакты</a></div>*}                            
                        </div>
                        <div class="leads__item-col hide-desktop-sm">


                            {if $course_category}
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Категория</div>
                                {$course_category | resource:'pagetitle'}
                            </div>
                            {/if}
                            {if $course_sub_category}
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Подкатегория</div>
                                {$course_sub_category | resource:'pagetitle'}
                            </div>
                            {/if}
                            {if ($course_sub_category == 44) && ($course_sub_category_type)}
                            <div class="leads__item-prop show-desktop-sm">
                                <div class="leads__item-prop__label">Направление</div>
                                {$course_sub_category_type}
                            </div>
                            {/if}
                            


                            
                        </div>
                        <div class="leads__item-col show-desktop-sm">
                            
                            {if $for_levels}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Уровень</div>
                                {$.php.str_replace(',',' &mdash; <br>',$for_levels)} 
                            </div>
                            {/if}
                            
                                              
                            {if $form_of_study}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Форма</div>
                                {switch $form_of_study}
                                    {case 'offline'}
                                        офлайн
                                    {case 'online'}
                                        онлайн
                                    {case 'online-micro'}
                                         онлайн<br>микрокурсы  
                                    {case 'hybrid'}
                                        гибридная
                                    {case 'recording'}                                        
                                        в записи
                                    {default}
                                        {$form_of_study}
                                {/switch}
                            </div>
                            {/if}
                            

     
                            {if $format_of_study}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Формат</div>
                                {switch $format_of_study}
                                    {case 'individual'}
                                         индивидуальные
                                    {case 'group'}
                                        групповые
                                    {default}
                                        {$format_of_study}                                        
                                {/switch}
                            </div>
                            {/if}

                            
                        </div>
                        <div class="leads__item-col">
                            
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Район</div>
                                центр
                            </div>
                            
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Дата</div>
                                    {set $YYYY = trim($data_from | date_format:"%Y")}
                                    {if ($parent == 61) || (($data_from) && (intval($YYYY) == 2099))}
                                        -
                                    {else}
                                        {$data_from | date_format:"%e %B %Y"}
                                    {/if}
                                    
                            </div>
                            
                            {if $time && $schedule}
                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Время</div>
                                {$schedule} : <br>{$time}
                            </div>
                            {/if}

                            <div class="leads__item-prop">
                                <div class="leads__item-prop__label">Скидка</div>
                                {if $discount > 0}
                                    <b style="color:green;">{floor($calc_discount?:$discount)~' руб.'}</b><br>
                                    {$title_sale}
                                {else}
                                      0 руб.
                                {/if}
                            </div>
                            
    
                        </div>
                        <div class="leads__item-col leads__item-action">
                            
                            
                            <input type="text" class="input input--white" readonly value="Промокод: {$code}">
                            <button class="btn promocode-dogovor-add" data-id="{$id}" data-type="{$isCourseTemplate?'template':'group'}" data-pageId="{$page_id}">Заключить договор</button>
                            <button class="btn btn--remove leads__item-remove a-promocode-delete" data-id="{$id}" data-type="{$isCourseTemplate?'template':'group'}" data-pageId="{$page_id}">
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
                        </div>
                    </div>
                </div>