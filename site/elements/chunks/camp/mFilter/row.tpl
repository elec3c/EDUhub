{set $data = '!getDataCamp' | snippet : [
    'id' => $id
]}
{set $minValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
    'nameTv' => 'camp_ages',
    'valueTv' => $id | resource: 'camp_ages',
    'value' => 'min'
]}
{set $maxValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
    'nameTv' => 'camp_ages',
    'valueTv' => $id | resource: 'camp_ages',
    'value' => 'max'
]}
<div class="cmp_card">
    <div class="cmp_card__info">
        {if $_modx->user.photo}
            <div class="cmp_card__logo"><img src="{$_modx->user.photo}" alt=""></div>
        {/if}
        <div class="cmp_card__photo show-mobile-lg">
            <img src="{$data['hero']['data']['image'] | phpthumbon: 'w=717&h=467&q=100&zc=1'}" alt="">
        </div>
        <h3 class="cmp_card__title">{$pagetitle}</h3>
        <div class="cmp_card__desc">{$data['hero']['data']['description']}</div>
        <div class="cmp_card__address">
            <div class="cmp_card__address-item">г. Минск, ул. Уручская 19</div>
            <div class="cmp_card__address-item">г. Брест, ул. Пушкина 9</div>
        </div>
        <div class="cmp_card__buttons hide-mobile-lg">
            {include 'file:chunks/camp/misc/camp_btn_sale_add.tpl' pid=$id btn='Получить скидку'}
            <a href="{$id | url}" class="btn btn--bdpurple btn--sm">Подробнее</a>
        </div>
    </div>
    <div class="cmp_card__right">
        <div class="cmp_card__photo hide-mobile-lg">
            <img src="{$data['hero']['data']['image'] | phpthumbon: 'w=717&h=467&q=100&zc=1'}" alt="">
        </div>
        <div class="cmp_card__props">
            <div class="cmp_card__prop"><span><span class="cmp_card__prop-oldprice">600 руб</span> &nbsp; <span class="cmp_card__prop-price">350 руб</span> до 15.09.2023</span></div>

            <div class="cmp_card__prop"><span>{$minValueCampAges} - {$maxValueCampAges} лет</span></div>

            <div class="cmp_card__prop">
                {set $idUserCamp = $id | resource: 'userId'}
                {insert 'file:chunks/camp/data/discountPrice.tpl'}
                <span>доп. скидка {$priceDiscount} руб.</span>
            </div>

            {insert 'file:chunks/camp/data/halfDay.tpl'}
            {if $halfDay === true}
                <div class="cmp_card__prop"><span>можно 1/2 дня</span></div>
            {/if}

            <div class="cmp_card__prop">
                <span>
                    {$id | resource: 'camp_date_from' | date : "d.m.y"} - {$id | resource: 'camp_date_to' | date : "d.m.y"}  <br>
                    {$data['hero']['data']['weekDaysFrom']} - {$data['hero']['data']['weekDaysTo']}
                    {$data['hero']['data']['classTimeFrom']} - {$data['hero']['data']['classTimeTo']}</span>
            </div>
        </div>
    </div>

    <div class="cmp_card__buttons show-mobile-lg">
        {include 'file:chunks/camp/misc/camp_btn_sale_add.tpl' pid=$id btn='Получить скидку'}
        <a href="{$id | url}" class="btn btn--bdpurple btn--sm">Подробнее</a>
    </div>
</div>