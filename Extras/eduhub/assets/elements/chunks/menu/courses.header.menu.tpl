<div class="header__category header-category">
	<div class="container">
		<div class="header__category-wrap">
{if 'standard' | mobiledetect}		    

			<div class="header__category-col">
				{'!pdoMenu' | snippet: [
                    'parents' => '85',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE {$wrapper}',
                    'tpl' => '@INLINE <div class="header__category-col__name"><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></div>',
                    'tplHere' => '@INLINE <div class="header__category-col__name"><span>{$menutitle}</span></div>'
                ]}
				
			</div>
			
			{*<div class="header__category-col">
				<div class="header__category-col__name"><a href="{10 | url}">Языковые курсы</a></div>
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
			<div class="header__category-col w-1">
				<div class="header__category-col__name"><a href="{11 | url}">IT курсы</a></div>
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
			<div class="header__category-col w-2">
				<div class="header__category-col__name"><a href="{520 | url}">Маркетинг</a></div>
				{'!pdoMenu' | snippet: [
                    'parents' => '520',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
			</div>			

			<div class="header__category-col w-1">
				<div class="header__category-col__name"><a href="{524 | url}">Продажи</a></div>
				{'!pdoMenu' | snippet: [
                    'parents' => '524',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
			</div>
			<div class="header__category-col w-1">
				<div class="header__category-col__name"><a href="{522 | url}">Финансы</a></div>
				{'!pdoMenu' | snippet: [
                    'parents' => '522',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
			</div>
			<div class="header__category-col w-1">
				<div class="header__category-col__name"><a href="{523 | url}">Управление персоналом</a></div>
				{'!pdoMenu' | snippet: [
                    'parents' => '523',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
			</div>
			<div class="header__category-col w-1">
				<div class="header__category-col__name"><a href="{623 | url}">Дизайн и графика</a></div>
				{'!pdoMenu' | snippet: [
                    'parents' => '623',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE <ul class="header__menu header__category-menu">{$wrapper}</ul>',
                    'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
                    'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>'
                ]}				
			</div>	*}		
			
{else}

			<div class="header__category-col">
				{'!pdoMenu' | snippet: [
                    'parents' => '85',
                    'displayStart' => 0,
                    'level' => 0,
                    'showHidden' => 1,
                    'tplOuter' => '@INLINE {$wrapper}',
                    'tpl' => '@INLINE <div class="header__category-col__name"><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></div>',
                    'tplHere' => '@INLINE <div class="header__category-col__name"><span>{$menutitle}</span></div>'
                ]}
				
			</div>
{/if}
		</div>
	</div>	
</div>