var eduhub = function (config) {
    config = config || {};
    eduhub.superclass.constructor.call(this, config);
};
Ext.extend(eduhub, Ext.Component, {
    page: {}, window: {}, grid: {}, tree: {}, panel: {}, combo: {}, config: {}, view: {}, utils: {}
});
Ext.reg('eduhub', eduhub);

eduhub = new eduhub();