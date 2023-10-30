<form action="{$_modx->resource.uri}" method="post" id="feedbackForm">
    <input name="controll" class="no-display" type="text">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input name="controll" class="no-display" type="text">
    <input type="hidden" name="form" value="Остались вопросы">
    <!--<div class="ordform__icols">
        <div class="ordform__icol">-->
            <div class="input__row">
                <input type="text" name="name" class="input input--white" placeholder="Ваше ФИО">
            </div>  
            <!--<div class="input__row">
                <select name="role" class="styler styler--white" data-placeholder="Выберите вашу роль">
                    <option value=""></option>
                    <option value="">Роль 1</option>
                    <option value="">Роль 2</option>
                </select>
            </div>
            <div class="input__row">
                <select name="role" class="styler styler--white" data-placeholder="Тема">
                    <option value=""></option>
                    <option value="">Тема 1</option>
                    <option value="">Тема 2</option>
                </select>
            </div>-->
            <div class="input__row">
                <input type="text" name="email" class="input" placeholder="Электронная почта">
            </div>        
            <div class="input__row">
                <textarea name="message" class="input input--white height-md" placeholder="Ваш вопрос"></textarea>
            </div>
            <label class="form__polit">
                <input type="checkbox" name="polit" class="styler" required>
                <span>Ознакомлен и согласен с <a href="{$_modx->makeUrl(370)}">пользовательским соглашением</a></span>
            </label>
                        
            <div class="form__btn">
                <button class="btn w-all">Отправить</button>
            </div>                            
        <!--</div>-->
                        
        <!--<div class="ordform__icol">  
            <div class="input__row">
                <input type="tel" name="phone" class="input input--white phone-mask" placeholder="Телефон">
            </div>
            <div class="input__row">
                <button class="btn btn--purple w-all">Получить код</button>
            </div> 
            <div class="input__row ordform__it">
                Вам на номер телефона придет верификационный код
            </div> 
            <div class="input__row">
                <input type="text" name="code" class="input input--white" placeholder="Код из смс">
            </div>  
            <div class="">
                <button class="btn w-all">Отправить</button>
            </div>
        </div>    
    </div>    -->
</form>