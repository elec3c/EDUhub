Ext.onReady(function () {
    eduhub.config.connector_url = OfficeConfig.actionUrl;

    var grid = new eduhub.panel.Home();
    grid.render('office-eduhub-wrapper');

    var preloader = document.getElementById('office-preloader');
    if (preloader) {
        preloader.parentNode.removeChild(preloader);
    }
});