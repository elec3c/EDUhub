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
            {include 'file:chunks/camp/city/cards/ages.tpl'}
            {include 'file:chunks/camp/city/cards/discount.tpl'}
            {include 'file:chunks/camp/city/cards/dates.tpl'}
            {switch $_modx->resource.camp_format}
                {case 'urban'}
                    {include 'file:chunks/camp/city/cards/halfDay.tpl'}
                    {include 'file:chunks/camp/city/cards/meals.tpl'}
                    {include 'file:chunks/camp/city/cards/wifi.tpl'}
                    {include 'file:chunks/camp/city/cards/parking.tpl'}
                    {include 'file:chunks/camp/city/cards/conditioner.tpl'}
                {case 'outcall'}
                    {include 'file:chunks/camp/city/cards/location.tpl'}
                    {include 'file:chunks/camp/city/cards/meals.tpl'}
                    {include 'file:chunks/camp/city/cards/pool.tpl'}
                    {include 'file:chunks/camp/city/cards/transfer.tpl'}
                    {include 'file:chunks/camp/city/cards/wifi.tpl'}
            {/switch}
            <div class="cmp_hero__star5 cmp_star"></div> 
        </div>
    </div>
</section>