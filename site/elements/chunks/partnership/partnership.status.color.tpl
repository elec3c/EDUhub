{switch $status_id}
    {case 1}
        {set $status = "Заявка принята компанией"}
        {set $color = "#EC2B08"}
        {set $prefix = "заявка принята компанией"}
    {case 2}
        {set $status = "Заявка отклонена компанией"}
        {set $color = "red"}
        {set $prefix = "заявка отклонена компанией"}
    {case 3}
        {set $date = ''}
        {set $status = "Подтверждение заключения договора компанией"}
        {set $color = "green"}
        {if $date_start}
        {set $date = $date_start | dateAgo:'{"dateNow":0, "dateMinutes":0, "dateHours":0, "dateFormat":"d F Y"}'}
        {/if}        
        {set $prefix = "договор подписан компанией "~$date}
    {case 4}
        {set $status = "Заявка отклонена школой"}
        {set $color = "black"}
        {set $prefix = "заявка отклонена школой"}
    {case 5}
        {set $date = ''}
        {set $status = "Заключение договора школой"}
        {set $color = "green"}
        {if $date_start}
        {set $date = $date_start | dateAgo:'{"dateNow":0, "dateMinutes":0, "dateHours":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "договор заключен школой "~$date}
    {case 51}
        {set $date = ''}
        {set $status = "Заключение договора компанией"}
        {set $color = "green"}
        {if $date_start}
        {set $date = $date_start | dateAgo:'{"dateNow":0, "dateMinutes":0, "dateHours":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "договор заключен компанией "~$date}        
    {case 6}
        {set $date = ''}
        {set $status = "Договор расторгнут компанией"}
        {set $color = "red"}                       
        {if $date_stop}
        {set $date = $date_stop | dateAgo:'{"dateNow":0, "dateMinutes":0, "dateHours":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "договор расторгнут компанией "~$date}
    {case 7}
        {set $date = ''}
        {set $status = "Договор расторгнут школой"}
        {set $color = "red"}  
        {if $date_stop}
        {set $date = $date_stop | dateAgo:'{"dateNow":0, "dateMinutes":0, "dateHours":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "договор расторгнут школой "~$date}
    {case 8}
        {set $date = ''}
        {set $status = "Подтверждение заключения договора школой"}
        {set $color = "green"}
        {if $date_start}
        {set $date = $date_start | dateAgo:'{"dateNow":0, "dateMinutes":0, "dateHours":0, "dateFormat":"d F Y"}'}
        {/if}        
        {set $prefix = "договор подписан школой "~$date}        
    {case 9}
        {set $status = "Заявка удалена школой"}
        {set $color = "red"}
        {set $prefix = "заявка удалена школой"}
    {case 0}
        {set $status = "Заявка получена компанией"}
        {set $color = "black"}                            
        {set $prefix = "заявка получена компанией"}
    {default}
        {set $status = "Заявка получена компанией"}
        {set $color = "black"}          
        {set $prefix = "заявка получена компанией"}
{/switch}


{set $isCorporate = ($_modx->user.id | ismember : ['Corporate'])}
{set $isOrganization = ($_modx->user.id | ismember : ['Organization'])}

{if $isCorporate}
    {if $status_id in [5,51]}
        {set $status = $status|replace:"компанией":""}
        {set $prefix = $prefix|replace:"компанией":""}
        {set $status = $status|replace:"школой":""}
        {set $prefix = $prefix|replace:"школой":""}        
    {else}
        {set $status = $status|replace:"компанией":"Вами"}
        {set $prefix = $prefix|replace:"компанией":"Вами"}
    {/if}
{elseif $isOrganization}
    {if $status_id in [5,51]}
        {set $status = $status|replace:"школой":""}
        {set $prefix = $prefix|replace:"школой":""}
        {set $status = $status|replace:"компанией":""}
        {set $prefix = $prefix|replace:"компанией":""}
    {else}
        {set $status = $status|replace:"школой":"Вами"}
        {set $prefix = $prefix|replace:"школой":"Вами"}
    {/if}
{/if}
