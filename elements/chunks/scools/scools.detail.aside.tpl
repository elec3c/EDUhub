{set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])}
{set $confirm_phone = $_modx->user.id | user:'confirm_phone'?:0}            
<div class="detail__aside">
    <div class="detail__sticky">
        <div class="dcard">
            <div class="dcard__photo">
                {include 'file:chunks/courses/courses.block.photo.tpl' user_id=$_modx->resource.scools_owner}
            </div>
            <div class="dcard__info">
            <div class="dcard__title">Контакты</div>
            {if $_modx->resource.scools_owner}
            {set $address = $_modx->resource.scools_owner | user:'city'}
            {set $website = $_modx->resource.scools_owner | user:'website'}
            {set $phone = $_modx->resource.scools_owner | user:'phone'}
                                
            <ul class="listinf dcard__list">
                {if $address}
                <li class="listinf__flex">
                    <div class="listinf__icon">
                        <img src="/assets/images/icons/location.svg" alt="">
                    </div> 
                    <div class="listinf__str">{$address}</div>
                </li>
                {/if}
                {if $website = $_modx->runSnippet('!parseIfValidURL', ['url' => $website])}
                <li>
                    <a href="{$website}" class="listinf__flex">
                        <div class="listinf__icon">
                            <img src="assets/images/icons/global.svg" alt="">
                        </div>
                        <div class="listinf__str">{$.php.preg_replace("(^https?://)", "", $website)}</div>
                        
                    </a>    
                </li>
                {/if}
                {if $phone}
                <li>
                    <a href="tel:{$phone | clearphone}" class="listinf__flex">
                        <div class="listinf__icon"><img src="/assets/images/icons/phone.svg" alt=""></div>
                        <div class="listinf__str">{$phone}</div>
                    </a>    
                </li>
                {/if}
                </ul>
                {/if}
            </div>
        </div>
        <div class="btns_cfs detail__aside-buttons">

        {include 'file:chunks/favorites/favorites.like.tpl' type_name='scools'}

        {if ('' | isloggedin : 'web')}
            {if $isOK && $confirm_phone}
                {set $checkPromote = '!promoteCheckSchools' | snippet: ['user_id'=>$_modx->resource.scools_owner]}
                {if $checkPromote} 
                    <button class="btn" data-open-popup="call_to_school_reg">Заказать звонок</button>
                {/if}
            {else}
                 {if !$confirm_phone}<button class="btn" data-open-popup="confirm_phone_msg">Обратный звонок</button>{/if}
            {/if}
        {else}
            <button class="btn" data-open-popup="call_to_school">Заказать звонок</button>
        {/if}
        
        
        
        {*<button class="btn btn--bdpurple" data-popup="sale">Получить скидку</button>*}
        {set $scoolsList = '!getAddressSchools' | snippet: ['school_id'=>$_modx->resource.scools_owner]}
        {if is_array($scoolsList)}
        
        <br><br>
        <br><br>
        <ul>
            <br><br>
            <b>Адреса филиалов</b>
            <br><br>
        {set $i = 0}
        {foreach $scoolsList as $address}
            {set $i += 1}
            <li>{$address}</li><br>
        {/foreach}
        </ul>
        {/if}
        
        
        
        
        
        
        </div>
    </div>
</div>