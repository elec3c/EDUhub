{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk reports section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Отчет</h2>
                </div>
                <div class="lk__nav">
                    {'!pdoMenu' | snippet: [
                        'parents' => '37',
                        'displayStart' => 0,
                        'level' => 1,
                        'limit' => 0,
                        'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
                        'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                        'tplHere' => '@INLINE <li class="active">{$menutitle}</li>'
                    ]}                    
                </div>
                {*include 'file:chunks/lks/lks.report.block.tpl'*}
                {'!schoolLeadReports' | snippet}
            </div>
        </section><!-- lk -->
                
        <div class="popup popup-contacts" data-popup="reports_contacts">
            <div class="popup__content">
                <div class="popup__bg popup-close"></div>
                <div class="popup__container">
                    <a href="#" class="popup__close popup-close">
                        <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>						
                    </a>
                    <div class="popup__body">
                        		
                    </div>
                </div><!--popup__container-->
            </div>
        </div>
        

	</main><!--content__wrapper-->
{/block}