{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        {insert 'file:chunks/users/user.menu.tpl'}
        <section class="lk balance section__mgb">
            <div class="container">
                <div class="section__head">
                    <div class="lk__nav">
                        {insert 'file:chunks/menu/lkm.menu.tpl'}
                    </div>
                </div>
                <div class="section__head">
                    <h2 class="section__title">
                        {switch $.get.group}
                            {case 'users'}
                            Пользователи
                            {case 'corporate'}
                            Корпоративные пользователи
                            {case 'organization'}
                            Учебные центры
                            {default}
                            Аналитика пользователей
                        {/switch}
                    </h2>
                </div>
                
                {if !($.get.group in ['users', 'organization', 'corporate', 'all'])}
                    {set $users_cnt = '!getUsersData' | snippet: ['group' => 'Users', 'count'=>1]?:0}
                    {set $organization_cnt = '!getUsersData' | snippet: ['group' => 'Organization', 'count'=>1]?:0}
                    {set $corporate_cnt = '!getUsersData' | snippet: ['group' => 'Corporate', 'count'=>1]?:0}
                    {set $all_cnt = $users_cnt + $organization_cnt + $corporate_cnt}
                <div class="balance__wrap">
                    <div class="balance__item">
                        <div class="balance__item-label"><a href="{842 | url}">Пользователи</a></div>
                        <div class="balance__item-val">{$users_cnt}</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label"><a href="{843 | url}">Юридические лица</a></div>
                        <div class="balance__item-val">{$corporate_cnt}</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label"><a href="{844 | url}">Учебные центры</a></div>
                        <div class="balance__item-val">{$organization_cnt}</div>
                    </div>
                    <div class="balance__item">
                        <div class="balance__item-label"><a href="{845 | url}">Все пользователи</a></div>
                        <div class="balance__item-val">{$all_cnt}</div>
                    </div>                    
                </div>
                {else}
                
                <a href="{841 | url}" class="btn btn--more"><span>Назад к аналитике пользователей</span></a>
                <br><br><br>
                
                <div id="pdopage">
                    <div class="rows">
                        {if $.get.group == 'all'}
                        
                        {'!pdoPage' | snippet :[
                            'showLog'=>0,
                            'element'=>'pdoUsers',
                            'limit'=>5,
                            'groups'=>'Users,Corporate,Organization',
                            'sortby'=>'{"id":"DESC"}',
                            'ajaxMode'=>'scroll',
                            'tvPrefix'=>'',
                            'tpl'=>'@FILE chunks/lkm/lkm.users.all.list.block.tpl',
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}                        
                        
                        {else}
                        
                        {'!pdoPage' | snippet :[
                            'showLog'=>0,
                            'ajaxMode'=>'scroll',
                            'element'=>'pdoUsers',
                            'groups'=>$.php.ucfirst($.get.group),
                            'sortby'=>'{"id":"DESC"}',
                            'limit'=>5,
                            'tvPrefix'=>'',
                            'tpl'=>'@FILE chunks/lkm/lkm.'~$.get.group~'.list.block.tpl'
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}
                        
                        {/if}
                        

                    </div>
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>                
                {/if}                
            </div>

        </section><!-- lk -->
    </main>
    <!--content__wrapper-->
{/block}