{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'} 
{'!promocode' | snippet :[]}
{if $_modx->resource.id in [10,11,520,521,522,523,524,623]}

        
        {set $filter = '
                        tv|course_sub_category,
                        tv|course_sub_category_type,
                        tv|course_type,
                        tv|for_ages,
                        tv|for_levels,
                        tv|form_of_study,
                        tv|format_of_study,
                        tv|schedule,
                        tv|time,                
                        tv|course_city,
                        tv|course_region,
                        tv|course_metro
        '}
{else}
    {if $_modx->resource.id == 44}
    {set $filter = '
                tv|course_sub_category_type,
                tv|course_type,
                tv|for_ages,
                tv|for_levels,
                tv|form_of_study,
                tv|format_of_study,
                tv|schedule,
                tv|time,
                tv|course_city,
                tv|course_region,
                tv|course_metro
            '}
    {else}

    {set $filter = '
        tv|course_type,
        tv|for_ages,
        tv|for_levels,
        tv|form_of_study,
        tv|format_of_study,
        tv|schedule,
        tv|time,
        tv|course_city,
        tv|course_region,
        tv|course_metro
        
    '}
    {/if}
    
{/if}
    
        {'!mFilter2' | snippet : [
            'parents'       => $_modx->resource.id,
            'limit'         => '6',
            'filters'       => $filter,
            'templates' => 8,
            'aliases'=>'tv|course_sub_category==course_sub_category,
                        tv|course_sub_category_type==course_sub_category_type,
                        tv|course_type==course_type,
                        tv|for_ages==for_ages,
                        tv|for_levels==for_levels,
                        tv|form_of_study==form_of_study,
                        tv|format_of_study==format_of_study,
                        tv|schedule==schedule,
                        tv|time==time,
                        tv|course_city==course_city,
                        tv|course_region==course_region,
                        tv|course_metro==course_metro
            ',
            'tplOuter'       =>'@FILE chunks/filter/filter.outer.tpl',
            'tpls'           =>'@FILE chunks/courses/courses.block.tpl',
            'tplFilter.outer.resource|parent'=>'@FILE chunks/filter/filter.courses.category.select.tpl',
            'tplFilter.outer.course_sub_category'=>'@FILE chunks/filter/filter.courses.sub_category.select.tpl',
            'tplFilter.outer.course_sub_category_type'=>'@FILE chunks/filter/filter.courses.sub_category_type.select.tpl',
            
            'tplFilter.outer.course_type'=>'@FILE chunks/filter/filter.courses.course_type.select.tpl',
            'tplFilter.outer.for_ages'=>'@FILE chunks/filter/filter.for_ages.select.tpl',
            'tplFilter.outer.for_levels'=>'@FILE chunks/filter/filter.for_levels.select.tpl',
            'tplFilter.outer.form_of_study'=>'@FILE chunks/filter/filter.form_of_study.select.tpl',
            
            'tplFilter.outer.format_of_study'=>'@FILE chunks/filter/filter.format_of_study.select.tpl',
            'tplFilter.outer.schedule'=>'@FILE chunks/filter/filter.schedule.select.tpl',
            'tplFilter.outer.time'=>'@FILE chunks/filter/filter.time.select.tpl',
            
            'tplFilter.outer.course_city'=>'@FILE chunks/filter/fields.location.city.tpl',
            'tplFilter.outer.course_region'=>'@FILE chunks/filter/filter.location.region.tpl',
            'tplFilter.outer.course_metro'=>'@FILE chunks/filter/fields.location.metro.tpl',
            
            'tplFilter.outer.data_from'=>'@FILE chunks/forms/fields/fields.courses.data_from.tpl',
            
            'suggestionsRadio'   =>'resource|parent',
            'showEmptyFilters'   =>'true',
            'filterOptions'      =>'{"autoLoad":1}',
            'includeTVs' => 'course_owner, data_from, sortWeight, deposit, sale',            
            'sortby'=>'{"sortWeight":"DESC","data_from":"ASC","sale":"DESC"}',
            'where' => ["data_from:>=" => $.php.date("Y-m-d")]

        ]}
{/block}