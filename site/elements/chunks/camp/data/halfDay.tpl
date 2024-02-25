{* Если в блоке Варианты посещений есть периоды "До обеда" и "После обеда", тогда выводим плашку 1/2 дня*}
{foreach $data['visitOptions']['data']['table'] as $item}
    {if $item['period'] === 'beforeLunch' || $item['period'] === 'afterLunch'}
        {set $halfDay = true}
    {/if}
{/foreach}