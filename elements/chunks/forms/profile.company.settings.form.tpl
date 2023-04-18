                    {set $user_id = $.get.user_id? : $_modx->user.id}
                    {set $userPageID = '!getCorporatePageID' | snippet : ['corporate_id' => $user_id]}

                    <div class="ppsettings__category">
                        <div class="ppsettings__category-intro">Укажите направления, которые интересны для вашей программы лояльности. Школы, которые оказывают услуги по выбранным направлениям, получат запрос на предоставление скидки для ваших сотрудников</div>
                        {if $userPageID}        
                            <form action="[[~[[*id]]]]" class="rkp__form" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="resource_id" value="{$userPageID}" />
                                <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
                                <input type="hidden" name="nospam:blank" />                        
                                {include 'file:chunks/forms/fields/fields.corporate.direction.tpl' userPageID = $userPageID}            
                                <br>
                                <div class="rkp__box rkp__buttons" style="text-align:center;">
                                    <button class="btn w-all" type="submit">Сохранить</button>
                                </div>                                
                            </form>
                        {else}
                            <p>Ошибочка вышла! Не существует личной страницы компании для сохранения настроек.</p>
                        {/if}                                
                    </div>
                </div><!--ppsettings-->