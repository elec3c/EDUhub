<div class="cmp_create__blocks js-accord-item">
    <div class="cmp_create__blocks-head js-accord-toggle">
        <div class="cmp_create__blocks-title">Преимущества</div>
    </div>
    <div class="cmp_create__blocks-body js-accord-body  js-camp-inputs">
        <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить преимущество</a>
    {set $advantages = $data['advantages']['data']['advantages']}
    {if $advantages}
        {foreach $advantages as $idx => $item}
            <div class="cmp_create__ibox cmp_create__imw  js-camp-inputs-row">
                <a href="#" class="cmp_create__ibox-label {if $idx == 0}hide{/if} js-camp-inputs-remove">Удалить преимущество</a>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Заголовок</div>
                    <input name="{$prefixForm}advantage_title[]" class="input input--camp" placeholder="Введите заголовок" value="{$item['title']}">
                </div>
                <div class="cmp_create__irow">
                    <div class="cmp_create__irow-label">Описание</div>
                    <textarea name="{$prefixForm}advantage_description[]" class="input input--camp" placeholder="Введите описание">{$item['description']}</textarea>
                </div>
            </div>
        {/foreach}
    {else}
        <div class="cmp_create__ibox cmp_create__imw  js-camp-inputs-row">
            <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить преимущество</a>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Заголовок</div>
                <input name="{$prefixForm}advantage_title[]" class="input input--camp" placeholder="Введите заголовок">
            </div>
            <div class="cmp_create__irow">
                <div class="cmp_create__irow-label">Описание</div>
                <textarea name="{$prefixForm}advantage_description[]" class="input input--camp" placeholder="Введите описание"></textarea>
            </div>
        </div>
    {/if}
    </div>
</div>