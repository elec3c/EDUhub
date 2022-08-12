{set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])}
{if $_modx->user.id > 0}
    {if $isOK || $_modx->user.id=='2'}
    <section class="reviews section__mgb--md">
        <h2 class="section__title">Оставить отзыв</h2>
        
        {'!ecForm' | snippet: [
            'tplForm' => '@FILE chunks/forms/reviews.form.tpl'
        ]}
        
    </section>
    {/if}
{else}
    <section class="reviews section__mgb--md">
        <h2 class="section__title">Оставить отзыв</h2>
        <p class="section__intro">Чтобы оставить отзыв, необходимо <a href="#" class="link" data-open-popup="auth">войти в личный кабинет</a></p>    
    </section>
{/if}