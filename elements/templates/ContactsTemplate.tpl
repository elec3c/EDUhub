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
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5277.480387154587!2d27.560693452890796!3d53.89886429203466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbcfc17cc6e8f9%3A0x18f0cae7bc9170db!2z0YPQuy4g0JrQsNGA0LvQsCDQnNCw0YDQutGB0LAgMzIsINCc0LjQvdGB0Lo!5e0!3m2!1sru!2sby!4v1658075686149!5m2!1sru!2sby" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
                    
            {include 'file:chunks/feedback/feedback.tpl'}
            
        </div>
    </div>
</section><!-- contacts -->
{/block}