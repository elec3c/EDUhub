{set $isManagerOK = ($_modx->user.id | ismember : ['Managers'])}
{if $isManagerOK}
    {set $user_id = ($.get.user_id > 0) ? $.get.user_id : 0}
    {set $photo = ($user_id > 0) ? ($user_id | user:'photo') : $photo}
    {set $fullname = ($user_id > 0) ? ($user_id | user:'fullname') : $fullname}
    {set $email = ($user_id > 0) ? ($user_id | user:'email') : $email}
    {set $mobilephone = ($user_id > 0) ? ($user_id | user:'mobilephone') : $mobilephone}
    {set $website = ($user_id > 0) ? ($user_id | user:'website') : $website}
    {set $city = ($user_id > 0) ? ($user_id | user:'city') : $city}
    
    {set $ooo = ($user_id > 0) ? ($user_id | user:'ooo') : $ooo}
    {set $unp = ($user_id > 0) ? ($user_id | user:'unp') : $unp}
    {set $bik = ($user_id > 0) ? ($user_id | user:'bik') : $bik}
    {set $rs = ($user_id > 0) ? ($user_id | user:'rs') : $rs}
    {set $bank = ($user_id > 0) ? ($user_id | user:'bank') : $bank}
    {set $addr_bank = ($user_id > 0) ? ($user_id | user:'addr_bank') : $addr_bank}
{else}
    {set $user_id = 0}
{/if}

<div class="lk__profile-form">
    <div class="form__title lk__profile-title">Личные данные</div>
    <form action="" method="post" enctype="multipart/form-data" id="office-profile-form">
        <input name="controll" class="no-display" type="text"> 
        <div class="lk__profile-cols">
            <div class="lk__profile-cols__inputs">
                <div class="lk__profile-cols__left">
                    <div class="input__row">
                        <input type="text" name="fullname" value="{$fullname}" class="input" placeholder="Бренд *" maxlength="50" required {if $isManagerOK}disabled{/if}/> 
                        <div class="tool-tip slideIn bottom">Бренд *</div>
                    </div>                     
                    <div class="input__row">
                        <input type="text" name="website" value="{$website}" class="input" placeholder="Адрес сайта">
                        <div class="tool-tip slideIn bottom">Адрес сайта</div>
                    </div>  
                    <div class="input__row">
                        <input type="email" name="email" value="{$email}" class="input" placeholder="Электронная почта *" maxlength="50" required {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">Электронная почта *</div>
                    </div>    
                    <div class="input__row">
                        <input type="tel" name="mobilephone" class="input phone-mask" id="mobilephone" placeholder="Телефон *" value="{$mobilephone}"  minlength="12" maxlength="17" required {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">Телефон *</div>
                    </div>
                    <div class="input__row">
                        <input type="text" name="city" value="{$city}" class="input" placeholder="Юридический адрес школы *" required {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">Юридический адрес школы *</div>
                    </div>   
                </div>
                
                <div class="lk__profile-cols__right">
                    <div class="input__row">
                        <input type="text" name="ooo" value="{$ooo}" class="input" placeholder="Наименование организации *" maxlength="70" required {if $isManagerOK}disabled{/if}/> 
                        <div class="tool-tip slideIn bottom">Наименование организации *</div>
                    </div>                                      
                    <div class="input__row">
                        <input type="text" name="unp" value="{$unp}" id="unp" class="input" placeholder="УНП" {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">УНП</div>
                    </div>  
                    <div class="input__row">
                        <input type="text" name="bik" value="{$bik}" class="input" placeholder="БИК" {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">БИК</div>
                    </div>  
                    <div class="input__row">
                        <input type="text" name="rs" value="{$rs}" class="input" placeholder="Р/с" {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">Р/с</div>
                    </div>  
                    <div class="input__row">
                        <input type="text" name="bank" value="{$bank}" class="input" placeholder="Наименование банка" {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">Наименование банка</div>
                    </div>  
                    <div class="input__row">
                        <input type="text" name="addr_bank" value="{$addr_bank}" class="input" placeholder="Адрес банка" {if $isManagerOK}disabled{/if}/>
                        <div class="tool-tip slideIn bottom">Адрес банка</div>
                    </div>  
                </div>
            </div>
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

            <div class="lk__profile-cols__desc">
                <textarea name="desc" placeholder="Описание компании" class="input" {if $isManagerOK}disabled{/if}>{$desc}</textarea>
            </div>
            {if !$isManagerOK}
            <div class="lk__profile-cols__btn">
                <button type="submit" class="btn w-all" id="btnProfile">Сохранить</button>
            </div>
            {/if}
        </div>


        
    </form>
</div>