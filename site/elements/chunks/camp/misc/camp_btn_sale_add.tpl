                                        {*<button class="btn btn--bdpurple btn--sm">Сообщить о свободных местах</button>*}
                                        {set $my_company_id = $_modx->user.id | user:'my_company_id'}
                                        {set $isOK = ($_modx->user.id | ismember : ['Users'])}
                                        {set $isCorporate = ($my_company_id | ismember : ['Corporate'])}
                                        {set $isEmployees = (($my_company_id > 0) && ($isCorporate))?1:0}
                                        
                                        {set $phone1 = $_modx->user.id | user:'mobilephone'}
                                        {set $phone2 = $_modx->user.id | user:'phone'}
                                        {set $confirm_phone = ( ($.php.preg_replace("/[^\+0-9]/", "", $phone1) == $.php.preg_replace("/[^\+0-9]/", "", $phone2)) ? ($phone2) : (0) )}
                                        
                                        {set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])}
                                        {if ('' | isloggedin : 'web')}
                                            {if (($isEmployees) || ($isOK)) && $confirm_phone}
                                                <button class="btn btn--purple btn--sm {$w?:''}" data-pid="{$pid}" data-userid='{$_modx->user.id}' data-open-popup="camp_sale_add_nophone">{$btn?:'Получить скидку  на ХХ руб.'}</button>        
                                            {else}
                                                {if (($isEmployees) || ($isOK)) && (!$confirm_phone)}
                                                    <button class="btn btn--purple btn--sm {$w?:''}" data-userid='{$_modx->user.id}' data-pid="{$pid}" data-open-popup="camp_sale_add_phone">{$btn?:'Получить скидку  на ХХ руб.'}</button>        
                                                {/if}
                                            {/if}
                                        {else}
                                            <button class="btn btn--purple btn--sm {$w?:''}" data-userid='0' data-pid="{$pid}" data-open-popup="camp_auth_sale">{$btn?:'Получить скидку  на ХХ руб.'}</button>        
                                        {/if}