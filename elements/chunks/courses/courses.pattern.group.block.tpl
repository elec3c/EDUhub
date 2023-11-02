{set $page_id = $res_id}
{set $pagetitle  = $page_id | resource: 'pagetitle'}
{set $data_from  = $page_id | resource: 'data_from'}
{set $data_continue  = $page_id | resource: 'data_continue'}
{set $course_continue  = $page_id | resource: 'course_continue'}

{set $form_of_study = $page_id | resource: 'form_of_study'}
{set $promote = $_modx->runSnippet('promoteCheckLead', ['group_id'=>$page_id])}
{set $address = $_modx->runSnippet('getAddressGroup', ['page_id'=>$page_id])}
{set $url = $_modx->makeUrl($page_id, 'web', '', 'https')}
{set $isPromote = ($promote['lead'] > 0)?1:0}
{set $sale  = $page_id | resource: 'sale'}

{set $where = ["template:=" => "8","data_from:<" => "2099-01-01", "data_from:<" => $.php.date("Y-m-d"), "data_continue:>" => $.php.date("Y-m-d"), 'course_continue'=>1, 'EduPromote.commission:>'=>0, 'EduPromote.lead:>'=>0]}


{set $price_course = $page_id | resource:'price_course'}
{set $course_owner = $page_id | resource:'course_owner'}
{set $my_company_id = $_modx->user.id | user:'my_company_id'}
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


        {if $partnershipDiscount['discount'] > 0}
        
            
            {set $discount          = $partnershipDiscount['discount']}
            {set $discount_unit     = $partnershipDiscount['discount_unit']}
            {set $discount_for_what = $partnershipDiscount['discount_for_what']}
            {set $unit              = $partnershipDiscount['unit']}
            {set $for_what          = $partnershipDiscount['for_what']}
            
            {set $title_sale        = 'Скидка '~$discount~' '~$discount_unit~' '~$discount_for_what~' '}
            {if $format_of_study != 'individual'}
                 {switch $for_what}
                     {case 'course_fee'}
                        {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                          {set $calc_discount = (($discount * $price_course)/100.0)}
                          {set $price_course_partnership_sale = $price_course - $calc_discount}
                          {set $isSale = 1}
                        {/if}                             
                     {case 'first_month'}
                        {if $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
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
                         {if intval($discount) && ($unit == 'rub') && ($price_course > $discount) }
                             {set $calc_discount = $discount} 
                             {set $price_course_partnership_sale = $price_course - $calc_discount}
                             {set $isSale = 1}
                         {/if}
                {/switch}
                
                {if $calc_discount > 0}
                    {set $discount = $calc_discount}
                {else}
                    {set $discount = "Нет скидки"}
                {/if}                
                
            {else}
                {if intval($discount)}
                    {set $isSale = 1}
                    {set $discount = $title_sale}
                {else}
                    {set $discount = "Нет скидки"}
                {/if}                     
            {/if}
            
            {set $isPartnership = 1}

            
        {elseif ($sale > 0)}
            {set $title_sale = 'Скидка EDUhub '~$discount~' '~$discount_unit~' ('~$discount_for_what~')'}   
            {set $isSale = 1}
            {set $discount = $sale}
            
        {else}
            {set $isSale = 0}
            {set $discount = "Нет скидки"}
        {/if}

    
{if !($isPromote) || ((strtotime($data_from) < time()) && ( ($course_continue) && (strtotime($data_continue) < time())) )}

{else}

    {if $address}
        {set $prefix[] = $address}
    {/if}
    
    {if $data_from && (($data_from | date : "Y") != 2099)}
        {set $prefix[] = 'cтарт ' ~ $data_from | date : "d.m.Y"}
    {/if}
     
    {if $form_of_study}
        
        {set $a_form_of_study = $_modx->runSnippet('outputMultipleTV', ['resourceId'=>$page_id, 'tvName'=>'form_of_study', 'arr'=>1])}
        {set $f = $a_form_of_study[$form_of_study]}
        {if in_array($form_of_study, ['online', 'online-micro'])}
            {set $prefix[] = '<span style="color:red;">'~$f~'</span>'}
        {elseif $form_of_study=='offline'}
            {set $prefix[] = '<span style="color:green;">'~$f~'</span>'}
        {else}
            {set $prefix[] = '<span style="color:black;">'~$f~'</span>'}
        {/if}
    {/if}
    
      
    {if $isPromote}
    
        {set $prefix[] = 'свободных мест - ' ~ $promote['lead']}
        
    {/if}  
    

        
    
    {if ($isSale!= 0) && ($discount != "Нет скидки")}
        {if $discount > 0}
            <div class="courses__block-ditem__t">{set $discount = floor($discount)~" руб."}</div>
        {/if}    
        {set $r = '<li class="courses__item-item" style="padding-bottom:10px;">&nbsp;<a href="'~$url~'">'~$pagetitle~'</a>&nbsp;'~implode(', ',$prefix)~'<small class="label">-'~$discount~'</small></li>'}
    {else}
        {set $r = '<li class="courses__item-item" style="padding-bottom:10px;">&nbsp;<a href="'~$url~'">'~$pagetitle~'</a>&nbsp;'~implode(', ',$prefix)~'</li>'}
    {/if}
    {$r}
{/if}



