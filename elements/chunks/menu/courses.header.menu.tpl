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
			</div>
		</div>
	</div>	
</div>