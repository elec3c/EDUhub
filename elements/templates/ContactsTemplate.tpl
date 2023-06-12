{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="contacts section__mgb">
    <div class="container">
        <div class="section__head">
            <h2 class="section__title">Контактная информация</h2>
        </div>
        <div class="contacts__cols">
            
            <div class="contacts__info">
                {if $email}
                <div class="contacts__info-row contacts__info-label">Электронная почта</div>
                <div class="contacts__info-row"><a href="mailto:{$email}">{$email}</a></div>
                {/if}
                {if $phone}
                <div class="contacts__info-row contacts__info-label">Телефон</div>
                <div class="contacts__info-row"><a href="tel:{$phone | clearphone}">{$phone}</a></div>
                {/if}
                {if $address}
                <div class="contacts__info-row contacts__info-label">Главный офис</div>
                <div class="contacts__info-row">{$address}</div>
                {/if}
            </div>

            <div class="contacts__map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2347.73710559404!2d27.69115164279344!3d53.95417716531569!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbc937833703c5%3A0x2f762aea79dae878!2z0YPQuy4g0KPRgNGD0YfRgdC60LDRjyAxOSwg0JzQuNC90YHQug!5e0!3m2!1sru!2sby!4v1669885171539!5m2!1sru!2sby" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
                    
            {include 'file:chunks/feedback/feedback.tpl'}
            
        </div>
    </div>
</section><!-- contacts -->
{/block}