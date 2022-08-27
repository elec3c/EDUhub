{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="article section__mgb">
    <div class="container">
        <div class="section__head">
    
            <h2 class="section__title">{$_modx->resource.logtitle ?: $_modx->resource.pagetitle}</h2>
    
        </div>
        <div class="article__content">
            {'!CompareList' | snippet: [
            
                'fields' => '{"courses":["data_from", "course_duration", "lesson_duration", "price_course","price_lesson", "format_of_study","form_of_study","num_people_in_group"]}',
                'maxItems' => 5,
                
                'tplRow'=>'compare.row.tpl',
                'tplParam'=>'compare.param.tpl',
                'tplCell'=>'compare.cell.tpl',
                'tplHead'=>	'compare.head.tpl',
                'tplCorner'=>'compare.corner.tpl',
                'tplOuter'=>'compare.outer.tpl',
            ]} 
        </div>
    </div>
</section><!-- article -->
{/block}

<div class="leads__block">

        <!--<div class="leads__item-col">
            
            <div class="leads__item-prop">
                <div class="leads__item-prop__label">Телефон</div>
                <a href="tel:">777777</a>
            </div>-->