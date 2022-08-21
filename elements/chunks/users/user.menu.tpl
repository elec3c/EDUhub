<div class="lknav">
  <div class="container">
    <div class="lknav__list lknav__list--mw">
      <ul>
        {if $_modx->resource.parent in ["23","30"]}
          {set $parentMenu = $_modx->resource.parent}
        {else}
          {set $parentMenu = $_modx->resource.parent | resource : 'parent'}
        {/if}
        {'!pdoMenu' | snippet: [
        'parents' => $parentMenu,
        'prefix' => '',
        'displayStart' => 0,
        'showUnpublished' => 1,
        'includeTVs' => 'menu_img,menu_img_active',
        'level' => 2,
        'tplOuter' => '@INLINE {$wrapper}',
        'tpl' => '@INLINE {if $_modx->resource.parent == $id}<li class="active"><a href="{$link}"
            class="lknav__list-item">
            <img src="/assets/images/{$menu_img_active}" alt="{$menutitle}">
            <span>{$menutitle}</span>
          </a></li>
        {else}
        <li><a href="{$link}" class="lknav__list-item">
            <img src="/assets/images/{$menu_img}" alt="{$menutitle}">
            <span>{$menutitle}</span>
          </a></li>


        {/if}',

        'tplHere' => '@INLINE <li class="active"><a href="{$link}" class="lknav__list-item">
            <img src="/assets/images/{$menu_img_active}" alt="{$menutitle}">
            <span>{$menutitle}</span>
          </a></li>'
        ]}



        <li class="lknav__list-exit">
          <a href="/?action=auth/logout" class="lknav__list-item">
            <svg width="60" height="56" viewBox="0 0 60 56" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
                d="M26.8999 23.5602C27.2099 19.9602 29.0599 18.4902 33.1099 18.4902H33.2399C37.7099 18.4902 39.4999 20.2802 39.4999 24.7502V31.2702C39.4999 35.7402 37.7099 37.5302 33.2399 37.5302H33.1099C29.0899 37.5302 27.2399 36.0802 26.9099 32.5402"
                stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
              </path>
              <path d="M33.0001 28H21.6201" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round"
                stroke-linejoin="round"></path>
              <path d="M23.85 24.6499L20.5 27.9999L23.85 31.3499" stroke="#7D7D7D" stroke-width="1.5"
                stroke-linecap="round" stroke-linejoin="round"></path>
              <rect x="0.75" y="0.75" width="58.5" height="54.5" rx="9.25" stroke="#7D7D7D" stroke-width="1.5"></rect>
            </svg>
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>