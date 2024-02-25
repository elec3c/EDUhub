{set $promote = $_modx->runSnippet('!promoteCheckLead', ['group_id' => $group_id])}
{set $num_people_in_group  = $.php.intval($group_id | resource: 'num_people_in_group')}
<form action="[[~[[*id]]]]" method="post" id="promoteForm">
    <input type="hidden" name="num_people_in_group" value="{$num_people_in_group}" id="num_people_in_group{$group_id}"/>
    <div class="input__row cgcourse__action-select">
        {include 'file:chunks/forms/fields/fields.commission.tpl' prefix="{$group_id}" format_of_study=$format_of_study value="{$promote['commission']}"}
    </div>
    <div class="input__row">
    {include 'file:chunks/forms/fields/fields.lead.tpl' prefix="{$group_id}" value="{$promote['lead']}"}
    </div>
&nbsp;&nbsp;
    <div class="input__row">
        <button class="btn w-all buy-promote" type="button" data-user="{$school_id}" data-group="{$group_id}">Продвигать</button>
    </div>
</form>