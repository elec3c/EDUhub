                    <div class="analitics__item">
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title">Курс</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Имя</div>
                                    {$name?:'-'}
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Образовательный центр</div>
                                    {set $school_name = $school_id | user : 'fullname'}
                                    {$school_name?:'-'}
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Курс</div>
                                    {set $group_name = '!pdoField' | snippet : ['id' => $res_id, 'field' => 'course_group_title']}
                                    <a href="{$group_id | url}">{$group_name?:$pagetitle}</a>
                                </div>
                             </div>
                        </div>
                        <div class="analitics__item-bl">
                            <div class="analitics__item-title">данные</div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">заказан</div>
                                    {$date | date : "d.m.Y"}
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">открыт</div>
                                    {if $openDate > 0}
                                        {$openDate | date : "d.m.Y"}
                                    {else}
                                        -
                                    {/if}
                                </div>
                            </div>
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Комиссия</div>
                                    10 руб
                                </div>
                            </div>
                            {*
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Договор</div>
                                    -
                                </div>
                            </div>
                            *}
                            
                        </div>
                    </div><!--analitics__item-->