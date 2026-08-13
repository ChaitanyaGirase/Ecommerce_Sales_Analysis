\# Statistical Analysis Insights



\## Descriptive Statistics



The dataset contains 9,683 records.



\### Sales



\- Minimum\_Sales: 0.44

\- Maximum\_Sales: 22,638.48

\- Average\_Sales: 233.76

\- Sales\_Sta\_Dev: 630.41



\### Profit



\- Minimum\_Profit: -6,599.98

\- Maximum\_Profit: 8,399.98

\- Average\_Profit: 28.98

\- Profit\_Sta\_Dev: 237.57



\### Quantity



\- Minimum\_Quantity: 1

\- Maximum\_Quantity: 14

\- Average\_Quantity: 3.79



\### Initial Insights



Sales show substantial variation, with a standard deviation of 630.41 compared with an average of 233.76. This indicates that transaction sales values vary considerably.



Profit also shows substantial variation, ranging from a loss of -6,599.98 to a maximum profit of 8,399.98.



The negative minimum profit indicates that some transactions are loss-making and require further investigation.





\## Mean vs Median

\--------------------------

| Metric | Mean  | Median|

|--------|---:---|---:---|

| Sales  | 233.76| 55.92 |

| Profit | 28.98 | 8.72  |

\--------------------------

\### Insight



The mean sales value (233.76) is considerably higher than the median sales value (55.92). This indicates that the sales distribution is likely right-skewed, with a smaller number of high-value transactions increasing the average.



Similarly, the mean profit (28.98) is higher than the median profit (8.72), indicating that some transactions with relatively high profits are increasing the average profit.



\## Discount Statistics

\----------------------------

|       Metric     | Value |

|------------------|---:---|

| Minimum\_Discount | 0.00  |

| Maximum\_Discount | 0.80  |

| Average\_Discount | 0.16  |

| Discount\_std\_Dev | 0.20  |

\----------------------------

\### Insight



Discounts ranged from 0% to 80%, with an average discount of 16%. The relatively wide range indicates that different transactions received substantially different discount levels.



\## Discount vs Profit

\--------------------------------------------------------

|Discount| Total\_Sales | Total\_Profit | Average\_Profit |

|---:----|------:------|-------:------|--------:-------|

|  0.45  |  5,484.97   |  -2,493.11   |   -226.65      |

|  0.50  |  58,918.54  |  -20,506.43  |   -310.70      |

|  0.60  |  6,237.40   |  -5,548.40   |   -42.03       |

|  0.70  |  40,022.02  |  -39,643.72  |   -101.39      |

|  0.80  |  16,708.32  |  -30,136.24  |   -105.74      |

\--------------------------------------------------------



\### Insight



The analyzed high-discount groups all recorded negative total profit. The 70% discount group recorded the largest total loss at -39,643.72.



The results indicate an association between high discount levels and negative profitability. However, this analysis alone does not establish that discounts directly cause losses. Other factors such as product category, product cost, or order characteristics may also influence profitability.



\## Loss-Making Transactions

\------------------------------------

|      Metric             | Value |

|-------------------------|---:---|

| Total\_Records           | 9,683  |

| Loss\_Making\_Transactions| 1,808  |

| Loss\_Making\_Percentage  | 18.67% |

\------------------------------------



\### Insight



Out of 9,683 transactions, 1,808 transactions were loss-making, representing 18.67% of all transactions.



This means that approximately one out of every five transactions generated a negative profit. These transactions should be investigated further to understand the impact of discounts, products, regions, and other factors on profitability.



\## Profitability Status Analysis

\------------------------------------------------------------------

| Profit\_Status | Transaction\_Count | Total\_Sales | Total\_Profit |

|---------------|-------------------|-------------|--------------|

| Profitable    |    7,815          | 1,772,548.76| 435,123.92   |

| Loss          |    1,808	    | 464,810.99  | -154,511.15  |

| Zero Profit   |    60 	    | 26,160.73   | 0.00         |

\------------------------------------------------------------------

\### Insight



Most transactions were profitable, with 7,815 profitable transactions compared with 1,808 loss-making transactions and 60 zero-profit transactions.



The loss-making transactions generated a combined loss of 154,511.15. This indicates that although loss-making transactions represent a minority of the dataset, they have a significant negative impact on overall profitability.



Further analysis of products, discounts, and regions can help identify the main sources of these losses.





\## Extreme High-Sales Transactions



The 10 transactions with the highest sales values were examined to identify unusually high-value transactions.

\--------------------------------------------------------------------------------------------------------------

|   Order\_ID     |              Product\_Name                            |  Sales  | Profit  |Quantity|Discount|

|----------------|------------------------------------------------------|---------|---------|--------|--------|

| CA-2015-145317 | Cisco TelePresence System EX90 Videoconferencing Unit|22,638.48|-1,811.08|   6    |  50%   |

| CA-2017-118689 | Canon imageCLASS 2200 Advanced Copier		|17,499.95| 8,399.98| 	5    |  0%    |

| CA-2018-140151 | Canon imageCLASS 2200 Advanced Copier 		|13,999.96| 6,719.98| 	4    |  0%    |

| CA-2018-127180 | Canon imageCLASS 2200 Advanced Copier 		|11,199.97| 3,919.99| 	4    |  20%   |

| CA-2018-166709 | Canon imageCLASS 2200 Advanced Copier 		|10,499.97| 5,039.99| 	3    |  0%    |

| CA-2017-117121 | GBC Ibimaster 500 Manual ProClick Binding System 	|9,892.74 | 4,946.37| 	13   |  0%    |

| CA-2015-116904 | Ibico EPK-21 Electric Binding System 		|9,449.95 | 4,630.48| 	5    |  0%    |

| US-2017-107440 | 3D Systems Cube Printer, 2nd Generation, Magenta 	|9,099.93 | 2,365.98| 	7    |  0%    |

| CA-2017-158841 | HP Designjet T520 Inkjet Large FormatPrinter-24 Color|8,749.95 | 2,799.98| 	5    |  0%    |

| CA-2017-143714 | Canon imageCLASS 2200 Advanced Copier 		|8,399.98 | 1,120.00| 	4    |  40%   |

\---------------------------------------------------------------------------------------------------------------



\### Insight



The highest-sales transaction generated 22,638.48 in sales but resulted in a loss of 1,811.08. This transaction also had a 50% discount, making it an important case for further profitability investigation.



The Canon imageCLASS 2200 Advanced Copier appeared multiple times among the highest-sales transactions and generated positive profits in these examples.



These transactions represent extreme high-sales values but should not automatically be classified as statistical outliers without applying a formal outlier detection method.



\## Extreme Loss Transactions

|----------------------------------------------------------------------------------------------------------------------------

| Order\_ID	|                        Product\_Name					    |Sales|Profit|Quantity|Discount|

|---------------|---------------------------------------------------------------------------|-----|------|--------|--------|

|US-2018-102288	| Hoover Replacement Belt for Commercial Guardsman Heavy-Duty Upright Vacuum|0.44 |-1.11 |  1	  |80.00%  |

|CA-2018-124114	| Acco Suede Grain Vinyl Round Ring Binder				    |0.56 |-0.95 |  1	  |80.00%  |

|CA-2017-168361	| Avery Durable Slant Ring Binders With Label Holder			    |0.84 |-1.34 |  1	  |80.00%  |

|CA-2015-112403	| Avery Round Ring Poly Binders						    |0.85 |-0.6  |  1	  |70.00%  |

|US-2015-152723	| Acco 3-Hole Punch							    |0.88 |-1.4  |  1	  |80.00%  |

|CA-2015-103492	| Avery Non-Stick Binders						    |0.9  |-1.57 |  1     |80.00%  |

|CA-2016-119690	| Avery Triangle Shaped Sheet Lifters, Black, 2/Pack			    |0.98 |-1.48 |  2	  |80.00%  |

|CA-2018-126536	| Maxell 4.7GB DVD-R 5/Pack						    |0.99 |0.44	 |  1	  |0.00%   |

|CA-2015-129189	| Acco Economy Flexible Poly Round Ring Binder				    |1.04 |-1.83 |  1	  |80.00%  |

|CA-2016-106978	| Wilson Jones Easy Flow II Sheet Lifters				    |1.08 |-0.79 |  2	  |70.00%  |

\----------------------------------------------------------------------------------------------------------------------------



The 10 transactions with the lowest profit were examined to identify transactions with particularly poor profitability.



\### Insight



Most of the extreme loss transactions had very high discount levels of 70% or 80%.



Several transactions had very small sales values but still generated negative profit. For example, the Hoover Replacement Belt transaction generated only 0.44 in sales and resulted in a loss of 1.11 with an 80% discount.



The results further indicate an association between high discount levels and poor profitability. However, additional analysis would be required to determine the underlying causes of these losses.



\## Sales Outlier Analysis Using IQR



The IQR method was used to identify potential high-sales outliers.



\### Quartile Statistics

\-----------------------

| Measure    | Value  |

|------------|--------|

| Q1         | 17.48  |

| Q3         | 214.11 |

| IQR        | 196.63 |

| Lower Bound| -277.47|

| Upper Bound| 509.06 |

\-----------------------

\### Calculation





IQR = Q3 - Q1



IQR = 214.11 - 17.48



IQR = 196.63





\## Profit Outlier Analysis Using IQR



The IQR method was used to identify potential outliers in Profit.



\### Quartile Statistics

\------------------------

| Measure     | Value  |

|-------------|--------|

| Q1          | 1.73   |

| Q3          | 29.96  |

| IQR         | 28.23  |

| Lower Bound | -40.62 |

| Upper Bound | 72.31  |

| Potential Profit Outliers | 1,822 |

\-------------------------------------



\### Calculation



IQR:



Q3 - Q1



= 29.96 - 1.73



= 28.23



Lower Bound:



Q1 - 1.5 × IQR



= 1.73 - (1.5 × 28.23)



= -40.62



Upper Bound:



Q3 + 1.5 × IQR



= 29.96 + (1.5 × 28.23)



= 72.31



Therefore, transactions with Profit below -40.62 or above 72.31 were classified as potential profit outliers.



\### Insight



A total of 1,822 transactions were identified as potential profit outliers using the IQR method.



These records should not automatically be removed because they may represent legitimate high-profit or high-loss transactions. Further business analysis is required before deciding whether any records should be treated as data errors.



