                    {set $title = $_pls['tv.course_group_title']?:$pagetitle}
                    {set $title = ucfirst(trim(str_replace('Шаблон','',$title)))}
                    
                    {if  $curr_page_id in [1397,1121,1126,1136]}

                        <div class="cmp_sale__item-rprices">
                            <div class="cmp_sale__item-rprices__name"><a href="{$id | url}" style="text-decoration: underline;">{$title|truncate:60:" ..."}</a></div>
                            {if $idx == 1}
                            <div class="cmp_sale__item-rprices__price">
                                <div class="cmp_sale__item-rprices__pall">
                                    <div class="cmp_sale__item-rprices__val">{$discount}&nbsp;{$discount_unit}</div>
                                    <div class="cmp_sale__item-rprices__label">{$discount_for_what}</div>
                                </div>
                            </div>
                            {/if}
                        </div>
                        
                        
                  
                        {*<div class="ssrequest__item-rowc2"><div><a href="{$id | url}" style="text-decoration: underline;">{$title|truncate:60:" ..."}</a></div><div>{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</div></div>*}                                        
                    {else}    
                        <div class="cmp_sale__item-rprices">
                            <div class="cmp_sale__item-rprices__name">{$title|truncate:60:" ..."}</div>
                            {if $idx == 1}
                            <div class="cmp_sale__item-rprices__price">
                                <div class="cmp_sale__item-rprices__pall">
                                    <div class="cmp_sale__item-rprices__val">{$discount}&nbsp;{$discount_unit}</div>
                                    <div class="cmp_sale__item-rprices__label">{$discount_for_what}</div>
                                </div>
                            </div>
                            {/if}
                        </div>
                    {*    <div class="ssrequest__item-rowc2"><div>{$title|truncate:60:" ..."}</div><div>{$discount}&nbsp;{$discount_unit}&nbsp;({$discount_for_what})</div></div>  *}                                      
                    {/if}
                
                
                
                
                
                