{set $caption = '!getCaptionTV' | snippet: ['name' => $filter]}
<div class="choose__inputs-item">
<select name="course_sub_category" data-placeholder="{$caption}" class="styler" id="sub_category-select">
<option value=""></option>
   {switch  $_modx->resource.id}
        {case 11}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '11', 'option'=>'1', 'chained'=>'11', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case 10}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '10', 'option'=>'1', 'chained'=>'10', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case 520}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '520', 'option'=>'1', 'chained'=>'520', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`520` &option=`1` &chained=`520` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case 521}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '521', 'option'=>'1', 'chained'=>'521', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`521` &option=`1` &chained=`521` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
            
        {case 522}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '522', 'option'=>'1', 'chained'=>'522', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`522` &option=`1` &chained=`522` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case 523}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '523', 'option'=>'1', 'chained'=>'523', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`523` &option=`1` &chained=`523` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case 524}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '524', 'option'=>'1', 'chained'=>'524', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`524` &option=`1` &chained=`524` &curr=`[[+fi.course_sub_category]]`]]            
            {/if}        
        {case 623}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '623', 'option'=>'1', 'chained'=>'623', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`623` &option=`1` &chained=`623` &curr=`[[+fi.course_sub_category]]`]]                        
            {/if}
            
        {default}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '11', 'option'=>'1', 'chained'=>'11', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '10', 'option'=>'1', 'chained'=>'10', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '520', 'option'=>'1', 'chained'=>'520', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '521', 'option'=>'1', 'chained'=>'521', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '522', 'option'=>'1', 'chained'=>'522', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '523', 'option'=>'1', 'chained'=>'523', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '524', 'option'=>'1', 'chained'=>'524', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '623', 'option'=>'1', 'chained'=>'623', 'curr'=>'{$.get.course_sub_category}']}                
            {else}
                [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`520` &option=`1` &chained=`520` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`521` &option=`1` &chained=`521` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`522` &option=`1` &chained=`522` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`523` &option=`1` &chained=`523` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`524` &option=`1` &chained=`524` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`623` &option=`1` &chained=`623` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        

    {/switch}
    
    


</select>
</div>