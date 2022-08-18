{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'} 


        {'!mFilter2' | snippet : [
            'parents'=>'11',
            'limit'=>'6',
            'filters'=>'
                tv|course_category,
                tv|course_sub_category,
                tv|course_type,
                tv|form_of_study,
                tv|format_of_study,
                tv|course_city,
                tv|course_region,
                tv|course_metro
            ',
            'aliases'=>'tv|course_category==course_category,
                        tv|course_sub_category==course_sub_category,
                        tv|course_type==course_type,
                        tv|form_of_study==form_of_study,
                        tv|format_of_study==format_of_study,
                        tv|course_city==course_city,
                        tv|course_region==course_region,
                        tv|course_metro==course_metro
            ',
            'tplOuter'=>'@FILE chunks/filter/filter.outer.tpl',
            'tpls'=>'@FILE chunks/courses/courses.block.tpl',
            
            'tplFilter.outer.resource|parent'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.resource|parent'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_category'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_category'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_sub_category'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_sub_category'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_type'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_type'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_sub_categoty'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_sub_categoty'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.form_of_study'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.form_of_study'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.format_of_study'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.format_of_study'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_city'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_city'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_region'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_region'=>'@FILE chunks/filter/filter.option.tpl',
            'tplFilter.outer.course_metro'=>'@FILE chunks/filter/filter.select.tpl',
            'tplFilter.row.course_metro'=>'@FILE chunks/filter/filter.option.tpl',
            
            'suggestionsRadio'=>'resource|parent',
            'showEmptyFilters'=>'1',
            'filterOptions'=>'{"autoLoad":0}',
            'where' => ["template:=" => "8"],
            'ajaxMode' => 'button'
        ]}

    {include 'file:chunks/callback/callback.main.tpl'}

{/block}