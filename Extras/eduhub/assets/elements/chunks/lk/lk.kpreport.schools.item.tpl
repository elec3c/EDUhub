{set $isOK = ($.php.intval($uid) | ismember : ["Organization"])}
{if $isOK}                        
                            {set $tenderResponseArr = $.php.explode(',',$tenderResponseIds)}                                        
                            {set $school_id = $.php.intval($uid)}
                            {if $.php.in_array($school_id, $tenderResponseArr)}
                                {set $status_id = 'tenderStatus' | snippet :['school_id' => $school_id, 'tender_id' => $tender_id]}
                                {switch $status_id}
                                    {case 1}
                                        {set $status = "Заявка принята школой"}
                                        {set $color = "#EC2B08"}
                                    {case 2}
                                        {set $status = "Заявка отклонена школой"}
                                        {set $color = "red"}
                                    {case 3}
                                        {set $status = "Заключение договора"}
                                        {set $color = "green"}
                                    {case 4}
                                        {set $status = "Заявка отклонена Вами"}
                                        {set $color = "black"}
                                    {case 0}
                                        {set $status = "Заявка удалена Вами"}
                                        {set $color = "red"}                                            
                                    {default}
                                        {set $status = "Заявка получена Вами"}
                                        {set $color = "black"}          
                                {/switch}
                            {else}
                            
                                {set $checkSubscribeSend = 'checkSubscribeSend' | snippet :['user_id' => $school_id, 'cource_id' => $tender_id, 'service_id'=>2]}
                                {if $checkSubscribeSend}
                                    {set $status = "Заявка получена школой"}
                                    {set $color = "black"}          
                                {else}
                                    {set $status = "Заявка не получена школой"}
                                    {set $color = "black"}          
                                {/if}
                                {set $status_id=123}
                                
                            {/if}
                            
                            
                                {set $userPageID = 'getSchoolsPageID' | snippet :['schools_id' => $school_id]}
                                {if $userPageID > 0}
                                <div class="kpreport__item-row">
                                    <div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Учебные центры</div>
                                        {*include "file:chunks/users/user.photo.tpl" user_id=$school_id*}
                                        <a href="{$userPageID | url}">{$userPageID | resource : "pagetitle"}</a>
                                    </div>
                                    {*<div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Участвуют в тендере</div>
                                        {if $status_id !=123 }
                                            {set $fullname = $school_id | user : "fullname"?:"-"}
                                            {*if ($fullname!="-") && ($userPageID > 0)}
                                                {*include "file:chunks/users/user.photo.tpl" user_id=$school_id*}
                                               {* <a href="{$userPageID | url}">{$fullname}</a>*}
                                            {*else*}
                                                {*$fullname}
                                            {*/if*}
                                        {*else*}
                                        {*    &nbsp; *}
                                        {*/if*}
                                    {*</div>*}
                                    <div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Статус</div>
                                        <b style={"color:"~$color}>{$status}</b>
                                    </div>
                                    
                                    <div class="kpreport__item-cell kpreport__item-action">
                                    </div>
                                </div>
                                {/if}
{/if}