{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'} 
        {'!mFilter2' | snippet : [
            'parents' => $_modx->resource.id,
            'limit'=>'6',
            'depth'=>'2',
            'filters'=>'
                tv|course_type,
                tv|form_of_study,
                tv|format_of_study,
                tv|course_city,
                tv|course_region,
                tv|course_metro
            ',
            'tplOuter'=>'@FILE chunks/filter/filter.outer.tpl',
            'tpls'=>'@FILE chunks/courses/courses.block.tpl',
            'tplFilter.outer.resource|parent'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.resource|parent'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|course_type'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|course_type'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|course_sub_categoty'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|course_sub_categoty'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|form_of_study'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|form_of_study'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|format_of_study'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|format_of_study'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|course_city'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|course_city'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|course_region'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|course_region'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.tv|course_metro'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.tv|course_metro'=>'@FILE chunks/filter/filter.option.tpl',
            'suggestionsRadio'=>'resource|parent',
            'showEmptyFilters'=>'1',
            'filterOptions'=>'{"autoLoad":1}',
            'where' => ["template:=" => "8"],
            'ajaxMode' => 'button'
        ]}
{/block}