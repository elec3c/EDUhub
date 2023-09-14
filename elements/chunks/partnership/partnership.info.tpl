            <div class="ssrequest__item-4cols">
                <div class="ssrequest__item-4col col--category">
                    <div class="ssrequest__item-label">Категории</div>
                    {insert 'file:chunks/partnership/partnership.category.list.tpl'}
                </div>
                <div class="ssrequest__item-4col col--category col--cw2">
                    <div class="ssrequest__item-rowc2">
                            <div><div class="ssrequest__item-label">Список курсов</div></div>
                            <div class="hide-tablet-sm"><div class="ssrequest__item-label">Размер скидки / ед.изм</div></div>
                    </div>
                    {if $type != 'diff'}
                    <div class="ssrequest__item-rowc2">
                        <div>Любой курс</div>
                        <div>{$discount}{$discount_unit} ({$discount_for_what})</div>
                    </div>
                    {else}
                        {$sales_list}
                    {/if}
                </div>
            </div>
            <div class="ssrequest__item-label">Примечание</div>
            <div class="ssrequest__item-note">{if $type=='diff'}{$query['detail_diff']}{else}{$query['detail']}{/if}</div>