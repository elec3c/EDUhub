<form action="[[~[[*id]]]]" method="post" id="promoteForm">
    <input type="hidden" name="group_id" value="{$group_id}" />
    <input type="hidden" name="user_id" value="{$school_id}" />
    {include 'file:chunks/forms/fields/fields.commission.tpl' format_of_study=$format_of_study}
    {include 'file:chunks/forms/fields/fields.lead.tpl'}
    <button class="btn w-all" type="submit">Продвигать</button>
</form>