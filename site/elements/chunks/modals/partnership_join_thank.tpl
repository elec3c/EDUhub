<div class="popup popup-thank" data-popup="partnership_join_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__title" id="partnershipJoinOfferMsg">Вы успешно присоединились к партнерской программе.</div>
				{*<p>&nbsp</p>
				{if $_modx->resource.template in list [11]}
				Для просмотра компаний, открытых для предложений о партнерстве, обновите страницу<br>
				{elseif $_modx->resource.template in list [10]}
				Для просмотра школ, открытых для предложений о партнерстве, обновите страницу<br>
				{/if}
				<a class="btn btn--gray w-all" href="{$_modx->makeUrl($_modx->resource.id)}">Обновить</a>*}
			</div>
		</div><!--popup__container-->
	</div>
</div>

<div class="popup popup-thank" data-popup="partnership_join_offer_reject_thank">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#FFFFFF" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
            <div class="popup__body">
				<div class="popup__title" id="partnershipJoinOfferMsg">Вы успешно отсоединились от партнерской программы.</div>
				{*<p>&nbsp</p>
				{if $_modx->resource.template in list [10,11]}
				Необходимо обновить страницу<br>
				<a class="btn btn--gray w-all" href="{$_modx->makeUrl($_modx->resource.id)}">Обновить</a>
				{/if}*}
			</div>
		</div><!--popup__container-->
	</div>
</div>