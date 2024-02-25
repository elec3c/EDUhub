{extends 'file:templates/BaseTemplate.tpl'}
{block 'content'}
    <main class="content__wrapper">
        
        {insert 'file:chunks/users/user.menu.tpl'}
        
        <section class="lk analitics section__mgb">
            <div class="container">
                <div class="analitics__head">
                    <div class="lk__nav">
                        {insert 'file:chunks/menu/lkm.menu.tpl'}
                    </div>
                </div>
                <div class="analitics__dates">
                        <div class="analitics__dates-item">
                            <input type="date" placeholder="Дата с" id="dataFrom" name="data_from" class="input input--date" v-model="startDate" value="">
                        </div>
                        <div class="analitics__dates-item">
                            <input type="date" placeholder="Дата по" id="dataTo" name="data_to" class="input input--date" v-model="endDate" value="">
                        </div>
                        <a href="{1406 | url}" id="exportData"><button class="btn btn--excel"><img src="/assets/images/icons/excel.svg" alt=""></button></a>
                </div>
                <div id="pdopage">
                    <div class="analitics__block lk__wraplr section__lr rows">
                        {'!pdoPage' | snippet :[
                            'limit'=>8,
                            'idx'=>5,
                            'class'=>'EduRequest',
                            'tvPrefix'=>'',
                            'loadModels'=>'request',
                            'sortby'=>[
                                'EduRequest.id'=>'DESC',
                            ],
                            'tpl'=>'@FILE chunks/lkm/lkm.request.analitics.block.tpl',
                            'ajaxMode' => 'button',
                            'ajaxElemMore'=>'#pdopage .btn--more',
                            'ajaxTplMore'=>'@INLINE <div class="section__buttons"><button class="btn btn--more"><svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.5 11C21.5 16.52 17.02 21 11.5 21C5.98 21 2.61 15.44 2.61 15.44M2.61 15.44H7.13M2.61 15.44V20.44M1.5 11C1.5 5.48 5.94 1 11.5 1C18.17 1 21.5 6.56 21.5 6.56M21.5 6.56V1.56M21.5 6.56H17.06" stroke="#19191B" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg><span>Показать еще статьи</span></button></div>' 
                        ]?:'<p class="section__intro">Ничего не найдено</p>'}
                        <div class="section__buttons">
                            {'page.nav' | placeholder}
                        </div>
                    </div><!--analitics__block-->
                </div>                        

            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->        
{/block}
