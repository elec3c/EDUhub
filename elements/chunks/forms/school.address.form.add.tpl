<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="POST" id={"school"~$.php.ucfirst($.get.type)~"FormAdd"}>
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="uid" value="[[!+fi.id]]" />
    <input type="hidden" name="type" value="{$.get.type}" />    
    <input type="hidden" name="school" value="{$_modx->user.id}" />

    <div class="cadd__block">
        <div class="cadd__label">Адрес</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <input type="text" class="input" name="address" placeholder="Полный адрес" value="[[!+fi.address]]">
            </div>
        </div>
    </div>
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>