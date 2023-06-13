<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js" integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>


<script type="text/javascript" src="/assets/js/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery.maskedinput.js"></script>
<script type="text/javascript" src="/assets/js/jquery.formstyler.js"></script>
<script type="text/javascript" src="/assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/assets/js/jquery.chained.min.js"></script>
<script type="text/javascript" src="/assets/js/scripts.js"></script>
<script type="text/javascript" src="/assets/custom/custom.js"></script>

{include 'file:chunks/ajax.form.redirectJS.tpl'} 

{if ($_modx->resource.template == 3) || ($_modx->resource.template == 7) || ($_modx->resource.template == 9)}
<script type="text/javascript" src="/assets/custom/filter.save.js"></script>
{/if}
{if ($_modx->resource.template in [10,11,18]) && ($_modx->resource.id in [1127,1128,1129])}
<script type="text/javascript" src="/assets/custom/partnership.programs.js"></script>
{/if}
{if ($_modx->resource.template == 11) && ($_modx->resource.parent==596)}
<script type="text/javascript" src="/assets/custom/subscribe.buy.js"></script>
{/if}
{if $_modx->resource.id in [802,803]}
<script type="text/javascript" src="/assets/js/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js">
{/if}