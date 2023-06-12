{switch $status_id}
    {case 1}
        {set $status = "Заявка принята компанией"}
        {set $color = "#EC2B08"}
        {set $prefix = "принята"}
    {case 2}
        {set $status = "Заявка отклонена компанией"}
        {set $color = "red"}
        {set $prefix = "отклонена"}
    {case 3}
        {set $date = ''}
        {set $status = "Подтвержждение заключения договора компанией"}
        {set $color = "green"}
        {if $date_start}
        {set $date = $date_start | dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
        {/if}        
        {set $prefix = "подтвержден договор "~$date}
    {case 4}
        {set $status = "Заявка отклонена школой"}
        {set $color = "black"}
        {set $prefix = "отклонена"}
    {case 5}
        {set $date = ''}
        {set $status = "Заключение договора школой"}
        {set $color = "green"}
        {if $date_start}
        {set $date = $date_start | dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "заключен договор "~$date}
    {case 6}
        {set $date = ''}
        {set $status = "Договор расторгнут школой"}
        {set $color = "red"}                       
        {if $date_stop}
        {set $date = $date_stop | dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "расторгнут договор "~$date}
    {case 7}
        {set $date = ''}
        {set $status = "Договор расторгнут компанией"}
        {set $color = "red"}  
        {if $date_stop}
        {set $date = $date_stop | dateAgo:'{"dateNow":0, "dateFormat":"d F Y"}'}
        {/if}
        {set $prefix = "расторгнут договор "~$date}
    {case 9}
        {set $status = "Заявка удалена школой"}
        {set $color = "red"}
        {set $prefix = "удалена"}
    {case 0}
        {set $status = "Заявка получена компанией"}
        {set $color = "black"}                            
        {set $prefix = "получена"}
    {default}
        {set $status = "Заявка получена компанией"}
        {set $color = "black"}          
        {set $prefix = "получена"}
{/switch}