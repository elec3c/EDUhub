{set $user_id = $.get.user_id? : $_modx->user.id}

{set $userPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $user_id]}
 
<section class="rkp section__mg">
    <div class="container">
    {if $userPageID}        
        <form action="[[~[[*id]]]]" class="rkp__form" method="post" enctype="multipart/form-data">
            <input type="hidden" name="resource_id" value="{$userPageID}" />
            <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
            <input type="hidden" name="nospam:blank" />
            <div class="rkp__box">
                <div class="rkp__box-title">1. По какому направлению Вы проводите курсы?</div>
                {include 'file:chunks/forms/fields/fields.schools.direction.tpl' userPageID = $userPageID}            
            </div>
            <div class="rkp__box rkp__buttons" style="text-align:center;">
                <button class="btn w-all" type="submit">Сохранить</button>
            </div>
        </form>
    {else}
        <p>Ошибочка вышла! Не существует личной страницы школы для сохранения настроек.</p>
    {/if}        
    </div>
</section><!-- rkp -->