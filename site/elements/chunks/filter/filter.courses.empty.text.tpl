                                {*<div class="choose__inputs-item first-tablet w-270">
                                    <div class="checkselect check-select">
                                        <div class="checkselect__select placeholder check-select-toggle check-select-text">Категория</div>
                                        <div class="checkselect__dropdown check-select-dropdown">
                                                {'!pdoMenu' | snippet: [
                                                    'parents' => 85,
                                                    'displayStart' => 0,
                                                    'level' => 0,
                                                    'showHidden' => 1,
                                                    'tplOuter' => '@INLINE <div class="checkselect__list">{$wrapper}</div>',
                                                    'tpl' => '@INLINE <a href="{$link}" title="{$menutitle}" class="checkselect__list-link">{$menutitle}</a>',
                                                    'tplHere' => '@INLINE <a href="{$link}" title="{$menutitle}" class="checkselect__list-link">{$menutitle}</a>',
                                                ]}            
                                        </div>
                                    </div> 
                                </div>                                
                                
                                
                                
                                Вы можете оставить запрос на подбор нужного курса. 
                                <br> После чего мы займемся поиском подходящих курсов и как только появится курс с указанными параметрами - вам на email придет сообщение со ссылкой на этот курс.
                                Чтобы оставить запрос, укажите на главной странице в форме ПОИСКА какие параметры курса вас интересуют и нажмите кнопу "Сообщить о новых курсах".  
                                <br><br><a class="btn" href="{1 | url}" style="margin-top:20px;">Оставить запрос</a>*}
                                