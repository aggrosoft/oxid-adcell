[{if !$oViewConf->isModuleActive('agcookiecompliance') || $oViewConf->isCookieCategoryEnabled('MARKETING')}]
    [{if $oView->getClassName() == 'start' }]
        <script type="text/javascript" src="https://t.adcell.com/js/inlineretarget.js?method=track&pid=[{$oViewConf->getAdcellProgramId()}]&type=startpage" async></script>
    [{elseif $oView->getClassName() == 'details' }]
        <script type="text/javascript" src="https://t.adcell.com/js/inlineretarget.js?method=product&pid=[{$oViewConf->getAdcellProgramId()}]&productId=[{$oDetailsProduct->getId()}]&productName=[{$oDetailsProduct->oxarticles__oxtitle->value|strip_tags}] [{$oDetailsProduct->oxarticles__oxvarselect->value}]&categoryId=[{$oView->getCategoryId()}]&productIds=[{$oViewConf->getAdcellProductIdList($oDetailsProduct->getVariants())}]&productSeparator=[{$oViewConf->getAdcellProductIdListSeparator()}]" async></script>
    [{elseif $oView->getClassName() == 'search' }]
        <script type="text/javascript" src="https://t.adcell.com/js/inlineretarget.js?method=search&pid=[{$oViewConf->getAdcellProgramId()}]&search=[{$oView->getSearchParamForHtml()}]&productIds=[{$oViewConf->getAdcellProductIdList($oView->getArticleList())}]&productSeparator=[{$oViewConf->getAdcellProductIdListSeparator()}]"></script>
    [{elseif $oView->getClassName() == 'basket' && $oxcmp_basket->getProductsCount() }]
        [{capture assign=productQuantites}][{strip}]
        [{foreach from=$oxcmp_basket->getContents() name=adcellBasketList item=product}]
        [{$product->getAmount()}][{if !$smarty.foreach.adcellBasketList.last}][{$oViewConf->getAdcellProductIdListSeparator}][{/if}]
        [{/foreach}]
        [{/strip}][{/capture}]
        <script type="text/javascript" src="https://t.adcell.com/js/inlineretarget.js?method=basket&pid=[{$oViewConf->getAdcellProgramId()}]&productIds=[{$oViewConf->getAdcellProductIdList($oView->getBasketArticles())}]&productSeparator=[{$oViewConf->getAdcellProductIdListSeparator()}]&quantities=[{$productQuantites}]&basketProductCount=[{$oxcmp_basket->getProductsCount()}]&basketTotal=[{$oxcmp_basket->getBruttoSum()}]" async></script>
    [{elseif $oView->getClassName() == 'thankyou' }]
        [{capture assign=productQuantites}][{strip}]
        [{foreach from=$order->getOrderArticles() name=adcellOrderArticleList item=article}]
        [{$article->oxorderarticles__oxamount->value}][{if !$smarty.foreach.adcellOrderArticleList.last}][{$oViewConf->getAdcellProductIdListSeparator}][{/if}]
        [{/foreach}]
        [{/strip}][{/capture}]

        [{capture assign=productIds}][{strip}]
        [{foreach from=$order->getOrderArticles() name=adcellOrderArticleList item=article}]
        [{$article->oxorderarticles__oxartid->value}][{if !$smarty.foreach.adcellOrderArticleList.last}][{$oViewConf->getAdcellProductIdListSeparator}][{/if}]
        [{/foreach}]
        [{/strip}][{/capture}]
        <script type="text/javascript" src="https://t.adcell.com/js/inlineretarget.js?method=checkout&pid=[{$oViewConf->getAdcellProgramId()}]&basketId=[{$order->oxorder__oxordernr->value}]&basketTotal=[{$order->oxorder__oxtotalordersum->value}]&basketProductCount=[{$$order->getOrderArticles()|@count}]&productIds=[{$productIds}]&productSeparator=[{$oViewConf->getAdcellProductIdListSeparator()}]&quantities=[{$productQuantities}]" async></script>
    [{/if}]
[{/if}]