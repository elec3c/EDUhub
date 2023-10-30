<form action="{$_modx->resource.uri}" method="post" id="callbackForm">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input name="controll" class="no-display" type="text">
    <input type="hidden" name="form" value="Поможем тебе выбрать курс">
    <div class="ordform__form-inputs">
    <div class="input__row">
        <input type="text" name="name" class="input input--white" placeholder="Имя">
    </div>    
    <div class="input__row">
        <input type="tel" name="phone" class="input input--white phone-mask" placeholder="Телефон">
    </div>
    <div class="input__row">
        <input type="text" name="email" class="input input--white" placeholder="Электронная почта">
    </div>
    <label class="form__polit">
        <input type="checkbox" name="polit" class="styler styler--white" required>
        <span>Ознакомлен и согласен с <a href="{$_modx->makeUrl(8)}">публичной офертой</a></span>
    </label>
    <div class="form__btn">
        <button class="btn w-all">Отправить</button>
    </div>
    </div>    
</form>