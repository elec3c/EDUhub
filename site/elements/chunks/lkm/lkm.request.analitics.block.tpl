                    <div class="analitics__item">
                        <div class="analitics__item-bl">
                            <div class="analitics__item-col">
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Запрос от</div>
                                    {if $user_id}
                                        {set $fullname = $user_id | user : 'fullname'}
                                        {$fullname?:'-'}
                                    {else}
                                        анонимный
                                    {/if}
                                </div>
                                
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Кого ищет?</div>
                                    {$name?:'-'}
                                </div>
                                
                                <div class="analitics__item-prop">
                                    <div class="analitics__item-prop__label">Контактная почта</div>
                                    {$email?:'-'}
                                </div>
                                
                            </div>
                        </div>
                        <div class="analitics__item-bl">
                            {if !($idx % 5)}
                            <div class="analitics__item-title">данные</div>
                            {/if}
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
                        </div>
                    </div><!--analitics__item-->