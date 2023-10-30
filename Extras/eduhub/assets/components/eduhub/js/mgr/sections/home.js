eduhub.page.Home = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        components: [{
            xtype: 'eduhub-panel-home',
            renderTo: 'eduhub-panel-home-div'
        }]
    });
    eduhub.page.Home.superclass.constructor.call(this, config);
};
Ext.extend(eduhub.page.Home, MODx.Component);
Ext.reg('eduhub-page-home', eduhub.page.Home);