{set $title = ($_modx->resource.longtitle ?: $_modx->resource.pagetitle) | notags}
{set $description = $_modx->resource.description | replace :' "':' «' | replace :'"':'»'}
{set $page = $site_url ~ $_modx->resource.uri}

<meta charset="{$modx->config.modx_charset}">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,shrink-to-fit=no">

<title>{str_replace("Шаблон",'',$title)}</title>
<meta name="description" content="{$description}">
{'ss_meta.keywords' | placeholder}

{if $.get.page}
    <meta name="robots" content="noindex, follow" /> 
{else}
    {if $_modx->resource.parent | resource : 'parent' == 11}
        <meta name="robots" content="noindex, follow" /> 
    {else}
        {'ss_meta.robots' | placeholder}
    {/if}
{/if}

<meta name="csrf-token" content="{$.session['csrf-token']}">
<link href="/assets/images/favicon/favicon.ico" type="image/x-icon" rel="icon">
<link href="/assets/images/favicon/favicon.ico" type="image/x-icon" rel="shortcut icon">
<link rel="icon" type="image/png" sizes="64x64" href="/assets/images/favicon/favicon-64x64.png">
<link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="32x32" href="/assets/images/favicon/favicon-32x32.png">

<meta name="format-detection" content="telephone=no" />
<meta name="format-detection" content="address=no" />

<!-- Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="{$page}">
<meta property="og:title" content="{$title}">
<meta property="og:description" content="{$description}">
<meta property="og:image" content="">
<meta property="og:locale" content="{$.en ? 'en_US' : 'ru_RU'}">

<!-- Twitter Card -->
<meta name="twitter:card" content="app">
<meta name="twitter:title" content="{$title}">
<meta name="twitter:description" content="{$description}">
<meta name="twitter:url" content="{$page}">
<meta name="twitter:image" content="">

<!-- Schema.org -->
<meta itemprop="name" content="{$title}">
<meta itemprop="description" content="{$description}">
<meta itemprop="image" content="">

<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Organization",
  "url": "{$page}",
  "logo": "{'logo' | config}"
}
</script>

<!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]--> 

{if $_modx->resource.template == 18}
<script src="https://unpkg.com/vue@3"></script>
{/if}

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700;800&family=Raleway:ital,wght@0,400;0,600;0,700;1,400;1,600&display=swap" rel="stylesheet"> 


<link rel="preload" href="/assets/js/swiper/swiper-bundle.min.css" as="style" onload="this.rel='stylesheet'">
<link href="/assets/css/styles.min.css" rel="stylesheet">
<link href="/assets/custom/custom.css" rel="stylesheet">

{if $_modx->resource.id in [802,803]}
	<link rel="stylesheet" href="/assets/js/mCustomScrollbar/jquery.mCustomScrollbar.css">
</script>
{/if}


{if $_modx->resource.id in [35,39]}
    <script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>
{/if}

<base href="{$_modx->config.site_url}">
