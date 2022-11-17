<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="POST"
    id={"school"~$.php.ucfirst($.get.type)~"FormAdd"}>
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="uid" value="[[!+fi.id]]" />
    <input type="hidden" name="type" value="{$.get.type}" />
    <input type="hidden" name="school" value="{$_modx->user.id}" />

    <div class="cadd__block">
        <div class="cadd__label">Адрес</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <input type="text" class="input" name="address" placeholder="Полный адрес" value="[[!+fi.address]]" required>
            </div>
        </div>
    </div>
    <div class="cadd__block" id="location">
        <div class="cadd__label">Месторасположение</div>
        <div class="cadd__inputs cadd__in5">
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.location.city.tpl' req=1}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.location.region.tpl' req=0}
            </div>
            <div class="cadd__input">
                {include 'file:chunks/forms/fields/fields.location.metro.tpl' req=0}
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Время работы c</div>
        <div class="cadd__inputs cadd__in4">
            <div class="cadd__input">
                <input type="time" class="input" name="time_from" placeholder="Время работы c" value="">
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Время работы по</div>
        <div class="cadd__inputs cadd__in4">
            <div class="cadd__input">
                <input type="time" class="input" name="time_until" placeholder="Время работы по" value="">
            </div>
        </div>
    </div>
    <div class="cadd__button">
        <button class="btn" type="submit">{$btn}</button>
    </div>
</form>