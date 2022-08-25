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
                {if $website}
                <li>
                    <a href="{$website}" class="listinf__flex">
                        <div class="listinf__icon">
                            <img src="assets/images/icons/global.svg" alt="">
                        </div>
                        <div class="listinf__str">{$website}</div>
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
            <button class="btn w-all">Заказать звонок</button>
                {include 'file:chunks/favorites/favorites.like.tpl' type_name='scools'}
                <!--<button class="btn btn--bdpurple" data-popup="sale">Получить скидку</button>-->
        </div>
    </div>
</div>