<section class="cmp_create section__mg--sm js-accord-all">
    <div class="container">
        {set $typeCamp = $.get['type']}
        {if $.get['edit'] === 'true'}
            {set $data = '!getDataCamp' | snippet : [
                'id' => $_modx->resource.id
            ]}
            {set $campTitle = $_modx->resource.pagetitle}
            {set $campImage = $data['hero']['data']['image']}
            {set $uploadGallery = '!ufform' | snippet : [
                'tplForm'=>'@FILE chunks/camp/forms/galleryUserfiles.tpl',
                'class'=>'modResource',
                'list'=> 'camps',
                'parent' => $_modx->resource.id
                'dropzone'=>'{"maxFilesize":2,"maxFiles":9,"acceptedFiles":".jpg, .jpeg, .gif, .png","template":"edit"}'
            ]}
            {set $uploadGalleryOutcall = '!ufform' | snippet : [
                'tplForm'=>'@FILE chunks/camp/forms/galleryUserfilesOutcall.tpl',
                'class'=>'modResource',
                'list'=> 'campOutcall',
                'parent' => $_modx->resource.id,
                'dropzone'=>'{"maxFilesize":2,"maxFiles":9,"acceptedFiles":".jpg, .jpeg, .gif, .png","template":"edit"}'
            ]}
            {set $title = 'Редактирование лагеря'}
{*          <pre>*}
{*              {$data | print_r}*}
{*          </pre>*}
        {/if}
        <div class="section__head section__head--cols mb--md">
            <h2 class="section__title">{$title ?: 'Создание лагеря'}</h2>
            <div class="section__head-right">
                <a href="#" class="link link--nound cmp_create__toggle js-accord-toggle-all">
                    <span class="t_opened">Развернуть все</span>
                    <span class="t_closed">Свернуть все</span>
                </a>
            </div>
        </div>
        {* Фотогалерея *}
        {$uploadGallery}
        {if $typeCamp === 'outcall'}
            {$uploadGalleryOutcall}
        {/if}
        {set $prefixForm = 'cc_'}
        <form action="" method="post" class="cmp_create__form" enctype="multipart/form-data" id="create-camp">
            <input name="controll" class="no-display" type="text">

            {* Общая информация *}
            {include 'file:chunks/camp/forms/blocks/generalInformation.tpl'}

            {* Подробная программа *}
            {include 'file:chunks/camp/forms/blocks/detailedProgram.tpl'}

            {* Условия, питание *}
            {if $typeCamp === 'outcall'}
                {include 'file:chunks/camp/forms/blocks/prices.tpl'}
            {/if}

            {* Варианты посещений *}
            {if $typeCamp === 'urban'}
                {include 'file:chunks/camp/forms/blocks/visitOptions.tpl'}
            {/if}

            {* Скидки *}
            {include 'file:chunks/camp/forms/blocks/discounts.tpl'}

            {* Условия, питание *}
            {if $typeCamp === 'urban'}
                {include 'file:chunks/camp/forms/blocks/termsAndFood.tpl'}
            {/if}

            {* Адрес *}
            {if $typeCamp === 'urban'}
                {include 'file:chunks/camp/forms/blocks/address.tpl'}
            {/if}

            {* Продолжительность лагеря *}
            {include 'file:chunks/camp/forms/blocks/duration.tpl'}

            {* Преимущества *}
            {include 'file:chunks/camp/forms/blocks/advantages.tpl'}

            {* Распорядок дня (расписание) *}
            {include 'file:chunks/camp/forms/blocks/schedule.tpl'}

            {* Отзывы *}
            {include 'file:chunks/camp/forms/blocks/reviews.tpl'}

            {* FAQ *}
            {include 'file:chunks/camp/forms/blocks/faq.tpl'}

            {* Условия размещения *}
            {if $typeCamp === 'outcall'}
                {include 'file:chunks/camp/forms/blocks/accommodationConditions.tpl'}
            {/if}

            <div class="cmp_create__buttons">
                <button class="btn btn--purple btn--sm" type="submit">Сохранить</button>
                <label class="form__lcheck">
                    <input type="checkbox" class="styler styler--camp" name="{$prefixForm}draft" {if $_modx->resource.published == 0 || $.get['edit'] !== 'true'}checked{/if}>
                    <span>Черновик (без публикации)</span>
                </label>
{*                <button class="cmp_create__sdraft btn btn--bdpurple btn--sm" type="button">Сохранить черновик</button>*}
            </div>
        </form>
    </div>
</section>