{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
<main class="content__wrapper">
    
{insert 'file:chunks/users/user.menu.tpl'}
        
<section class="lk leads section__mgb">
    <div class="container">



        <div class="container">
            <div class="analitics__head">
                <div class="lk__nav">
                    {insert 'file:chunks/menu/lkm.menu.tpl'}
                </div>
                <div class="analitics__dates">
                    {*<div class="analitics__dates-item">
                        <input type="date" placeholder="Дата с" id="dataFrom" name="data_from" class="input input--date" v-model="startDate" value="">
                    </div>
                    <div class="analitics__dates-item">
                        <input type="date" placeholder="Дата по" id="dataTo" name="data_to" class="input input--date" v-model="endDate" value="">
                    </div>*}
                    <a href="{656 | url}" id="exportData"><button class="btn btn--excel"><img src="/assets/images/icons/excel.svg" alt=""></button></a>
                </div>
            </div>
        
            <div id="pdopage">
                <div class="rows">
                    {'!pdoPage' | snippet :[
                        'showLog'=>0,
                        'element'=>'pdoUsers',
                        'groups'=>'Organization',
                        'limit'=>30,
                        'tvPrefix'=>'',
                        'tpl'=>'@FILE chunks/lkm/lkm.schools.list.block.tpl'
                                ]?:'<p class="section__intro">Ничего не найдено</p>'}
                </div>
                <div class="section__buttons">
                    {'page.nav' | placeholder}
                </div>
            </div>                
        </div>
    </section><!-- lk -->
</main>

{/block}
