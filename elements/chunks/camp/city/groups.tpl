        
        <section class="cmp_address section__mg js-tabs" data-level="0">
            <div class="container">
                {if $_modx->resource.camp_group}
                    {set $rows = json_decode($_modx->resource.camp_group, true)}
                    
                    {foreach $rows as $idx => $row}
                        {set $date_unique = strtotime($row.date_from)~'_'~strtotime($row.date_to)}
                        {set $group_name = $row.name}
                        
                        {set $G[$row.address][$date_unique][$group_name]['address'] = 'Адрес '~$row.address}
                        {set $G[$row.address][$date_unique][$group_name]['name'] = $row.name}
                        {set $G[$row.address][$date_unique][$group_name]['cabinet'] = $row.cabinet}
                        {set $G[$row.address][$date_unique][$group_name]['shift'] = $row.shift}
                        {set $G[$row.address][$date_unique][$group_name]['count'] = $row.count}
                        {set $G[$row.address][$date_unique][$group_name]['date_from'] = $row.date_from}
                        {set $G[$row.address][$date_unique][$group_name]['date_to'] = $row.date_to}
                        {set $G[$row.address][$date_unique][$group_name]['age_from'] = $row.age_from}
                        {set $G[$row.address][$date_unique][$group_name]['age_to'] = $row.age_to}
                        {set $G[$row.address][$date_unique][$group_name]['time_from'] = strtotime($row.date_from)}
                        {set $G[$row.address][$date_unique][$group_name]['time_to'] = strtotime($row.date_to)}
                        
                    {/foreach}
                {else}    
                Нет групп!
                {/if}
                
                <div class="cmp_address__navaddr js-nav">
                    {if $G}
                        {set $n = 0}
                        {foreach $G as $address_id => $data}                    
                            <a href="#" class="cmp_address__navaddr-item {if $n == 0}active{/if} js-nav-link" data-tab="{$n}">Адрес {$address_id}</a>
                            {*set $GROUP = $data*}
                            {set $n = $n + 1}
                        {/foreach}
                    {/if}
                </div>
                
                {if $G}
                {set $n = 0}
                {foreach $G as $address_id => $date_list}
                    <div class="section__tab {if $n == 0}show active{/if} js-tabs-content js-tabs" data-tab="{$n}" data-tab-level="0">
                    
                    <div class="cmp_address__nav js-nav">
                        {set $f = 1}
                        {foreach $date_list as $date_unique => $v}
                            {set $d = explode('_',$date_unique)}
                            <a href="#" class="cmp_address__nav-item {if $f==1}active{/if} js-nav-link" data-tab="{$date_unique}">{date($d[0], 'd.m.Y')~'-'~date($d[1], 'd.m.Y')}</a>
                            {set $f = 0}
                        {/foreach}
                    </div>
                    
                    {set $f = 1}
                    {foreach $date_list as $date_unique => $GROUP}
                        <div class="section__tab {if $f==1}show active{/if} js-tabs-content" data-tab="{$date_unique}">
                            <div class="cmp_address__items">
                                
                                {foreach $GROUP as $name => $v}            
                                    <div class="cmp_address__item">
                                    <div class="cmp_address__item-info">
                                        <div class="cmp_address__item-head">
                                            <div class="cmp_address__item-title">{$name}</div>
                                            <div class="cmp_address__item-subtitle">{$v['age_from']} - {$v['age_to']} лет</div>
                                        </div>
        
                                        <div class="cmp_address__item-row">
                                            <div class="cmp_address__item-row__label">Всего мест</div>
                                            <div class="cmp_address__item-row__val">{$v['count']}</div>
                                        </div>
                                        <div class="cmp_address__item-row">
                                            <div class="cmp_address__item-row__label">Занято мест </div>
                                            <div class="cmp_address__item-row__val">10</div>
                                        </div>
                                        <a href="#" class="cmp_address__item-rshow js-cmp-address-item-ageshow"><span class="t_opened">Показать</span><span class="t_closed">Свернуть</span></a>
                                        <div class="cmp_address__item-ages clearfix js-cmp-address-item-age">
                                            <div class="cmp_address__item-ages__col">
                                                <div class="cmp_address__item-ages__label l-w">девочки</div>
                                                <div class="cmp_address__item-ages__list">
                                                    <ul>
                                                        <li>7 лет</li>
                                                        <li>8 лет</li>
                                                        <li>9 лет</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="cmp_address__item-ages__col">
                                                <div class="cmp_address__item-ages__label">мальчики</div>
                                                <div class="cmp_address__item-ages__list">
                                                    <ul>
                                                        <li>7 лет</li>
                                                        <li>8 лет</li>
                                                        <li>9 лет</li>
                                                        <li>10 лет</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cmp_address__item-row">
                                            <div class="cmp_address__item-row__label">Свободно мест</div>
                                            <div class="cmp_address__item-row__val">0</div>
                                        </div>
        
                                        <div class="cmp_address__item-row"><span>Стоимость до 01.02.2024</span></div>
                                        <div class="cmp_address__item-prices">
                                            <div class="cmp_address__item-prices__old">600</div>
                                            <div class="cmp_address__item-prices__current">350</div>
                                        </div>
                                    </div>
                                    <div class="cmp_address__item-buttons">
                                        <button class="btn btn--bdpurple btn--sm">Сообщить о свободных местах</button>
                                    </div>
                                </div><!--cmp_address__item-->
                                {/foreach}

                            </div>
                        </div><!--section__tab-->
                        {set $f = 0}
                    {/foreach}

                </div>    
                    {set $n = $n + 1}
                {/foreach}
                {/if}
            </div>
            
        </section><!--  -->