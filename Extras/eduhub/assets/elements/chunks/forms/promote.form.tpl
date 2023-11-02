{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $group_id])}
<form action="[[~[[*id]]]]" method="post" id="promoteForm">
    {*<input type="hidden" name="group_id" value="{$group_id}" />
    <input type="hidden" name="user_id" value="{$school_id}" />*}
    {include 'file:chunks/forms/fields/fields.commission.tpl' prefix="{$group_id}" format_of_study=$format_of_study value="{$promote['commission']}"}
&nbsp;&nbsp;
    {include 'file:chunks/forms/fields/fields.lead.tpl' prefix="{$group_id}" value="{$promote['lead']}"}
&nbsp;&nbsp;
    {*<button class="btn w-all" type="submit">Продвигать</button>*}
    <button class="btn w-all buy-promote" type="button" data-user="{$school_id}" data-group="{$group_id}">Продвигать</button>
</form>





 
                                        

                                    
                                       

