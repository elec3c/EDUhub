{set $isManagerOK = ($_modx->user.id | ismember : ['Managers'])}
{if $isManagerOK}
    {set $user_id = ($.get.user_id > 0) ? $.get.user_id : 0}
    {set $photo = ($user_id > 0) ? ($user_id | user:'photo') : $photo}
    {set $fullname = ($user_id > 0) ? ($user_id | user:'fullname') : $fullname}
    {set $email = ($user_id > 0) ? ($user_id | user:'email') : $email}
    {set $mobilephone = ($user_id > 0) ? ($user_id | user:'mobilephone') : $mobilephone}
    {set $telegram = ($user_id > 0) ? ($user_id | user:'telegram') : $telegram}
{else}
    {set $user_id = 0}
{/if}

<form action="" method="post" id="office-profile-form" enctype="multipart/form-data">
        <input name="controll" class="no-display" type="text">    
      
            <div class="lk__profile-cols__logo">
                <label class="lk__profile-cols__uploading uploading">
                    <input type="hidden" name="photo" value="{$photo}" {if $isManagerOK}disabled{/if}/>
                    <input type="file" name="newphoto" id="profile-photo" class="hidden" accept="image/jpg,image/jpeg,image/png" {if $isManagerOK}disabled{/if}/>
                    <img src="{if $photo}{$photo}{else}/assets/images/load.jpg{/if}" id="profile-user-photo" data-gravatar="/assets/images/load.jpg"/>
                    <span class="uploading__open">Загрузить аватарку</span>
                    <div class="uploading__change">Изменить аватарку</div>
                </label>
                {if !$isManagerOK}                
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
                {/if}
            </div>
        <br>
        <div class="input__row">
            <input type="text" name="fullname" class="input" value="{$fullname}" placeholder="{'office_profile_fullname' | lexicon} *" maxlength="50" required {if $isManagerOK}disabled{/if}>
        </div>
        <div class="input__row">
            <input type="email" name="email" name="email" class="input" value="{$email}" placeholder="{'office_profile_email' | lexicon} *" maxlength="50" required {if $isManagerOK}disabled{/if}>
        </div>
        
        <div class="input__row">
            <input type="tel" itemid="mobilephone" name="mobilephone" class="input phone-mask {if $.php.preg_replace("/[^\+0-9]/", "", $mobilephone) == $.php.preg_replace("/[^\+0-9]/", "", $phone)}input--confirm {/if}" id="mobilephone" placeholder="Телефон" value="{$.php.preg_replace("/[^\+0-9]/", "", $mobilephone)}"  minlength="12" maxlength="17" required {if $isManagerOK}disabled{/if}>
            {if !$isManagerOK}
            <button class="btn btn--purple w-all" style="margin-top:10px; {if $.php.preg_replace("/[^\+0-9]/", "", $mobilephone) == $.php.preg_replace("/[^\+0-9]/", "", $phone)} display:none; {/if}" data-userid="{$_modx->user.id}" id="btnConfirmPhone">Подтвердить телефон</button>
            {/if}
        </div>

        
        
        {* <div class="input__row">
            <input type="text" name="telegram" class="input" placeholder="Ник в телеграмме" value="{$telegram}">
        </div> *}
        {if !$isManagerOK}      
        <button type="submit" class="btn w-all" id="btnProfile">Сохранить</button>
        <br/><br/>
         <div class="input__row input__row--link">
            <a href="{24 | url}" class="link">Вернуться к профилю</a>
        </div>
        {/if}
    </form>   
    

