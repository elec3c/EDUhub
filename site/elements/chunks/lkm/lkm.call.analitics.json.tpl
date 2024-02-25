{set $fullname = $name?:'-'}
{set $school_name = $school_id | user : 'fullname'}
{set $school = $school_name?:'-'}
{set $group_name = '!pdoField' | snippet : ['id' => $res_id, 'field' => 'course_group_title']}
{set $group = $group_name?:$pagetitle}
{set $url = $group_id | url}
{set $data_start = $date | date : "d.m.Y"}
{if $openDate > 0}
    {set $data_open = $openDate | date : "d.m.Y"}
{else}
    {set $data_open = 0}
{/if}
{set $commission = 10}

["fullname":"{$fullname}", "school":"{$school}", "group":"{$group}", "url":"{$url}", "data_start":"{$data_start}","data_open": "{$data_open}","commission":"{$commission} руб."],

