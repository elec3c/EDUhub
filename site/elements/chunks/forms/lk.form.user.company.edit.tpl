{set $work_fullname = $_modx->user.id | user:'work_fullname'}
{set $r = explode(' ',$work_fullname)}
{if count($r) == 3}
    {set $lastname = trim($r[0])}
    {set $name  = trim($r[1])}
    {set $surname = trim($r[2])}
{else}
    {set $lastname = trim($r[0])}
    {set $name  = trim($r[1])}
{/if}

{set $work_email = $_modx->user.id | user:'work_email'}
{set $work_department = $_modx->user.id | user:'work_department'}
{set $work_post = $_modx->user.id | user:'work_post'}
{set $work_role = $_modx->user.id | user:'work_role'}

{set $mobilephone = $_modx->user.id | user:'mobilephone'}
{set $viber = $_modx->user.id | user:'viber'}
{set $telegram = $_modx->user.id | user:'telegram'}

<form class="waccount__cols" action="{$_modx->resource.uri}" method="post" id="profileUserCompany" enctype="multipart/form-data">
    <input type="hidden" name="csrf-token" value="{$.session['csrf-token']}">
    <input type="hidden" name="form" value="Данные профиля сотрудника компании">
    <input name="controll" class="no-display" type="text"> 

    <div class="waccount__col">
        <div class="waccount__irow">
            <input type="text" name="lastname" value="{$lastname}" class="input" placeholder="Фамилия *" required>
        </div>
        <div class="waccount__irow">
            <input type="text" name="name" value="{$name}" class="input" placeholder="Имя *" required>
        </div>
        <div class="waccount__irow">
            <input type="text" name="surname" value="{$surname}" class="input" placeholder="Отчество">
        </div>
        <div class="waccount__irow">
            <input type="text" name="department" value="{$work_department}" class="input" placeholder="Отдел">
        </div>
        <div class="waccount__irow">
            <input type="text" name="post" value="{$work_post}" class="input" placeholder="Должность">
        </div>
        <div class="waccount__irow">
            <input type="text" name="role" value="{$work_role}" class="input" placeholder="Роль">
        </div>
    </div>
    <div class="waccount__col">
        <div class="waccount__irow">
            <input type="email" name="work_email" class="input" value="{$work_email}" placeholder="Рабочая электронная почта">
        </div>
        <div class="waccount__irow">
            <input type="text" name="mobilephone" class="input phone-mask" value="{$mobilephone}" placeholder="Мобильный телефон">
        </div>
        <div class="waccount__irow">
            <input type="text" name="viber" class="input" value="{$viber}" placeholder="Вайбер">
        </div>
        <div class="waccount__irow">
            <input type="text" name="telegram" class="input" value="{$telegram}" placeholder="Телеграм">
        </div>
        {*<div class="waccount__irow">
            <button class="btn btn--bdpurple w-all">Редактировать</button>
        </div>*}
        <div class="waccount__irow">
            <button class="btn w-all">Сохранить</button>
        </div>
    </div>
</form>