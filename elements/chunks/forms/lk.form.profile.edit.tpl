
    <form action="" method="post" id="office-profile-form" enctype="multipart/form-data">
        <input name="controll" class="no-display" type="text">    
        <input type="hidden" name="photo" value="{$photo}"/>
        <input type="file" name="newphoto" id="profile-photo" class="hidden"/>
        <div class="form-group row avatar">
            <div class="col-md-10">
                <div class="d-flex align-items-center">
                    <img src="{if $photo?}{$photo}{else}{$gravatar}?s=100{/if}" id="profile-user-photo"
                         class="rounded-circle mr-3" data-gravatar="{$gravatar}?s=100" width="100"/>
                    <div>
                        <div>
                            <a href="#">
                                <label for="profile-photo">&plus; {'office_profile_avatar_select' | lexicon}</label>
                            </a>
                        </div>
                        <div>
                            <a href="#" id="office-user-photo-remove"{if !$photo} style="display:none;"{/if}>
                                &times; {'office_profile_avatar_remove' | lexicon}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        
        <div class="input__row">
            <input type="text" name="fullname" class="input" value="{$fullname}" placeholder="{'office_profile_fullname' | lexicon} *" maxlength="50" required>
        </div>
        <div class="input__row">
            <input type="email" name="email" name="email" class="input" value="{$email}" placeholder="{'office_profile_email' | lexicon} *" maxlength="50" required>
        </div>
        <div class="input__row">
            <input type="tel" name="mobilephone" {if $.php.preg_replace("/[^\+0-9]/", "", $mobilephone) != $.php.preg_replace("/[^\+0-9]/", "", $confirm_phone)}class="input phone-mask"{else}class="input phone-mask input--confirm"{/if} id="mobilephone" placeholder="Телефон" value="{$.php.preg_replace("/[^\+0-9]/", "", $mobilephone)}"  minlength="17" maxlength="17" required>
        </div>
        
        
        <div class="input__row">
            <input type="text" name="telegram" class="input" placeholder="Ник в телеграмме" value="{$telegram}">
        </div>
      
        <button type="submit" class="btn w-all" id="btnProfile">Сохранить</button>
        <br/><br/>
         <div class="input__row input__row--link">
            <a href="{24 | url}" class="link">Вернуться к профилю</a>
        </div>
    </form>   
    

{if $.php.preg_replace("/[^\+0-9]/", "", $mobilephone) != $.php.preg_replace("/[^\+0-9]/", "", $confirm_phone)}    
    <form action="" method="post" id="confirm-phone-form" enctype="multipart/form-data">
        <input type="hidden" name="action" value="checkPhone" 
        <div class="input__row">
            <input type="tel" name="phone" {if $confirm_phone}class="input phone-mask input--confirm"{else}class="input phone-mask"{/if} placeholder="Телефон" id="confirmPhone" value="{$confirm_phone}" minlength="17" maxlength="17" required>
            <button class="btn btn--purple w-all" data-userid="{$_modx->user.id}" id="btnConfirmPhone">Подтвердить телефон</button>
        </div>
    </form>
{/if}
    
    
    

