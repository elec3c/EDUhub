<div class="compare__item-row">test
        {switch $value}
        	{case 'online'}
                Онлайн-обучение
            {case 'offline'}                
                Офлайн-обучение
            {case 'group'}                
                Групповые
            {case 'individual'}                
                 Индивидуальные
            {case '01 Январь 2099'}     
                 Не указана
            {default}
                {$value}
        {/switch}test
</div>