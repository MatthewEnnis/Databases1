--LL_SUPPLIERS

insert into LL_SUPPLIERS values (
	'LAL',
	'Larrys Lightbulbs',
	'1 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'LUL',
	'Lucys Lamps',
	'2 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'GAG',
	'Garys Glow',
	'3 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'PHP',
	'Phils Phosphorescence',
	'4 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'CRC',
	'Crystals Candles',
	'5 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'LOL',
	'Logans Lanterns',
	'6 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'FRF',
	'Franks Floodlights',
	'7 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'FIF',
	'Fionas Flashlights',
	'8 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'BIB',
	'Billies Beacons',
	'9 Dublin Road, Dublin, Ireland'
);

insert into LL_SUPPLIERS values (
	'SHS',
	'Shawns Streetlights',
	'10 Dublin Road, Dublin, Ireland'
);


--LL_DEPARTMENTS

insert into LL_DEPARTMENTS values (
	'Design'
);

insert into LL_DEPARTMENTS values (
	'Fitters'
);

insert into LL_DEPARTMENTS values (
	'Shop Floor'
);

insert into LL_DEPARTMENTS values (
	'Electricians'
);


--LL_EMPLOYEES

insert into LL_EMPLOYEES values (
	'E01',
	'Kim',
	'Fitters'
);

insert into LL_EMPLOYEES values (
	'E02',
	'Khloe',
	'Fitters'
);

insert into LL_EMPLOYEES values (
	'E03',
	'Kourtney',
	'Shop Floor'
);

insert into LL_EMPLOYEES values (
	'E04',
	'Rob',
	'Shop Floor'
);

insert into LL_EMPLOYEES values (
	'E05',
	'Kris',
	'Electricians'
);

insert into LL_EMPLOYEES values (
	'E06',
	'Caitlyn',
	'Electricians'
);

insert into LL_EMPLOYEES values (
	'E07',
	'Kendall',
	'Design'
);

insert into LL_EMPLOYEES values (
	'E08',
	'Kylie',
	'Design'
);


--LL_CUSTOMERS

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Charlotte',
	'1 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Azealia',
	'2 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Sky',
	'3  Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Ella',
	'4 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Carly',
	'5 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Ariana',
	'6 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Hannah',
	'7 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Billie',
	'8 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Claire',
	'9 Main Street'
);

insert into LL_CUSTOMERS values (
	customersequence.nextval,
	'Mikaela',
	'10 Main Street'
);


--LL_STOCK_ITEMS

insert into LL_STOCK_ITEMS values (
	'L104',
	'Recessed light',
	'Light',
	'Design',
	'GAG',
	30
);

insert into LL_STOCK_ITEMS values (
	'L240',
	'1.5m fitting',
	'Electrical',
	'Fitters',
	'PHP',
	25
);

insert into LL_STOCK_ITEMS values (
	'L105',
	'Wall light',
	'Light',
	'Design',
	'CRC',
	13
);

insert into LL_STOCK_ITEMS values (
	'L106',
	'Centre light',
	'Light',
	'Design',
	'LUL',
	5
);

insert into LL_STOCK_ITEMS values (
	'L220',
	'Set of twist bulbs 40w',
	'Sundry',
	'Shop Floor',
	'LAL',
	16
);

insert into LL_STOCK_ITEMS values (
	'L221',
	'Set of twist bulbs 70w',
	'Sundry',
	'Shop Floor',
	'LAL',
	15
);

insert into LL_STOCK_ITEMS values (
	'L500',
	'Domestic wiring drum',
	'Electrical',
	'Fitters',
	'FRF',
	150
);

insert into LL_STOCK_ITEMS values (
	'L501',
	'Outdoor wiring drum',
	'Electrical',
	'Fitters',
	'FRF',
	299
);

insert into LL_STOCK_ITEMS values (
	'L600',
	'Outdoor sockets',
	'Electrical',
	'Electricians',
	'SHS',
	15
);

insert into LL_STOCK_ITEMS values (
	'L610',
	'Indoor sockets',
	'Electrical',
	'Electricians',
	'SHS',
	15
);

insert into LL_STOCK_ITEMS values (
	'L125',
	'Halogen lamp',
	'Light',
	'Design',
	'LUL',
	40
);

insert into LL_STOCK_ITEMS values (
	'P008',
	'Philips Hue White',
	'Light',
	'Design',
	'BIB',
	20
);

insert into LL_STOCK_ITEMS values (
	'P007',
	'Philips Hue Blue',
	'Light',
	'Design',
	'BIB',
	20
);

insert into LL_STOCK_ITEMS values (
	'P006',
	'Philips Hue Green',
	'Light',
	'Design',
	'BIB',
	20
);

insert into LL_STOCK_ITEMS values (
	'H875',
	'Tactical Flash Light',
	'Sundry',
	'Shop Floor',
	'FIF',
	20
);


--LL_CURRENT_STOCK

insert into LL_CURRENT_STOCK values (
	'L105',
	3
);

insert into LL_CURRENT_STOCK values (
	'L220',
	57
);

insert into LL_CURRENT_STOCK values (
	'L221',
	65
);

insert into LL_CURRENT_STOCK values (
	'L600',
	12
);

insert into LL_CURRENT_STOCK values (
	'L610',
	7
);

insert into LL_CURRENT_STOCK values (
	'P008',
	3
);

insert into LL_CURRENT_STOCK values (
	'H875',
	15
);

insert into LL_CURRENT_STOCK values (
	'L104',
	0
);

insert into LL_CURRENT_STOCK values (
	'L106',
	0
);


--LL_STOCK_ORDER

insert into LL_STOCK_ORDER values (
	'L104',
	'2-OCT-2019',
	10
);

insert into LL_STOCK_ORDER values (
	'L240',
	'8-NOV-2019',
	10
);

insert into LL_STOCK_ORDER values (
	'L105',
	'11-DEC-2019',
	12
);

insert into LL_STOCK_ORDER values (
	'L106',
	'2-JAN-2020',
	6
);

insert into LL_STOCK_ORDER values (
	'L104',
	'26-JAN-2020',
	3
);

insert into LL_STOCK_ORDER values (
	'L220',
	'18-FEB-2020',
	20
);

insert into LL_STOCK_ORDER values (
	'L500',
	'1-MAR-2020',
	2
);

insert into LL_STOCK_ORDER values (
	'L501',
	'2-MAR-2020',
	2
);

insert into LL_STOCK_ORDER values (
	'P008',
	'12-APR-2020',
	5
);


--LL_APPOINTMENT

insert into LL_APPOINTMENT values (
	4,
	'1-MAR-2020',
	'Lighting system for kitchen',
	'E07',
	'E02',
	200
);

insert into LL_APPOINTMENT values (
	9,
	'18-JAN-2020',
	'Outdoor lighting for driveway',
	'E07',
	'E01',
	450
);

insert into LL_APPOINTMENT values (
	1,
	'30-APR-2020',
	'Theatre lighting setup',
	'E08',
	'E01',
	1800
);

insert into LL_APPOINTMENT values (
	7,
	'18-MAY-2020',
	'House lighting rewiring',
	'E07',
	'E06',
	275
);

insert into LL_APPOINTMENT values (
	10,
	'15-DEC-2019',
	'Church Christmas tree lighting',
	'E08',
	'E02',
	120
);

insert into LL_APPOINTMENT values (
	5,
	'16-JAN-2020',
	'Home extension lighting',
	'E07',
	'E02',
	100
);

commit;