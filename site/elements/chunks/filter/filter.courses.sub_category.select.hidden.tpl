<select name="course_sub_category" data-placeholder="{$caption}" class="{$styler}" id="sub_category-select" style="visibility: hidden;">
<option class="option-hide" value=""></option>
   {switch  $_modx->resource.id}
        {case '11'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '11', 'option'=>'1', 'chained'=>'11', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case '10'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '10', 'option'=>'1', 'chained'=>'10', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case '520'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '520', 'option'=>'1', 'chained'=>'520', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`520` &option=`1` &chained=`520` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case '521'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '521', 'option'=>'1', 'chained'=>'521', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`521` &option=`1` &chained=`521` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case '522'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '522', 'option'=>'1', 'chained'=>'522', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`522` &option=`1` &chained=`522` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case '523'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '523', 'option'=>'1', 'chained'=>'523', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`523` &option=`1` &chained=`523` &curr=`[[+fi.course_sub_category]]`]]
            {/if}        
        {case '524'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '524', 'option'=>'1', 'chained'=>'524', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`524` &option=`1` &chained=`524` &curr=`[[+fi.course_sub_category]]`]]            
            {/if}        
        {case '623'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '623', 'option'=>'1', 'chained'=>'623', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`623` &option=`1` &chained=`623` &curr=`[[+fi.course_sub_category]]`]]                        
            {/if}
        {case '1347'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '1347', 'option'=>'1', 'chained'=>'1347', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`1347` &option=`1` &chained=`1347` &curr=`[[+fi.course_sub_category]]`]]                        
            {/if}            
        {case '1357'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '1357', 'option'=>'1', 'chained'=>'1357', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`1357` &option=`1` &chained=`1357` &curr=`[[+fi.course_sub_category]]`]]                        
            {/if}
        {case '1358'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '1358', 'option'=>'1', 'chained'=>'1358', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`1358` &option=`1` &chained=`1358` &curr=`[[+fi.course_sub_category]]`]]                        
            {/if}
        {case '1360'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '1360', 'option'=>'1', 'chained'=>'1360', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`1360` &option=`1` &chained=`1360` &curr=`[[+fi.course_sub_category]]`]]                        
            {/if}
            
        {case '1362'}
            {if $.get.course_sub_category}
                {'!getList' | snippet: ['id' => '1362', 'option'=>'1', 'chained'=>'1362', 'curr'=>'{$.get.course_sub_category}']}
            {else}
                [[!getList? &id=`1362` &option=`1` &chained=`1362` &curr=`[[+fi.course_sub_category]]`]]                        
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
                {'!getList' | snippet: ['id' => '1347', 'option'=>'1', 'chained'=>'1347', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '1357', 'option'=>'1', 'chained'=>'1357', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '1358', 'option'=>'1', 'chained'=>'1358', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '1360', 'option'=>'1', 'chained'=>'1360', 'curr'=>'{$.get.course_sub_category}']}
                {'!getList' | snippet: ['id' => '1362', 'option'=>'1', 'chained'=>'1362', 'curr'=>'{$.get.course_sub_category}']}
                
            {else}
                [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
                [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]`]]
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
            {/if}        
    {/switch}
</select>