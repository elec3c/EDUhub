{if $type=='diff'}
<ul>
    {set $couses_list = '!pdoResources' | snippet : [
        'parents'=>'61',
        'returnIds'=>'1',
        'depth'=>0,
        'limit'=>0,
        'includeTVs'=>'course_group_title, course_owner',
        'where'=>["course_owner"=>$from_user_id]
    ]}
    {set $arr=[]}
    {set $courses_all = explode(',', $couses_list)}
    {foreach $courses_all as $k=>$v}
        {set $course_category = '!pdoField' | snippet : [
                            'id' => $v,
                            'field' => 'course_category',
                             'top' => '0'
         ]}

        {if !in_array($course_category, $arr) && $course_category}
            {set $title = $course_category | resource : 'pagetitle'}
            <li>{$title |truncate:60:" ..."}</li>
        {/if}
        {set $arr[]=$course_category}
    {/foreach}
</ul>
{else}
    {set $userPageID = '!getSchoolsPageID' | snippet : ['schools_id' => $from_user_id]}
    {set $direction = $_modx->runSnippet('!getValuesTV', ['tvid' => 90, 'arr'=>1])}
    {set $r = '!pdoField' | snippet : ['id' => $userPageID, 'field' => 'schools_direction_b2b','top' => '0']}
    {set $curr_direction = $.php.explode('||',$r)}
    {if $curr_direction[0]==''}
        Не указаны направления
    {else}
    <ul>
        {foreach $direction as $k=>$v}
            {if $.php.in_array($k,$curr_direction)}
                <li>{$k | resource : 'pagetitle'}</li>
            {/if}
        {/foreach}
    </ul>
    {/if}
{/if}