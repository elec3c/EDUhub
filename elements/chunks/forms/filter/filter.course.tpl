<div class="filter-cat row">	
                    <div class="courses__flt">
                    <div class="courses__flt-item w-310">
                        <select name="category" data-placeholder="Категория курса"
                            class="styler styler--white"  id="category-select-{$index}">
                            <option class="option-hide" value="">&nbsp;</option>
                            [[!getValuesTV?  &tvid = `16` &curr = `[[+fi.course_category]]`]]
                        </select>
                    </div>
                    <div class="courses__flt-item w-300">
                        <select name="sub_category" data-placeholder="Подкатегория курса"
                            class="styler styler--white" id="sub_category-select-2">
                            <option class="option-hide" value="">&nbsp;</option>
                            [[!getList? &id=`11` &option=`1` &chained=`11` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`10` &option=`1` &chained=`10` &curr=`[[+fi.course_sub_category]]` ]]
                            [[!getList? &id=`520` &option=`1` &chained=`520` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`521` &option=`1` &chained=`521` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`522` &option=`1` &chained=`522` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`523` &option=`1` &chained=`523` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`524` &option=`1` &chained=`524` &curr=`[[+fi.course_sub_category]]`]]    
                            [[!getList? &id=`623` &option=`1` &chained=`623` &curr=`[[+fi.course_sub_category]]`]]
                            
                            [[!getList? &id=`1347` &option=`1` &chained=`1347` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`1357` &option=`1` &chained=`1357` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`1358` &option=`1` &chained=`1358` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`1360` &option=`1` &chained=`1360` &curr=`[[+fi.course_sub_category]]`]]
                            [[!getList? &id=`1362` &option=`1` &chained=`1362` &curr=`[[+fi.course_sub_category]]`]]
                        </select>
                    </div>
                    
                    <div class="courses__flt-item">
                        <select name="schedule" data-placeholder="Расписание" class="styler styler--white" id="schedule-select-{$index}">
                            <option class="option-hide" value="">&nbsp;</option>
                            [[!getValuesTV?  &tvid = `65` &curr = `[[+fi.schedule]]`]]
                        </select>
                    </div>
                    <div class="courses__flt-item item-time">
                        <select name="time" data-placeholder="Время" class="styler styler--white" id="time-select-{$index}">
                            <option class="option-hide" value="">&nbsp;</option>
                            [[!getValuesTV?  &tvid = `66` &curr = `[[+fi.time]]`]]
                        </select>
                    </div>
                    
                    <div class="courses__flt-item">
                        <select name="form_of_study" data-placeholder="Форма обучения"
                            class="styler styler--white" id="form_of_study-select-{$index}">
                            <option class="option-hide" value="">&nbsp;</option>
                            [[!getValuesTV?  &tvid = `25` &curr = `[[!+fi.form_of_study]]`]]
                        </select>
                    </div>
                    <div class="courses__flt-item">
                        <select name="course_city" data-placeholder="Город" class="styler styler--white" id="course_city-select-{$index}">
                            <option class="option-hide" value="">&nbsp;</option>
                            [[!getListCities? &name=`city` &option=`1` &curr = `[[+fi.course_city]]`]]
                        </select>
                    </div>
                                
                </div>
                </div>