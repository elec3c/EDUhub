<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Отзывы</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
        <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить отзыв</a>
        {set $reviews = $data['reviews']['data']['reviews']}
        {if $reviews}
            {foreach $reviews as $idx => $item}
                <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                    <a href="#" class="cmp_create__ibox-label {if $idx == 0}hide{/if} js-camp-inputs-remove">Удалить отзыв</a>
                    <div class="cmp_create__irow">
                        <div class="cmp_create__irow-label">Имя пользователя</div>
                        <input name="{$prefixForm}review_name[]" class="input input--camp" placeholder="Введите имя" value="{$item['name']}">
                    </div>
                    <div class="cmp_create__irow">
                        <div class="cmp_create__irow-label">Отзыв</div>
                        <textarea name="{$prefixForm}review_text[]" class="input input--camp" placeholder="Введите отзыв">{$item['text']}</textarea>
                    </div>
                </div>
            {/foreach}
        {else}
            <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить отзыв</a>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Имя пользователя</div>
                    <input name="{$prefixForm}review_name[]" class="input input--camp" placeholder="Введите имя">
                </div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Отзыв</div>
                    <textarea name="{$prefixForm}review_text[]" class="input input--camp" placeholder="Введите отзыв"></textarea>
                </div>
            </div>
        {/if}
    </div>
</div>