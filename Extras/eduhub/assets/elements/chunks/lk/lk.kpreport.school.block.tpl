                                <div class="kpreport__item-row">
                                    <div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Учебный центр</div>
                                        {$school_id | user : "fullname"?:"-"}
                                    </div>
                                    <div class="kpreport__item-cell">
                                        <div class="kpreport__item-label show-desktop">Статус</div>
                                        {switch $status_id}
                                            {case 1}
                                                Принято школой
                                            {case 2}
                                                Отказано школой
                                            {case 3}
                                                Заключение договора
                                            {case 4}
                                                Отказано Вами
                                            {case 0}
                                                Удалено Вами
                                            {default}
                                                -
                                        {/switch}
                                    </div>
                                    
                                    <div class="kpreport__item-cell kpreport__item-cell--download">
                                        <div class="kpreport__item-label show-desktop">КП (вложенные файлы)</div>
                                        - 
                                    </div>
                                    <div class="kpreport__item-cell kpreport__item-action">
                                        {if ($status_id == 1) && ($date_stop < $.php.time())}
                                            <buttons class="btn btn--purple accept-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="3">Заключить договор</buttons>
                                        {/if}
                                        {if ($status_id == 1) && ($date_stop >= $.php.time())}
                                            <buttons class="btn btn--purple" data-open-popup="tender_wait_date_stop">Заключить договор</buttons>
                                        {/if}                                        
                                        {if $status_id != 0 && $status_id != 4 && $status_id != 2}
                                            {if $status_id == 3}
                                                <a class="btn btn--more delete-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="1">Отказаться от договора</a>
                                            {else}
                                                <button class="btn btn--red kpreport-refuse reject-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="4">Отказать</button>
                                            {/if}
                                            <button class="btn btn--remove btn--white delete-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="0">
                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M21 5.97998C17.67 5.64998 14.32 5.47998 10.98 5.47998C9 5.47998 7.02 5.57998 5.04 5.77998L3 5.97998" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M8.5 4.97L8.72 3.66C8.88 2.71 9 2 10.69 2H13.31C15 2 15.13 2.75 15.28 3.67L15.5 4.97" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M18.8484 9.14014L18.1984 19.2101C18.0884 20.7801 17.9984 22.0001 15.2084 22.0001H8.78844C5.99844 22.0001 5.90844 20.7801 5.79844 19.2101L5.14844 9.14014" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M10.3281 16.5H13.6581" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M9.5 12.5H14.5" stroke="#D60000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>                                   
                                            </button>
                                        {else}
                                            <a class="btn btn--more delete-tender" data-id="{$tender_id}" data-user="{$school_id}" data-status="1">Восстановить</a>
                                        {/if}
                                    </div>
                                </div>                            
                                {if $status_id in [1,3]}                                                        
                                <div class="chat">
                                    {set $prefix = $tender_id~"-"~$school_id}
                                    {set $thread = "tender-"~$prefix}
                                    <div class="chat__messages chat__scroll chat-scroll" id="chat_messages"> 
                                        {'!ecMessages'| snippet: [
                                            'files' => 1,
                                            'tpl' => \'@INLINE 
                                                <div class="chat__messages-date">{$date | date_format:"%e %b, %Y"}</div>
                                                <div class="{if $_modx->user.id==$createdby}chat__messages-item chat__messages-item-right{else}chat__messages-item{/if}" id="ec-{$thread_name}-message-{$id}">
                                                    <div class="chat__messages-item__photo">
                                                        {include "file:chunks/users/user.photo.message.tpl" user_id=$createdby}
                                                    </div>
                                                    <div class="chat__messages-item__cont">
                                                        <div class="chat__messages-item__head">
                                                            <div class="chat__messages-item__name">{$user_name}</div>
                                                            <div class="chat__messages-item__date">{$date | date:"H:i"}</div>
                                                        </div>    
                                                        <div class="chat__messages-item__text">
                                                            {$text}
                                                        </div>
                                                        
                                                        {if $files}
                                                        <div class="ec-message__files">
                                                            {foreach $files as $file}
                                                                {set $name = $file["name_original"]}
                                                                {set $url = $file["url"]}
                                                                <div class="ec-message__files-item">
                                                                    <a href="{$url}" target="_blank" download>{$name}</a>
                                                                </div>
                                                            {/foreach}
                                                        </div>
                                                        {/if}                                                        
                                                        
                                                    </div>
                                                </div>
                                            ',
                                            'limit' => 10,
                                            'thread' => $thread,
                                            'resourceFields'=>'id,pagetitle'
                                        ]}                              
                                    </div><!--chat__messages-->
                                    <div class="chat__form chat__content-pd">
                                        {'!ecForm' | snippet: [
                                            'thread' => $thread,
                                            'formId' => $thread,
                                            'tplForm' => '@FILE chunks/forms/tender.message.form.tpl',
                                            'files' => 1,
                                            'fileTypes' => 'jpg,jpeg,png,gif,doc,pdf,txt,doc,docx,xls,xlsx',
                                            'fileSize' => 10145728,
                                            'filesCount' => 1,                                            
                                            'autoPublish' => 'All'
                                        ]}
                                    </div><!--chat__form-->
                                </div>
                                {/if}