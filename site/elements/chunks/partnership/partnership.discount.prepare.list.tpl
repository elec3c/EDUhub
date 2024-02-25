                {set $discount = $sales[$id]['discount']}
                {set $discount_unit = $a_discount_unit[$sales[$id]['discount_unit']]}
                {set $discount_for_what = $a_discount_for_what[$sales[$id]['discount_for_what']]}
                        
                {if intval($discount) && !empty($discount_unit) && !empty($discount_for_what)}
                    {set $title = $_pls['tv.course_group_title']?:$pagetitle}
                    {set $title = ucfirst(trim(str_replace('Шаблон','',$title)))}
                    
                    {if  $curr_page_id in [1397,1121,1126,1136]}

                        <div class="cmp_sale__item-rprices">
                            <div class="cmp_sale__item-rprices__name"><a href="{$id | url}" style="text-decoration: underline;">{$title|truncate:60:" ..."}</a></div>
                            <div class="cmp_sale__item-rprices__price">
                                <div class="cmp_sale__item-rprices__val">{$discount}&nbsp;{$discount_unit}</div>
                                <div class="cmp_sale__item-rprices__label">({$discount_for_what})</div>
                            </div>
                        </div>                    
                        {*<div class="ssrequest__item-rowc2"><div><a href="{$id | url}" style="text-decoration: underline;">{$title|truncate:60:" ..."}</a></div><div>{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</div></div>*}                                        
                    {else}    
                        <div class="cmp_sale__item-rprices">
                            <div class="cmp_sale__item-rprices__name">{$title|truncate:60:" ..."}</div>
                            <div class="cmp_sale__item-rprices__price">
                                <div class="cmp_sale__item-rprices__val">{$discount}&nbsp;{$discount_unit}</div>
                                <div class="cmp_sale__item-rprices__label">({$discount_for_what})</div>
                            </div>
                        </div>
                    {*    <div class="ssrequest__item-rowc2"><div>{$title|truncate:60:" ..."}</div><div>{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</div></div>  *}                                      
                    {/if}
                {/if}
                
                
                
                
                