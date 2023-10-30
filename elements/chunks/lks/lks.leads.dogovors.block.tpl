<div class="leads__block">
                                    <div class="leads__header lk__wraplr section__lr">{$pagetitle}</div>
                                    <div class="leads__item lk__wraplr section__lr">
                                        <div class="leads__item-name show-desktop-sm">{$fullname}</div>
                                
                                        <div class="leads__item-col col--first">
                                            <div class="leads__item-name hide-desktop-sm">{$fullname}</div>
                                        </div>
                                
                                        <div class="leads__item-col hide-desktop-sm">
                                            <div class="leads__item-prop">
                                                <div class="leads__item-prop__label">Группа</div>
                                                <a href="{$res_id | url}">Смотреть</a>
                                            </div>
                                
                                        </div>
                                        <div class="leads__item-col">
                                            <div class="leads__item-prop">
                                                <div class="leads__item-prop__label">Телефон</div>
                                                <a href="tel:{$mobilephone}">{$mobilephone}</a>
                                            </div>
                                            <div class="leads__item-prop">
                                                <div class="leads__item-prop__label">Mail</div>
                                                <a href="mailto:{$email}">{$email}</a>
                                            </div>
                                        </div>
                                        <div class="leads__item-col leads__item-action">
                                            <input type="text" class="input input--white" readonly value="Промокод: {$code}">
                                            {*<button class="btn promocode-dogovor-remove" data-id="{$id}">Отменить договор</button>*}
                                        </div>
                                    </div>
                                </div>