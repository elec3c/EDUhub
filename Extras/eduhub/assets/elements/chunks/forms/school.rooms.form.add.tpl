<form action="[[~[[*id]]]]" enctype="multipart/form-data" method="POST" id={"school"~$.php.ucfirst($.get.type)~"FormAdd"}>
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />
    <input type="hidden" name="uid" value="[[!+fi.id]]" />
    <input type="hidden" name="type" value="{$.get.type}" />    
    <input type="hidden" name="school" value="{$_modx->user.id}" />

    <div class="cadd__block">
        <div class="cadd__label">Адреса</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                {set $v = $.php.intval($.get.edit)}
                {set $where = '{"school":'~$_modx->user.id~'}'}
                            
                {'!pdoResources' | snippet :[
                    'ajaxMode'=>'default',
                    'idx'=>5,
                    'class'=>'EduAddress',
                    'tvPrefix'=>'',
                    'processTVs'=>'1',
                    'limit'=>'1000',                            
                    'loadModels'=>'school',
                    'sortby'=>[
                        'EduAddress.id'=>'DESC',
                    ],
                    'tplWrapper'=>'@INLINE <div class="choose__inputs-item">
                                                <select name="addres_id" class="styler">
                                                    {$output}
                                                </select>
                                        </div>',
                    'tpl'=>'@INLINE <option value="{$id}" {if $id==$.get.address_id}selected{/if}>{$address}</option>',
                    'where' => $where
                ]}                                                    
            </div>
        </div>
    </div>
    <div class="cadd__block">
        <div class="cadd__label">Кабинет</div>
        <div class="cadd__inputs cadd__in1">
            <div class="cadd__input">
                <input type="text" class="input inputRoom" name="room" placeholder="Номер кабинета" style="margin-bottom:5px;" value="[[!+fi.room]]">
            </div>
        </div>
    </div>
    <div class="cadd__button">
        <button class="btn" type="submit">{$btn}</button>
    </div>
</form>