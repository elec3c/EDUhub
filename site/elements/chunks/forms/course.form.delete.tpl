                <form action="{$_modx->resource.uri}" method="post" id="courseFormDelete">
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
                    <input type="hidden" name="resource_id" value="{$.get.delete}" />
                    <button class="btn w-all" type="submit">Удалить курс</button><!--dogovor-add-->
                </form>