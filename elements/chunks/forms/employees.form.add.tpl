{if is_array($data[$responsible])}
    {set $r = $data[$responsible]}
{else}
    {set $r = []}
{/if}

<form class="employees__form" action="[[~[[*id]]]]" method="post" enctype="multipart/form-data" id="{$index}">

    <input name="responsible" type="hidden" value="{$responsible}">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input name="controll" class="no-display" type="text"> 
    <div class="employees__form-intro">{$intro}</div>
    <div class="employees__form-head employees__form-row">
        <div><span class="show-tablet-sm">И отметьте те поля, которые нужно показывать {$prefix}.</span></div>
        <div class="hide-tablet-sm">Показывать {$prefix}</div>
    </div>
    <div class="employees__form-row">
        <input type="text" name="lastname" class="input" placeholder="Фамилия*" value="{$r['lastname']}" required>
        <div class="input__row-check"><input type="checkbox" name="show_lastname" value="1" class="styler" {if $r['show_lastname']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="text" name="name" class="input" placeholder="Имя*" value="{$r['name']}" required>
        <div class="input__row-check"><input type="checkbox" name="show_name" value="1" class="styler" {if $r['show_name']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="text" name="surname" class="input" placeholder="Отчество*" value="{$r['surname']}" required>
        <div class="input__row-check"><input type="checkbox" name="show_surname" value="1" class="styler" {if $r['show_surname']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="text" name="post" class="input" placeholder="Должность*" value="{$r['post']}" required>
        <div class="input__row-check"><input type="checkbox" name="show_post" value="1" class="styler" {if $r['show_post']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="email" name="email" class="input" placeholder="Электронная почта*" value="{$r['email']}" required>
        <div class="input__row-check"><input type="checkbox" name="show_email" value="1" class="styler" {if $r['show_email']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="tel" name="mobilephone" class="input phone-mask" placeholder="Мобильный телефон*" value="{$r['mobilephone']}" minlength="12" maxlength="17" maxlength="50" required>
        <div class="input__row-check"><input type="checkbox" name="show_phone" value="1" class="styler" {if $r['show_phone']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="text" name="viber" class="input" placeholder="Вайбер" value="{$r['viber']}">
        <div class="input__row-check"><input type="checkbox" name="show_viber" value="1" class="styler" {if $r['show_viber']}checked{/if}></div>
    </div>
    <div class="employees__form-row">
        <input type="text" name="telegram" class="input" placeholder="Телеграм" value="{$r['telegram']}">
        <div class="input__row-check"><input type="checkbox" name="show_telegram" value="1" class="styler" {if $r['show_telegram']}checked{/if}></div>
    </div>
    {*<div class="employees__form-row">
        <button class="btn btn--bdpurple w-all">Редактировать</button>
    </div>*}
    <div class="employees__form-row">
        <button type="submit" class="btn w-all">Сохранить</button>
    </div>
</form>