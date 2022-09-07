{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}    
{include 'file:chunks/crumbs/crumbs.tpl'}
<section class="compare section__mgb">
    <div class="container">
        
            {'!CompareList' | snippet: [
                'fields' => '{"courses":["data_from", "for_ages_from", "course_duration", "lesson_duration", "price_course","price_lesson", "format_of_study","form_of_study","num_people_in_group"]}',
                'maxItems' => 5,
            ]} 
        
    </div>
</section><!-- article -->
{/block}

{*,
                'tplRow'=>'@FILE chunks/compare/compare.row.tpl',
                'tplParam'=>'@FILE chunks/compare/compare.param.tpl',
                'tplCell'=>'@FILE chunks/compare/compare.cell.tpl',
                'tplHead'=>	'@FILE chunks/compare/compare.head.tpl',
                'tplCorner'=>'@FILE chunks/compare/compare.corner.tpl',
                'tplOuter'=>'@FILE chunks/compare/compare.outer.tpl',*}