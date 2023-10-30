<div class="popup " data-popup="partnership_dogovor_add">
	<div class="popup__content">
		<div class="popup__bg popup-close"></div>
		<div class="popup__container">
			<a class="popup__close popup-close">
				<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M11 21C16.5 21 21 16.5 21 11C21 5.5 16.5 1 11 1C5.5 1 1 5.5 1 11C1 16.5 5.5 21 11 21Z" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M8.17188 13.8299L13.8319 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
					<path d="M13.8319 13.8299L8.17188 8.16992" stroke="#7D7D7D" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
				</svg>					
			</a>
			<div class="popup__body">
				<div class="popup__head">
                    {set $isSchool = ($_modx->user.id | ismember : ['Organization'])}				    
                    {if $isSchool}
					    <div class="popup__title" id="partnership_dogovor_add_text">Подтверждение подписания договора с компанией</div>
					{else}
                        <div class="popup__title" id="partnership_dogovor_add_text">Подтверждение подписания договора с учебным центром</div>
					{/if}
				</div>

				<button class="btn btn--red w-all accept_partnership">Подтверждаю</button>
				<p class="btn btn--bdred w-all popup-close">Отмена</p>
			</div>
		</div><!--popup__container-->
	</div>
</div>