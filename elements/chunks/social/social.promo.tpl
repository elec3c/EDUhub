        <section class="corptask section__mgb--sm">
            <div class="container">
                <div class="corptask__wrap section__lr section__mgb--sm">
                   <div class="corptask__text"> Наша задача - <br class="show-tablet"> стать <b>полезным инструментом</b> <br> для HR, L&D, EVENT-МЕНЕДЖЕРОВ</div>
                </div> 

                <div class="section__head text--center mb--sm">
                    <h2 class="section__title fs--md">Мы в социальных сетях</h2>
                </div>
                
                <div class="corptask__social">
                    <ul>
                        {if $_modx->getPlaceholder('+instagram')}<li><a href="{$_modx->getPlaceholder('+instagram')}" target="_blank"><img src="assets/images/icons/instagram.svg" alt=""></a></li>{/if}
                        {if $_modx->getPlaceholder('+tiktok')}<li><a href="{$_modx->getPlaceholder('+tiktok')}" target="_blank"><img src="assets/images/icons/tiktok.svg" alt=""></a></li>{/if}
                        {if $_modx->getPlaceholder('+linkedin')}<li><a href="{$_modx->getPlaceholder('+linkedin')}" target="_blank"><img src="assets/images/icons/linkedin.svg" alt=""></a></li>{/if}
                        {if $_modx->getPlaceholder('+facebook')}<li><a href="{$_modx->getPlaceholder('+facebook')}" target="_blank"><img src="assets/images/icons/facebook.svg" alt=""></a></li>{/if}
                        {if $_modx->getPlaceholder('+vk')}<li><a href="{$_modx->getPlaceholder('+vk')}" target="_blank"><img src="assets/images/icons/vk.svg" alt=""></a></li>{/if}                        
                    </ul>
                </div>
            </div>
        </section><!--corptask-->