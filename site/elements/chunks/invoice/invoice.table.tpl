<table class="topss" border="0" width="90%" align="center">
    <tr>
        <td>Внимание! Оплата данного счета означает согласие с условиями поставки товара.
            Товар отпускается по факту прихода денег на р/с Поставщика, самовывозом, при наличии доверенности и паспорта.
            Счет действителен в течение 3 дней</td>
    </tr>
</table>

<table class="infobank itemsInfo" width="100%"  >
    <tr valign="top">
        <td colspan="3" width="40%">
            Филиала Банка: [[+org.name_bank]]<br><br>
            <span class="mips">Банк получателя</span>
        </td>
        <td valign="top">
            БИК <br>
            Сч. №
        </td>
        <td width="40%" valign="top">
            [[+org.bik_bank]]<br>
            [[+org.kr]]
        </td>
    </tr>
    <tr valign="top">
        <td>ИНН [[+org.inn]]</td>
        <td>КПП</td>
        <td>[[+org.kpp]]</td>
        <td rowspan="2" valign="top">
            Сч. №
        </td>
        <td rowspan="2" valign="top">[[+org.ks]]</td>
    </tr>
    <tr>
        <td colspan="3">
            [[+org.name]]<br>
            <span class="mips">Получатель</span>
        </td>
    </tr>
    <tr>
        <td colspan="5">Оплата по заказу клиента № [[+order.num]]<br>
            <span class="mips">Назначение платежа</span>
        </td>
    </tr>
</table>


<table border="0" width="100%">
    <tr>
        <td><h1 style="ma">Назначение платежа [[+order.num]] от [[+order.print_date]]</h1></td>
    </tr>
</table>
<hr />

<table class="generalInfo">

    <tr>
        <th valign="top">Поставщик:</th>
        <td>[[+org.name]], ИНН [[+org.inn]], КПП [[+org.kpp]], [[+org.address]] [[+org.phone]]</td>
    </tr>
    <tr >
        <th valign="top">Покупатель:</th>
        <td>[[+receiver]]</td>
    </tr>


</table>

<!--Вывод товаров-->
<table class="itemsInfo" >
    <thead>
    <tr>
        <th>№</th>
        <th style="width: 270px;">Товары (работы, услуги)</th>
        <th style="width: 80px;" colspan="2">Количество</th>
        <th style="width: 80px;">Цена</th>

        [[+nds.enabled:is=`1`:then=`
            <th style="width: 50px;">Ставка НДС</th>
            <th style="width: 80px;">Сумма НДС</th>
        `]]

        <th style="width: 110px;">Сумма</th>
    </tr>
    </thead>
    <tbody>
    [[+cart]]
    </tbody>
</table>

<table class="summaryss">
    <tr>
        <td style=" text-align:left"><div style="display: none"><strong>Вид платежа:</strong> [[+order.delivery]]</div></td>
        <td ><strong>Итого:</strong></td>
        <td style="font-weight: normal; ;">[[+order.cart_cost]] бел.руб.</td>
    </tr>


    <tr>
        <td style=" text-align:left"></td>
        <td ><strong>[[+nds.text]]</strong></td>
        <td style=" font-weight: normal"> [[+nds.cost]]</td>
    </tr>

    [[+order.delivery_cost:ne=`0,00`:then=`
        <tr>
            <td style=" text-align:left"></td>
            <td ><strong>Стоимость услуг:</strong></td>
            <td style=" font-weight: normal"> [[+order.delivery_cost]] бел.руб.</td>
        </tr>
    `]]

    <tr>
        <td style=" text-align:left"></td>
        <td style=" text-align:right"><strong>Всего к оплате:</strong></td>
        <td style=" font-weight: normal; width: 100px"> [[+order.cost]] бел.руб.</td>
    </tr>
</table>


<table class="summaryss">
    <tr>
        <td style=" text-align:left">
            Всего наименований [[+total_count]], на сумму [[+order.cost]] бел.руб.
        </td>
    </tr>
    <tr>
        <td style=" text-align:left">
            <strong>[[+order.cost_writing]]</strong>
        </td>
    </tr>
</table>
<hr class="bordersp">
<br>
<table class="summaryss">
    <tr>
        <td valign="top" style=" text-align:left; width: 15%"><strong>Менеджер</strong></td>
        <td style="text-align:left; width: 200px"><hr style=" width: 130px; margin: 20px 0px 0px 0px;"></td>
        <td style="text-align:left; width: 200px"><hr style=" width: 250px; margin: 20px 0px 0px 0px;"></td>
        <td ></td>
    </tr>
    <tr>
        <td ></td>
        <td valign="top" style=" text-align: center; padding:0px; ">подпись</td>
        <td valign="top" style=" text-align: center; padding:0px;">расшифровка подписи</td>
        <td ></td>
    </tr>
</table>
<br><br><br><br><br><br><br>
</div>
</div>
<style>
    body {
        font-size: 12px;
        color: #000;
        background-color: #fff;
        font-family:font-family:Arial, Helvetica, sans-serif;
        margin: 10px 30px 20px 30px;
    }
    .wrapper {
        page-break-after: always;
        position: relative;
    }
    .wrapper:last-child {
        page-break-after: auto;
    }
    h1 {
        font-weight: normal;
        float: left;
        font-weight: bold;
        margin-bottom: 0px;
        font-size: 16px;
    }
    b{ color:#F00; font-size: 14px ; font-weight: bold;}

    table { border-spacing: 4px; font-size: 10px; }
    table.generalInfo th { text-align: left; padding-right: 0px; }
    table.generalInfo td {}
    table.itemsInfo      { border-collapse: collapse; width: 100%; }
    table.itemsInfo th   { text-align: center; font-weight: bold; }
    table.itemsInfo th, table.itemsInfo td { border: solid 1px #000; padding: 3px; }
    td.center { text-align: center; }
    td.money  { text-align: right; width: 120px; }
    table.signs { margin-top: 50px; }
    table.signs td {width: 350px; vertical-align: top; line-height: 200%;}
    .summary {width:700px; text-align: left;  margin-top:10px; line-height: 27px; }
    .summary.ito{ width: 700px; text-align: left;  margin-top:10px; line-height: 13px; font-weight: bold;}
    .summaryss {width: 700px; text-align: right; margin-bottom: 0px;  margin-top:0px; line-height: 12px; margin-left: 0px;}
    .topss{ font-size: 9px; text-align:center; margin-bottom: 10px;}
    .mips { font-size: 10px;}
    .bordersp { background:#000; height: 2px; display: block; width: 100%; border: 0px;  margin: 0px 0px 20px 0px;}
    .infobank{ font-size: 11px; margin-bottom: 20px;}
    .generalInfo { margin-bottom: 20px; font-size: 10px;}

</style>