<div class="lk__profile-form">
    <div class="form__title lk__profile-title">Личные данные</div>
    <form action="" method="post" enctype="multipart/form-data" id="office-profile-form">
        <input name="controll" class="no-display" type="text"> 
        <div class="lk__profile-cols">
            <div class="lk__profile-cols__inputs">
                <div class="lk__profile-cols__left">
                    <div class="input__row">
                        <input type="text" name="fullname" value="{$fullname}" class="input" placeholder="Бренд *" maxlength="50" required> 
                    </div>                     
                    <div class="input__row">
                        <input type="text" name="website" value="{$website}" class="input" placeholder="Адрес сайта">
                    </div>  
                    <div class="input__row">
                        <input type="email" name="email" value="{$email}" class="input" placeholder="Электронная почта *" maxlength="50" required>
                    </div>    
                    <div class="input__row">
                        <input type="tel" name="mobilephone" class="input phone-mask" id="mobilephone" placeholder="Телефон *" value="{$mobilephone}"  minlength="17" maxlength="17" required>
                    </div>
                    <div class="input__row">
                        <input type="text" name="city" value="{$city}" class="input" placeholder="Юридический адрес школы *" required>
                    </div>   
                </div>
                
                <div class="lk__profile-cols__right">
                    <div class="input__row">
                        <input type="text" name="ooo" value="{$ooo}" class="input" placeholder="Наименование организации *" maxlength="70" required> 
                    </div>                                      
                    <div class="input__row">
                        <input type="text" name="unp" value="{$unp}" id="unp" class="input" placeholder="УНП">
                    </div>  
                    <div class="input__row">
                        <input type="text" name="bik" value="{$bik}" class="input" placeholder="БИК">
                    </div>  
                    <div class="input__row">
                        <input type="text" name="rs" value="{$rs}" class="input" placeholder="Р/с">
                    </div>  
                    <div class="input__row">
                        <input type="text" name="bank" value="{$bank}" class="input" placeholder="Наименование банка">
                    </div>  
                    <div class="input__row">
                        <input type="text" name="addr_bank" value="{$addr_bank}" class="input" placeholder="Адрес банка">
                    </div>  
                </div>
            </div>
            <input type="hidden" name="photo" value="{$photo}"/>
            <input type="file" name="newphoto" id="profile-photo" class="hidden"/>
            <div class="lk__profile-cols__logo">
                {*<label class="lk__profile-cols__uploading uploading">
                    <input type="file" name="newphoto" id="profile-photo" accept="image/jpg,image/jpeg,image/png">
                    <span class="uploading__open">Загрузить логотип</span>
                    <div class="uploading__change">Изменить логотип</div>
                </label>*}
                <div class="col-md-10">
                    <div class="d-flex align-items-center">
                        <img src="{if $photo?}{$photo}{else}{$gravatar}?s=100{/if}" id="profile-user-photo"
                             class="rounded-circle mr-3" data-gravatar="{$gravatar}?s=100" width="100"/>
                        <div>
                            <div>
                                <a href="#">
                                    <label for="profile-photo">&plus; Загрузить логотип</label>
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

            <div class="lk__profile-cols__desc">
                <textarea name="desc" placeholder="Описание компании" class="input">{$desc}</textarea>
            </div>
            <div class="lk__profile-cols__btn">
                <button type="submit" class="btn w-all" id="btnProfile">Сохранить</button>
            </div>
        </div>


        
    </form>
</div>