{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
{if $_modx->resource.template == 3}
    {set $styler = 'styler styler--white'}
{else}
    {set $styler = 'styler'}
{/if}
<div class="choose__inputs-item">
<select name="course_sub_category_type" data-placeholder="{$caption}" class="{$styler}" id="sub_category_type-select">
    <option value=""></option>
    {if $.get.course_sub_category_type}
    
        {if ($_modx->resource.id == $_modx->config['site_parent_it']) || ($_modx->resource.parent == $_modx->config['site_parent_it'])}
            {'!getValuesTV' | snippet: ['tvid' => '61', 'chained'=>'44', 'curr'=>'{$.get.course_sub_category_type}']}
        {/if}
        {if ($_modx->resource.id == $_modx->config['site_parent_dancing']) || ($_modx->resource.parent == $_modx->config['site_parent_dancing'])}
            {'!getValuesTV' | snippet: ['tvid' => '121', 'chained'=>'1270', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '122', 'chained'=>'1271', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '123', 'chained'=>'1272', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '124', 'chained'=>'1273', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '125', 'chained'=>'1274', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '126', 'chained'=>'1275', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '127', 'chained'=>'1276', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '128', 'chained'=>'1277', 'curr'=>'{$.get.course_sub_category_type}']}
        {/if}
        {if ($_modx->resource.id == $_modx->config['site_parent_photo-video-audio']) || ($_modx->resource.parent == $_modx->config['site_parent_photo-video-audio'])}
            {'!getValuesTV' | snippet: ['tvid' => '131', 'chained'=>'1314', 'curr'=>'{$.get.course_sub_category_type}']}
        {/if}
        {if ($_modx->resource.id == $_modx->config['site_parent_sport']) || ($_modx->resource.parent == $_modx->config['site_parent_sport'])}
            {'!getValuesTV' | snippet: ['tvid' => '132', 'chained'=>'1318', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '133', 'chained'=>'1319', 'curr'=>'{$.get.course_sub_category_type}']}
            {'!getValuesTV' | snippet: ['tvid' => '134', 'chained'=>'1322', 'curr'=>'{$.get.course_sub_category_type}']}
        {/if}
    {else}
            [[!getValuesTV?  &tvid = `61` &chained=`44` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `121` &chained=`1348` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `122` &chained=`1349` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `123` &chained=`1351` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `124` &chained=`1352` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `125` &chained=`1353` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `126` &chained=`1354` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `127` &chained=`1355` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `128` &chained=`1356` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `131` &chained=`1364` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `132` &chained=`1368` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `133` &chained=`1369` &curr = `[[+fi.course_sub_category_type]]`]]
            [[!getValuesTV?  &tvid = `134` &chained=`1372` &curr = `[[+fi.course_sub_category_type]]`]]
    {/if}    
</select>
</div>