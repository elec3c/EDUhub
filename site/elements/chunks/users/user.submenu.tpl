

{set $pid = $pid?:$_modx->resource.parent}
{set $user_id = $.php.intval($.get.user_id)?:$_modx->user.id}
{if $_modx->resource.parent in [1122,1123]}
    {set $tpl = '@INLINE <li class="active--count"><a href="{$link}{if $.get.user_id}?user_id={$.get.user_id}{/if}" title="{$menutitle}" {$attributes}><span>{$menutitle}</span></a>#{$idx}#</li>'}
    {set $here = '@INLINE <li class="active #class{$idx}#"><span>{$menutitle}</span>#{$idx}#</li>'}
{else}
    {set $tpl = '@INLINE <li><a href="{$link}{if $.get.user_id}?user_id={$.get.user_id}{/if}" title="{$menutitle}" {$attributes}><span>{$menutitle}</span></a></li>'}
    {set $here = '@INLINE <li class="active"><span>{$menutitle}</span></li>'}
{/if}
                
{set $menu = '!pdoMenu' | snippet: [
    'parents' => $pid,
    'displayStart' => 0,
    'level' => 1,
    'limit' => 0,
    'tplOuter' => '@INLINE <div class="lk__nav"><ul>{$wrapper}</ul></div>',
    'tpl' => $tpl,
    'tplHere' => $here
]} 
{if $_modx->resource.parent in [1123]}                    

	{set $index1 = '!getStatusCountPartnership' | snippet :[
        'from_user_id'=> $user_id,
        'status_ids'=>[0]
    ]}
    
    {set $index2 = '!getStatusCountPartnership' | snippet :[
        'from_user_id'=> $user_id,
        'status_ids'=>[0]
    ]}
    {set $index3 = '!getStatusCountPartnership' | snippet :[
        'from_user_id'=>$user_id,
        'status_ids'=>[1,3,8]
    ]}    
    {set $index4 = '!getStatusCountPartnership' | snippet :[
        'from_user_id'=>$user_id,
        'status_ids'=>[5,51]
    ]}        
    {set $index5 = '!getStatusCountPartnership' | snippet :[
        'from_user_id'=>$user_id,
        'status_ids'=>[2,4,6,7,9]
    ]}        
    {set $aCount = [$index1,$index2,$index3,$index4, $index5]}

    {set $str = ''}
    {set $menu = $menu | replace : "#1#" : $str}
    {set $menu = $menu | replace : "#class1#" : ""}
    
    {set $str = '<span class="count">'~$aCount[1]~'</span>'}
    {set $menu = $menu | replace : "#2#" : $str}
    {set $menu = $menu | replace : "#class2#" : "active--count"}
    
    {set $str = '<span class="count">'~$aCount[2]~'</span>'}
    {set $menu = $menu | replace : "#3#" : $str}
    {set $menu = $menu | replace : "#class3#" : "active--count"}
    
    {set $str = '<span class="count">'~$aCount[3]~'</span>'}
    {set $menu = $menu | replace : "#4#" : $str}
    {set $menu = $menu | replace : "#class4#" : "active--count"}
    
    {set $str = '<span class="count">'~$aCount[4]~'</span>'}
    {set $menu = $menu | replace : "#5#" : $str}
    {set $menu = $menu | replace : "#class5#" : "active--count"}
    
{elseif $_modx->resource.parent in [1122]}
	{set $index1 = 123}
    {set $index2 = '!getStatusCountPartnership' | snippet :[
        'to_user_id'=> $user_id,
        'status_ids'=>[0]
    ]}
    {set $index3 = '!getStatusCountPartnership' | snippet :[
        'to_user_id'=>$user_id,
        'status_ids'=>[1,3,8]
    ]}    
    {set $index4 = '!getStatusCountPartnership' | snippet :[
        'to_user_id'=>$user_id,
        'status_ids'=>[5,51]
    ]}        
    {set $index5 = '!getStatusCountPartnership' | snippet :[
        'to_user_id'=>$user_id,
        'status_ids'=>[2,4,6,7,9]
    ]}
    
    {set $aCount = [$index1,$index2,$index3,$index4,$index5]}
    
    {set $str = ''}
    {set $menu = $menu | replace : "#1#" : $str}
    {set $menu = $menu | replace : "#class1#" : ""}
    
    {set $str = '<span class="count">'~$aCount[1]~'</span>'}
    {set $menu = $menu | replace : "#2#" : $str}
    {set $menu = $menu | replace : "#class2#" : "active--count"}
    
    {set $str = '<span class="count">'~$aCount[2]~'</span>'}
    {set $menu = $menu | replace : "#3#" : $str}
    {set $menu = $menu | replace : "#class3#" : "active--count"}
    
    {set $str = '<span class="count">'~$aCount[3]~'</span>'}
    {set $menu = $menu | replace : "#4#" : $str}
    {set $menu = $menu | replace : "#class4#" : "active--count"}
    
    {set $str = '<span class="count">'~$aCount[4]~'</span>'}
    {set $menu = $menu | replace : "#5#" : $str}
    {set $menu = $menu | replace : "#class5#" : "active--count"}
    
    
{/if}              
{$menu}
                
                
                