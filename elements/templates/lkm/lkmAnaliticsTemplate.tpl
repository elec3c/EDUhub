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
                        {*<div class="analitics__dates-item">
                            <input type="date" placeholder="Дата с" id="dataFrom" name="data_from" class="input input--date" v-model="startDate" value="">
                        </div>
                        <div class="analitics__dates-item">
                            <input type="date" placeholder="Дата по" id="dataTo" name="data_to" class="input input--date" v-model="endDate" value="">
                        </div>*}
                        <a href="{294 | url}" id="exportData"><button class="btn btn--excel"><img src="/assets/images/icons/excel.svg" alt=""></button></a>
                    </div>
                </div>

                {'PromoCode' | snippet}
                <div id="pdopage">
                    <div class="analitics__block lk__wraplr section__lr">
                        <div class="rows">
                            {'!pdoPage' | snippet :[
                                'showLog'=>0,
                                'parents'=>85,
                                'class'=>'modResource',
                                'limit'=>20,
                                'idx'=>5,
                                'tvPrefix'=>'',
                                'loadModels'=>'promocode',
                                'innerJoin'=>[
                                    'PromoCodeItem'=>[
                                        'class'=>'PromoCodeItem',
                                        'on'=>'modResource.id = PromoCodeItem.groupId',
                                    ],
                                ],
                                'leftJoin'=>[
                                    'TVcourse_owner'=>[
                                        'class'=>'modTemplateVarResource',
                                        'on'=>'TVcourse_owner.contentid = modResource.id and TVcourse_owner.tmplvarid = 32',
                                    ],
                                    'modUserProfile'=>[
                                        'class'=>'modUserProfile',
                                        'on'=>'modUserProfile.internalKey = TVcourse_owner.value',
                                    ],
                                ],
                                'select'=>[
                                    'PromoCodeItem'=>'*',
                                    'modResource'=>'modResource.pagetitle,modResource.id as res_id',
                                    'modUserProfile'=>'modUserProfile.website,modUserProfile.photo',
                                    'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_city`',
                                    'TVcourse_owner'=>'IFNULL(`TVcourse_owner`.`value`, \'\') AS `course_owner`',
                                ],
                                'sortby'=>[
                                    'PromoCodeItem.id'=>'DESC',
                                ],
                                'includeTVs'=>'course_group_title,form_of_study,course_city,TVcourse_owner,sale,data_from',
                                'tpl'=>'@FILE chunks/lkm/lkm.promocode.analitics.block.tpl'
    
                            ]}
                        </div>
                    </div><!--analitics__block-->
                    <p>&nbsp;</p>
                    {'page.nav' | placeholder}
                </div>
            </div>
        </section><!-- lk -->
	</main><!--content__wrapper-->        

{/block}
