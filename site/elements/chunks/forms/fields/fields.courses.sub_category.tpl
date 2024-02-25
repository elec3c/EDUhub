{if $_modx->resource.template == 3}
{set $styler = 'styler styler--white'}
{else}
{set $styler = 'styler'}
{/if}

<div class="clearfix" style="position: relative;">
    <select name="course_sub_category" data-placeholder="Подкатегория курса {if $req==1}*{/if}" class="{$styler}" id="sub_category-select" {if $req==1}required{/if}>
        <option class="option-hide" value="">&nbsp;</option>

        {*set $ids = '!pdoResources' | snippet : ['parents' => $_modx->config['site_parent_courses'], 'returnIds' => '1','depth'=>'0','limit'=>0]*}    
        {*set $arr = $ids|split*}
        {*set $curr = '[[+fi.course_sub_category]]'*}
        
        {*foreach $arr as $ind}
        
            {if $ind != $_modx->config['site_parent_language']}
                {set $sortby = ''}
            {else}
                {set $sortby = 'menuindex'}
            {/if}
            {*'!getList' | snippet : [
                'id' => $ind, 
                'option' => '1',  
                'chained' => $ind, 
                'curr' => $curr
            ]*}
        {*/foreach*}

        [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]` ]]
        [[!getList? &id=`520` &option=`1` &chained=`520` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`521` &option=`1` &chained=`521` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`522` &option=`1` &chained=`522` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`523` &option=`1` &chained=`523` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`524` &option=`1` &chained=`524` &curr=`[[+fi.course_sub_category]]`]]    
        [[!getList? &id=`623` &option=`1` &chained=`623` &curr=`[[+fi.course_sub_category]]`]]
        
        [[!getList? &id=`1347` &option=`1` &chained=`1347` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`1357` &option=`1` &chained=`1357` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`1358` &option=`1` &chained=`1358` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`1360` &option=`1` &chained=`1360` &curr=`[[+fi.course_sub_category]]`]]
        [[!getList? &id=`1362` &option=`1` &chained=`1362` &curr=`[[+fi.course_sub_category]]`]]
    </select>
    
    
    
    {if $_modx->resource.template == 11}
    <div class="tool-tip slideIn bottom">Подкатегория курса</div>
    {/if}
    
</div>