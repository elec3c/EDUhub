
                                            <div class="ssrequest__item-types__row">
                                                <div class="ssrequest__item-types__col">
                                                    <div class="ssrequest__item-types__name">{$_pls['tv.course_group_title']?:$pagetitle}</div>                                        
                                                    <input type="checkbox" name="courses[]" value="{$id}" style="display:hidden;" checked/>
                                                </div>
                                                                                        
                                                <div class="ssrequest__item-types__col">
                                                    <div class="ssrequest__item-label show-desktop hide-tablet-sm">Размер скидки</div>
                                                    <input type="text" name="discount{$id}" class="input input--white" placeholder="Введите значение" inputmode="numeric" pattern="\d*" value="{$sales[$id]['discount']}"/>
                                                </div>
                                                <div class="ssrequest__item-types__col">
                                                    <div class="ssrequest__item-label show-desktop hide-tablet-sm">Ед. изм.</div>
                                                    <select name="discount_unit{$id}" class="styler styler--white place-mob" data-placeholder="Ед. измерения скидки">
                                                        {set $discount_unit = $sales[$id]['discount_unit']?:'percent'}
                                                        {'!getValuesTV' | snippet : ['tvid'=>'118', 'curr'=>$discount_unit]}
                                                    </select>                                        
                                                    
                                                </div>
                                                <div class="ssrequest__item-types__col">
                                                    <div class="ssrequest__item-label show-desktop hide-tablet-sm">На что дается скидка</div>
                                                    <select name="discount_for_what{$id}" class="styler styler--white">
                                                        {set $discount_for_what = $sales[$id]['discount_for_what']?:'course_fee'}
                                                        {'!getValuesTV' | snippet : ['tvid'=>'119', 'curr'=>$discount_for_what]} 
                                                    </select>
                                                </div>
                                            </div>                                    