{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $group_id])}
<form action="[[~[[*id]]]]" method="post" id="promoteForm">
    <input type="hidden" name="group_id" value="{$group_id}" />
    <input type="hidden" name="user_id" value="{$school_id}" />
<div class="input__row cgcourse__action-select">
    {include 'file:chunks/forms/fields/fields.commission.tpl' format_of_study=$format_of_study value="{$promote['commission']}"}
</div>
<div class="input__row">
    {include 'file:chunks/forms/fields/fields.lead.tpl' value="{$promote['lead']}"}
</div>
<div class="input__row">
    <button class="btn w-all" type="submit">Продвигать</button>
</div>
</form>


                                    
                                        

                                    
                                       

