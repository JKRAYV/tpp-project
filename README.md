# tpp-project

## Overview

The purpose of this project is demonstrate large-scale data processing utilizing:

* Batch processing scripts
* SQL database
* REST API
* Shell Scripting
* Documentation and version control

## Dataset

For this project I decided to utilize the kaggle *E-Commerce Sales Dataset*, specifically the Amazon Sale Report. Link: https://www.kaggle.com/datasets/thedevastator/unlock-profits-with-e-commerce-sales-data?resource=download&select=Amazon+Sale+Report.csv

#### Reasoning

This dataset contains a diverse range of attributes useful for processing demonstration. 

#### About this file

This dataset provides detailed insights into Amazon sales data, including SKU Code, Design Number, Stock, Category, Size and Color, to help optimize product profitability

* **Category**: Type of product. (*String*)
* **Size**: Size of the product. (*String*)
* **Date**: Date of the sale. (*Date*)
* **Status**: Status of the sale. (*String*)
* **Fulfilment**: Method of fulfilment. (*String*)
* **Style**: Style of the product. (*String*)
* **SKU**: Stock Keeping Unit. (*String*)
* **ASIN**: Amazon Standard Identification Number. (*String*)
* **Courier Status**: Status of the courier. (*String*)
* **Qty**: Quantity of the product. (*Integer*)
* **Amount**: Amount of the sale. (*Float*)
* **B2B**: Business to business sale. (*Boolean*)
* **Currency**: The currency used for the sale. (*String*)

#### Schema

We will be utilizing the schema below to manage the data:

![ERD Model](https://github.com/JKRAYV/tpp-project/blob/dev/Documentation/ERD.PNG?raw=true)