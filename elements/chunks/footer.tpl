<footer class="footer">
  <div class="container">
    <div class="footer__wrap footer__top">
      <div class="footer__col footer__col--left">

        <div class="footer__logo"><img src="assets/images/logo-white.svg" alt=""></div>


      </div>
      <div class="footer__col footer__col--center">
        <div class="footer__gmi">
            
            {'!pdoMenu' | snippet: [
               'parents' => '0',
               'displayStart' => 1,
               'level' => 1,
               'limit' => 0,
               'tplOuter' => '@INLINE <ul class="footer__menu">{$wrapper}</ul>',
               'tpl' => '@INLINE <li><a href="{$link}" title="{$menutitle}" {$attributes}>{$menutitle}</a></li>',
               'tplHere' => '@INLINE <li><span>{$menutitle}</span></li>',
           ]}

          <div class="footer__info">
            <div class="footer__info-row footer__info-label">Электронная почта</div>
            <div class="footer__info-row"><a href="mailto:eduhub@gmail.com">eduhub@gmail.com</a></div>
            <div class="footer__info-row footer__info-label">Телефон</div>
            <div class="footer__info-row"><a href="tel:+375296370016">+375 29 637-00-16</a></div>
            <div class="footer__info-row footer__info-label">Главный офис</div>
            <div class="footer__info-row">г. Минск, ул. Карла Маркса, 32</div>
          </div>
        </div>
      </div>
      <div class="footer__col footer__col--right">
        <button class="btn w-all" data-open-popup="call">Заказать звонок</button>
      </div>
    </div>

    <div class="footer__bottom">
      <div class="footer__wrap ">
        <div class="footer__col footer__col--left">
          <a href="" class="footer__polit">Публичная оферта</a>
        </div>

        <div class="footer__col footer__col--center">
          <div class="footer__sname">Дизайн, разработка и продвижение: K2STUDIO</div>
        </div>

        <div class="footer__col footer__col--right">
          <div class="footer__copy">Copyright &copy; {'' | date: 'Y'} {$_modx->config.site_name}</div>
        </div>
      </div>
    </div>
  </div>
</footer>