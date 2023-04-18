                        <form action="" method="post" id="office-profile-form-password">
                            <input type="hidden" name="email" value="{$_modx->user.email}" placeholder="{'office_profile_email' | lexicon}" required>
                            <input type="hidden" name="fullname" value="{$_modx->user.fullname}" class="input" placeholder="Наименование организации" required>
                            <input type="hidden" name="username" value="{$_modx->user.username}" class="input" placeholder="Логин" required>
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
                        
                            <button type="submit" class="btn w-all" style="margin-top:10px;">Сохранить</button>
                        </form>