{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'} 
{'!promocode' | snippet :[]}
{if $_modx->resource.id == 10 || $_modx->resource.id == 11}
{set $filter = '
                tv|course_sub_category,
                tv|course_sub_category_type,
                tv|course_type,
                tv|for_ages,
                tv|for_levels,
                tv|form_of_study,
                tv|format_of_study,
                tv|course_city,
                tv|course_region,
                tv|course_metro
            '}
{else}
{set $filter = '
                tv|course_sub_category_type,
                tv|course_type,
                tv|for_ages,
                tv|for_levels,
                tv|form_of_study,
                tv|format_of_study,
                tv|course_city,
                tv|course_region,
                tv|course_metro
            '}
{/if}
    
        {'!mFilter2' | snippet : [
            'parents'       => $_modx->resource.id,
            'limit'         => '6',
            'filters'       => $filter,
            'sortby'=>'{"sortWeight":"DESC","deposit":"DESC","data_from":"ASC","sale":"DESC"}',
            'templates' => 8,
            'aliases'=>'tv|course_sub_category==course_sub_category,
                        tv|course_sub_category_type==course_sub_category_type,
                        tv|course_type==course_type,
                        tv|for_ages==for_ages,
                        tv|for_levels==for_levels,
                        tv|form_of_study==form_of_study,
                        tv|format_of_study==format_of_study,
                        tv|course_city==course_city,
                        tv|course_region==course_region,
                        tv|course_metro==course_metro
            ',
            'tplOuter'       =>'@FILE chunks/filter/filter.outer.tpl',
            'tpls'           =>'@FILE chunks/courses/courses.block.tpl',
            'includeTVs' => 'course_owner, data_from, sortWeight, deposit, sale',
            'tplFilter.outer.resource|parent'=>'@FILE chunks/filter/filter.courses.category.select.tpl',
            'tplFilter.row.resource|parent'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_sub_category'=>'@FILE chunks/filter/filter.courses.sub_category.select.tpl',
            'tplFilter.row.course_sub_category'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_sub_category_type'=>'@FILE chunks/filter/filter.courses.sub_category_type.select.tpl',
            'tplFilter.row.course_sub_category_type'=>'@FILE chunks/filter/filter.option.tpl',            
            'tplFilter.outer.course_type'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_type'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.for_ages'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.for_ages'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.for_levels'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.for_levels'=>'@FILE chunks/filter/filter.option.tpl',            
            'tplFilter.outer.course_sub_categoty'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_sub_categoty'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.form_of_study'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.form_of_study'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.format_of_study'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.format_of_study'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_city'=>'@FILE chunks/filter/fields.location.city.tpl',
            'tplFilter.row.course_city'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_region'=>'@FILE chunks/filter/filter.location.region.tpl',
            'tplFilter.row.course_region'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_metro'=>'@FILE chunks/filter/fields.location.metro.tpl',
            'tplFilter.row.course_metro'=>'@FILE chunks/filter/filter.option.tpl',
            'suggestionsRadio'   =>'resource|parent',
            'showEmptyFilters'   =>'1',
            'filterOptions'      =>'{"autoLoad":1}',
            'where'=> '["data_from >= NOW()"]'

        ]}
{/block}