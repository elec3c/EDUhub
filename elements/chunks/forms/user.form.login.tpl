<div id="office-auth-form">
    <form method="post" id="office-auth-login">
      <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
      <input name="controll" class="no-display" type="text">
      <div class="input__row">
        <input type="text" name="username" class="input" placeholder="Логин" id="office-auth-login-username">
      </div>
      <div class="input__row">
        <input type="password" name="password" class="input" placeholder="Пароль" id="office-login-form-password">
        <button class="btn__eye pass-view"></button>
      </div>
      <input type="hidden" name="action" value="auth/formLogin"/>
      <input type="hidden" name="return" value=""/>
      <button class="btn w-all" type="submit">{'office_auth_login_btn' | lexicon}</button>
    </form>
    <div class="auth__remember">
        <a href="" class="link" data-open-popup="password">Не помню пароль</a>
    </div>                      
</div>        
                               