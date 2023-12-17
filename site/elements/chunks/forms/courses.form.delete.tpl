                <form action="{$_modx->resource.uri}" method="post" id={"courses"~$.php.ucfirst($.get.type)~"FormDelete"}>
<input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
<input type="hidden" name="type" value="{$.get.type}"/>
                    <input type="hidden" name="resource_id" value="{$.get.delete}" />
    <button class="btn w-all" type="submit">{$btn?:"Удалить"}                </form>