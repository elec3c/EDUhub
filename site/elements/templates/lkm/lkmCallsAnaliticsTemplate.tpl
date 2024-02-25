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
                        
                    <div class="analitics__dates">
                        <div class="analitics__dates-item">
                            <input type="date" placeholder="Дата с" id="dataFrom" name="data_from" class="input input--date" v-model="startDate" value="">
                        </div>
                        <div class="analitics__dates-item">
                            <input type="date" placeholder="Дата по" id="dataTo" name="data_to" class="input input--date" v-model="endDate" value="">
                        </div>
                        <a href="{295 | url}" id="exportData"><button class="btn btn--excel"><img src="/assets/images/icons/excel.svg" alt=""></button></a>
                    </div>
                </div>
                <div id="pdopage">
                    <div class="analitics__block lk__wraplr section__lr">
                        <div class="rows">
                            {'!pdoPage' | snippet :[
                                'parents'=>$_modx->config['site_parent_courses'],
                                'ajaxMode'=>'default',
                                'limit'=>20,
                                'idx'=>5,
                                'class'=>'modResource',
                                'includeTVs'=>'course_owner',
                                'tvPrefix'=>'',
                                'loadModels'=>'calls',
                                'innerJoin'=>[
                                    'EduCalls'=>[
                                        'class'=>'EduCalls',
                                        'on'=>'modResource.id = EduCalls.group_id',
                                    ],
                                ],
                                'select'=>[
                                    'EduCalls'=>'*',
                                    'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                ],
                                'sortby'=>[
                                    'EduCalls.id'=>'DESC',
                                ],
                                
                                'tpl'=>'@FILE chunks/lkm/lkm.call.analitics.block.tpl'
                            ]?:'<p class="section__intro">Ничего не найдено</p>'}
                        </div>
                    </div><!--analitics__block-->
                    <div class="section__buttons">
                        {'page.nav' | placeholder}
                    </div>
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->        
{/block}
