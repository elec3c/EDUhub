<form class="reviews__form ec-form" method="post" role="form" id="ec-form-{$fid}" data-fid="{$fid}" action="" {if $files}formenctype="multipart/form-data"{/if}>
    
    <input type="hidden" name="thread" value="{$thread}">
    <input type="hidden" name="MAX_FILE_SIZE" value="{'upload_maxsize'|option}">
    <input type="hidden" name="user_name" class="form-control" id="ec-user_name-{$fid}" value="{$user_name}" />
    <input type="hidden" name="user_email" class="form-control" id="ec-user_email-{$fid}" value="{$user_email}" />
        
    <fieldset class="starability" data-storage-id="ec-rating-{$fid}">
        <input type="hidden" name="rating" id="ec-rating-{$fid}" value="{$rating}" />
        <input type="radio" id="no-rate-basic" class="input-no-rate" name="rating" value="0" checked="" aria-label="No rating.">
    
            <input type="radio" id="rate1" name="rating" value="1" data-rating="1">
            <label for="rate1" title="Terrible">1 star</label>
            
            <input type="radio" id="rate2" name="rating" value="2" data-rating="2">
            <label for="rate2" title="Not good">2 stars</label>
                
            <input type="radio" id="rate3" name="rating" value="3" data-rating="3">
            <label for="rate3" title="Average">3 stars</label>
            
            <input type="radio" id="rate4" name="rating" value="4" data-rating="4">
            <label for="rate4" title="Very good">4 stars</label>
                
            <input type="radio" id="rate5" name="rating" value="5" data-rating="5">
            <label for="rate5" title="Amazing">5 stars</label>
        
        <span class="ec-error help-block" id="ec-rating-error-{$fid}"></span>
        <span class="starability-focus-ring"></span>
    </fieldset>

    <div class="input__row ec-antispam">
        <input type="text" name="{$antispam_field}" class="form-control" id="ec-{$antispam_field}-{$fid}" value="" />
    </div>
    <div class="input__row">
        <textarea name="text" placeholder="Ваш отзыв" class="input height-lg" rows="5" id="ec-text-{$fid}">{$text}</textarea>
    </div>
    {$recaptcha}
    <button class="btn btn--purple reviews__form-btn" type="submit" name="send">Отправить</button>
</form>
<div id="ec-form-success-{$fid}"></div>