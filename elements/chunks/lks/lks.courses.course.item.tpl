                {*<div class="cgcourse rollup-box">
                    <div class="cghead">
                        <div class="cgtitle"><a href="{$id | url}">{$course_title?:$pagetitle} / {$course_sub_category_title}</a></div>

                        <a href="#" class="link__more rollup-toggle">
                            <span class="open_t">Свернуть</span><span class="close_t">Развернуть</span>
                        </a>
                    </div>
                    <div class="rollup-tab">*}
                        
                            
<div class="courses__template lk__wraplr section__lr">                                															
									<div class="courses__template-head">
									
										<div class="courses__template-title"><a href="{$id | url}">{$course_title?:$pagetitle}</a></div>																										
										{if $_pls['tv.form_of_study']}
											   {switch $_pls['tv.form_of_study']}
													{case 'offline'}
														<div class="courses__template-training offline">Offline-обучение</div>
													{case 'online'}
														<div class="courses__template-training online">Online-обучение</div>
													{case 'online-micro'}
														<div class="courses__template-training online">Online-микрокурсы</div>
													{case 'hybrid'}
														<div class="courses__template-training">Гибридное-обучение</div>
													{case 'recording'}
														<div class="courses__template-training">В записи-обучение</div>													
													{case 'default'}
													    <div class="courses__template-training">В записи-обучение</div>													
												{/switch}
										{/if} 																		
									</div>								
															
									<div class="courses__template-cols">
										<div class="courses__template-info">
											<div class="courses__template-props">
												<div class="courses__template-props__row">
													<div class="courses__template-props__item">
														<div class="courses__template-props__numb">{if $_pls['tv.num_months_of_study']}{$_pls['tv.num_months_of_study']}{else}-{/if}</div>
														{$_pls['tv.num_months_of_study'] | declension : 'месяц|месяцев|месяцев'}
													</div>
													<div class="courses__template-props__item">
														<div class="courses__template-props__numb">{if $_pls['tv.price_course']}{$_modx->runSnippet('!formatMoney', ['number'=>$_pls['tv.price_course']])}{else}-{/if}</div>
														стоимость курса
													</div>
												</div>
												<div class="courses__template-props__row">											
													<div class="courses__template-props__item">													
														<div class="courses__template-props__numb">{if $_pls['tv.num_lesson_per_week']}{$_pls['tv.num_lesson_per_week']}{else}-{/if}</div>
														{$_pls['tv.num_lesson_per_week'] | declension : 'занятие|занятий|занятий'} <br> в неделю
													</div>
													<div class="courses__template-props__item">
														<div class="courses__template-props__numb">{if $_pls['tv.course_duration']}{$_pls['tv.course_duration']}{else}-{/if}</div>
														длительность курса<br> в часах
													</div>
												</div>
												<div class="courses__template-props__row">
													<div class="courses__template-props__item w-all">
														<div class="courses__template-props__numb">{if $_pls['tv.num_people_in_group']}{$.php.intval($_pls['tv.num_people_in_group'])}{else}-{/if}</div>
														{$_pls['tv.num_people_in_group'] | declension : 'человек|человека|человек'} в группе{if $_pls['tv.format_of_study']=='individual'}/индивид.{/if}
													</div>
												</div>
											</div>
											{if $introtext}
											<div class="courses__template-desc">
												{$introtext}
											</div>
											{/if}
										</div>

										<div class="courses__template-create">
											<b>Чтобы продвигать весь курс, создайте на его основе группу без даты старта и адреса</b>
											<div class="courses__template-create__buttons">
												<a href="{39 | url}?type=group&copy={$id}" style="color:#FFF;"><button class="btn btn--bdpurple w-all"><span>Создать группу<span class="hide-mobile-lg"> на основе шаблона</span></span></button></a>
											</div>
										</div>
									</div>								
								

                                                    
             
								
                                <div class="courses__template-links">
                                    <a href="{39 | url}?type=course&edit={$id}" class="courses__template-edit">
                                        <img src="assets/images/icons/edit-purple.svg" alt="Edit">
                                        <span>Редактировать</span>
                                    </a>
                                    <a href="{39 | url}?type=course&delete={$id}" class="courses__template-remove">
                                        <img src="assets/images/icons/remove.svg" alt="Remove">
                                        <span>Удалить</span>
                                    </a>
                                </div>
								
                              

</div>
							
                    {*</div>
                </div>*}
