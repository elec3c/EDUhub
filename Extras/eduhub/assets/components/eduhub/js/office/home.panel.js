eduhub.panel.Home = function (config) {
    config = config || {};
    Ext.apply(config, {
        baseCls: 'modx-formpanel',
        layout: 'anchor',
        /*
         stateful: true,
         stateId: 'eduhub-panel-home',
         stateEvents: ['tabchange'],
         getState:function() {return {activeTab:this.items.indexOf(this.getActiveTab())};},
         */
        hideMode: 'offsets',
        items: [{
            xtype: 'modx-tabs',
            defaults: {border: false, autoHeight: true},
            border: false,
            hideMode: 'offsets',
            items: [{
                title: _('eduhub_items'),
                layout: 'anchor',
                items: [{
                    html: _('eduhub_intro_msg'),
                    cls: 'panel-desc',
                }, {
                    xtype: 'eduhub-grid-items',
                    cls: 'main-wrapper',
                }]
            }]
        }]
    });
    eduhub.panel.Home.superclass.constructor.call(this, config);
};
Ext.extend(eduhub.panel.Home, MODx.Panel);
Ext.reg('eduhub-panel-home', eduhub.panel.Home);
