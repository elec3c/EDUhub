{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    {set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk sale section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Мои скидки</h2>
                </div>

                <div class="content__text section__mgb--sm">
                    <h3>Как воспользоваться скидкой</h3>
                    <p>Все скидки хранятся в личном кабинете. Чтобы воспользоваться скидкой, необходимо назвать ее менеджеру при записи на курс.</p>
                </div>

                <div class="sale__item sale__item-head">
                    <div class="sale__item-wrap section__lr">
                        <div class="sale__item-col sale__item-photo"></div>
                        <div class="sale__item-col sale__item-info"></div>
                        <div class="sale__item-col sale__item-dop">
                            <div class="sale__item-col sale__item-numb sale__item-lhead">Скидка</div>
                            <div class="sale__item-col sale__item-code sale__item-lhead">Промокод</div>
                            <div class="sale__item-col sale__item-date sale__item-lhead">срок действия</div>
                        </div>
                        <div class="sale__item-col sale__item-remove"></div>
                    </div>
                </div>
                {'PromoCode' | snippet}
                <div id="pdopage">
                    <div class="rows">
                        {'!pdoPage' | snippet :[
                            'showLog'=>0,
                            'parents'=>85,
                            'class'=>'modResource',
                            'limit'=>5,
                            'tvPrefix'=>'',
                            'loadModels'=>'promocode',
                            'innerJoin'=>[
                                'PromoCodeItem'=>[
                                    'class'=>'PromoCodeItem',
                                    'on'=>'modResource.id = PromoCodeItem.groupId and PromoCodeItem.userId='~$user_id,
                                ],
                            ],
                            'leftJoin'=>[
                                'TVcourse_owner'=>[
                                    'class'=>'modTemplateVarResource',
                                    'on'=>'TVcourse_owner.contentid = modResource.id and TVcourse_owner.tmplvarid = 32',
                                ],
                                'modUserProfile'=>[
                                    'class'=>'modUserProfile',
                                    'on'=>'modUserProfile.internalKey = TVcourse_owner.value',
                                ],
                            ],
                            'select'=>[
                                'PromoCodeItem'=>'*',
                                'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                'modUserProfile'=>'modUserProfile.website,modUserProfile.photo',
                                'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_city`',
                            ],
                            'sortby'=>[
                                'PromoCodeItem.id'=>'DESC',
                            ],
                            'includeTVs'=>'form_of_study,course_city,sale,data_from',
                            'tpl'=>'@INLINE
                                <div class="sale__item">
                                    <div class="lk__wraplr sale__item-wrap section__lr">
                                        <div class="sale__item-col sale__item-photo">
                                            {set $course_address = $_modx->runSnippet("pdoField", ["field" => "course_address", "id"=>$res_id])}
                                            {set $course_owner = $_modx->runSnippet("pdoField", ["field" => "course_owner", "id"=>$res_id])}
                                            {set $addr = $_modx->runSnippet("getListCities", ["name"=>"address", "uid"=>$course_address, "arr"=>1, "index"=>1])}
                                            {include "file:chunks/courses/courses.block.photo.tpl" user_id=$course_owner}
                                        </div>
                                        <div class="sale__item-col sale__item-info">
                                            <h3 class="sale__item-title"><a href="{$res_id | url}">{$pagetitle}-{$course_owner}</a></h3>
                                            <ul class="sale__item-list listinf">
                                                <li class="sale__item-training online">{if $form_of_study==\'offline\'}Офлайн{else}Онлайн{/if}-обучение</li>
                                                {if $course_address && $addr[$course_address]}    
                                                <li class="listinf__flex">
                                                    <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                                                    <div class="listinf__str">{$addr[$course_address]}</div>
                                                </li>
                                                {/if}
                                                
                                                {if $course_address}
                                                {set $a =  $modx->runSnippet("getListCities", ["name"=>"city,district,metro", "uid"=>$course_address, "arr"=>1, "index"=>1])}
                                                {set $city_lat = ($res_id | resource: "course_city")}
                                                {set $region_lat = ($res_id | resource: "course_region")}
                                                {set $metro_lat = ($res_id | resource: "course_metro")}
                                                
                                                {set $city = $_modx->runSnippet("getListCities", ["name" => "city", "arr"=>1])}
                                                {set $region = $_modx->runSnippet("getListCities", ["name" => "districts", "arr"=>1, "city"=>$city[$city_lat]])}
                                                {set $metro = $_modx->runSnippet("getListCities", ["name" => "metro", "arr"=>1])}
                                            
                                                <li class="listinf__flex">
                                                    <div class="listinf__icon"><img src="/assets/images/icons/location.svg" alt=""></div> 
                                                    <div class="listinf__str">{$course_address}{if $.php.is_array($city) && $city[$city_lat]}г. {$city[$city_lat]}{/if}{if $.php.is_array($region) && $region[$region_lat]}, район
                                                        {$region[$region_lat]}{/if}{if $.php.is_array($metro) && $metro[$metro_lat]}, метро {$metro[$metro_lat]}{/if}
                                                        {if !$city[$city_lat] && !$region[$region_lat] && $metro[$metro_lat]}
                                                            {$course_address}
                                                        {/if}
                                                    </div>
                                                </li>                                                
                                                {/if}                    
                                                
                                                {if $website}
                                                <li>
                                                    <a href="{$website}" class="listinf__flex">
                                                        <div class="listinf__icon"><img src="/assets/images/icons/global.svg" alt=""></div>
                                                        <div class="listinf__str">{$website}</div>
                                                    </a>    
                                                </li>
                                                {/if}
                                            </ul>
                                        </div>
                                        <div class="sale__item-col sale__item-dop">
                                            <div class="sale__item-col sale__item-numb">
                                                <div class="sale__item-label">Скидка</div>
                                                {$sale} руб.
                                            </div>
                                            <div class="sale__item-col sale__item-code">
                                                <div class="sale__item-label">Промокод</div>
                                                {if $active and empty($deleted)}
                                                    {$code}
                                                {else}
                                                    Отменен
                                                {/if}
                                            </div>
                                            <div class="sale__item-col sale__item-date">
                                                <div class="sale__item-label">Срок действия</div>
                                                {set $created_timestamp = $created | date : "Y-m-d" |strtotime}
                                                {set $data_to = $.php.strtotime("+28 days", $created_timestamp)}
                                                до {$data_to | date : "d.m.Y"}
                                            </div>
                                        </div>
                                        {if $active and empty($deal) and empty($deleted)}
                                            <div class="sale__item-col sale__item-remove">
                                                <a href="" class="a-promocode-remove" data-id="{$id}">
                                                    <img src="/assets/images/icons/remove.svg" alt="">
                                                </a>
                                            </div>
                                        {else}
                                            <div class="sale__item-col sale__item-remove">
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                            '
                        ]?:'<p class="section__intro">Вы еще не получали ни одной скидки</p>'}
                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>

            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}