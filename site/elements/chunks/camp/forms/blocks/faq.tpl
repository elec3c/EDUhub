<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Часто задаваемые вопросы</div>
    </div>
    {set $faq = $data['faq']['data']['faq']}
    <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
        <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить вопрос</a>
        {if $faq}
        {foreach $faq as $idx => $item}
            <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                <a href="#" class="cmp_create__ibox-label {if $idx == 0}hide{/if} js-camp-inputs-remove">Удалить вопрос</a>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Вопрос</div>
                    <input name="{$prefixForm}faq_question[]" class="input input--camp" placeholder="Введите вопрос" value="{$item['question']}">
                </div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Ответ</div>
                    <textarea name="{$prefixForm}faq_answer[]" class="input input--camp" placeholder="Введите ответ">{$item['answer']}</textarea>
                </div>
            </div>
        {/foreach}
        {else}
            <div class="cmp_create__ibox cmp_create__imw js-camp-inputs-row">
                <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить вопрос</a>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Вопрос</div>
                    <input name="{$prefixForm}faq_question[]" class="input input--camp" placeholder="Введите вопрос">
                </div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Ответ</div>
                    <textarea name="{$prefixForm}faq_answer[]" class="input input--camp" placeholder="Введите ответ"></textarea>
                </div>
            </div>
        {/if}
    </div>
</div>