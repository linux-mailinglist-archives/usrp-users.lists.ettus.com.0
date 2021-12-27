Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 729A447F99A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 01:59:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 601B6384E74
	for <lists+usrp-users@lfdr.de>; Sun, 26 Dec 2021 19:59:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=skidmore.edu header.i=@skidmore.edu header.b="lVnnVQcb";
	dkim-atps=neutral
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08on2059.outbound.protection.outlook.com [40.107.100.59])
	by mm2.emwd.com (Postfix) with ESMTPS id DC47B384A9C
	for <usrp-users@lists.ettus.com>; Sun, 26 Dec 2021 19:58:16 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Keitsv2i163rKgtzUo4sQY8puAai1+zIbWbNsWijVCwhJbj0YK/McoGJWDKRwhgnE3B82lzMXKZ7ThWJ+U1AhAM4ugI4OhRqwWV99X9XA8YWpiNXnKAParho/pIN4rgYwx5ltSiMifZb7mu3w0pmNQ4FoSTiuDpypJ4E6r2ZoVdY9RD4HyxCOZzinEJzqdNoLzMvdxtW8+DEPFkflGiZf8xdNCR0XkM+X0tXSHs9FCa4HwcaxONHTULoq8owtAE9Kt7/NC7xuqpsWstjPSF9QzQA/sh7vXq7IcLHYCo3dHKdLNTMou19KtNC+LKwMyWIa2O/d1FtBGveCBd4i+3Tug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sXdDlJn91EQv/OwUhMnb7cqB4UME4DU+ECY0ckAF+0=;
 b=Oz94xEQOCcWDOqSeRWEIMW4Cho3ZHjlUckZzbyC/Xl/uzv/5ZLOeQW9KpO/Gle433uxEtQFyPSVlwGZq6N7Egi+qYBIS1saagfn5mYWGNlz9WX8A9vVkh8ds/qMUslI3BQoNU2STuzyJsUUBlm21/JocTueWGSWdPho9m3aL3vJ2hm5UHZ4hwub1Tm/JVPbvLMTko7liuDUubicZCrH0/JaUIv1mc7Jr52fsermlz/UyA9je4br9uWPk2pITTtH1/54JFYdRyYUcQ/G+GeCKQRyH3QU9U2FNegzYLe1dv5jTUVwb5WdFkrgwyLBZByXh+Z6c12LxXRoq2E9vN9kKyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skidmore.edu; dmarc=pass action=none header.from=skidmore.edu;
 dkim=pass header.d=skidmore.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=skidmore.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1sXdDlJn91EQv/OwUhMnb7cqB4UME4DU+ECY0ckAF+0=;
 b=lVnnVQcbhCi89WIyPUtqNzj+VwbjWWDVv/TrHIqrwZJI18kUd9hLV12E73xQ9whulUtj6JkPEodI3c6Gqd5o+Jxo1GZY9LlTi+iRRARqVR4C/ExtMZUm7y4f6qAjZo3ioxpkW+g5iQbiiTQvnPGrt62r6WSL5yd3bpTc8I8Y80g=
Received: from CY4PR0101MB3176.prod.exchangelabs.com (2603:10b6:910:4a::26) by
 CY4PR01MB2614.prod.exchangelabs.com (2603:10b6:903:e9::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4823.19; Mon, 27 Dec 2021 00:58:13 +0000
Received: from CY4PR0101MB3176.prod.exchangelabs.com
 ([fe80::7d10:68ca:6e5b:904c]) by CY4PR0101MB3176.prod.exchangelabs.com
 ([fe80::7d10:68ca:6e5b:904c%4]) with mapi id 15.20.4823.022; Mon, 27 Dec 2021
 00:58:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to pulse an RF signal?
Thread-Index: AQHX+rzT1iXWGBGQgEGCu15tK/0/Fg==
Date: Mon, 27 Dec 2021 00:58:13 +0000
Message-ID: <9A281834-D787-491F-ADA1-B2C448BF9E4C@skidmore.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3273)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=skidmore.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49d01fc4-9c36-4fa2-7688-08d9c8d3f5a0
x-ms-traffictypediagnostic: CY4PR01MB2614:EE_
x-microsoft-antispam-prvs: 
 <CY4PR01MB26147D886819499A60B37894B8429@CY4PR01MB2614.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6mOqvLvDBabcw6+ImJT9PY0eIf/AUfnN5h3nyfYFjDyAuBszDgxKKqcG1vIoiD+yle7inRPa+zquVDznw/2PzCxqI64Ny5w6YNJo94GTS18YM1HNroGERa1zmcTLkjZ7kYdHD7No8tNG1LY/5/ZwBfj+hF7zFgQwWSobR4JwjzQaZvaN22fvf0zbw0va6tCP0/AHLaprGCqKqVFrA27rKQWGChXyjA6Bol+ASGPk4bjsZZyn3XC0xx5rFjMSWkMZMutGhgK3GO3H8UjTiEcQxegKnStJ/V3H0Y6jJD1e9wgtdtN2zG22d2e0NV9PX6jjXTYPhgiWGBkG1bpfoI7cFn8jfwbOAfhX56TTMiuPRlZhxv/0ST1rzW2Tr9eJsKZbjwRu9GkjQAbAdRWQZo+Ag0GJXgtfTZmrNYDCJwW/LePJSuanhn/x7Ny5f2CtQCfWPchpmER8j9o/8J6yf/7iLUpSdwItd8JfuReAUnIvqVPTjPK00tjA4ocF+33ij7xHTPikyoQPfvIFVk3DdPQfHcMiM/ZCun7AKjYMnFBAT965DVUHYzZv7eDRcm1p5eUkoul18k4AZkcxsyuu+uQC7sAFIZmMrWZzT3ikYhCAkDo1jmxS3TkKeZ9Jv8b5omcDnI64vcHLipfEOTF19rBT6oLljWwyqDrx3eiEdEDHni91gogNMrKyrvqOtg2/YTt6yUhpF9wOpswbC8WvrRCXmA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR0101MB3176.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8676002)(8936002)(6512007)(66946007)(2616005)(36756003)(75432002)(76116006)(64756008)(91956017)(66446008)(33656002)(186003)(66556008)(5660300002)(86362001)(558084003)(71200400001)(2906002)(66476007)(38070700005)(122000001)(38100700002)(6506007)(508600001)(6486002)(6916009)(316002)(786003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?d0hqWW9XOTY1ejIrUkpmNzVRWnJ4NlRReXQ3SklxWVFiQWllc3diRkU2ZVNT?=
 =?utf-8?B?NFZWWVc5SWRnODhPdXN2QzRCRTR5SlI0NyswTm5XOXRxdTVXQnlLWm8xSTNw?=
 =?utf-8?B?dmNNQTg3aW1TQjUyalMwSW9hMzcwenkzVUdldjlQRG5GVkh1RUphMjBXcG01?=
 =?utf-8?B?d2RFRitXYkVpSUpKNTM5MHBFcjVvM0txYjYwblloSWFNWTNvb0NXalVCQVBL?=
 =?utf-8?B?ZU9zYTM4U2VQV0FaTWw4ODFHUjBURnh5QXF3NS9JOXdnL1ZHWkxZWkdTbWlt?=
 =?utf-8?B?aHhTZmdGOWMrMWtnUjdQNEk3OC9qak9qYTFlUTkvQzJwRFdMSkhpK0tPd3dW?=
 =?utf-8?B?c2NDbUhuZnY5eTBUTTJ5V2swSGczQmEzeEgzUGtPdmY5WXVUTVpVY01YeUJn?=
 =?utf-8?B?Y0JjTklraWE2ZWF2dWhGSGV3a1ppY0dteU1yUWlxdXZaTFZrelVBOGVZaFdC?=
 =?utf-8?B?bUYzNktUTW91T3Nob1JQL1FyZnlrTDAzWDhWSURSZWt0eTdKVkNVK09uWjVN?=
 =?utf-8?B?aFFhU3F2aFRXSnIyTWNVSTFOT1MwSjgwbGpMLzlwZVlaNHBqRWxjOTZqbGZQ?=
 =?utf-8?B?MXAwWTlENkZ2YnJNTU1EdzMrYTRpaEJOam9MTzFxVHM3Yyt3NDJsdW15dkV1?=
 =?utf-8?B?RTJFUGVaR1hieUVZM0c0V0pZRjRzVVVIT3BzZTNKQ3U5c3U4Z1A5SEowb1hT?=
 =?utf-8?B?VnVObFhUd0Jic1pqNHNCd3kxRmxDQmhBRFZ0S05rd3I0ZTVLNjJJSlFlYXFM?=
 =?utf-8?B?L0dsRG5IbVVBem5YMDRrUkw0a3VVaFJqVHZ0N0hVUGh3bk9PdEpIRGxTR043?=
 =?utf-8?B?bC9mMjdlTjVFY2dJb1JjOFBuZ2lmWlNyTlFZZWtPdU90WnBtWm5PWnptWUFP?=
 =?utf-8?B?b3I2V3NlTEVtUVlLSnA5c0h0RzZuTFBVeW1CMXBJc0RrN2pnSEJ5V0xIclpq?=
 =?utf-8?B?SnliU1R5VXplaVhwNHB5ZFA0bjVldm80NENyRUdSSXZ4d3dCTmpja2kyQUs3?=
 =?utf-8?B?SzJjcGl0MHhSdDY0alN3RnM0aFR3K3QrQk0wSjg0VDZOQ2xCdjFkRk9CVWtP?=
 =?utf-8?B?bkpyRkZsYXZlVldRd0lCRnpjSGlIczMvbUdzdjN6UjI0N0szdlUrWkpibEdk?=
 =?utf-8?B?dEUrZ01meGR2Z0hkRWVib01UdVhZZmozTHpwOGp5YUxUK3F3SkxnYnZwYlIr?=
 =?utf-8?B?cGpSYmJVb3hwNFJZRzJxY2FBY2JVRUVDQW8zaVFGSFRYUFlBNW9mSnlRdFFy?=
 =?utf-8?B?Zzh4Q0E0SDVuUkZDUlNzRTQ0WHNnSXlua3o3Z1ZOQ0NxeVB5NXVyQjV5SEF3?=
 =?utf-8?B?MWpsRzNjdjlUVmxYTUtVc3BJOTR6VysyMk5MMW5ZNEZpamF0QitiNC94bUNG?=
 =?utf-8?B?N0dsMVNYYVQyanB1cE9QZkd2RlVkSE13VFpWeStDbU9kQmFDaEhWckZDMjNP?=
 =?utf-8?B?MC9QaGZmZnVVWmpjNElaWFhyVmxTeVA3TUFuYllFYVlOM2pjZ2xxMU43L3lN?=
 =?utf-8?B?Vm02UVd6cUpwVVRxZTB0eHh6Zytzb2I5dlRFeHVYK09XQng4WDhZeFdPbXJi?=
 =?utf-8?B?U1lxb0xkakFIUm1DdmRGY2lNV2ovdnYvY3NSWExtOUxHSGhFQ3BjdWJYNW4z?=
 =?utf-8?B?L2pmNVVVTWVYeXBEdi9Qd3d1cWZic3ZJUllaNmdlNEM2b2FqWHF4SWxRUFZi?=
 =?utf-8?B?dWtrU1U3TjJhOGZMM0ZUdUpPM2NqUE96ZUNtdmE5SW43VzArdEFDbUVoYTRH?=
 =?utf-8?B?d21xVW9wWU96U25JUWhaNXVhSEFOU1BlMXJlMUdkeDh0cjJOWWRITWdmeUF0?=
 =?utf-8?B?d0Q5OEZsRXFCZXU1Z1lrR2h5Y1Fxay9nZHZYMGZ4VXo4ZVcrWldhR3ZuL0Fm?=
 =?utf-8?B?dlM5S1hkRzhLNC8rOTBvUUlSeEFRY1dlMlhsU0dHWktNSUFwdC9pZ2pTcnpL?=
 =?utf-8?B?S3EzNkxORmdiMUxiUGpWajVUSkt1TXRsOUh3SUQxMjZyTFZiWHdESmJhQmly?=
 =?utf-8?B?VlJHTU80a2ZUZDlxSG5kZ0lUUmFhZ3lZYlBrSngzalU2YWlPZ3pPY1NOcmYw?=
 =?utf-8?B?VjB5bXR6M3h3d2RRdkh4bDZQVlY5L3BMY1pLNDVUMkFlb1BuVW9TL2tFZE9s?=
 =?utf-8?B?WXNvQit3dms3eld6UXMzWGJ1NU9VWGtFZFpOUm9sZ3NrV3NnMHpldUhLQ2pB?=
 =?utf-8?B?cVRBUXB4VW1OUmVLOWpxMkFHQko2OERFODYxN3ZJYWJJeWhUVFJjeDk1emhY?=
 =?utf-8?B?RVhPM2FmeFkxV0RpeXJaN2JTd0lQNmlKZmtINHp5b0tnK3RGWXEzL0F6ZHVC?=
 =?utf-8?Q?TPwX0xLKDuF9nMH6M/?=
MIME-Version: 1.0
X-OriginatorOrg: skidmore.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR0101MB3176.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49d01fc4-9c36-4fa2-7688-08d9c8d3f5a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2021 00:58:13.2662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fdd86edf-0620-48a2-a66a-be4daf7bf919
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kneCCF8nKxiZ33JLjD+aXhlMwvicDIprRvFqOzXHUxGdTZ07aTjHBsFlMQD4EM4LS8GZyfiJzEsEOKtIHyzfyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2614
Message-ID-Hash: 46WREXH72PG7RKAFQ36M3N3HB4IWVM5X
X-Message-ID-Hash: 46WREXH72PG7RKAFQ36M3N3HB4IWVM5X
X-MailFrom: tholland@skidmore.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to pulse an RF signal?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/46WREXH72PG7RKAFQ36M3N3HB4IWVM5X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anthony Holland via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anthony Holland <tholland@skidmore.edu>
Content-Type: multipart/mixed; boundary="===============8230687970174678183=="

--===============8230687970174678183==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9A281834D787491FADA1B2C448BF9E4Cskidmoreedu_"

--_000_9A281834D787491FADA1B2C448BF9E4Cskidmoreedu_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gVVNSUCBleHBlcnRzIQ0KDQpJIGFuIHJ1bm5pbmcgYSBWQ08gaW4gR251IHJhZGlvIGNv
bXBhbmlvbiAoY2lyY2EgODBraHopDQpIb3cgY2FuIEkgcHVsc2UgdGhlIG91dHB1dCBzaWduYWwg
b2YgdGhlIFZDTz8NCknigJlkIGxpa2UgdG8gYmUgYWJsZSB0byB0dXJuIGl0IG9uIGFuZCBvZmYg
dmVyeSByYXBpZGx54oCmLi4NCg0KVGhhbmtzIGZvciBhbnkgdGlwcyENCg0KQW50aG9ueQ0K

--_000_9A281834D787491FADA1B2C448BF9E4Cskidmoreedu_
Content-Type: text/html; charset="utf-8"
Content-ID: <926A85525DE725438F96EBFCB85DAA78@prod.exchangelabs.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsiIGNsYXNzPSIiPg0KSGVsbG8gVVNSUCBleHBlcnRzIQ0K
PGRpdiBjbGFzcz0iIj48YnIgY2xhc3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+SSBhbiBy
dW5uaW5nIGEgVkNPIGluIEdudSByYWRpbyBjb21wYW5pb24gKGNpcmNhIDgwa2h6KTwvZGl2Pg0K
PGRpdiBjbGFzcz0iIj5Ib3cgY2FuIEkgcHVsc2UgdGhlIG91dHB1dCBzaWduYWwgb2YgdGhlIFZD
Tz88L2Rpdj4NCjxkaXYgY2xhc3M9IiI+SeKAmWQgbGlrZSB0byBiZSBhYmxlIHRvIHR1cm4gaXQg
b24gYW5kIG9mZiB2ZXJ5IHJhcGlkbHnigKYuLjwvZGl2Pg0KPGRpdiBjbGFzcz0iIj48YnIgY2xh
c3M9IiI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9IiI+VGhhbmtzIGZvciBhbnkgdGlwcyE8L2Rpdj4N
CjxkaXYgY2xhc3M9IiI+PGJyIGNsYXNzPSIiPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSIiPkFudGhv
bnk8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_9A281834D787491FADA1B2C448BF9E4Cskidmoreedu_--

--===============8230687970174678183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8230687970174678183==--
