{set $site = $id | user:'website'}                                
{set $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $site])}
{set $verified = $id | user:'verified'}
{set $verification_code = $id | user:'verification_code'}
<br><br>
<div class="vercomp">
                    <div class="vercomp__item lk__wraplr section__lr">
                        <div class="vercomp__item-name">{$fullname} {if $verified}<input class="input input--confirm" id="verified-{$id}">{else}<input class="input" id="verified-{$id}">{/if}</div>

                        <div class="vercomp__item-cols">
                            <div class="vercomp__item-col">
                                <div class="vercomp__item-label">Идентификатор</div>
                                <div class="vercomp__item-val">{$id}</div>
                            </div>
                            <div class="vercomp__item-col">
                                <div class="vercomp__item-label">Электронная почта</div>
                                <div class="vercomp__item-val">{$id | user:'email'?:'пусто'}</div>
                            </div>
                            <div class="vercomp__item-col">
                                <div class="vercomp__item-label">Телефон</div>
                                <div class="vercomp__item-val">{$id | user:'mobilephone'?:'пусто'}</div>
                            </div>
                            <div class="vercomp__item-col">
                                <div class="vercomp__item-label">Сайт</div>
                                
                                <div class="vercomp__item-val">
                                    {if $website}
                                    <a href="{$site}" class="listinf__flex">
                                        <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt="global"></div>
                                    {/if}
                                        {$fullname}
                                    {if $website}
                                    </a>
                                    {/if}
                                </div>

                            </div>
                        </div>

                        <div class="vercomp__item-genlink">
                            {if !$verification_code}
                                <input type="text" class="btn w-all generate-link-company" data-user="{$id}" value="Сгенерировать ссылку" readonly>
                            {else}
                                <input type="text" class="btn btn--red w-all reset-link-company input--confirm" data-user="{$id}" value="Сбросить ссылку" readonly>
                            {/if}
                            <input type="url" class="input input--white" name="verification_link" placeholder="Поле для ссылки" id="verification-code-{$id}" value="{if $verification_code!=''}{'@FILE snippets/createVerificationLink.php' | snippet : ['user_id' => $id]}{/if}">
                        </div>
                        

                        <div class="vercomp__item-buttons">
                            {if !$verified}
                                <input type="button" class="btn btn--purple confirm-company" data-user="{$id}" value="Подтвердить" readonly>
                            {else}
                                <input type="button" class="btn btn--bdpurple cancel-company" data-user="{$id}" value="Отменить" readonly>
                            {/if}
                        </div>
                    </div><!--vercomp__item-->

                </div>