<form class="replen__action" action="{$_modx->resource.uri}" method="post" name="budget_transactions" id="budgetOperationForm">
    <input type="hidden" name="manager_id" value="{$_modx->user.id}" />
    <input type="text" class="input w-270" name="unp" id="unp" placeholder="УНП">
    <input type="text" class="input" name="sum" placeholder="Сумма">
    <button class="btn w-all" type="submit">Пополнить</button>
</form>