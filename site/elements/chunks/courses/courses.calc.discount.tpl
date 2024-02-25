                 {set $price_lesson_sale_format = 0}
                 {switch $for_what}
                     {case 'course_fee'}
                        {if ($price_course > 0) && $.php.intval($discount) && ($unit == 'percent') && (($discount > 0) && ($discount <= 100))}
                          {set $calc_discount = (($discount * $price_course)/100.0)}
                          {set $price_course_partnership_sale = $price_course - $calc_discount}
                          

                          {if $price_lesson  > 0}
                              {set $price_lesson  = $page_id | resource: 'price_lesson'}
                              {set $calc_lesson_discount = (($discount * $price_lesson)/100.0)}
                              {set $price_lesson_partnership_sale = $price_lesson - $calc_lesson_discount}
                              {set $price_lesson_sale_format = $_modx->runSnippet('!formatMoney', ['number'=>$price_lesson_partnership_sale])}
                          {/if}
                          
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
                    {if !$.php.intval($calc_discount)}
                        {set $discount = $title_sale}
                    {else}
                        {set $discount = $calc_discount}
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