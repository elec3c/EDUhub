<form action="{$_modx->resource.uri}" method="post" id="feedbackForm">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input name="controll" class="no-display" type="text">
    <input type="hidden" name="form" value="Обратная связь">
    
    <div class="input__row">
        <input type="text" name="name" class="input" placeholder="Имя">
    </div>    
    <div class="input__row">
        <input type="text" name="email" class="input" placeholder="Электронная почта">
    </div>
    <div class="input__row">
        <textarea name="message" class="input height-lg" placeholder="Сообщение.."></textarea>
    </div>

    <label class="form__polit">
        <input type="checkbox" name="polit" class="styler" required>
        <span>Ознакомлен с <a href="{$_modx->makeUrl(370)}">пользовательским соглашением</a></span>
    </label>

    <div class="form__btn">
        <button class="btn w-all">Отправить</button>
    </div>
</form>