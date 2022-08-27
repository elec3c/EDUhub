{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">

        {insert 'file:chunks/users/user.menu.tpl'}

        <section class="lk leads section__mgb">
            <div class="container">
                <div class="section__head">
                    <h2 class="section__title">Обратные звонки</h2>
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
                
                {'!callList' | snippet: [
                    'school_id' => $_modx->user.id,
                    'tpl' => '@FILE chunks/call/call.block.tpl',
                ]}   
                
            </div>
        </section><!-- lk -->


        

	</main><!--content__wrapper-->
{/block}
