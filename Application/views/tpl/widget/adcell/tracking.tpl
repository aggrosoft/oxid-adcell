[{if $oViewConf->getAdcellEventId() && $oViewConf->getAdcellProgramId() }]
    <script type="text/javascript" src="https://t.adcell.com/js/trad.js"></script><script>try { Adcell.Tracking.track(); } catch (e) {}</script>

    [{if $oView->getClassName() == 'thankyou' }]
    <script type="text/javascript" src="https://t.adcell.com/t/track.js?pid=[{$oViewConf->getAdcellProgramId()}]&eventid=[{$oViewConf->getAdcellEventId()}]&referenz=[{$order->oxorder__oxordernr->value}]&betrag=[{$order->oxorder__oxtotalnetsum->value}]" async></script>
    <noscript><img border="0" width="1" height="1" src="https://t.adcell.com/t/track.js?pid=[{$oViewConf->getAdcellProgramId()}]&eventid=[{$oViewConf->getAdcellEventId()}]&referenz=[{$order->oxorder__oxordernr->value}]&betrag=[{$order->oxorder__oxtotalnetsum->value}]"></noscript>
    [{/if}]

    [{include file="widget/adcell/container.tpl"}]
[{/if}]