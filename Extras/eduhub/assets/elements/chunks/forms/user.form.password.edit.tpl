<form action="" method="post" id="office-profile-form">
    <input type="hidden" name="email" value="{$email}" placeholder="{'office_profile_email' | lexicon}"/>
    <div class="input__row">
        <input type="password" class="input" name="specifiedpassword" value="" placeholder="Новый пароль" class="form-control"/>
        <button class="btn__eye pass-view"></button>
        <div class="help-block message">{$error_specifiedpassword}</div>
    </div>            
    
    <div class="input__row">            
        <input type="password" class="input" name="confirmpassword" value="" placeholder="Повторите новый пароль" class="form-control"/>
        <button class="btn__eye pass-view"></button>
        <div class="help-block message">{$error_confirmpassword}</div>
    </div>            

    <button type="submit" class="btn w-all">Сохранить</button>
</form>
  
