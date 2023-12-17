<form class="form well ec-form" method="post" role="form" id="ec-form-{$fid}" data-fid="{$fid}" action="" {if $files}formenctype="multipart/form-data"{/if}>
    <input type="hidden" name="thread" value="{$thread}">
    <input type="hidden" name="MAX_FILE_SIZE" value="{'upload_maxsize'|option}">

    <input type="hidden" name="user_name" class="form-control" id="ec-user_name-{$fid}" value="{$user_name}" />
    <input type="hidden" name="user_email" class="form-control" id="ec-user_email-{$fid}" value="{$user_email}" />
    <input type="hidden" name="user_contacts" class="form-control" id="ec-user_contacts-{$fid}" value="{$user_contacts}" />
    <input type="hidden" name="subject" class="form-control" id="ec-subject-{$fid}" value="{$subject}" />
        
    <div class="chat__form-wrap">
        <textarea placeholder="Введите текст сообщения" class="input chat__form-input" type="text" name="text" id="ec-text-{$fid}">&nbsp;</textarea>
            {if $files}
                <input type="file" class="styler" name="files[]" id="ec-files-[[+fid]]" multiple="multiple" data-placeholder="Прикрепить файл">
                <span class="ec-error help-block" id="ec-files-error-[[+fid]]"></span>     
            {/if}        
            <button type="submit" name="send" class="chat__form-submit">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M19.29 9.48377L7.7 3.38377C4.95 1.93377 1.96 4.86377 3.35 7.64377L4.97 10.8838C5.42 11.7838 5.42 12.8438 4.97 13.7438L3.35 16.9838C1.96 19.7638 4.95 22.6838 7.7 21.2438L19.29 15.1438C21.57 13.9438 21.57 10.6838 19.29 9.48377Z" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>                                                    
            </button>
    </div>
</form>
<div id="ec-form-success-{$fid}"></div>