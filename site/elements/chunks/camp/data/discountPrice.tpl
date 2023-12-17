{set $my_company_id = $_modx->user.id | user:'my_company_id'}
{if $my_company_id == $idUserCamp}
    {set $priceDiscount = $data['pricesAndDiscounts']['data']['staffDiscountPrice']}
{else}
    {set $priceDiscount = $data['pricesAndDiscounts']['data']['usersDiscountPrice']}
{/if}