    <header class="header">
    	<div class="container">
    		<div class="header__wrap">

    			<div class="header__logo">
    				{if $_modx->resource.id != 1}
	    				<a href="/"><img src="/assets/images/logo.svg" alt=""></a>
    				{else}
	    				<img src="/assets/images/logo.svg" alt="">
    				{/if}
    			</div>

    			<a href="#" class="header__linkcat open-category">
    				<span class="hide-tablet-sm">Категории курсов</span>
    				<span class="show-tablet-sm">Курсы</span>
    				<svg class="icon-open" width="10" height="6" viewBox="0 0 10 6" fill="none"
    					xmlns="http://www.w3.org/2000/svg">
    					<path d="M0.75 0.75L5 5.25L9.25 0.75" stroke="#19191B" stroke-width="1.5" stroke-linecap="round"
    						stroke-linejoin="round" />
    				</svg>

    				<svg class="icon-close" width="11" height="11" viewBox="0 0 11 11" fill="none"
    					xmlns="http://www.w3.org/2000/svg">
    					<path d="M1 1L5.25 5.5L9.5 1" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"
    						stroke-linejoin="round" />
    					<path d="M9.5 9.75L5.25 5.25L1 9.75" stroke="#9D68F8" stroke-width="1.5" stroke-linecap="round"
    						stroke-linejoin="round" />
    				</svg>
    			</a>


    			{include 'file:chunks/search/search.bar.tpl'}
    			{'!officeAuth' | snippet : ['HybridAuth'=>0,'tplLogin'=>'my.tpl.Office.auth.login','tplLogout'=>'my.tpl.Office.auth.logout']}
    			{if !('' | isloggedin : 'web')}
	    			<a href="#" class="btn btn--purple header__btn hide-tablet-sm" data-open-popup="auth_course">Добавить курс</a>
    			{/if}
					{if $_modx->user.urlico && ('' | isloggedin : 'web')}
						<a href="{$_modx->makeUrl(39)}" class="btn btn--purple header__btn hide-tablet-sm">Добавить курс</a>
					{/if}
    			<a href="#" class="header__burger" id="menu_toggler">
    				<svg width="26" height="18" viewBox="0 0 26 18" fill="none" xmlns="http://www.w3.org/2000/svg">
    					<path d="M1 1H25" stroke="#19191B" stroke-width="2" stroke-linecap="round" />
    					<path d="M1 9H25" stroke="#19191B" stroke-width="2" stroke-linecap="round" />
    					<path d="M1 17H25" stroke="#19191B" stroke-width="2" stroke-linecap="round" />
    				</svg>
    			</a>
    			<!-- <li class=""><a href="works.html">Фото работ</a></li> -->

    		</div>
    	</div>

    	<div class="header__navfix header-navfix">
    		<div class="container">
    			<div class="header__navfix-wrap">
    				<div class="header__navfix-col header__navfix-col--left">
    					{if $_modx->resource.id != 1}
	    					<div class="header__logo"><a href="/"><img src="/assets/images/logo.svg" alt=""></a></div>
    					{else}
	    					<div class="header__logo"><img src="/assets/images/logo.svg" alt=""></div>
    					{/if}
    				</div>


    				<div class="header__navfix-col header__navfix-col--center">
    					<div class="header__navfix-gmi">
    						{include 'file:chunks/menu/header.menu.tpl'}
    						{include 'file:chunks/header.contact.tpl'}
    					</div>
    				</div>
    				<div class="header__navfix-col header__navfix-col--right">
    					<button class="btn w-all" data-open-popup="call">Заказать звонок</button>
    					{if !('' | isloggedin : 'web')}
	    					<a href="" class="btn btn--purple w-all show-tablet-sm" data-open-popup="auth_course">Добавить курс</a>
	    					{*'!getComparison' | snippet: ['list' => 'courses']*}
    					{/if}
							{if $_modx->user.urlico && ('' | isloggedin : 'web')}
								<a href="{$_modx->makeUrl(39)}" class="btn btn--purple w-all show-tablet-sm">Добавить курс</a>
							{/if}
    				</div>
    				<div class="header__navfix-col header__navfix-col--close">
    					<a href="#" class="header__navfix-close close-menu"></a>
    				</div>
    			</div>
    		</div>
    	</div>

    	{include 'file:chunks/menu/courses.header.menu.tpl'}

</header>