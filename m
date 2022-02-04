Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E2F4A9D23
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 17:50:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98D70385DD3
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 11:50:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="d8Ev8Cem";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0041.outbound.protection.office365.us [23.103.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id C35B0385D76
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 11:49:34 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=J7oFzKVNwUUCP0bbJZUOJa6vwCgTWjAYOdc+sM5PlaV9yRuUdzbxryJ5NVjgHTSc+vXc/dk8ckMYtHoMY+/Qz2sUZJaWzK0HXRJoN7J5LDX+5l3TQhpNyxuyIiD2zDwYLW+X8Q7UDtoSSDHJ0I3PbZTmSLQZO8bRvQv8ugzvQTwqKsnoN/wP2X4vdCbTWvMcD2XRveV2pB6kZidwwhMaLS3oQYHykXCbeH+5LdNWKXUnxG69QU9Y+HomgKLYK9Do1uSjn6HsCFMlfDT/pFfYQeYy5QyuKwmCT7DqpBZpTSJioD80oSb+vRpMBotYeF5dFIpLkorVfyhWeVp9wJaLJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=txMmgLViH6OoHJ2ABLJ8blFUtPylW8YUg1RSldh4Rjs=;
 b=IyNdTDs02UR7T/K4kDgVm8Fw64ChaIqutd2MJGCIOxZXZkI0JbRavE538CoUU5Wzd1KiWyOjXMZcbefg7wtMeNuYi5NkkKBfJev+xFCgAKhZ/1Tx5zJX/T4FugGh3BqUqJNtQ+wSUTDJYjk32dKskHeoDEmrnIP+xaCUpr0rMWzrBt/mAdSFQp1rVPPeuqnHnht3Ydz1mDKWGJBgEbrBpuCCqh0U1Tc9kxMWA3AUVhYKiQF6qme1GJVvb+2x0axPEHlbaupv6eSozmn8Pxxo1hXt04EtU4tFvyGzvtfw+CvpicNGJTKn9C/YTUrAUALaKfmboIILtxQNnV+cfc1iag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=txMmgLViH6OoHJ2ABLJ8blFUtPylW8YUg1RSldh4Rjs=;
 b=d8Ev8Cemqv6+K2Y+7+MkvTtDYPYzcLz9AmTa2ziAdAWhzogiCS3MV1wnGD2vRea0ewM+RaGbF53FeYfXI+QsOtgnaYHLyfSBTWZIZuzAfqxJx4xUflIwA0ZuoJz8FRA+Ja2GhdwjbmPzkpH/gXYyd8OCNccg3gEKuqN2thvdZ+YVNwa4y14mOrCTMeGjn6CCtrqCYzmAjpqmYYd1bcBdA9PiWSH5Twl+kQGq8MjIo/zUM+YnVG732HA8Q76ohs4owRpDL8tjus6DItfdeqm4rIve56oUwp4SKmL2x++go09aJqqaHdRO11oABRbswLUh0o1o8ceWxGyCbf1i2VgQsw==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1522.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:188::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 16:49:32 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.4951.016; Fri, 4 Feb 2022
 16:49:32 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] N320: external ref clock with internal gpsdo timing
 source
Thread-Index: AdgZSZda+Ix7GgCqTeWN1H6era1WWgABMxwAACV5FdA=
Date: Fri, 4 Feb 2022 16:49:32 +0000
Message-ID: 
 <PH1P110MB166546C67FF8FA7A2B933568B7299@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BN0P110MB167582CB71227F7F71D2E4B7B7289@BN0P110MB1675.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTQLcFH0WSouSzW6Q5b+2uN=cLR4R7njUVPv7FB8Kz4dCg@mail.gmail.com>
In-Reply-To: 
 <CAB__hTQLcFH0WSouSzW6Q5b+2uN=cLR4R7njUVPv7FB8Kz4dCg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b2fdebd-d38c-434f-9926-08d9e7fe51a2
x-ms-traffictypediagnostic: PH1P110MB1522:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB1522BFD58DBB7C6B07149F95B7299@PH1P110MB1522.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kjyG+RBSTSupTB2CcgdhKun9KO9Kn99bjgz0BWRdrLgji7QKVoIZR5Inuq/7ftbMgpBKajlnXdJvYMmsErp0zC9xHgB9e56Z/v4Qe1R5WOjQJiWw6H7Co0d1/OC01JimvvVykhBCLcINPKuyb2dovxwk0WOL9a1FwExa6AaGwnJRUjdzerb+i5zEU8laCxPbwKJuf+uWQpDulamJXlfrcCpGYHYS+NTPp1HfsiZPqdvqv6N9MjHbi7iUbPrwT+aDgcWp/vvlsb1Cpujt5T/ZPqu6dcBiPUn6WR8YdYhLDDY4cOB/0cNtbvIy+Jy3gPIsJjKaxeIdg110leGyAlhp5BjZVqOQls+oFJtWKo0waP4gyxGIHLv55Qda0k6NN7q8V3GkHnC0Xaq/NBfNwjDRFv83ZSd1oaXsTQUBfDogrTEvCE+o67Lov3BEzBSkShmLLJoHpnH/yPMnDgHtuKDoarJ5ICXEUY4DNsrfiN02nPglHK1E+0PWTgwxulS2SWCRzwUAYADRWPwmygAnok9EBUT6MDwnWHBnEKJZ68QCWOQyOdrcCudnkvASn0VpFdOjU2Ef8OZ3jtFH29YHD7TSUBfJylSwZACuTwpqSXy5IIv4Fyw8g+nRyW1gweSAFXylgDLGbGQgvkrhjrOQ+QcxWQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(376002)(346002)(39830400003)(366004)(136003)(396003)(5660300002)(52536014)(33656002)(186003)(8676002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(6916009)(83380400001)(8936002)(86362001)(4326008)(2906002)(316002)(9686003)(55016003)(6506007)(7696005)(71200400001)(508600001)(38070700005)(122000001)(38100700002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 uKCzVy6rFPdaPjgoEOvyZy82QBGQDtc4PwIPQEtl9B8FL13IvyM4T5eDRT9sxadPnd83C31atnhOCn8rxWKZHUcfGMF7V0S1Eufqc1UfJKNOyGd3rxMTODEgXQb9Of3Q4kXLXazY2wT0TMHI1soIngztcxXasTdd9uyQTnLY+w0jP3Y/MzpD3UCOu3L3TYjFQeJZSR+P8OAofAuEvXMlxQ==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b2fdebd-d38c-434f-9926-08d9e7fe51a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 16:49:32.5705
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1522
Message-ID-Hash: 2XYXUNSLAOBVPRACCEOVTNXEOVBHTUIT
X-Message-ID-Hash: 2XYXUNSLAOBVPRACCEOVTNXEOVBHTUIT
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320: external ref clock with internal gpsdo timing source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MRDLTSAV4FSYXGA4GTZGJN3EU3N2RO4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0893688518444493294=="

--===============0893688518444493294==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB166546C67FF8FA7A2B933568B7299PH1P110MB1665NAMP_"

--_000_PH1P110MB166546C67FF8FA7A2B933568B7299PH1P110MB1665NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91IGNvdWxkIHN0YXJ0IG91dCB3aXRoIGJvdGggMTBNSHogYW5kIFBQUyB1c2luZyBHUFMg
c2lnbmFsLCBzZXQgYWxsIGNsb2NrcyB0byB0aGUgc2FtZSB0aW1lIChlLmcuLCB6ZXJvKSBhdCB0
aGUgY29tbW9uIFBQUywgYW5kIHRoZW4gc3dpdGNoIHRvIHVzaW5nIGV4dGVybmFsIHJlZiwgaXQg
bWlnaHQgYmUgcG9zc2libGUuICBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhlIG9ubHkgdGhp
bmcgdGhlIFBQUyBpcyBuZWVkZWQgZm9yIGlzIHNldHRpbmcgdGhlIGNvbW1vbiB0aW1lLiBJbiBv
dGhlciB3b3JkcywgaXQncyBiYXNpY2FsbHkgYSB0cmlnZ2VyLg0KDQpJIGFwcHJlY2lhdGUgdGhl
IHN1Z2dlc3Rpb24uIElmIHRoZSBGUEdBIG9ubHkgdXNlcyB0aGUgUFBTIHdoZW4gY2VydGFpbiBV
SEQgQVBJIGNhbGxzIGFyZSBpbnZva2VkLCBhbmQgZG9lc27igJl0IHVzZSBpdCBmb3IgaW50ZXJu
YWwgY29ycmVjdGlvbiBvciBza2V3aW5nIG9mIHRoZSB0aW1lYmFzZSwgdGhhdCBtaWdodCB3b3Jr
LiBIb3dldmVyLCBJIHdhcyBhbHNvIHBsYW5uaW5nIHRvIG9jY2FzaW9uYWxseSB1c2UgZ2V0X3Rp
bWVfbGFzdF9wcHMoKSB0byBtb25pdG9yIGNsb2NrIGRyaWZ0IHdpdGggcmVzcGVjdCB0byBHUFMg
UFBTIG92ZXIgbG9uZyBkdXJhdGlvbnMsIHdoaWNoIEkgd291bGRu4oCZdCBiZSBhYmxlIHRvIGRv
IHdpdGggdGhpcyBhcHByb2FjaC4NCg0KR2l2aW5nIGl0IG1vcmUgdGhvdWdodCwgSeKAmW0gcGVy
cGxleGVkIGFzIHRvIHdoeSDigJxjbG9ja19zb3VyY2U9ZXh0ZXJuYWwsdGltZV9zb3VyY2U9Z3Bz
ZG/igJ0gaXNu4oCZdCBzdXBwb3J0ZWQuIFRoZSBGUEdBIHdvdWxkIGJlIHdpbGxpbmcgdG8gYWNj
ZXB0IGFuIGV4dGVybmFsIHRpbWluZyBzb3VyY2UgdGhhdCBoYXMgbm8gY29ycmVsYXRpb24gdG8g
dGhlIHJlZiBjbG9jaywgc28gY29uY2VwdHVhbGx5LCBpdCBzZWVtcyBsaWtlIGl0IHNob3VsZCBi
ZSBhYmxlIHRvIHVzZSB0aGUgR1BTRE8gUFBTIHRoZSBzYW1lIHdheSBoZXJlLiBTdXJlLCBvdmVy
IHRpbWUgdGhlcmUgd2lsbCBiZSBmcmVxdWVuY3kgZHJpZnQgYnkgbm90IHVzaW5nIHRoZSBHUFMt
ZGlzY2lwbGluZWQgb3NjaWxsYXRvciwgYnV0IHRoYXQncyBhbiBleHBlY3RlZCBjb25zZXF1ZW5j
ZSBvZiB1c2luZyBhbiBpbmRlcGVuZGVudCBjbG9jayByZWYuIEnigJlkIGxvdmUgdG8gaGVhciB3
aHkgdGhpcyBjb25zdHJhaW50IGV4aXN0cy4NCg0KRGF2aWQNCg0K

--_000_PH1P110MB166546C67FF8FA7A2B933568B7299PH1P110MB1665NAMP_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNl
cmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5
cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBh
Z2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBp
biAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30N
Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6
ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBn
dGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2
OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0t
LT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVycGxl
IiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24x
Ij4NCjxkaXY+DQo8ZGl2Pg0KPGJsb2NrcXVvdGUgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1s
ZWZ0OnNvbGlkICNDQ0NDQ0MgMS4wcHQ7cGFkZGluZzowaW4gMGluIDBpbiA2LjBwdDttYXJnaW4t
bGVmdDo0LjhwdDttYXJnaW4tcmlnaHQ6MGluIj4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+SWYgeW91IGNvdWxkIHN0YXJ0IG91dCB3aXRoIGJvdGggMTBNSHogYW5kIFBQUyB1
c2luZyBHUFMgc2lnbmFsLCBzZXQgYWxsIGNsb2NrcyB0byB0aGUgc2FtZSB0aW1lIChlLmcuLCB6
ZXJvKSBhdCB0aGUgY29tbW9uIFBQUywgYW5kIHRoZW4gc3dpdGNoIHRvIHVzaW5nIGV4dGVybmFs
IHJlZiwgaXQgbWlnaHQgYmUgcG9zc2libGUuJm5ic3A7IE15IHVuZGVyc3RhbmRpbmcgaXMgdGhh
dCB0aGUgb25seSB0aGluZyB0aGUgUFBTDQogaXMgbmVlZGVkIGZvciBpcyBzZXR0aW5nIHRoZSBj
b21tb24gdGltZS4gSW4gb3RoZXIgd29yZHMsIGl0J3MgYmFzaWNhbGx5IGEgdHJpZ2dlci4mbmJz
cDsmbmJzcDs8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jsb2NrcXVvdGU+DQo8
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5JIGFwcHJlY2lhdGUgdGhlIHN1Z2dlc3Rpb24uIElmIHRoZSBGUEdBIG9u
bHkgdXNlcyB0aGUgUFBTIHdoZW4gY2VydGFpbiBVSEQgQVBJIGNhbGxzIGFyZSBpbnZva2VkLCBh
bmQgZG9lc27igJl0IHVzZSBpdCBmb3IgaW50ZXJuYWwgY29ycmVjdGlvbiBvciBza2V3aW5nIG9m
IHRoZSB0aW1lYmFzZSwgdGhhdCBtaWdodCB3b3JrLiBIb3dldmVyLCBJIHdhcyBhbHNvIHBsYW5u
aW5nIHRvIG9jY2FzaW9uYWxseSB1c2UNCiBnZXRfdGltZV9sYXN0X3BwcygpIHRvIG1vbml0b3Ig
Y2xvY2sgZHJpZnQgd2l0aCByZXNwZWN0IHRvIEdQUyBQUFMgb3ZlciBsb25nIGR1cmF0aW9ucywg
d2hpY2ggSSB3b3VsZG7igJl0IGJlIGFibGUgdG8gZG8gd2l0aCB0aGlzIGFwcHJvYWNoLjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5HaXZpbmcgaXQgbW9yZSB0aG91Z2h0LCBJ4oCZbSBwZXJwbGV4
ZWQgYXMgdG8gd2h5IOKAnGNsb2NrX3NvdXJjZT1leHRlcm5hbCx0aW1lX3NvdXJjZT1ncHNkb+KA
nSBpc27igJl0IHN1cHBvcnRlZC4gVGhlIEZQR0Egd291bGQgYmUgd2lsbGluZyB0byBhY2NlcHQg
YW4gZXh0ZXJuYWwgdGltaW5nIHNvdXJjZSB0aGF0IGhhcyBubyBjb3JyZWxhdGlvbiB0byB0aGUg
cmVmIGNsb2NrLCBzbyBjb25jZXB0dWFsbHksIGl0IHNlZW1zDQogbGlrZSBpdCBzaG91bGQgYmUg
YWJsZSB0byB1c2UgdGhlIEdQU0RPIFBQUyB0aGUgc2FtZSB3YXkgaGVyZS4gU3VyZSwgb3ZlciB0
aW1lIHRoZXJlIHdpbGwgYmUgZnJlcXVlbmN5IGRyaWZ0IGJ5IG5vdCB1c2luZyB0aGUgR1BTLWRp
c2NpcGxpbmVkIG9zY2lsbGF0b3IsIGJ1dCB0aGF0J3MgYW4gZXhwZWN0ZWQgY29uc2VxdWVuY2Ug
b2YgdXNpbmcgYW4gaW5kZXBlbmRlbnQgY2xvY2sgcmVmLiBJ4oCZZCBsb3ZlIHRvIGhlYXIgd2h5
IHRoaXMgY29uc3RyYWludA0KIGV4aXN0cy48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RGF2aWQ8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_PH1P110MB166546C67FF8FA7A2B933568B7299PH1P110MB1665NAMP_--

--===============0893688518444493294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0893688518444493294==--
