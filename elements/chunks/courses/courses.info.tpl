<section class="section__mgb--md">
                            <div class="detail__props">
                                <div class="detail__props-title">Длительность обучения</div>
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Продолжительность </div>
                                    <div>3 месяца</div>
                                </div>
                                {if $_modx->resource.num_lesson_per_week && $_modx->resource.lesson_duration}                                
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Интенсивность</div>
                                    <div>{$_modx->resource.num_lesson_per_week} занятие в неделю по {$_modx->resource.lesson_duration} часов</div>
                                </div>
                                {/if}
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Дата старта</div>
                                    <div>с 15 июля по 15 октября 2022</div>
                                </div>
                            </div>
                            
                            <div class="detail__props">
                                <div class="detail__props-title">Стоимость и скидки</div>
                                {if $_modx->resource.price_course}                                
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Стоимость за весь курс</div>
                                    <div>{$_modx->resource.price_course}</div>
                                </div>
                                {/if}                                
                                {if $_modx->resource.price_lesson}
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Стоимость за 1 занятие</div>
                                    <div>{$_modx->resource.price_lesson}</div>
                                </div>
                                {/if}                                
                                {if $_modx->resource.sale}
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Скидка</div>
                                    <div>{$_modx->resource.sale} %</div>
                                </div>
                                {/if}                                
                            </div>
                            
                            <div class="detail__props">
                                {if $_modx->resource.num_people_in_group}
                                <div class="detail__props-title">Подробности</div>
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Количество человек в группе</div>
                                    <div>{$_modx->resource.num_people_in_group}</div>
                                </div>
                                {/if}
                                {if $_modx->resource.form_of_study}
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Форма обучения</div>
                                    <div>{$_modx->resource.form_of_study}</div>
                                </div>
                                {/if}
                                {if $_modx->resource.for_levels_from && $_modx->resource.for_levels_to}
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Уровень</div>
                                    <div>{$_modx->resource.for_levels_from}-{$_modx->resource.for_levels_to}</div>
                                </div>
                                {/if}
                                {if $_modx->resource.for_ages_from && $_modx->resource.for_ages_to}
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Возраст</div>
                                    <div>{$_modx->resource.for_ages_from}-{$_modx->resource.for_ages_to} лет</div>
                                </div>
                                {/if}
                            </div>
                            
                            <div class="detail__props">
                                <div class="detail__props-title">Месторасположение</div>
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Город</div>
                                    <div>Москва</div>
                                </div>
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Район</div>
                                    <div>Первомайский, Центральный</div>
                                </div>
                                <div class="detail__props-item">
                                    <div class="detail__props-item__label">Метро</div>
                                    <div>Каменная горка, Кунцевщина</div>
                                </div>
                            </div>
                        </section>