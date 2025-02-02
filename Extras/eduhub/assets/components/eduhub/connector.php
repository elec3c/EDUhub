<?php
if (file_exists(dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php')) {
    /** @noinspection PhpIncludeInspection */
    require_once dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php';
} else {
    require_once dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/config.core.php';
}
/** @noinspection PhpIncludeInspection */
require_once MODX_CORE_PATH . 'config/' . MODX_CONFIG_KEY . '.inc.php';
/** @noinspection PhpIncludeInspection */
require_once MODX_CONNECTORS_PATH . 'index.php';
/** @var eduhub $eduhub */
$eduhub = $modx->getService('eduhub', 'eduhub', MODX_CORE_PATH . 'components/eduhub/model/');
$modx->lexicon->load('eduhub:default');

// handle request
$corePath = $modx->getOption('eduhub_core_path', null, $modx->getOption('core_path') . 'components/eduhub/');
$path = $modx->getOption('processorsPath', $eduhub->config, $corePath . 'processors/');
$modx->getRequest();

/** @var modConnectorRequest $request */
$request = $modx->request;
$request->handleRequest([
    'processors_path' => $path,
    'location' => '',
]);