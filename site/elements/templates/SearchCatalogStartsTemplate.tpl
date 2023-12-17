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
                tv|schedule,
                tv|time,
                tv|course_city,
                tv|course_region,
                tv|course_metro,
               
               
'}

{if $.get.disableRefresh==1}
    {set $filterOptions = '{"autoLoad":0,"selected_wrapper_tpl":"","selected_filters_delimeter":"|","selected_values_delimeter":"","selected_tpl": "<a href=\'#\' data-id=\'_id_\' class=\'mse2_selected_link\'><span>_title_</span>&nbsp;<svg width=\'11\' height=\'11\' viewBox=\'0 0 11 11\' fill=\'none\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M1 1L5.25 5.5L9.5 1\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/><path d=\'M9.5 9.75L5.25 5.25L1 9.75\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/></svg></a>"}'}
    {set $limit = 0}
{else}
    {set $filterOptions = '{"autoLoad":1,"selected_wrapper_tpl":"","selected_filters_delimeter":"|","selected_values_delimeter":"","selected_tpl": "<a href=\'#\' data-id=\'_id_\' class=\'mse2_selected_link\'><span>_title_</span>&nbsp;<svg width=\'11\' height=\'11\' viewBox=\'0 0 11 11\' fill=\'none\' xmlns=\'http://www.w3.org/2000/svg\'><path d=\'M1 1L5.25 5.5L9.5 1\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/><path d=\'M9.5 9.75L5.25 5.25L1 9.75\' stroke=\'#19191B\' stroke-width=\'1.5\' stroke-linecap=\'round\' stroke-linejoin=\'round\'/></svg></a>"}'}
    {set $limit = 8}
{/if}



{set $where = ["template:=" => "8","data_from:<" => "2099-01-01", "data_from:>" => $.php.date("Y-m-d"), 'EduPromote.commission:>'=>0, 'EduPromote.lead:>'=>0]}


        


{insert 'file:chunks/courses/course.hide.if.tpl'}

{'!mFilter2' | snippet : [

    'parents'=>$_modx->config['site_parent_courses'],
    'depth'=>3,
    'class'=>'modResource',
    'loadModels'=>'promote',                            
    'innerJoin'=>[
        'EduPromote'=>[
            'class'=>'EduPromote',
            'on'=>'modResource.id = EduPromote.groupId',
        ],
    ],                            
    'select'=>[
        'EduPromote'=>'*',
        'modResource'=>'*',
    ],    
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
                tv|schedule==schedule,
                tv|time==time,
                tv|course_city==course_city,
                tv|course_region==course_region,
                tv|course_metro==course_metro
    ',
    'tplOuter'       =>'@FILE chunks/filter/filter.search.outer.tpl',
    'tpls'           =>'@FILE chunks/courses/courses.starts.block.tpl',
    'tplFilter.outer.course_category'=>'@FILE chunks/filter/filter.courses.category.select.tpl',
    'tplFilter.outer.course_sub_category'=>'@FILE chunks/filter/filter.courses.sub_category.select.tpl',
    'tplFilter.outer.course_sub_category_type'=>'@FILE chunks/filter/filter.courses.sub_category_type.select.tpl',
    'tplFilter.outer.course_type'=>'@FILE chunks/filter/filter.courses.course_type.select.tpl',
    'tplFilter.outer.for_ages'=>'@FILE chunks/filter/filter.for_ages.select.tpl',
    'tplFilter.outer.for_levels'=>'@FILE chunks/filter/filter.for_levels.select.tpl',
    'tplFilter.outer.form_of_study'=>'@FILE chunks/filter/filter.form_of_study.select.tpl',
    'tplFilter.outer.schedule'=>'@FILE chunks/filter/filter.schedule.select.tpl',
    'tplFilter.outer.time'=>'@FILE chunks/filter/filter.time.select.tpl',
    
    'tplFilter.outer.course_city'=>'@FILE chunks/filter/fields.location.city.tpl',
    'tplFilter.outer.course_region'=>'@FILE chunks/filter/filter.location.region.tpl',
    'tplFilter.outer.course_metro'=>'@FILE chunks/filter/fields.location.metro.tpl',
        
    'suggestionsRadio'   =>'resource|parent',
    'showEmptyFilters'   =>'true',
    'filterOptions'      => $filterOptions,
    'includeTVs' => 'course_owner,  
                    data_continue, 
                    course_continue, 
                    sortWeight, 
                    deposit, 
                    sale, 
                    num_months_of_study,
                    course_category, 
                    course_sub_category, 
                    schedule, 
                    time, 
                    form_of_study, 
                    course_city, 
                    small_image,
                    course_group_title,
                    data_from,
                    data_to,
                    course_duration,
                    num_people_in_group,
                    price_course,
                    price_course_month
                ',            
    
    
    
    'sortby'=>'{"data_from":"ASC"}',
    'where' => $where,
    'ajaxMode' => 'scroll'
]}    
{/block}