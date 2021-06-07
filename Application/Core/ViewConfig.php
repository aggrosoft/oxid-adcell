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
        if (!$oList)
            return "";
        $array = is_array($oList) ? $oList : $oList->getArray();
        return implode($this->getAdcellProductIdListSeparator(), array_map(function ($o) { return $o->getId(); }, $array));
    }

    public function getAdcellProductIdListSeparator () {
        return '|';
    }

}
