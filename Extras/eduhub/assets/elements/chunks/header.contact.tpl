{set $contact_page_id = 13}
{set $email = ($contact_page_id | resource : 'email')}    
{set $phone = ($contact_page_id | resource : 'phone')}
{set $address = ($contact_page_id | resource : 'address')}
<div class="header__navfix-info">
{if $email}
	<div class="header__navfix-info__row header__navfix-info__label">Электронная почта</div>
	<div class="header__navfix-info__row"><a href="mailto:{$email}">{$email}</a></div>
{/if}
{if $phone}
	<div class="header__navfix-info__row header__navfix-info__label">Телефон</div>
	<div class="header__navfix-info__row"><a href="tel:{$phone | clearphone}">{$phone}</a></div>
{/if}
{if $address}
	<div class="header__navfix-info__row header__navfix-info__label">Главный офис</div>
    <div class="header__navfix-info__row">{$address}</div>
{/if}
</div>