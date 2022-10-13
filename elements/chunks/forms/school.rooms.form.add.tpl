<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="POST" id={"school"~$.php.ucfirst($.get.type)~"FormAdd"}>
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="cities_id" value="[[!+fi.id]]" />
    {if $.get.edit}
        <input type="hidden" name="country" value="[[!+fi.country]]" id="country"/>
    {else}
        <input type="hidden" name="country" value="BY" id="country"/>
    {/if}

    <div class="cadd__block">
        <div class="cadd__label">Адреса</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <input type="text" class="input" name="city" placeholder="Название города" value="[[!+fi.city]]">
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Комнаты</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <div id="Rooms">
                    {if $.get.edit}
                    <div id='InputRoomGroup'>
                        [[!+fi.Rooms]]
                    </div>
                    {else}
                        <div id='InputRoomGroup'>
                            <div id="InputRoomDiv1">
                                <input type="text" class="input inputRoom" name="Rooms[]" placeholder="Название комнаты" id="inputRoom1" style="margin-bottom:5px;">
                            </div>
                        </div>
                    {/if}
                </div>
                <p>&nbsp;</p>
                <span class="btn" id="addRoomBtn">Добавить комнату</span>
                <span class="btn" id="deleteRoomBtn">Удалить комнату</span>
            </div>
        </div>
    </div>
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>