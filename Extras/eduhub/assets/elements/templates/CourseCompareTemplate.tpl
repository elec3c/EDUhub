{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="compare section__mgb">
    <div class="container">
        
            {'!CompareList' | snippet: [
                'fields' => '{"courses":["data_from", "for_ages_from", "course_duration", "lesson_duration", "price_course","price_course_month","price_lesson", "format_of_study","form_of_study","num_people_in_group","num_months_of_study"]}',
                'maxItems' => 7
            ]?:'Выбрано недостаточно курсов для сравнения'} 
        
    </div>
</section><!-- article -->
{/block}