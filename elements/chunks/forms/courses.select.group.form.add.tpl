<form action="{39 | url}" class="hide-tablet-sm" method="GET" id="addCourseGroupForm">
    <div class="courses__filter">
        <input type="hidden" name="type" value="group">
        <select name="copy" data-placeholder="Шаблоны курсов" class="styler" id="template-select" required>
            <option value=""></option>
            {'!pdoResources' | snippet : [
                'parents'=>'61',
                'depth'=> 0,
                'includeTVs'=>'course_group_title, course_owner',
                'tpl'=>'@CODE <option value="{$id}">{$_pls["tv.course_group_title"]?:$pagetitle}</option>{$wrapper}',
                'where'=>["course_owner"=>$_modx->user.id]
            ]}
        </select>
        &nbsp;&nbsp;&nbsp;
        <button class="btn" type="submit">Создать группу на основе шаблона</button>
    </div>
    
</form>