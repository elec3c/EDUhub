<div class="header__category header-category">
	<div class="container">
		<div class="header__category-wrap">
			<div class="header__category-col">
				<div class="header__category-col__name">Языковые курсы</div>
                {'!pdoMenu' | snippet: [
                    'parents' => '10',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
				
				
                {*set $lang_page_id = 10*}					
                {*set $lang_rows = json_decode($lang_page_id | resource : 'courses', true)*}
                {*if $lang_rows*}
                <!--<ul class="header__menu header__category-menu">-->
                {*foreach $lang_rows as $idx => $row}                    
                    {if $row.sectionTitle && $row.sectionAlias}
                    <li><a href="{$lang_page_id | url}?courses={$row.sectionAlias}">{$row.sectionTitle}</a></li>
                    {/if}
                {/foreach*}
                <!--</ul>-->
                {*/if*}
			</div>
			<div class="header__category-col w-2">
				<div class="header__category-col__name">IT курсы</div>
				{'!pdoMenu' | snippet: [
                    'parents' => '11',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
				
                {*set $it_page_id = 11*}					
                {*set $it_rows = json_decode($it_page_id | resource : 'courses', true)*}
                {*if $it_rows*}
                <!--<ul class="header__menu header__category-menu">-->
                {*foreach $it_rows as $idx => $row}                    
                    {if $row.sectionTitle && $row.sectionAlias}
                    <li><a href="{$it_page_id | url}?courses={$row.sectionAlias}">{$row.sectionTitle}</a></li>
                    {/if}
                {/foreach*}
                <!--</ul>-->
                {*/if*}
			</div>
		</div>
	</div>	
</div>