<?php

namespace Aggrosoft\Adcell\Application\Core;

class ViewConfig extends ViewConfig_parent {

    public function getAdcellEventId () {
        $oConfig = $this->getConfig();
        return $oConfig->getShopConfVar('sEventId', null, 'module:agadcell');
    }

    public function getAdcellProgramId () {
        $oConfig = $this->getConfig();
        return $oConfig->getShopConfVar('sProgramId', null, 'module:agadcell');
    }

    public function getAdcellProductIdList ($oList) {
        return implode($this->getAdcellProductIdListSeparator(), array_map(function ($o) { return $o->getId(); }, $oList));
    }

    public function getAdcellProductIdListSeparator () {
        return '|';
    }

}