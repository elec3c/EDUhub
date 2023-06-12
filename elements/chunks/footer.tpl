{set $contact_page_id = 13}
{set $email = ($contact_page_id | resource : 'email')}    
{set $phone = ($contact_page_id | resource : 'phone')}
{set $address = ($contact_page_id | resource : 'address')}
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
            <div class="footer__info-row"><a href="mailto:{$email}">{$email}</a></div>
            <div class="footer__info-row footer__info-label">Телефон</div>
            <div class="footer__info-row"><a href="tel:{$phone | clearphone}">{$phone}</a></div>
            <div class="footer__info-row footer__info-label">Главный офис</div>
            <div class="footer__info-row">{$address}</div>
          </div>
        </div>
      </div>
      <div class="footer__col footer__col--right">
        {*<button class="btn w-all" data-open-popup="call">Заказать звонок</button>*}
      </div>
    </div>

    <div class="footer__bottom">
      <div class="footer__wrap ">
        <div class="footer__col footer__col--left">
          <a href="{8 | url}"   target="blank" class="footer__polit">Политика конфиденциальности</a>
          <a href="{369 | url}" target="blank" class="footer__polit">Публичная оферта</a>
          <a href="{370 | url}" target="blank" class="footer__polit">Пользовательское соглашение</a>
          <br>
          <a href="{494 | url}" target="blank" class="footer__polit">Тарифы (для учебных центров)</a>
        </div>

        <div class="footer__col footer__col--center">
          <div class="footer__sname">Дизайн, разработка и продвижение: <a href="http://k2studio.pro/">K2STUDIO</a></div>
        </div>

        <div class="footer__col footer__col--right">
          <div class="footer__copy">Copyright &copy; {'' | date: 'Y'} {$_modx->config.site_name}</div>
        </div>
      </div>
    </div>
  </div>
</footer>