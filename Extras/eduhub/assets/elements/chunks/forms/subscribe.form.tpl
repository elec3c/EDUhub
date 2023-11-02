{set $user_id = $.php.intval($user_id)?:$_modx->user.id}

{set $subscribeCheck = '@FILE snippets/subscribeCheckBuy.php' | snippet: ['user_id' => $user_id, 'service_id' => $service_id, 'course_id' => $course_id]}
{set $subscribeServices = '@FILE snippets/subscribeGetServices.php' | snippet: ['service_id' => $service_id]}

{set $btnSubscribeService = "btnSubscribeService"~$index}
{set $selectSubscribeService = "selectSubscribeService"~$index}

{if  ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
    {set $btn='Продлить'}
    {set $action='extend'}
{elseif $subscribeCheck['expire'] > 0}
    {set $btn='Обновить'}
    {set $action='update'}
{else}                 
    {set $btn='Активировать'}
    {set $action='add'}
{/if}   

<form action="{$_modx->resource.uri}" enctype="multipart/form-data" method="POST" id="subscribeBuyForm">
{if ('' | isloggedin : 'web') && ($_modx->user.urlico || $_modx->user.manager)}    
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank"/>
    <input type="hidden" name="page_id" value="{$page_id?:$_modx->resource.id}"/>
    <input type="hidden" name="sum"     value="{$page_id?:$_modx->resource.id}"/>
    <div class="cadd__block">
        <div class="cadd__label" id="{$label?:''}"><b>{$title?:$subscribeServices['name']}</b></div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {*<input type="text" class="input" name="payment" placeholder="Стоимость подписки {$price30} {$price30 | declension : 'рубль|рубля|рублей'}" disabled>*}
                <div class="clearfix" style="position: relative;">
                    <select id="{$selectSubscribeService}" name="payment" data-placeholder="Стоимость подписки *" class="styler" required {if $btn!="Активировать"}disabled{/if}>
                        <option value=""></option>
                        {foreach $subscribeServices['params'] as $k=>$v}
                        {if $subscribeCheck['periodid'] == $v->days}
                        {set $curr_price = $v->price}
                        {set $curr_days = $v->days}
                        {/if}
                        {if $v->active == 1}
                            <option value="{$k}" data-days="{$v->days}" data-price="{$v->price}" {if $subscribeCheck['periodid'] == $v->days}selected{/if}>{$v->title} {if $v->price > 0}Стоимость {$v->price} {$v->price | declension : 'рубль|рубля|рублей'}.{else}{$v->price} рублей.{/if}</option>
                        {/if}
                        {/foreach}
                    </select>
                    {*<div class="tool-tip slideIn bottom" id={"tool-tip"~$index}>Стоимость подписки  {if $v->price > 0}{$v->price | declension : 'рубль|рубля|рублей'}{else}{$v->price} рублей{/if}</div>*}
                </div>
            </div>
        </div>
        <div class="cadd__inputs cadd__in1">
        <label class="form__polit">
            <input type="checkbox" name="auto" class="styler styler--white" id="{'auto'~$index}" {if $subscribeCheck['auto']==1}checked{/if}>
            <span>Автопродление подписки по истечении выбранного Вами периода от начала активации подписки, <br> при наличии достаточного количества средств на балансе школы</span>
        </label>        
        </div>
        {if  ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] < $.php.time())}
        <div class="cadd__inputs cadd__in1">
        <label>
            <span style="color:red"><b>Срок действия подписки закончен </b></span><i>{$subscribeCheck['expire'] | date : "d.m.Y H:i"}</i>
        </label>        
        </div>
        {elseif ($subscribeCheck['expire'] > 0) && ($subscribeCheck['expire'] > $.php.time())}
        <div class="cadd__inputs cadd__in1">
        <label>
            <span style="color:green"><b>Срок действия подписки активен до </b></span><i>{$subscribeCheck['expire'] | date : "d.m.Y H:i"}</i>
        </label>        
        </div>        
        {/if}
    </div>
    {if !$_modx->user.manager}
    <div class="cadd__button">
        <button class="btn w-all" type="button" id="{$btnSubscribeService}" data-userid="{$user_id}" data-serviceid="{$service_id?:0}" data-courseid="{$course_id?:0}" data-action="{$action?:'add'}" data-periodid="{$curr_days}" data-payment="{$curr_price}">{$btn?:'Выполнить'}</button>
    </div>
    {else}
    <div class="cadd__button">
        <button class="btn w-all" type="button" id="{$btnSubscribeService}" data-userid="{$user_id}" data-serviceid="{$service_id?:0}" data-courseid="{$course_id?:0}" data-action="{$action?:'add'}" data-periodid="{$curr_days}" data-payment="{$curr_price}" disabled>{$btn?:'Выполнить'}</button>
    </div>    
    {/if}
{else}
    <div class="cadd__button">
        <button class="btn w-all" style="background-color:red;" disabled>Подпиcка не доступна</button>
    </div>
{/if}
</form>
<br><hr><br>