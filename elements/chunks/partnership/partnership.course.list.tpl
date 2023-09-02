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
                        {set $courses_all = explode(',', $couses_list)}
                        {foreach $courses_all as $k=>$v}
                            {set $title = $v | resource : 'pagetitle'}
                            {set $title = ucfirst(trim(str_replace('Шаблон','',$title)))}
                            {if intval($v) && $title}
                                <li>{$title |truncate:60:" ..."}</li>
                            {/if}
                        {/foreach}
                    </ul>
                    {else}
                         Любой курс школы
                    {/if}