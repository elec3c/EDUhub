{if $_modx->resource.alg}
<div class="persdisc__block">
                    <div class="persdisc__block-title section__title">Перед тем как искать курсы:</div>
                    <div class="persdisc__items">
                        {set $rows = json_decode($_modx->resource.alg, true)}
                        {foreach $rows as $idx => $row}
                        <div class="persdisc__item">
                            <div class="persdisc__item-text">
                                {if $row.title}
                                    <p><b>{$row.title}</b></p>
                                {/if}
                                {if $row.title && (($idx + 1) != 3)}
                                    <p>{$row.text}</p>
                                {else}
                                    {$row.text}
                                {/if}
                            </div>
                            <div class="persdisc__item-img">
                                {set $fpath = '/assets/images/'~$row.image}
                                {set $finfo = pathinfo($fpath)}
                                {print_r()}
                                <picture>
                                    <source srcset="{$finfo['dirname']}/{$finfo['filename']}-m.{$finfo['extension']}" media="(max-width: 979px)">
                                    <img src="{$fpath}" alt="{$finfo['filename']}">
                                </picture>
                            </div>
                        </div>
                        {/foreach}

                    </div>
                </div>
{/if}