{set $minValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
    'nameTv' => 'camp_ages',
    'valueTv' => $_modx->resource.camp_ages,
    'value' => 'min'
]}
{set $maxValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
    'nameTv' => 'camp_ages',
    'valueTv' => $_modx->resource.camp_ages,
    'value' => 'max'
]}
{set $data = '!getDataCamp' | snippet : [
    'id' => $_modx->resource.id
]}
{set $idUserCamp = $_modx->resource.id | resource: 'userId'}
<section class="cmp_hero">
    <div class="cmp_hero__star1 cmp_star cmp_star--60 star--cc"></div>
    <div class="cmp_hero__star2 cmp_star cmp_star--45"></div>
    <div class="cmp_hero__star3 cmp_star cmp_star--80"></div>
    <div class="container">
        <div class="cmp_hero__infph">
            <div class="cmp_hero__info">
                {if $_modx->user.photo}
                    <div class="cmp_hero__logo"><img src="{$_modx->user.photo}" alt=""></div>
                {/if}
                <h1 class="cmp_hero__title">{$_modx->resource.pagetitle}</h1>
                <div class="cmp_hero__desc">{$description}</div>
                <div class="cmp_hero__buttons hide-mobile-lg">
                    <button class="btn btn--purple btn--sm">Получить доп. скидку</button>
                </div>   
                <div class="cmp_hero__star4 cmp_star cmp_star--45 star--cc"></div> 
            </div>
            <div class="cmp_hero__photo"><img src="{$image}" alt=""></div>
        </div>

        <div class="cmp_hero__buttons show-mobile-lg">
            <button class="btn btn--purple btn--sm w-all">Получить доп. скидку</button>
        </div>   

        <div class="cmp_hero__cards">
            <div class="cmp_hero__card">
                {$minValueCampAges} - {$maxValueCampAges} лет
            </div>

            {insert 'file:chunks/camp/data/discountPrice.tpl'}
            <div class="cmp_hero__card">доп. скидка <br>  {$priceDiscount} руб.</div>

            <div class="cmp_hero__card">
                {$_modx->resource.camp_date_from | date : "d.m.y"} - {$_modx->resource.camp_date_to | date : "d.m.y"} <br>
                {$weekDaysFrom} - {$weekDaysTo} <br class="hide-mobile-lg">
                {$classTimeFrom} - {$classTimeTo}
            </div>
            {insert 'file:chunks/camp/data/halfDay.tpl'}
            {if $halfDay === true}
                <div class="cmp_hero__card">можно 1/2 дня</div>
            {/if}
            {insert 'file:chunks/camp/data/meals.tpl'}{*Массив значений - Питание - return $mealsArray*}
            <div class="cmp_hero__card">{$mealsArray[$meals]}</div>
            {if $freeWiFi === 1}
                <div class="cmp_hero__card">free Wi - Fi</div>
            {/if}
            {if $freeParking === 1}
                <div class="cmp_hero__card">0 руб. <br class="hide-mobile-lg">  PARKING</div>
            {/if}
            {if $conditioner === 1}
                <div class="cmp_hero__card">кондиционер</div>
            {/if}

            <div class="cmp_hero__star5 cmp_star"></div> 
        </div>
    </div>
</section>