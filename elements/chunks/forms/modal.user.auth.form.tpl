        <form method="post" id="office-auth-login">
          <input type="hidden" name="action" value="auth/formLogin">
          <input type="hidden" name="return" value="" />
          <input type="hidden" name="redirect" value="">
          <input name="controll" class="no-display" type="text">
          <div class="input__row">
            <input type="text" name="username" class="input" id="office-login-form-password"
              placeholder="Электронный адрес">
          </div>
          <div class="input__row">
            <input type="password" name="password" class="input" id="office-auth-login-username"
              placeholder="Пароль">
            <button class="btn__eye pass-view"></button>
          </div>
          <button class="btn w-all" type="submit">Войти</button>
        </form>