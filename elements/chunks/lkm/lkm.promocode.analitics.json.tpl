{set $fullname = $userId | user : 'fullname'}
{set $school_name = $course_owner | user : 'fullname'}
{set $school = $school_name?:'-'}
{set $group = $course_group_title?:$pagetitle}
{set $url =  $res_id | url}
{if $active and empty($deleted)}{set $promocode = $code}{else}{set $promocode = "Отменен"}{/if}
{set $data_start = $data_from | date : "d.m.Y"}
{set $data_stop = $data_to | date : "d.m.Y"}
{set $commission = $cur_commission}
{if $deal}{set $dogovor = "Заключен"}{else}{set $dogovor = "Отменен"}{/if}
["fullname":"{$fullname}", "school":"{$school}", "group":"{$group}", "url":"{$url}", "promocode":"{$promocode}", "data_start":"{$data_start}","data_stop": "{$data_stop}","commission":"{$commission}","dogovor":"{$dogovor}"],

