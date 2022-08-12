
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
            <input type="text" name="username" class="input" value="{$username}" placeholder="{'office_profile_username' | lexicon}"/>
        </div>
        <div class="input__row">
            <input type="text" name="fullname" class="input" value="{$fullname}" placeholder="{'office_profile_fullname' | lexicon}"/>
        </div>
        <div class="input__row">
            <input type="text" name="email" class="input" value="{$email}" placeholder="{'office_profile_email' | lexicon}"/>
        </div>
        <div class="input__row">
            <input type="text" name="mobilephone" class="input" placeholder="Телефон" value="{$mobilephone}"/>
        </div>
        <div class="input__row">
            <input type="text" name="telegram" class="input" placeholder="Ник в телеграмме" value="{$telegram}"/>
        </div>
    
        <hr/>
        
        <button type="submit" class="btn w-all">Сохранить</button>
        <br/><br/>
         <div class="input__row input__row--link">
            <a href="{24 | url}" class="link">Вернуться к профилю</a>
        </div>
    </form>    
