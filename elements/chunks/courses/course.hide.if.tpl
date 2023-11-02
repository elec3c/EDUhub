        {set $ids = '!pdoResources' | snippet : [
            'limit' => 0,
            'parents'=>$_modx->config['site_parent_schools'],
            'includeTVs' => 'small_image, scools_owner,schools_direction_b2c',
            'depth' => 1,
            'returnIds' => 1,
            'class'=>'modResource',
            'loadModels'=>'modResource',
            'select'=>[
                'modResource'=>'*'
            ],                    
                'innerJoin'=>[
                'modTemplateVarResource'=>[
                'class'=>'modTemplateVarResource',
                'on'=>'modResource.id = modTemplateVarResource.contentid AND modTemplateVarResource.tmplvarid = 116'
                ]
            ], 
                        
            'where'=>'{"template:=":16}'                            
                                
        ]}
        
        {set $scid  = explode(',',$ids)}
        {if is_array($scid) && (count($scid) > 0)}
            {foreach $scid as $pid}
            {set $index = '!getSchoolsOwner' | snippet : ['page_id'=>$pid]}
            {if $index}
                {set $owner[] = $index}
            {/if}
            {/foreach}
            {if is_array($owner) && (count($owner) > 0)}
                {set $where["course_owner:IN"] = $owner}
            {/if}
        {/if} 