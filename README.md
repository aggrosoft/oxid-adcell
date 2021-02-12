![Adcell logo](https://www.adcell.de/themes/adcell-default/images/adcell-logo.png)

# oxid-adcell
Adcell tracking integration

## Installation

`composer require aggrosoft/oxid-adcell`

## Configuration

Set Event ID and Program ID in module settings

## About

Module will add Adcell Conversion Tracking, 1st Party Tracking and the following Container tags:

* startpage
* product
* category
* search
* basket
* checkout

Container tracking will be skipped if [Cookie Compliance Module](https://github.com/aggrosoft/oxid-cookie-compliance)
is active and marketing cookies are not allowed by user. Override `widget/adcell/container.tpl` for custom rules. 