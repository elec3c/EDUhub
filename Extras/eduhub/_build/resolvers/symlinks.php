<?php
/** @var xPDOTransport $transport */
/** @var array $options */
/** @var modX $modx */
if ($transport->xpdo) {
    $modx =& $transport->xpdo;

    $dev = MODX_BASE_PATH . 'Extras/eduhub/';
    /** @var xPDOCacheManager $cache */
    $cache = $modx->getCacheManager();
    if (file_exists($dev) && $cache) {
        if (!is_link($dev . 'assets/components/eduhub')) {
            $cache->deleteTree(
                $dev . 'assets/components/eduhub/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_ASSETS_PATH . 'components/eduhub/', $dev . 'assets/components/eduhub');
        }
        if (!is_link($dev . 'core/components/eduhub')) {
            $cache->deleteTree(
                $dev . 'core/components/eduhub/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_CORE_PATH . 'components/eduhub/', $dev . 'core/components/eduhub');
        }
    }
}

return true;