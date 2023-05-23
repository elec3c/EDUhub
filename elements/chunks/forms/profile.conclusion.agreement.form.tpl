{set $user_id = $.get.user_id? : $_modx->user.id}
{set $userPageID = '!getCorporatePageID' | snippet : ['corporate_id' => $user_id]}

<form action="[[~[[*id]]]]" class="rkp__form" method="post" enctype="multipart/form-data">
    <input type="hidden" name="resource_id" value="{$userPageID}" />
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="nospam:blank" />                        
    <p style="padding-bottom:25px;">Выберите приемлемые способы заключения партнерских соглашений с Учебными центрами</p>
    {include 'file:chunks/forms/fields/fields.conclusion.agreement.tpl' userPageID = $userPageID}            
    <br>
    <div class="rkp__box rkp__buttons" style="text-align:center;">
    <button class="btn w-all" type="submit" id="btnProfileConclusionAgreementSave">Сохранить</button>
    </div>                                
</form>
