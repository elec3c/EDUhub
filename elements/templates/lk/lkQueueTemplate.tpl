{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
<main class="content__wrapper">
    {insert 'file:chunks/users/user.menu.tpl'}
    <section class="lk queue section__mgb">
        <div class="container">
            <div class="section__head">
                <h2 class="section__title">Мои запросы</h2>
            </div>
            <div class="content__text section__mgb--sm">
                <h3>Как воспользоваться запросом</h3>
                <p>Все запросы хранятся в личном кабинете.</p>
            </div>

            <div id="pdopage">        
                <div class="rows">  
                
                
                {'!pdoPage' | snippet :[
                    'ajaxMode'=>'default',
                    'limit'=>10,
                    'class'=>'EduQueue',
                    'tvPrefix'=>'',
                    'loadModels'=>'queue',
                    'sortby'=>[
                        'EduQueue.id'=>'DESC',
                    ],
                    'where' => '{"user_id":'~$user_id~'}',
                    'tpl'=>'@INLINE
                    
                            <div class="cglistener__row">
                                <div class="cglistener__col cglistener__col--number"><div class="cglistener__label show-tablet-sm">Номер</div>{$idx}</div>
                                <div class="cglistener__col"><div class="cglistener__label show-tablet">Дата внесения</div>{$date | date : "d.m.Y"}</div>
                                <div class="cglistener__col"><div class="cglistener__label show-tablet">Запрос</div>

                                    {set $query = $.php.base64_decode($queue)}
                                    <a href="{$_modx->makeUrl(18)}?{$query}">
                                        {set $parseQuery = \'!parseGetQuery\' | snippet :[\'getQuery\'=>$query]}
                                        
                                        {set $A = \'!Unserialize\' | snippet :[\'str\'=>$query]}
                                        
                                        {set $i = 0}
                                        
                                        {set $city_lat = $A["course_city"]}
                                        {set $region_lat = $A["course_region"]}
                                        {set $metro_lat = $A["course_metro"]}
                                        
                                        {set $city = $_modx->runSnippet("getListCities", ["name" => "city", "arr"=>1])}
                                        {set $region = $_modx->runSnippet("getListCities", ["name" => "districts", "arr"=>1, "city"=>$city[$city_lat]])}
                                        {set $metro = $_modx->runSnippet("getListCities", ["name" => "metro", "arr"=>1])}                                        

                                        
                                        {foreach $parseQuery as $k=>$v}
                                           {set $i = $i + 1}
                                           
                                           <b>{$k}:</b> {$v}{if count($parseQuery) != $i},{else}.{/if}
                                           
                                        {/foreach}
                                        
                                
                                        {if $city[$city_lat]}
                                            , <b>Город:</b> {$city[$city_lat]}
                                        {/if}
                                        {if $region[$region_lat]}
                                            , <b>Регион:</b> {$region[$region_lat]}
                                            
                                        {/if}
                                        {if $metro[$metro_lat]}
                                            , <b>Метро:</b> {$metro[$metro_lat]}
                                        {/if}   
                                        
                                        

                                        
                                    </a>
                                    <br>
                                        {set $detail = json_decode(base64_decode($detail))}
                                        {set $time_from = $detail["time_from"]}
                                        {set $time_to = $detail["time_to"]}
                                        {set $days = $detail["days"]}
                                        {implode(", ",$days)}<br>{if $time_from} с {$time_from}{/if}{if $time_to} до {$time_to}{/if}                                    
                                    
                                </div>
                                <div class="cglistener__col cglistener__col--action">
                                    {*<a href="" class="cglistener-edit">
                                        <img src="assets/images/icons/edit-purple.svg" alt="Edit">
                                    </a>*}
                                    <a href="{$_modx->makeUrl(505)}?delete={$id}" class="cglistener-remove">
                                        <img src="assets/images/icons/remove.svg" alt="Remove">
                                    </a>
                                </div>
                            </div>                    
                    
                    ',
                    'tplWrapper'=>'@INLINE 
            			<div class="cgcourse rollup-box">
                            <div class="cglistener rollup-box">
                                <div class="rollup-tab">
                                    <div class="cglistener__table">
                                        <div class="cglistener__row cglistener__row--head">
                                            <div class="cglistener__col cglistener__col--number cglistener__label">Номер</div>
                                            <div class="cglistener__col cglistener__label">Дата внесения</div>
                                            <div class="cglistener__col cglistener__label">Запрос</div>
                                            <div class="cglistener__col cglistener__col--action"></div>
                                        </div>
                                        {$output}            
                                    </div>
                                </div>
                            </div>
                        </div>                                
                    '
                ]?:'<p class="section__intro">Вы еще не добавляли ни одного запроса о появления нужного курса</p>'}
            </div>
            <div class="section__buttons">
                {'page.nav' | placeholder}
            </div>
        </div>
    </section><!-- lk -->
</main><!--content__wrapper-->
{/block}