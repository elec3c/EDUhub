{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}
                            <select name="level" data-placeholder="Уровень" class="{$styler}"
                                id="level-select">
                                <option value=""></option>
                                <option value="zero" data-chained="10 11">Начальный</option>
                                <option value="junior" data-chained="11">Junior</option>
                                <option value="middle" data-chained="11">Middle</option>
                                <option value="senior" data-chained="11">Senior</option>
                                
                                <option value="a1" data-chained="10">A1</option>
                                <option value="a2" data-chained="10">A2</option>
                                <option value="b1" data-chained="10">B1</option>
                                <option value="b2" data-chained="10">B2</option>
                                <option value="c1" data-chained="10">C1</option>
                                <option value="c2" data-chained="10">C2</option>
                            </select>