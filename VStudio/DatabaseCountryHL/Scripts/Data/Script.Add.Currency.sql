PRINT '|Add Currency [  ]';
PRINT '|$(ScriptsPath)$(FileNameCurrency)';
/*
INSERT INTO [dbo].[CURRENCY]
(
	[CUR_ISO4217_CODE],
	[CUR_ISO4217_NAME],
	[CUR_ISO4217_NUMERIC]
)
VALUES
(N'AED', N'UAE Dirham', 784),
(N'AFN', N'Afghani', 971),
(N'ALL', N'Lek', 8),
(N'AMD', N'Armenian Dram', 51),
(N'ANG', N'Netherlands Antillean Guilder', 532),
(N'AOA', N'Kwanza', 973),
(N'ARS', N'Argentine Peso', 32),
(N'AUD', N'Australian Dollar', 36),
(N'AWG', N'Aruban Florin', 533),
(N'AZN', N'Azerbaijanian Manat', 944),
(N'BAM', N'Convertible Mark', 977),
(N'BBD', N'Barbados Dollar', 52),
(N'BDT', N'Taka', 50),
(N'BGN', N'Bulgarian Lev', 975),
(N'BHD', N'Bahraini Dinar', 48),
(N'BIF', N'Burundi Franc', 108),
(N'BMD', N'Bermudian Dollar', 60),
(N'BND', N'Brunei Dollar', 96),
(N'BOB', N'Boliviano', 68),
(N'BRL', N'Real Brasileiro', 986),
(N'BSD', N'Bahamian Dollar', 44),
(N'BWP', N'Pula', 72),
(N'BYR', N'Belarussian Ruble', 974),
(N'BZD', N'Belize Dollar', 84),
(N'CAD', N'Canadian Dollar', 124),
(N'CHF', N'Swiss Franc', 756),
(N'CLP', N'Chilean Peso', 152),
(N'CNY', N'Yuan Renminbi', 156),
(N'COP', N'Colombian Peso', 170),
(N'CRC', N'Costa Rican Colon', 188),
(N'CUP', N'Cuban Peso', 192),
(N'CVE', N'Cabo Verde Escudo', 132),
(N'CZK', N'Czech Koruna', 203),
(N'DJF', N'Djibouti Franc', 262),
(N'DKK', N'Danish Krone', 208),
(N'DOP', N'Dominican Peso', 214),
(N'DZD', N'Algerian Dinar', 12),
(N'EGP', N'Egyptian Pound', 818),
(N'ERN', N'Nakfa', 232),
(N'ETB', N'Ethiopian Birr', 230),
(N'EUR', N'Euro', 978),
(N'FJD', N'Fiji Dollar', 242),
(N'FKP', N'Falkland Islands Pound', 238),
(N'GBP', N'Pound Sterling', 826),
(N'GEL', N'Lari', 981),
(N'GHS', N'Ghana Cedi', 936),
(N'GIP', N'Gibraltar Pound', 292),
(N'GMD', N'Dalasi', 270),
(N'GNF', N'Guinea Franc', 324),
(N'GTQ', N'Quetzal', 320),
(N'GYD', N'Guyana Dollar', 328),
(N'HNL', N'Lempira', 340),
(N'HRK', N'Croatian Kuna', 191),
(N'HUF', N'Forint', 348),
(N'IDR', N'Rupiah', 360),
(N'ILS', N'New Israeli Sheqel', 376),
(N'INR', N'Indian Rupee', 356),
(N'IQD', N'Iraqi Dinar', 368),
(N'IRR', N'Iranian Rial', 364),
(N'ISK', N'Iceland Krona', 352),
(N'JMD', N'Jamaican Dollar', 388),
(N'JOD', N'Jordanian Dinar', 400),
(N'JPY', N'Yen', 392),
(N'KES', N'Kenyan Shilling', 404),
(N'KGS', N'Som', 417),
(N'KHR', N'Riel', 116),
(N'KMF', N'Comoro Franc', 174),
(N'KPW', N'North Korean Won', 408),
(N'KRW', N'Won', 410),
(N'KWD', N'Kuwaiti Dinar', 414),
(N'KYD', N'Cayman Islands Dollar', 136),
(N'KZT', N'Tenge', 398),
(N'LAK', N'Kip', 418),
(N'LBP', N'Lebanese Pound', 422),
(N'LKR', N'Sri Lanka Rupee', 144),
(N'LRD', N'Liberian Dollar', 430),
(N'LYD', N'Libyan Dinar', 434),
(N'MAD', N'Moroccan Dirham', 504),
(N'MDL', N'Moldovan Leu', 498),
(N'MGA', N'Malagasy Ariary', 969),
(N'MKD', N'Denar', 807),
(N'MMK', N'Kyat', 104),
(N'MNT', N'Tugrik', 496),
(N'MOP', N'Pataca', 446),
(N'MRO', N'Ouguiya', 478),
(N'MUR', N'Mauritius Rupee', 480),
(N'MVR', N'Rufiyaa', 462),
(N'MWK', N'Kwacha', 454),
(N'MXN', N'Mexican Peso', 484),
(N'MYR', N'Malaysian Ringgit', 458),
(N'MZN', N'Mozambique Metical', 943),
(N'NGN', N'Naira', 566),
(N'NIO', N'Cordoba Oro', 558),
(N'NOK', N'Norwegian Krone', 578),
(N'NPR', N'Nepalese Rupee', 524),
(N'NZD', N'New Zealand Dollar', 554),
(N'OMR', N'Rial Omani', 512),
(N'PEN', N'Nuevo Sol', 604),
(N'PGK', N'Kina', 598),
(N'PHP', N'Philippine Peso', 608),
(N'PKR', N'Pakistan Rupee', 586),
(N'PLN', N'Zloty', 985),
(N'PYG', N'Guarani', 600),
(N'QAR', N'Qatari Rial', 634),
(N'RON', N'New Romanian Leu', 946),
(N'RSD', N'Serbian Dinar', 941),
(N'RUB', N'Russian Ruble', 643),
(N'RWF', N'Rwanda Franc', 646),
(N'SAR', N'Saudi Riyal', 682),
(N'SBD', N'Solomon Islands Dollar', 90),
(N'SCR', N'Seychelles Rupee', 690),
(N'SDG', N'Sudanese Pound', 938),
(N'SEK', N'Swedish Krona', 752),
(N'SGD', N'Singapore Dollar', 702),
(N'SHP', N'Saint Helena Pound', 654),
(N'SLL', N'Leone', 694),
(N'SOS', N'Somali Shilling', 706),
(N'SRD', N'Surinam Dollar', 968),
(N'SSP', N'South Sudanese Pound', 728),
(N'STD', N'Dobra', 678),
(N'SYP', N'Syrian Pound', 760),
(N'SZL', N'Lilangeni', 748),
(N'THB', N'Baht', 764),
(N'TJS', N'Somoni', 972),
(N'TMT', N'Turkmenistan New Manat', 934),
(N'TND', N'Tunisian Dinar', 788),
(N'TOP', N'Pa’anga', 776),
(N'TRY', N'Turkish Lira', 949),
(N'TTD', N'Trinidad and Tobago Dollar', 780),
(N'TZS', N'Tanzanian Shilling', 834),
(N'UAH', N'Hryvnia', 980),
(N'UGX', N'Uganda Shilling', 800),
(N'USD', N'US Dollar', 840),
(N'UYU', N'Peso Uruguayo', 858),
(N'UZS', N'Uzbekistan Sum', 860),
(N'VEF', N'Bolivar', 937),
(N'VND', N'Dong', 704),
(N'VUV', N'Vatu', 548),
(N'WST', N'Tala', 882),
(N'XAF', N'CFA Franc BEAC', 950),
(N'XCD', N'East Caribbean Dollar', 951),
(N'XOF', N'CFA Franc BCEAO', 952),
(N'XPF', N'CFP Franc', 953),
(N'YER', N'Yemeni Rial', 886),
(N'ZAR', N'Rand', 710),
(N'ZMW', N'Zambian Kwacha', 967),
(N'ZWL', N'Zimbabwe Dollar', 932);
*/
DROP TABLE IF EXISTS [dbo].[#CURRENCY];
SELECT DISTINCT 
	 [D].[ISO4217currency_alphabetic_code]	[CUR_ISO4217_CODE], 
	 [D].[ISO4217currency_name]				[CUR_ISO4217_NAME], 
	 [D].[ISO4217currency_numeric_code]		[CUR_ISO4217_NUMERIC] INTO [dbo].[#CURRENCY] 
FROM 
	[dbo].[#DataSourceSQL] [D] 
WHERE 
[D].[ISO4217currency_alphabetic_code] IS NOT NULL
AND
[D].[ISO4217currency_name] IS NOT NULL
AND
[D].[ISO4217currency_numeric_code] IS NOT NULL;
UPDATE [dbo].[#CURRENCY] 
SET 
[CUR_ISO4217_NAME] = ('Real Brasileiro') 
WHERE 
[CUR_ISO4217_CODE] = ('BRL') 
AND 
[CUR_ISO4217_NUMERIC] = (986);
INSERT INTO [dbo].[CURRENCY]
(
	[CUR_ISO4217_CODE],
	[CUR_ISO4217_NAME],
	[CUR_ISO4217_NUMERIC]
)
(
SELECT
	[C].[CUR_ISO4217_CODE],
	[C].[CUR_ISO4217_NAME],
	[C].[CUR_ISO4217_NUMERIC]
FROM 
[dbo].[#CURRENCY] [C]
);
PRINT '|Add Currency [OK]';
--####################
--##                ##
--##     Version    ##
--##     1.0.0.2    ##
--##                ##
--####################