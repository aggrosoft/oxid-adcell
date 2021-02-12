<?php

$sMetadataVersion = '2.0';

$aModule = array(
    'id'           => 'agadcell',
    'title'        => 'Aggrosoft Adcell tracking integration',
    'description'  => [
        'de' => 'Adcell tracking integration',
        'en' => 'Adcell tracking integration'
    ],
    'thumbnail'    => '',
    'version'      => '1.0.1-alpha.0',
    'author'       => 'Aggrosoft GmbH',
    'extend'      => [
        \OxidEsales\Eshop\Core\ViewConfig::class => \Aggrosoft\Adcell\Application\Core\ViewConfig::class
    ],
    'templates'   => [
        'widget/adcell/tracking.tpl' => 'agadcell/Application/views/tpl/widget/adcell/tracking.tpl',
        'widget/adcell/container.tpl' => 'agadcell/Application/views/tpl/widget/adcell/container.tpl'
    ],
    'blocks' => [
        [
            'template' => 'layout/base.tpl',
            'block' => 'base_js',
            'file' => '/Application/views/blocks/base_js.tpl',
        ]
    ],
    'settings' => [
        ['group' => 'adcell_main', 'name' => 'sEventId', 'type' => 'str', 'value' => ''],
        ['group' => 'adcell_main', 'name' => 'sProgramId', 'type' => 'str', 'value' => '']
    ],
);
