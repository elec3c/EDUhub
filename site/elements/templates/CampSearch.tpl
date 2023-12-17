{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}

    {insert 'file:chunks/queue/queue.camp.step.block.tpl'}

    <div class="container">
        {'!mFilter2' | snippet : [
            'class' => 'modResource',
            'tvPrefix' => '',
            'select'=>[
                'modResource'=>'*'
            ],
            'parents' => $_modx->config.section_id_created_camps,
            'limit' => 0,
            'ajaxMode' => 'scroll',
            'filters'=> 'tv|camp_ages,tv|camp_class_time,tv|camp_subjects,tv|camp_date_from:dateRange',
            'aliases'=>'tv|camp_ages==ages,tv|class_time,tv|camp_subjects,tv|camp_date_from==date_from',
            'showEmptyFilters'   =>'true',
            'includeTVs' => 'camp_ages,camp_class_time,camp_date_from',
            'sortby' => 'camp_date_from',

            'tplOuter' =>'@FILE chunks/camp/mFilter/outer.tpl',
            'tpls' => '@FILE chunks/camp/mFilter/row.tpl',

            'tplFilter.outer.default' => '@FILE chunks/camp/mFilter/outer.checkbox.tpl',
            'tplFilter.row.default' => '@FILE chunks/camp/mFilter/filter.checkbox.tpl',

            'tplFilter.outer.ages' => '@FILE chunks/camp/mFilter/filter.select.tpl',
            'tplFilter.row.ages'=>'@FILE chunks/camp/mFilter/filter.option.tpl',

            'tplFilter.outer.date_from' => '@FILE chunks/camp/mFilter/outer.dateRange.tpl',
            'tplFilter.row.date_from'=>'@FILE chunks/camp/mFilter/filter.dateRange.tpl',


        ]}
{*        'tplFilter.outer.class_time' => '@FILE chunks/camp/mFilter/filter.select.tpl',*}
{*        'tplFilter.row.class_time'=>'@FILE chunks/camp/mFilter/filter.option.tpl'*}
{*        &tplFilter.outer.tv|roomType=`mFilter2.filter.select`
            &tplFilter.row.tv|roomType=`mFilter2.filter.option`

            *}
{*        'tplFilter.outer.camp_ages'=>'@FILE chunks/camp/mFilter/filter.select.tpl',*}
{*        &tplFilter.outer.resource|parent=`tpl.mFilter2.filter.select`*}
{*        &tplFilter.row.resource|parent=`tpl.mFilter2.filter.option`*}
{*        &suggestionsRadio=`resource|parent`*}
    </div>



{/block}