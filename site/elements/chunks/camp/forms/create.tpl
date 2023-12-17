<section class="cmp_create section__mg--sm js-accord-all">
    <div class="container">
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
        {set $prefixForm = 'cc_'}
        <form action="" method="post" class="cmp_create__form" enctype="multipart/form-data" id="create-camp">
            <input name="controll" class="no-display" type="text">

            {* Общая информация *}
            {include 'file:chunks/camp/forms/blocks/generalInformation.tpl'}

            {* Подробная программа *}
            {include 'file:chunks/camp/forms/blocks/detailedProgram.tpl'}

            {* Варианты посещений *}
            {include 'file:chunks/camp/forms/blocks/visitOptions.tpl'}

            {* Скидки *}
            {include 'file:chunks/camp/forms/blocks/discounts.tpl'}

            {* Условия, питание *}
            {include 'file:chunks/camp/forms/blocks/termsAndFood.tpl'}

            <div class="cmp_create__blocks js-accord-item">
                <div class="cmp_create__blocks-head js-accord-toggle">
                    <div class="cmp_create__blocks-title">Адрес</div>
                </div>
                <div class="cmp_create__blocks-body js-accord-body js-camp-inputs">
                    <div class="cmp_create__ibox cmp_create__address js-camp-inputs-row">
                        <div class="cmp_create__address-inputs">
                            <a href="#" class="cmp_create__ibox-label  js-camp-inputs-add">Добавить адрес</a>
                            <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить адрес</a>
                            <div class="js-camp-inputs">
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Город*</div>
                                    <input name="city" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Адрес*</div>
                                    <input name="address" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Метро</div>
                                    <input name="metro" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow js-camp-inputs-row">
                                    <div class="cmp_create__irow-label hcols">Кабинет
                                        <a href="#" class="cmp_create__ibox-label js-camp-inputs-add">Добавить кабинет</a>
                                        <a href="#" class="cmp_create__ibox-label hide js-camp-inputs-remove">Удалить кабинет</a>
                                    </div>
                                    <input name="cabinet" class="input input--camp" placeholder="">
                                </div>
                                <div class="cmp_create__irow">
                                    <div class="cmp_create__irow-label">Координаты</div>
                                    <input name="coord" class="input input--camp" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="cmp_create__address-map">
                            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A0ccf15922a72e333374995651c227f53e8272cc89ec2098a7f4104d0b483712a&amp;width=100%25&amp;height=400&amp;lang=ru_RU"></script>
                        </div>
                    </div>
                </div>
            </div>

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