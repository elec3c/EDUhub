<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="POST" id="addressFormAdd">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="cities_id" value="[[!+fi.id]]" />
    {if $.get.edit}
        <input type="hidden" name="country" value="[[!+fi.country]]" id="country"/>
    {else}
        <input type="hidden" name="country" value="BY" id="country"/>
    {/if}

    <div class="cadd__block">
        <div class="cadd__label">Город</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <input type="text" class="input" name="city" placeholder="Название города" value="[[!+fi.city]]">
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Район</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <div id="districts">
                    
                    {if $.get.edit}
                    <div id='InputDistrictGroup'>
                        [[!+fi.districts]]
                    </div>
                    {else}
                        <div id='InputDistrictGroup'>
                            <div id="InputDistrictDiv1">
                                <input type="text" class="input inputDistrict" name="districts[]" placeholder="Название района" id="inputDistrict1" style="margin-bottom:5px;">
                            </div>
                        </div>
                    {/if}
                </div>
                <p>&nbsp;</p>
                <span class="btn" id="addDistrictBtn">Добавить район</span>
                <span class="btn" id="deleteDistrictBtn">Удалить район</span>
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Метро</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <div id="metro">
                    
                {if $.get.edit}
                <div id='InputMetroGroup'>
                    [[!+fi.metro]]
                </div>
                {else}
                    <div id='InputMetroGroup'>  
                        <div id="InputMetroDiv1">
                            <input type="text" class="input inputMetro" name="metro[]" id="inputMetro1" placeholder="Название метро" style="margin-bottom:5px;">
                        </div>
                    </div>
                {/if}
                </div>
                <p>&nbsp;</p>
                <span class="btn" id="addMetroBtn">Добавить метро</span>
                <span class="btn" id="deleteMetroBtn">Удалить метро</span>
            </div>
        </div>
    </div>
    <div class="cadd__button">
        <button class="btn w-all" type="submit">{$btn}</button>
    </div>
</form>