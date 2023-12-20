{set $minValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
    'nameTv' => 'camp_ages',
    'valueTv' => $_modx->resource.camp_ages,
    'value' => 'min'
]}
{set $maxValueCampAges = '@FILE /snippets/camps/getTvCamps.php' | snippet : [
    'nameTv' => 'camp_ages',
    'valueTv' => $_modx->resource.camp_ages,
    'value' => 'max'
]}
<div class="cmp_hero__card">
    {$minValueCampAges} - {$maxValueCampAges} лет
</div>