{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'} 
{'!promocode' | snippet :[]}
{set $filter = '
                tv|course_category,
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
                tv|course_metro,
               
               
'}

{*tv|course_continue*}

{if $.get.disableRefresh==1}
    {set $filterOptions = '{"autoLoad":0,"selected_wrapper_tpl":"","selected_filters_delimeter":"|","selected_values_delimeter":"","selected_tpl": "<a href=\'#\' data-id=\'_id_\' class=\'mse2_selected_link\'><span>_title_</span>&nbsp;<svg width=\'11\' height=\'11\' viewBox=\'0 0 11 11\' fill=\'none\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M1 1L5.25 5.5L9.5 1\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/><path d=\'M9.5 9.75L5.25 5.25L1 9.75\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/></svg></a>"}'}
    {set $limit = 0}
{else}
    {set $filterOptions = '{"autoLoad":1,"selected_wrapper_tpl":"","selected_filters_delimeter":"|","selected_values_delimeter":"","selected_tpl": "<a href=\'#\' data-id=\'_id_\' class=\'mse2_selected_link\'><span>_title_</span>&nbsp;<svg width=\'11\' height=\'11\' viewBox=\'0 0 11 11\' fill=\'none\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M1 1L5.25 5.5L9.5 1\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/><path d=\'M9.5 9.75L5.25 5.25L1 9.75\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/></svg></a>"}'}
    {set $limit = 6}
{/if}


{set $where1 = ['data_from:>'=>$.php.date('Y-m-d'), 'data_continue:>'=>$.php.date('Y-m-d'),'OR:course_continue:='=>1, 'AND:data_continue:>'=>$.php.date('Y-m-d')]}
{set $where = [$where1]}


        
{'!mFilter2' | snippet : [

    'parents'=>$_modx->config['site_parent_courses'],
    'limit'=>$limit,
    'ajaxMode' => 'scroll',
    'templates' => 8,
    'filters'=>$filter,
    'aliases'=>'tv|course_continue==course_continue,
                tv|course_category==course_category,
                tv|course_sub_category==course_sub_category,
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
                tv|course_metro==course_metro,
                tv|data_continue==data_continue,
                tv|data_from==data_from
    ',
    'tplOuter'       =>'@FILE chunks/filter/filter.outer.tpl',
    'tpls'           =>'@FILE chunks/courses/courses.block.tpl',
    'tplFilter.outer.course_category'=>'@FILE chunks/filter/filter.courses.category.select.tpl',
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
    'tplFilter.outer.course_continue' => '@FILE chunks/filter/filter.courses.continue.checkbox.tpl',
            
    'suggestionsRadio'   =>'resource|parent',
    'showEmptyFilters'   =>'true',
    'filterOptions'      => $filterOptions,
    'includeTVs' => 'course_owner, data_from, data_continue, course_continue, sortWeight, deposit, sale',            
    'sortby'=>'{"sortWeight":"DESC","data_from":"ASC","sale":"DESC"}',
    'where' => $where
]}

    {*include 'file:chunks/callback/callback.main.tpl' color="orange"*}

{/block}