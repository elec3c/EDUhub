<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js" integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>


<script type="text/javascript" src="/assets/js/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="/assets/js/jquery.maskedinput.js"></script>
<script type="text/javascript" src="/assets/js/jquery.formstyler.js"></script>
<script type="text/javascript" src="/assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/assets/js/jquery.chained.min.js"></script>


<script type="text/javascript" src="/assets/js/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

<script type="text/javascript" src="/assets/js/scripts.js"></script>


<script type="text/javascript" src="/assets/custom/custom.js"></script>

{include 'file:chunks/ajax.form.redirectJS.tpl'} 

{if ($_modx->resource.id in [1,504,1397,1136]) || ($_modx->resource.template in [7,9])}
<script type="text/javascript" src="/assets/custom/filter.save.js"></script>
{/if}

{if ($_modx->resource.template in [27,33])}
<script type="text/javascript" src="/assets/custom/filter.camp.save.js"></script>
{/if}

{if ($_modx->resource.template in [10,11,18]) && ($_modx->resource.id in [1127,1128,1129])}
<script type="text/javascript" src="/assets/custom/partnership.programs.js"></script>
{/if}
{if ($_modx->resource.parent in [1122,1123])}
<script type="text/javascript" src="/assets/components/partnership/js/default.js"></script>
{/if}


{if ($_modx->resource.template == 11) && ($_modx->resource.parent==596)}
<script type="text/javascript" src="/assets/custom/subscribe.buy.js"></script>
{/if}

{if $_modx->resource.id in [313]}
<script type="text/javascript" src="/assets/custom/promote.buy.js"></script>
{/if}
{if ($_modx->resource.template in [10]) && ($_modx->resource.id in [24])}
<script type="text/javascript" src="/assets/custom/corporate.employee.js"></script>
{/if}

{if ($_modx->resource.id in [2023]) || $_modx->resource.parent === 2021} {* Для функционала "Лагеря" *}
	<script type="text/javascript" src="/assets/custom/camp.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js?_v=20231113180917"></script>
{/if}


{if ($_modx->resource.id in [35,39])}
<script>
ClassicEditor
    .create( document.querySelector( '#editor' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' }
            ]
        }
    } )
    .catch( error => {
        console.log( error );
    } );
</script>
{/if}
