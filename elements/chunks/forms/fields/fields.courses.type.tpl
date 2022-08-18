{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}                
                <select name="course_type" data-placeholder="Тип" class="{$styler}" id="type-select">
                    <option value=""></option>
                    <option value="casual" data-chained="10 11">Обычные</option>
                    <option value="intensive" data-chained="10 11">Интенсив</option>
                    <option value="business" data-chained="10">Деловой</option>
                    <option value="for-it" data-chained="10">Для IT</option>
                </select>