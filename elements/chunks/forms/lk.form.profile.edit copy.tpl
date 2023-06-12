<form action="" method="post" id="office-profile-form" enctype="multipart/form-data">
        <input name="controll" class="no-display" type="text">    
      
            <div class="lk__profile-cols__logo">
                <label class="lk__profile-cols__uploading uploading">
                    <input type="hidden" name="photo" value="{$photo}"/>
                    <input type="file" name="newphoto" id="profile-photo" class="hidden" accept="image/jpg,image/jpeg,image/png"/>
                    <img src="{if $photo}{$photo}{else}/assets/images/load.jpg{/if}" id="profile-user-photo" data-gravatar="/assets/images/load.jpg"/>
                    <span class="uploading__open">Загрузить аватарку</span>
                    <div class="uploading__change">Изменить аватарку</div>
                </label>
                <div style="margin-top:5px;">
                    <a href="#">
                        <label for="profile-photo">&plus; Загрузить аватарку</label>
                    </a>
                </div>
                <div style="margin-top:5px;">
                    <a href="#" id="office-user-photo-remove"{if !$photo} style="display:none;"{/if}>
                        &times; {'office_profile_avatar_remove' | lexicon}
                    </a>
                </div>
            </div>
      
      
        <br>

    
        
        <div class="input__row">
            <input type="text" name="fullname" class="input" value="{$fullname}" placeholder="{'office_profile_fullname' | lexicon} *" maxlength="50" required>
        </div>
        <div class="input__row">
            <input type="email" name="email" name="email" class="input" value="{$email}" placeholder="{'office_profile_email' | lexicon} *" maxlength="50" required>
        </div>
        <div class="input__row">
            <input type="tel" name="mobilephone" class="input phone-mask {if $.php.preg_replace("/[^\+0-9]/", "", $mobilephone) == $.php.preg_replace("/[^\+0-9]/", "", $confirm_phone)}input--confirm phoneConfirmed{/if}" id="mobilephone" placeholder="Телефон" value="{$.php.preg_replace("/[^\+0-9]/", "", $mobilephone)}"  minlength="12" maxlength="17" required>
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
    

{* {if $.php.preg_replace("/[^\+0-9]/", "", $mobilephone) != $.php.preg_replace("/[^\+0-9]/", "", $confirm_phone)}     *}
    <form action="" method="post" id="confirm-phone-form" enctype="multipart/form-data">
        <input type="hidden" name="action" value="checkPhone" >
        <div class="input__row">
            <input type="tel" name="phone" {if $confirm_phone}class="input phone-mask input--confirm"{else}class="input phone-mask"{/if} placeholder="Телефон *" id="confirmPhone" value="{$confirm_phone}" minlength="12" maxlength="17" required>
            <button class="btn btn--purple w-all" style="margin-top:10px;" data-userid="{$_modx->user.id}" id="btnConfirmPhone">Подтвердить телефон</button>
        </div>
    </form>
{* {/if} *}