{set $isOK = ($_modx->user.id | ismember : ['Administrator','Users'])}
{if $_modx->user.id > 0}
    {if $isOK || $_modx->user.id=='2'}
        {if $_modx->resource.course_template}
        <section class="reviews section__mgb--md">
            <h2 class="section__title">Оставить отзыв</h2>
            {set $thread = $_modx->resource.course_template?'thread-'~$_modx->resource.course_template:'resource-'~$id}
            {'!ecForm' | snippet: [
                'thread' => $thread
                'tplForm' => '@FILE chunks/forms/reviews.form.tpl'
            ]}
            
        </section>
        {/if}
    {/if}
{else}
    <section class="reviews section__mgb--md">
        <h2 class="section__title">Оставить отзыв</h2>
        <p class="section__intro">Чтобы оставить отзыв, необходимо <a href="#" class="link" data-open-popup="auth">войти в личный кабинет</a></p>    
    </section>
{/if}