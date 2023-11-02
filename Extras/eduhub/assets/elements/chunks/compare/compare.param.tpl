<div class="compare__item-row">
    {set $tv = $param|replace:"comparison_field_":""}
    {set $title = $_modx->runSnippet('!getCaptionTV', ['name' => $tv])}
	{$title}
  </div>