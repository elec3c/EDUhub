        <section class="corptask section__mgb--sm">
            <div class="container">
                {if $_modx->resource.id in [1131]}
                <div class="corptask__wrap section__lr section__mgb--sm">
                   <div class="corptask__text"> Наша задача - <br class="show-tablet"> стать <b>полезным инструментом</b> <br> для HR, L&D, EVENT-МЕНЕДЖЕРОВ</div>
                </div> 
                {/if}

                <div class="section__head text--center mb--sm">
                    <h2 class="section__title fs--md">Мы в социальных сетях</h2>
                </div>
                
                <div class="corptask__social">
                    <ul>
                        {if $_modx->getPlaceholder('+instagram')}<li><a href="{$_modx->getPlaceholder('+instagram')}" target="_blank"><img src="assets/images/icons/instagram.svg" alt="instagram"></a></li>{/if}
                        {if $_modx->getPlaceholder('+tiktok')}<li><a href="{$_modx->getPlaceholder('+tiktok')}" target="_blank"><img src="assets/images/icons/tiktok.svg" alt="tiktok"></a></li>{/if}
                        {if $_modx->getPlaceholder('+linkedin')}<li><a href="{$_modx->getPlaceholder('+linkedin')}" target="_blank"><img src="assets/images/icons/linkedin.svg" alt="linkedin"></a></li>{/if}
                        {if $_modx->getPlaceholder('+facebook')}<li><a href="{$_modx->getPlaceholder('+facebook')}" target="_blank"><img src="assets/images/icons/facebook.svg" alt="facebook"></a></li>{/if}
                        {if $_modx->getPlaceholder('+vk')}<li><a href="{$_modx->getPlaceholder('+vk')}" target="_blank"><img src="assets/images/icons/vk.svg" alt="vk"></a></li>{/if}                        
                    </ul>
                </div>
            </div>
        </section><!--corptask-->