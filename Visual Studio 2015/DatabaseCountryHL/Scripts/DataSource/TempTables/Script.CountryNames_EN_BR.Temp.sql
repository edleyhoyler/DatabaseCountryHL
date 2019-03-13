DROP TABLE IF EXISTS [CountryNames_EN_BR];
CREATE TABLE CountryNames_EN_BR
(
  ID      CHAR(2)     NOT NULL,
  NAME_EN VARCHAR(64) NOT NULL,
  NAME_BR VARCHAR(64) NOT NULL
);
INSERT INTO CountryNames_EN_BR(ID, NAME_EN, NAME_BR) 
VALUES 
('AC', 'Ascension Island', 'Ilha de Ascensão'),
('AD', 'Andorra', 'Andorra'),
('AE', 'United Arab Emirates', 'Emirados Árabes Unidos'),
('AF', 'Afghanistan', 'Afeganistão'),
('AG', 'Antigua & Barbuda', 'Antígua e Barbuda'),
('AI', 'Anguilla', 'Anguilla'),
('AL', 'Albania', 'Albânia'),
('AM', 'Armenia', 'Armênia'),
('AO', 'Angola', 'Angola'),
('AQ', 'Antarctica', 'Antártida'),
('AR', 'Argentina', 'Argentina'),
('AS', 'American Samoa', 'Samoa Americana'),
('AT', 'Austria', 'Áustria'),
('AU', 'Australia', 'Austrália'),
('AW', 'Aruba', 'Aruba'),
('AX', 'Åland Islands', 'Ilhas Åland'),
('AZ', 'Azerbaijan', 'Azerbaijão'),
('BA', 'Bosnia & Herzegovina', 'Bósnia e Herzegovina'),
('BB', 'Barbados', 'Barbados'),
('BD', 'Bangladesh', 'Bangladesh'),
('BE', 'Belgium', 'Bélgica'),
('BF', 'Burkina Faso', 'Burquina Faso'),
('BG', 'Bulgaria', 'Bulgária'),
('BH', 'Bahrain', 'Bahrein'),
('BI', 'Burundi', 'Burundi'),
('BJ', 'Benin', 'Benin'),
('BL', 'St. Barthélemy', 'São Bartolomeu'),
('BM', 'Bermuda', 'Bermudas'),
('BN', 'Brunei', 'Brunei'),
('BO', 'Bolivia', 'Bolívia'),
('BQ', 'Caribbean Netherlands', 'Países Baixos Caribenhos'),
('BR', 'Brazil', 'Brasil'),
('BS', 'Bahamas', 'Bahamas'),
('BT', 'Bhutan', 'Butão'),
('BW', 'Botswana', 'Botsuana'),
('BY', 'Belarus', 'Bielorrússia'),
('BZ', 'Belize', 'Belize'),
('CA', 'Canada', 'Canadá'),
('CC', 'Cocos (Keeling) Islands', 'Ilhas Cocos (Keeling)'),
('CD', 'Congo - Kinshasa', 'Congo - Kinshasa'),
('CF', 'Central African Republic', 'República Centro-Africana'),
('CG', 'Congo - Brazzaville', 'Congo - Brazzaville'),
('CH', 'Switzerland', 'Suíça'),
('CI', 'Côte d’Ivoire', 'Costa do Marfim'),
('CK', 'Cook Islands', 'Ilhas Cook'),
('CL', 'Chile', 'Chile'),
('CM', 'Cameroon', 'República dos Camarões'),
('CN', 'China', 'China'),
('CO', 'Colombia', 'Colômbia'),
('CR', 'Costa Rica', 'Costa Rica'),
('CU', 'Cuba', 'Cuba'),
('CV', 'Cape Verde', 'Cabo Verde'),
('CW', 'Curaçao', 'Curaçao'),
('CX', 'Christmas Island', 'Ilha Christmas'),
('CY', 'Cyprus', 'Chipre'),
('CZ', 'Czechia', 'Tchéquia'),
('DE', 'Germany', 'Alemanha'),
('DG', 'Diego Garcia', 'Diego Garcia'),
('DJ', 'Djibouti', 'Djibuti'),
('DK', 'Denmark', 'Dinamarca'),
('DM', 'Dominica', 'Dominica'),
('DO', 'Dominican Republic', 'República Dominicana'),
('DZ', 'Algeria', 'Argélia'),
('EA', 'Ceuta & Melilla', 'Ceuta e Melilha'),
('EC', 'Ecuador', 'Equador'),
('EE', 'Estonia', 'Estônia'),
('EG', 'Egypt', 'Egito'),
('EH', 'Western Sahara', 'Saara Ocidental'),
('ER', 'Eritrea', 'Eritreia'),
('ES', 'Spain', 'Espanha'),
('ET', 'Ethiopia', 'Etiópia'),
('EZ', 'Eurozone', 'Eurozone'),
('FI', 'Finland', 'Finlândia'),
('FJ', 'Fiji', 'Fiji'),
('FK', 'Falkland Islands', 'Ilhas Malvinas'),
('FM', 'Micronesia', 'Micronésia'),
('FO', 'Faroe Islands', 'Ilhas Faroe'),
('FR', 'France', 'França'),
('GA', 'Gabon', 'Gabão'),
('GB', 'United Kingdom', 'Reino Unido'),
('GD', 'Grenada', 'Granada'),
('GE', 'Georgia', 'Geórgia'),
('GF', 'French Guiana', 'Guiana Francesa'),
('GG', 'Guernsey', 'Guernsey'),
('GH', 'Ghana', 'Gana'),
('GI', 'Gibraltar', 'Gibraltar'),
('GL', 'Greenland', 'Groenlândia'),
('GM', 'Gambia', 'Gâmbia'),
('GN', 'Guinea', 'Guiné'),
('GP', 'Guadeloupe', 'Guadalupe'),
('GQ', 'Equatorial Guinea', 'Guiné Equatorial'),
('GR', 'Greece', 'Grécia'),
('GS', 'South Georgia & South Sandwich Islands', 'Ilhas Geórgia do Sul e Sandwich do Sul'),
('GT', 'Guatemala', 'Guatemala'),
('GU', 'Guam', 'Guam'),
('GW', 'Guinea-Bissau', 'Guiné-Bissau'),
('GY', 'Guyana', 'Guiana'),
('HK', 'Hong Kong SAR China', 'Hong Kong, RAE da China'),
('HN', 'Honduras', 'Honduras'),
('HR', 'Croatia', 'Croácia'),
('HT', 'Haiti', 'Haiti'),
('HU', 'Hungary', 'Hungria'),
('IC', 'Canary Islands', 'Ilhas Canárias'),
('ID', 'Indonesia', 'Indonésia'),
('IE', 'Ireland', 'Irlanda'),
('IL', 'Israel', 'Israel'),
('IM', 'Isle of Man', 'Ilha de Man'),
('IN', 'India', 'Índia'),
('IO', 'British Indian Ocean Territory', 'Território Britânico do Oceano Índico'),
('IQ', 'Iraq', 'Iraque'),
('IR', 'Iran', 'Irã'),
('IS', 'Iceland', 'Islândia'),
('IT', 'Italy', 'Itália'),
('JE', 'Jersey', 'Jersey'),
('JM', 'Jamaica', 'Jamaica'),
('JO', 'Jordan', 'Jordânia'),
('JP', 'Japan', 'Japão'),
('KE', 'Kenya', 'Quênia'),
('KG', 'Kyrgyzstan', 'Quirguistão'),
('KH', 'Cambodia', 'Camboja'),
('KI', 'Kiribati', 'Quiribati'),
('KM', 'Comoros', 'Comores'),
('KN', 'St. Kitts & Nevis', 'São Cristóvão e Nevis'),
('KP', 'North Korea', 'Coreia do Norte'),
('KR', 'South Korea', 'Coreia do Sul'),
('KW', 'Kuwait', 'Kuwait'),
('KY', 'Cayman Islands', 'Ilhas Cayman'),
('KZ', 'Kazakhstan', 'Cazaquistão'),
('LA', 'Laos', 'Laos'),
('LB', 'Lebanon', 'Líbano'),
('LC', 'St. Lucia', 'Santa Lúcia'),
('LI', 'Liechtenstein', 'Liechtenstein'),
('LK', 'Sri Lanka', 'Sri Lanka'),
('LR', 'Liberia', 'Libéria'),
('LS', 'Lesotho', 'Lesoto'),
('LT', 'Lithuania', 'Lituânia'),
('LU', 'Luxembourg', 'Luxemburgo'),
('LV', 'Latvia', 'Letônia'),
('LY', 'Libya', 'Líbia'),
('MA', 'Morocco', 'Marrocos'),
('MC', 'Monaco', 'Mônaco'),
('MD', 'Moldova', 'Moldávia'),
('ME', 'Montenegro', 'Montenegro'),
('MF', 'St. Martin', 'São Martinho'),
('MG', 'Madagascar', 'Madagascar'),
('MH', 'Marshall Islands', 'Ilhas Marshall'),
('MK', 'Macedonia', 'Macedônia'),
('ML', 'Mali', 'Mali'),
('MM', 'Myanmar (Burma)', 'Mianmar (Birmânia)'),
('MN', 'Mongolia', 'Mongólia'),
('MO', 'Macau SAR China', 'Macau, RAE da China'),
('MP', 'Northern Mariana Islands', 'Ilhas Marianas do Norte'),
('MQ', 'Martinique', 'Martinica'),
('MR', 'Mauritania', 'Mauritânia'),
('MS', 'Montserrat', 'Montserrat'),
('MT', 'Malta', 'Malta'),
('MU', 'Mauritius', 'Maurício'),
('MV', 'Maldives', 'Maldivas'),
('MW', 'Malawi', 'Malawi'),
('MX', 'Mexico', 'México'),
('MY', 'Malaysia', 'Malásia'),
('MZ', 'Mozambique', 'Moçambique'),
('NA', 'Namibia', 'Namíbia'),
('NC', 'New Caledonia', 'Nova Caledônia'),
('NE', 'Niger', 'Níger'),
('NF', 'Norfolk Island', 'Ilha Norfolk'),
('NG', 'Nigeria', 'Nigéria'),
('NI', 'Nicaragua', 'Nicarágua'),
('NL', 'Netherlands', 'Holanda'),
('NO', 'Norway', 'Noruega'),
('NP', 'Nepal', 'Nepal'),
('NR', 'Nauru', 'Nauru'),
('NU', 'Niue', 'Niue'),
('NZ', 'New Zealand', 'Nova Zelândia'),
('OM', 'Oman', 'Omã'),
('PA', 'Panama', 'Panamá'),
('PE', 'Peru', 'Peru'),
('PF', 'French Polynesia', 'Polinésia Francesa'),
('PG', 'Papua New Guinea', 'Papua-Nova Guiné'),
('PH', 'Philippines', 'Filipinas'),
('PK', 'Pakistan', 'Paquistão'),
('PL', 'Poland', 'Polônia'),
('PM', 'St. Pierre & Miquelon', 'Saint Pierre e Miquelon'),
('PN', 'Pitcairn Islands', 'Ilhas Pitcairn'),
('PR', 'Puerto Rico', 'Porto Rico'),
('PS', 'Palestinian Territories', 'Territórios palestinos'),
('PT', 'Portugal', 'Portugal'),
('PW', 'Palau', 'Palau'),
('PY', 'Paraguay', 'Paraguai'),
('QA', 'Qatar', 'Catar'),
('RE', 'Réunion', 'Reunião'),
('RO', 'Romania', 'Romênia'),
('RS', 'Serbia', 'Sérvia'),
('RU', 'Russia', 'Rússia'),
('RW', 'Rwanda', 'Ruanda'),
('SA', 'Saudi Arabia', 'Arábia Saudita'),
('SB', 'Solomon Islands', 'Ilhas Salomão'),
('SC', 'Seychelles', 'Seicheles'),
('SD', 'Sudan', 'Sudão'),
('SE', 'Sweden', 'Suécia'),
('SG', 'Singapore', 'Cingapura'),
('SH', 'St. Helena', 'Santa Helena'),
('SI', 'Slovenia', 'Eslovênia'),
('SJ', 'Svalbard & Jan Mayen', 'Svalbard e Jan Mayen'),
('SK', 'Slovakia', 'Eslováquia'),
('SL', 'Sierra Leone', 'Serra Leoa'),
('SM', 'San Marino', 'San Marino'),
('SN', 'Senegal', 'Senegal'),
('SO', 'Somalia', 'Somália'),
('SR', 'Suriname', 'Suriname'),
('SS', 'South Sudan', 'Sudão do Sul'),
('ST', 'São Tomé & Príncipe', 'São Tomé e Príncipe'),
('SV', 'El Salvador', 'El Salvador'),
('SX', 'Sint Maarten', 'Sint Maarten'),
('SY', 'Syria', 'Síria'),
('SZ', 'Swaziland', 'Suazilândia'),
('TA', 'Tristan da Cunha', 'Tristão da Cunha'),
('TC', 'Turks & Caicos Islands', 'Ilhas Turks e Caicos'),
('TD', 'Chad', 'Chade'),
('TF', 'French Southern Territories', 'Territórios Franceses do Sul'),
('TG', 'Togo', 'Togo'),
('TH', 'Thailand', 'Tailândia'),
('TJ', 'Tajikistan', 'Tajiquistão'),
('TK', 'Tokelau', 'Tokelau'),
('TL', 'Timor-Leste', 'Timor-Leste'),
('TM', 'Turkmenistan', 'Turcomenistão'),
('TN', 'Tunisia', 'Tunísia'),
('TO', 'Tonga', 'Tonga'),
('TR', 'Turkey', 'Turquia'),
('TT', 'Trinidad & Tobago', 'Trinidad e Tobago'),
('TV', 'Tuvalu', 'Tuvalu'),
('TW', 'Taiwan', 'Taiwan'),
('TZ', 'Tanzania', 'Tanzânia'),
('UA', 'Ukraine', 'Ucrânia'),
('UG', 'Uganda', 'Uganda'),
('UM', 'U.S. Outlying Islands', 'Ilhas Menores Distantes dos EUA'),
('UN', 'United Nations', 'Nações Unidas'),
('US', 'United States', 'Estados Unidos'),
('UY', 'Uruguay', 'Uruguai'),
('UZ', 'Uzbekistan', 'Uzbequistão'),
('VA', 'Vatican City', 'Cidade do Vaticano'),
('VC', 'St. Vincent & Grenadines', 'São Vicente e Granadinas'),
('VE', 'Venezuela', 'Venezuela'),
('VG', 'British Virgin Islands', 'Ilhas Virgens Britânicas'),
('VI', 'U.S. Virgin Islands', 'Ilhas Virgens dos EUA'),
('VN', 'Vietnam', 'Vietnã'),
('VU', 'Vanuatu', 'Vanuatu'),
('WF', 'Wallis & Futuna', 'Wallis e Futuna'),
('WS', 'Samoa', 'Samoa'),
('XK', 'Kosovo', 'Kosovo'),
('YE', 'Yemen', 'Iêmen'),
('YT', 'Mayotte', 'Mayotte'),
('ZA', 'South Africa', 'África do Sul'),
('ZM', 'Zambia', 'Zâmbia'),
('ZW', 'Zimbabwe', 'Zimbábue');
DROP TABLE IF EXISTS [CountryNames_EN_BR];
CREATE TABLE [CountryNames_EN_BR] (
  [NUM] int,
  [NAME_EN] varchar(50),
  [NAME_BR] varchar(50),
  [ALPHA2] char(2),
  [ALPHA3] char(3)
);
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (4, 'Afghanistan', 'Afeganistão', 'af', 'afg');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (248, 'Åland Islands', 'Ilhas Åland', 'ax', 'ala');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (8, 'Albania', 'Albânia', 'al', 'alb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (12, 'Algeria', 'Argélia', 'dz', 'dza');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (16, 'American Samoa', 'Samoa Americana', 'as', 'asm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (20, 'Andorra', 'Andorra', 'ad', 'and');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (24, 'Angola', 'Angola', 'ao', 'ago');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (660, 'Anguilla', 'Anguilla', 'ai', 'aia');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (10, 'Antarctica', 'Antártida', 'aq', 'ata');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (28, 'Antigua and Barbuda', 'Antígua e Barbuda', 'ag', 'atg');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (32, 'Argentina', 'Argentina', 'ar', 'arg');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (51, 'Armenia', 'Armênia', 'am', 'arm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (533, 'Aruba', 'Aruba', 'aw', 'abw');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (36, 'Australia', 'Austrália', 'au', 'aus');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (40, 'Austria', 'Áustria', 'at', 'aut');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (31, 'Azerbaijan', 'Azerbaijão', 'az', 'aze');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (44, 'Bahamas', 'Bahamas', 'bs', 'bhs');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (48, 'Bahrain', 'Bahrein', 'bh', 'bhr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (50, 'Bangladesh', 'Bangladesh', 'bd', 'bgd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (52, 'Barbados', 'Barbados', 'bb', 'brb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (112, 'Belarus', 'Bielorrússia', 'by', 'blr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (56, 'Belgium', 'Bélgica', 'be', 'bel');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (84, 'Belize', 'Belize', 'bz', 'blz');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (204, 'Benin', 'Benim', 'bj', 'ben');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (60, 'Bermuda', 'Bermudas', 'bm', 'bmu');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (64, 'Bhutan', 'Butão', 'bt', 'btn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (68, 'Bolivia (Plurinational State of)', 'Bolívia', 'bo', 'bol');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (535, 'Bonaire, Sint Eustatius and Saba', 'Países Baixos Caribenhos', 'bq', 'bes');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (70, 'Bosnia and Herzegovina', 'Bósnia e Herzegovina', 'ba', 'bih');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (72, 'Botswana', 'Botswana', 'bw', 'bwa');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (74, 'Bouvet Island', 'Ilha Bouvet', 'bv', 'bvt');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (76, 'Brazil', 'Brasil', 'br', 'bra');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (86, 'British Indian Ocean Territory', 'Território Britânico do Oceano Índico', 'io', 'iot');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (96, 'Brunei Darussalam', 'Brunei', 'bn', 'brn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (100, 'Bulgaria', 'Bulgária', 'bg', 'bgr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (854, 'Burkina Faso', 'Burkina Faso', 'bf', 'bfa');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (108, 'Burundi', 'Burundi', 'bi', 'bdi');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (132, 'Cabo Verde', 'Cabo Verde', 'cv', 'cpv');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (116, 'Cambodia', 'Camboja', 'kh', 'khm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (120, 'Cameroon', 'Camarões', 'cm', 'cmr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (124, 'Canada', 'Canadá', 'ca', 'can');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (136, 'Cayman Islands', 'Ilhas Cayman', 'ky', 'cym');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (140, 'Central African Republic', 'República Centro-Africana', 'cf', 'caf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (148, 'Chad', 'Chade', 'td', 'tcd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (152, 'Chile', 'Chile', 'cl', 'chl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (156, 'China', 'China', 'cn', 'chn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (162, 'Christmas Island', 'Ilha do Natal', 'cx', 'cxr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (166, 'Cocos (Keeling) Islands', 'Ilhas Cocos (Keeling)', 'cc', 'cck');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (170, 'Colombia', 'Colômbia', 'co', 'col');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (174, 'Comoros', 'Comores', 'km', 'com');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (178, 'Congo', 'República do Congo', 'cg', 'cog');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (180, 'Congo (Democratic Republic of the)', 'República Democrática do Congo', 'cd', 'cod');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (184, 'Cook Islands', 'Ilhas Cook', 'ck', 'cok');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (188, 'Costa Rica', 'Costa Rica', 'cr', 'cri');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (384, 'Côte d''Ivoire', 'Costa do Marfim', 'ci', 'civ');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (191, 'Croatia', 'Croácia', 'hr', 'hrv');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (192, 'Cuba', 'Cuba', 'cu', 'cub');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (531, 'Curaçao', 'Curaçao', 'cw', 'cuw');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (196, 'Cyprus', 'Chipre', 'cy', 'cyp');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (203, 'Czechia', 'República Checa', 'cz', 'cze');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (208, 'Denmark', 'Dinamarca', 'dk', 'dnk');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (262, 'Djibouti', 'Djibouti', 'dj', 'dji');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (212, 'Dominica', 'Dominica', 'dm', 'dma');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (214, 'Dominican Republic', 'República Dominicana', 'do', 'dom');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (218, 'Ecuador', 'Equador', 'ec', 'ecu');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (818, 'Egypt', 'Egito', 'eg', 'egy');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (222, 'El Salvador', 'El Salvador', 'sv', 'slv');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (226, 'Equatorial Guinea', 'Guiné Equatorial', 'gq', 'gnq');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (232, 'Eritrea', 'Eritreia', 'er', 'eri');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (233, 'Estonia', 'Estónia', 'ee', 'est');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (231, 'Ethiopia', 'Etiópia', 'et', 'eth');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (238, 'Falkland Islands (Malvinas)', 'Ilhas Malvinas', 'fk', 'flk');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (234, 'Faroe Islands', 'Ilhas Feroé', 'fo', 'fro');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (242, 'Fiji', 'Fiji', 'fj', 'fji');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (246, 'Finland', 'Finlândia', 'fi', 'fin');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (250, 'France', 'França', 'fr', 'fra');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (254, 'French Guiana', 'Guiana Francesa', 'gf', 'guf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (258, 'French Polynesia', 'Polinésia Francesa', 'pf', 'pyf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (260, 'French Southern Territories', 'Terras Austrais e Antárticas Francesas', 'tf', 'atf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (266, 'Gabon', 'Gabão', 'ga', 'gab');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (270, 'Gambia', 'Gâmbia', 'gm', 'gmb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (268, 'Georgia', 'Geórgia', 'ge', 'geo');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (276, 'Germany', 'Alemanha', 'de', 'deu');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (288, 'Ghana', 'Gana', 'gh', 'gha');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (292, 'Gibraltar', 'Gibraltar', 'gi', 'gib');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (300, 'Greece', 'Grécia', 'gr', 'grc');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (304, 'Greenland', 'Gronelândia', 'gl', 'grl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (308, 'Grenada', 'Granada', 'gd', 'grd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (312, 'Guadeloupe', 'Guadalupe', 'gp', 'glp');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (316, 'Guam', 'Guam', 'gu', 'gum');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (320, 'Guatemala', 'Guatemala', 'gt', 'gtm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (831, 'Guernsey', 'Guernsey', 'gg', 'ggy');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (324, 'Guinea', 'Guiné', 'gn', 'gin');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (624, 'Guinea-Bissau', 'Guiné-Bissau', 'gw', 'gnb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (328, 'Guyana', 'Guiana', 'gy', 'guy');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (332, 'Haiti', 'Haiti', 'ht', 'hti');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (334, 'Heard Island and McDonald Islands', 'Ilha Heard e Ilhas McDonald', 'hm', 'hmd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (336, 'Holy See', 'Vaticano', 'va', 'vat');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (340, 'Honduras', 'Honduras', 'hn', 'hnd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (344, 'Hong Kong', 'Hong Kong', 'hk', 'hkg');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (348, 'Hungary', 'Hungria', 'hu', 'hun');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (352, 'Iceland', 'Islândia', 'is', 'isl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (356, 'India', 'Índia', 'in', 'ind');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (360, 'Indonesia', 'Indonésia', 'id', 'idn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (364, 'Iran (Islamic Republic of)', 'Irão', 'ir', 'irn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (368, 'Iraq', 'Iraque', 'iq', 'irq');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (372, 'Ireland', 'Irlanda', 'ie', 'irl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (833, 'Isle of Man', 'Ilha de Man', 'im', 'imn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (376, 'Israel', 'Israel', 'il', 'isr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (380, 'Italy', 'Itália', 'it', 'ita');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (388, 'Jamaica', 'Jamaica', 'jm', 'jam');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (392, 'Japan', 'Japão', 'jp', 'jpn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (832, 'Jersey', 'Jersey', 'je', 'jey');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (400, 'Jordan', 'Jordânia', 'jo', 'jor');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (398, 'Kazakhstan', 'Cazaquistão', 'kz', 'kaz');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (404, 'Kenya', 'Quênia', 'ke', 'ken');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (296, 'Kiribati', 'Kiribati', 'ki', 'kir');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (408, 'Korea (Democratic People''s Republic of)', 'Coreia do Norte', 'kp', 'prk');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (410, 'Korea (Republic of)', 'Coreia do Sul', 'kr', 'kor');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (414, 'Kuwait', 'Kuwait', 'kw', 'kwt');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (417, 'Kyrgyzstan', 'Quirguistão', 'kg', 'kgz');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (418, 'Lao People''s Democratic Republic', 'Laos', 'la', 'lao');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (428, 'Latvia', 'Letônia', 'lv', 'lva');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (422, 'Lebanon', 'Líbano', 'lb', 'lbn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (426, 'Lesotho', 'Lesoto', 'ls', 'lso');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (430, 'Liberia', 'Libéria', 'lr', 'lbr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (434, 'Libya', 'Líbia', 'ly', 'lby');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (438, 'Liechtenstein', 'Liechtenstein', 'li', 'lie');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (440, 'Lithuania', 'Lituânia', 'lt', 'ltu');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (442, 'Luxembourg', 'Luxemburgo', 'lu', 'lux');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (446, 'Macao', 'Macau', 'mo', 'mac');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (807, 'Macedonia (the former Yugoslav Republic of)', 'Macedônia', 'mk', 'mkd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (450, 'Madagascar', 'Madagáscar', 'mg', 'mdg');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (454, 'Malawi', 'Malawi', 'mw', 'mwi');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (458, 'Malaysia', 'Malásia', 'my', 'mys');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (462, 'Maldives', 'Maldivas', 'mv', 'mdv');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (466, 'Mali', 'Mali', 'ml', 'mli');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (470, 'Malta', 'Malta', 'mt', 'mlt');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (584, 'Marshall Islands', 'Ilhas Marshall', 'mh', 'mhl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (474, 'Martinique', 'Martinica', 'mq', 'mtq');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (478, 'Mauritania', 'Mauritânia', 'mr', 'mrt');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (480, 'Mauritius', 'Maurícia', 'mu', 'mus');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (175, 'Mayotte', 'Mayotte', 'yt', 'myt');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (484, 'Mexico', 'México', 'mx', 'mex');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (583, 'Micronesia (Federated States of)', 'Estados Federados da Micronésia', 'fm', 'fsm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (498, 'Moldova (Republic of)', 'Moldávia', 'md', 'mda');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (492, 'Monaco', 'Mónaco', 'mc', 'mco');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (496, 'Mongolia', 'Mongólia', 'mn', 'mng');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (499, 'Montenegro', 'Montenegro', 'me', 'mne');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (500, 'Montserrat', 'Montserrat', 'ms', 'msr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (504, 'Morocco', 'Marrocos', 'ma', 'mar');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (508, 'Mozambique', 'Moçambique', 'mz', 'moz');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (104, 'Myanmar', 'Mianmar', 'mm', 'mmr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (516, 'Namibia', 'Namíbia', 'na', 'nam');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (520, 'Nauru', 'Nauru', 'nr', 'nru');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (524, 'Nepal', 'Nepal', 'np', 'npl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (528, 'Netherlands', 'Países Baixos', 'nl', 'nld');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (540, 'New Caledonia', 'Nova Caledônia', 'nc', 'ncl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (554, 'New Zealand', 'Nova Zelândia', 'nz', 'nzl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (558, 'Nicaragua', 'Nicarágua', 'ni', 'nic');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (562, 'Niger', 'Níger', 'ne', 'ner');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (566, 'Nigeria', 'Nigéria', 'ng', 'nga');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (570, 'Niue', 'Niue', 'nu', 'niu');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (574, 'Norfolk Island', 'Ilha Norfolk', 'nf', 'nfk');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (580, 'Northern Mariana Islands', 'Marianas Setentrionais', 'mp', 'mnp');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (578, 'Norway', 'Noruega', 'no', 'nor');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (512, 'Oman', 'Omã', 'om', 'omn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (586, 'Pakistan', 'Paquistão', 'pk', 'pak');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (585, 'Palau', 'Palau', 'pw', 'plw');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (275, 'Palestine, State of', 'Palestina', 'ps', 'pse');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (591, 'Panama', 'Panamá', 'pa', 'pan');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (598, 'Papua New Guinea', 'Papua-Nova Guiné', 'pg', 'png');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (600, 'Paraguay', 'Paraguai', 'py', 'pry');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (604, 'Peru', 'Peru', 'pe', 'per');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (608, 'Philippines', 'Filipinas', 'ph', 'phl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (612, 'Pitcairn', 'Pitcairn', 'pn', 'pcn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (616, 'Poland', 'Polónia', 'pl', 'pol');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (620, 'Portugal', 'Portugal', 'pt', 'prt');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (630, 'Puerto Rico', 'Porto Rico', 'pr', 'pri');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (634, 'Qatar', 'Catar', 'qa', 'qat');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (638, 'Réunion', 'Reunião', 're', 'reu');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (642, 'Romania', 'Roménia', 'ro', 'rou');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (643, 'Russian Federation', 'Rússia', 'ru', 'rus');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (646, 'Rwanda', 'Ruanda', 'rw', 'rwa');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (652, 'Saint Barthélemy', 'São Bartolomeu', 'bl', 'blm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (654, 'Saint Helena, Ascension and Tristan da Cunha', 'Santa Helena, Ascensão e Tristão da Cunha', 'sh', 'shn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (659, 'Saint Kitts and Nevis', 'São Cristóvão e Nevis', 'kn', 'kna');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (662, 'Saint Lucia', 'Santa Lúcia', 'lc', 'lca');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (663, 'Saint Martin (French part)', 'São Martinho', 'mf', 'maf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (666, 'Saint Pierre and Miquelon', 'Saint-Pierre e Miquelon', 'pm', 'spm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (670, 'Saint Vincent and the Grenadines', 'São Vicente e Granadinas', 'vc', 'vct');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (882, 'Samoa', 'Samoa', 'ws', 'wsm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (674, 'San Marino', 'San Marino', 'sm', 'smr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (678, 'Sao Tome and Principe', 'São Tomé e Príncipe', 'st', 'stp');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (682, 'Saudi Arabia', 'Arábia Saudita', 'sa', 'sau');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (686, 'Senegal', 'Senegal', 'sn', 'sen');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (688, 'Serbia', 'Sérvia', 'rs', 'srb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (690, 'Seychelles', 'Seicheles', 'sc', 'syc');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (694, 'Sierra Leone', 'Serra Leoa', 'sl', 'sle');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (702, 'Singapore', 'Singapura', 'sg', 'sgp');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (534, 'Sint Maarten (Dutch part)', 'Sint Maarten', 'sx', 'sxm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (703, 'Slovakia', 'Eslováquia', 'sk', 'svk');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (705, 'Slovenia', 'Eslovênia', 'si', 'svn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (90, 'Solomon Islands', 'Ilhas Salomão', 'sb', 'slb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (706, 'Somalia', 'Somália', 'so', 'som');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (710, 'South Africa', 'África do Sul', 'za', 'zaf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (239, 'South Georgia and the South Sandwich Islands', 'Ilhas Geórgia do Sul e Sandwich do Sul', 'gs', 'sgs');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (728, 'South Sudan', 'Sudão do Sul', 'ss', 'ssd');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (724, 'Spain', 'Espanha', 'es', 'esp');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (144, 'Sri Lanka', 'Sri Lanka', 'lk', 'lka');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (729, 'Sudan', 'Sudão', 'sd', 'sdn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (740, 'Suriname', 'Suriname', 'sr', 'sur');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (744, 'Svalbard and Jan Mayen', 'Svalbard e Jan Mayen', 'sj', 'sjm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (748, 'Swaziland', 'Suazilândia', 'sz', 'swz');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (752, 'Sweden', 'Suécia', 'se', 'swe');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (756, 'Switzerland', 'Suíça', 'ch', 'che');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (760, 'Syrian Arab Republic', 'Síria', 'sy', 'syr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (158, 'Taiwan, Province of China', 'Taiwan', 'tw', 'twn');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (762, 'Tajikistan', 'Tajiquistão', 'tj', 'tjk');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (834, 'Tanzania, United Republic of', 'Tanzânia', 'tz', 'tza');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (764, 'Thailand', 'Tailândia', 'th', 'tha');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (626, 'Timor-Leste', 'Timor-Leste', 'tl', 'tls');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (768, 'Togo', 'Togo', 'tg', 'tgo');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (772, 'Tokelau', 'Toquelau', 'tk', 'tkl');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (776, 'Tonga', 'Tonga', 'to', 'ton');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (780, 'Trinidad and Tobago', 'Trinidad e Tobago', 'tt', 'tto');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (788, 'Tunisia', 'Tunísia', 'tn', 'tun');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (792, 'Turkey', 'Turquia', 'tr', 'tur');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (795, 'Turkmenistan', 'Turquemenistão', 'tm', 'tkm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (796, 'Turks and Caicos Islands', 'Turks e Caicos', 'tc', 'tca');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (798, 'Tuvalu', 'Tuvalu', 'tv', 'tuv');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (800, 'Uganda', 'Uganda', 'ug', 'uga');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (804, 'Ukraine', 'Ucrânia', 'ua', 'ukr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (784, 'United Arab Emirates', 'Emirados Árabes Unidos', 'ae', 'are');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (826, 'United Kingdom of Great Britain and Northern Irela', 'Reino Unido', 'gb', 'gbr');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (581, 'United States Minor Outlying Islands', 'Ilhas Menores Distantes dos Estados Unidos', 'um', 'umi');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (840, 'United States of America', 'Estados Unidos', 'us', 'usa');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (858, 'Uruguay', 'Uruguai', 'uy', 'ury');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (860, 'Uzbekistan', 'Uzbequistão', 'uz', 'uzb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (548, 'Vanuatu', 'Vanuatu', 'vu', 'vut');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (862, 'Venezuela (Bolivarian Republic of)', 'Venezuela', 've', 'ven');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (704, 'Viet Nam', 'Vietnã', 'vn', 'vnm');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (92, 'Virgin Islands (British)', 'Ilhas Virgens Britânicas', 'vg', 'vgb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (850, 'Virgin Islands (U.S.)', 'Ilhas Virgens Americanas', 'vi', 'vir');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (876, 'Wallis and Futuna', 'Wallis e Futuna', 'wf', 'wlf');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (732, 'Western Sahara', 'Saara Ocidental', 'eh', 'esh');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (887, 'Yemen', 'Iêmen', 'ye', 'yem');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (894, 'Zambia', 'Zâmbia', 'zm', 'zmb');
INSERT INTO [CountryNames_EN_BR]([NUM], [NAME_EN], [NAME_BR], [ALPHA2], [ALPHA3]) VALUES (716, 'Zimbabwe', 'Zimbabwe', 'zw', 'zwe');