Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDECA67B58
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 18:49:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01AA03860B4
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 13:48:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742320139; bh=Jk97bKqnEX7CBGz8Qojv+ppbfOYm3rwLNDGHAy78MoE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GwVcXBu5F2a8TYNrwTGaS/PKHgLxvrCFm7G6GbV6aLi/yCNFrsj8H0/Ix4k1XQeOv
	 6tCBRdQBN3rta8GPjnttW6PaV53dbjUL4V0qXybzueyMzs60zff+zyN4JNVNv1qMBJ
	 O8Vg3V18q4EkT3+YInG/j8hlF/DpqtYfykxI/EtUpQxwCtuAfWuLx9q2n9jb+I4/RD
	 hb+NTfSkd/x5Q5wcQX+5yfoGuozzcCYareQveiGKlNsPJkW9e6tDHxOSA7Kq07c1v8
	 yyr5T39DQzOf331oD8bFrAhiWGvX87pNfXUeTaZLwERsTEU3xIcdK0zH75Z4PE3xkg
	 FLoMODiE/EOjw==
Received: from MX3.LL.MIT.EDU (mx3.ll.mit.edu [129.55.12.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D67EF385CED
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 13:48:11 -0400 (EDT)
Received: from LLEX2019-03.mitll.ad.local (llex2019-03.mitll.ad.local [172.25.4.99] (may be forged))
	by MX3.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52IHk4eC239427
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Mar 2025 13:46:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Z61LnVzM1MIoCaoR4w3T6QEVH1/vKiv+49r7MskpUC13ZSETFoYmj5OYafl1y2+nQcmRXT8pDbWRw46kpUWssAQnWEL8LJiZGOKxXguL2IlkeMbCSad8v0mteZkTRK9jZFfodINy9U2M3bRbCPCmOmIYwA7ANBhHtC0sOesxMYDtnmhWRwhSrWPNi7S2OYVtwz2wOxGcWr/I3B2zPSAYPGLekn9DvB8Ajy7nb3vF1Z06HYNU8wrgpaJfQra3rHF3XpOJFHWNQEICQIsmlYv5XTbUDZiezMy271D+Jgg6+5bfMjqYXCo1tmBFSlqucbSWwJcBo2JPQnQuXMIAC/sXbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtCf/5rKYdCOCPBq8ebCK6jihE0FRKjGDHhKSbmVvlw=;
 b=xFTC2RKbiJs2869jHTP2+hYl1hP3aNPMEXGp3T9JEEjcdf8JD3b7dk9/7vOR6oKhkGMyNN5z0jY0a43BXncPRFU3xmqdTw4p7zCaFFfLiLBkMTo0EBt1NezmZWX1deaSQ1GtDvvJm+BV9rNNWSuHA0It1Utv1BoyYtKkLGTJE4k1s0xdwAy1DCXHYWFDM8J8NpJFlVyQom2o5yLks7ImBfzo4DAjUFLa8u2X1AmfZPrkT6aIODH/C6A9u2p/YTXXnJwbFhrK9fBE0broPOMer2q3VvL+2xTBoifiNW58l19W0mEhBNfatGP5s8irUgyzsPo22s/RAhDr0geDs/Zreg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: [EXT] Re: How to record all 4 channels from an
 X410
Thread-Index: AQHbmCPeaINAJ19gbEWPzh9bEN9sJLN5KYNg
Date: Tue, 18 Mar 2025 17:48:07 +0000
Message-ID: <PH1P110MB1284E44B4902108006F82AA398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
References: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTTSg4sSkG8e=qEdH=45PK6-YjjJ1OzaHrSoz4kP1YnJZQ@mail.gmail.com>
 <PH1P110MB12840A71C2828F114E7C46B398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <618135a3-f5d7-4bc2-bf19-6f388e86a014@gmail.com>
In-Reply-To: <618135a3-f5d7-4bc2-bf19-6f388e86a014@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BN2P110MB1462:EE_
x-ms-office365-filtering-correlation-id: 30ac168f-e897-40e0-123c-08dd66450a99
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|4053099003|8096899003|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RGZlQnZ1aDJteS9LVTU1eUxEem5kYTN3RWQ1RytCSEtwUWk4ZjZlblJZNlc1?=
 =?utf-8?B?cGIzQUdxbFhobWIxS2pmUUNFaDZSbHBZVnVScnpqa1NqS2d1Z1dGbXBidW52?=
 =?utf-8?B?Z2p4ZEVtRW1kQ0x6RWNVQk91eExjMU9icDNYcnB6NDNEcVFNK1ZBTUg1L0R3?=
 =?utf-8?B?MG9kNHFadS9IeUJOK1QwZTlEZ1R1cC9rSkJVS241YW5ROFcxTzVscHAvMlR1?=
 =?utf-8?B?VlNxbE02MkdsTnNHQXlzc0JBdk51ZktCR3BITldNU1ppL01yNW1RM2w1OVJ0?=
 =?utf-8?B?WWplencwVmlSWHBWaDVxNE9sRkxBR2RWbTNsRUdtYkpsRExZeGNYeFRrckNu?=
 =?utf-8?B?d1JpS2VHc3VwZTFWaTJ4ZTNiOHc0MFhSWG9hSDdKN2lFRllmdy8zeStzbHJu?=
 =?utf-8?B?UXhPbCtKUDlOQkIwdFFzTG9wcHlMZHFTSE5DMVMwZTN5TFlBT29LaGhJaXdO?=
 =?utf-8?B?NXlJR1BSRTNtSW1IRDFyT3o1VjZjZE9hOS8rQUluMGJ6d2tPNHJJbThsUFBm?=
 =?utf-8?B?d2lOTm41UitxWXpiYVVsazlCZzRQMnVQQnVTNXNTUVBpaWt6cFdNNXlLNlhG?=
 =?utf-8?B?akFGK0xuOWE2OUlQaGIyc1NHb0gwNHpxa3ZTTTFDV0Z4RE9WeHhJc2ZDTUpG?=
 =?utf-8?B?clI5NVVOcWxJZzNrK3NEUTJ2SCtHTjBLTjhTWDMzam9QSXZGelJreURZVjdu?=
 =?utf-8?B?MDkzSVVwbklTZXFZcWdlU1cvSFVDVVJWbENaMmM3RisvQnpuZ0JsbFU4ZU5u?=
 =?utf-8?B?UWtBRmF2WlovRjFOM1NaQlhZNC9naUtjcUV5aisva2xVNDZnTUxZMU02c015?=
 =?utf-8?B?ZlRaOGlwOFlyUGZMUFV0NmV2ZFBFU0YwZUlqeDB2U1VVWjhERmVZMHJHOUl0?=
 =?utf-8?B?M010UUd5UmlYTXJkQThURk9WS3FPKzdrbGZ2Y212MFpJWEtRam0xQllNOWJ4?=
 =?utf-8?B?MVNVZTRkblpEblVOQzVRQ2RxMGxOc01VNHFYWXJyNXdOanhBV3ZWZ09nVUdj?=
 =?utf-8?B?eWZ2SXdsTldUQnNqcU53NFRZOW5GODEzNGRwbjhTajFWY1pOaVptbUhpQ0VK?=
 =?utf-8?B?VHYrOFdWaDlkdDhrRUxQbVR3eldOcWtHOTBCS0xzMWR4S1Z4ZCtmb1VvcFVp?=
 =?utf-8?B?UmpjZnFIWjVZOERsWWFQNVFTcVFKUWdBMitQdmMrMFJFMjE3b2VTRVdPSXRM?=
 =?utf-8?B?UUF0TXFCQ0I0YWVOQ0cyRGhFdm1aOUlONHhib0pxckc3TnR6Zi9XUjl2U2JS?=
 =?utf-8?B?czNwSXhFUytGOHNNQmZoTXYvQnBsdTNzeXJCT1BYT2oydGZqZS9UNkJnVW9z?=
 =?utf-8?B?KzV6VUVFeHh5Q3VJYWg3Rmg0L0ROSWZsUGEzNFJqQmU1RTF6bUhzWm1HTUNi?=
 =?utf-8?B?OHR5VldRQitIUnN1SjJuOWYzU3RmYVNvZ1RpQ05IM256QVc2aVVTMzJONTNw?=
 =?utf-8?B?d2dVYjVFWGNjSFhyemIxaERFMDBzQW5CcUs3UDN2b2plbDFkMDI1U0FqeWNR?=
 =?utf-8?B?UlVxcWx5c2YzYXY3S0p1c0c4YTFQdFArZVJUMy95aUgzZXgyajVsVXdiOXVO?=
 =?utf-8?B?dGRLT01ZZ1lYdUFldmh4VFIxOUtzNS93ZXpmbytVUEFhRHRJRDU1SlFkMjds?=
 =?utf-8?B?QmNNMGRhSjNVYjh1WDRFRTBiZDZlbVZVaW5INEUxVGVVV0tQbDREN3RYTTAz?=
 =?utf-8?B?czQ3ZUxXalNKQ09oenY1TUFwN2RETmlEVjE5bXRmQWlPaUxiV1lyZUdyajVG?=
 =?utf-8?B?SWwzRGVJckZIYVFIN1o1N1grUEFWbVNaMTJHTjFSQ1VFb2g4LzJHWVBqVU1v?=
 =?utf-8?B?aFRmTkx1Qmo1aVM4d211TS84QndHTmFMWVdHVkw2S0Uvd3JBSjBTWkRoakRj?=
 =?utf-8?B?c21XVEpFRnQvdVYzMkpQUjNoOFlIOGFSZU8zYnVxK1VBclF3aWpHNFI3MVdB?=
 =?utf-8?Q?lMXIjR3xSDqhUDzE7TGl9x170G9U8e3O?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(4053099003)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elhlcW1XSWd4SFowdEZmNkVZbVhQYkRQZjlTQkJ2cmVpNXVhUkh3dWhMNGcy?=
 =?utf-8?B?bVpyTFBYRTlKM2RYQXBWNGV4Zms2ZkdDMVdOaThQRnhPam1RN1VRVGZNa3dl?=
 =?utf-8?B?bmIvbmc1MGhxY0NJenU5T2xNcVA2Qnd6c0hUd0lxNzN0VTFhc243WkNSYW1p?=
 =?utf-8?B?dzBuYndOOWlONGlicnRzOEZmdTlnVHVIN3N5dFByRE54aW14NVU5SWVycTd0?=
 =?utf-8?B?L0h5NWE5ai9JbDgyRUtSZFBUVTN2ZmY1eEZVdUgyMTkyVlhIbnJoV21rbkln?=
 =?utf-8?B?UEttV0tlbHBZSW9YMk5qbVpWbFQ0WWY0SGQ3RzJncUV4QWMvQ1NqZk9WVytK?=
 =?utf-8?B?S29oYXpmNlBwN3BNSElpYXJtNkRJVkZTajVxYXBLNjRSY1dmZzRQRG9kaXBi?=
 =?utf-8?B?QWlJdGF2UURFbXFWZVZIc0dJYnpGL2J6WDE3VmtKMWcxdTJuVXozWDNCUDZJ?=
 =?utf-8?B?SW5RTGQwRjBYZTVTYkMrNjI1blhYeUZvdXFUYW96VjRoa0w2SmJDL1NqbGVX?=
 =?utf-8?B?WGcvdFVEdVNnRERGMi80NEpjVWpJR2Fac3ZucE14MExyUmJaSEJRdEV1alhw?=
 =?utf-8?B?RTE4eVZpeFlBK3BScTBmNHVBdWtRQU1YTnpWYWVPY1J2MERyNFpiUGcrNHUy?=
 =?utf-8?B?ODBnZXZqUTk0cEo5bFJ6dWVzeXFwV3ozbDlhalk1dUQ5Y3ROZ3UvejhuejRQ?=
 =?utf-8?B?VFRBNlgvamJMeWY2bzZMN3ArVmxRV0ZjRFZSbDR0R2hoVVU2dk1Rc0VNRjdo?=
 =?utf-8?B?MjlRSWZlZncyMkZ4NEtkdDAzNTlrdk5IRWdaRS9zTzBVbHhMaHQ0NlppUm1v?=
 =?utf-8?B?N2V6OW43b1pSVUlTVVRXN2psUFpHUHBzWHdQdGFWcnVwV3lYU3A0dEh4M3BO?=
 =?utf-8?B?QnRiZnJPV09RelY2RDBoT1M3aXJ6R2poZTE0OS9MSytlTjVPZXMzWHhoTUh2?=
 =?utf-8?B?Z0FGMzFzRmozZXA1R2dCRzVBVHRrVjFoakxETmxUWnUwelgwZTJyamhVTURT?=
 =?utf-8?B?ZTVmS0xHaE1jWTZaZlpOUHJDaUtzUkJoM1MyRVhxT3FtN0FwWFZQWnlpeTNY?=
 =?utf-8?B?MlloTm9mbER1dTJ0V1hPN0FseE9kSGV4WVVUMmloSTkwYUk4RDJOem9tSDdm?=
 =?utf-8?B?WE9GNXdLMnBZZGgyc1BVN3crUWhKWXFhbzdDMDVsLzRSME95NVZMSnI5Yko0?=
 =?utf-8?B?SDZ2cmtNSTlWS25KN0UzZUtheGFobm5ZQTlvbW16ZkM1ajd2a0ZFbkFxM3RI?=
 =?utf-8?B?ZG1tWWRwR3R4ZlNlR0VUVExqOTg2aW43eVhMVmhoOXduRVo2T1hyZG0zNXR1?=
 =?utf-8?B?a1NjclFkU205a1Q3SDFyY3RqRDBuUG5obzEzREp4K1phckpNN0U3KzVtSlBS?=
 =?utf-8?B?OTRJcHlJTEdLdEd0U3JlRGQ0bCswQzVxTzdONGQwT01QVGhSekMwU1ZXWTBH?=
 =?utf-8?B?K2ZqbDAwWC9hZkQwUkduMmJuMlBRSnBGUmd6VjN1eWVZZUhRTzNnVnlqMkpj?=
 =?utf-8?B?OHIxR2hjYzNNbzhFcWdrd2VNUTdhWGVXSXh0RUFZWmcvQXJkS3krNWE3NGsw?=
 =?utf-8?B?Ym93dGI2TlczZGs2eStuZFY3UElnTTBLTHVZYWhJZzMzNDdzRWlkdXV2c2N5?=
 =?utf-8?B?V2pYVUdIajgrUFZlRXcxaGREZWVBcVErVk05aVdPTHR5b28ySEpyV2xRSzh0?=
 =?utf-8?B?WEplRDFuOHUzeVJ5MmVHdERqdEU5bW5VSWhnbHJSVzlSVElwUU9pdjVXSVdO?=
 =?utf-8?B?OVJ5QUNXdW44T2xkTXhWcXc4NjNheVFZS0ZHcXBnOXFOeGdHYjd4ekVqYmlI?=
 =?utf-8?B?VGVFMjZBZHFVejR1cVlFK2ZzQ3Q4Qlk1amljWjJIOVl3U2ltdTArNmhlNnRM?=
 =?utf-8?B?MVc3dDBjM3MrODh2RS9CNDkyUzhtVW1EZUhNQVg5WWE4MjRDdlNwdTgvVURI?=
 =?utf-8?B?T3NueGJxanFkYzBtT1hrTFkwWGVVYnJlUkdEYVI3c1NhUy9IQyswZ0ZjS3B3?=
 =?utf-8?Q?CDK6EyPLXSebkD9TW//BRZCKZFmVCY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ac168f-e897-40e0-123c-08dd66450a99
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2025 17:48:07.2683
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1462
X-Proofpoint-GUID: amfQTmva1dkyu5v_vkrn7LYh09DSdXcO
X-Proofpoint-ORIG-GUID: amfQTmva1dkyu5v_vkrn7LYh09DSdXcO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_08,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503180128
Message-ID-Hash: SJUTKJD77MDHSSUCDNJM3NUFBVXLEP3W
X-Message-ID-Hash: SJUTKJD77MDHSSUCDNJM3NUFBVXLEP3W
X-MailFrom: prvs=7172611654=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: How to record all 4 channels from an X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SJUTKJD77MDHSSUCDNJM3NUFBVXLEP3W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0241267270604635110=="

--===============0241267270604635110==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0153_01DB980C.601C52A0"

------=_NextPart_000_0153_01DB980C.601C52A0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0154_01DB980C.601C52A0"


------=_NextPart_001_0154_01DB980C.601C52A0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

Thanks Marcus,



Your recommended syntax seems to have fixed my syntax and channel number 
errors.  I thought the subdev specs were set for each daughter board, and 
since each board has 2 channels, I had only been specifying 2 suibdevs for 
each.



I was still getting this error:



  File "/home/jo13815/./Record_4Chan_X410.py", line 60, in __init__

    self.uhd_usrp_source_0.set_rx_agc(False, 0)

RuntimeError: RuntimeError: NotImplementedError: set_rx_agc() is not supported 
on this radio!





After commenting out the set_rx_agc function calls, the script now seems to 
run fine, and I get 4 data files.  I still need to check out the files to make 
sure they look correct, but they seem to be the correct size!



John





Try a subdev spec of:

A:0 A:1 B:0 B:1

Make sure you've set the source block to use 4 channels, also what device 
address and args are you using?

Do you get any error messages?   Please share them here.




------=_NextPart_001_0154_01DB980C.601C52A0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Thanks =
Marcus,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Your recommended syntax seems to have fixed my syntax =
and channel number errors.=C2=A0 I thought the subdev specs were set for =
each daughter board, and since each board has 2 channels, I had only =
been specifying 2 suibdevs for each.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I was still =
getting this error:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>=C2=A0 File =
&quot;/home/jo13815/./Record_4Chan_X410.py&quot;, line 60, in =
__init__<o:p></o:p></p><p class=3DMsoNormal>=C2=A0=C2=A0=C2=A0 =
self.uhd_usrp_source_0.set_rx_agc(False, 0)<o:p></o:p></p><p =
class=3DMsoNormal>RuntimeError: RuntimeError: NotImplementedError: =
set_rx_agc() is not supported on this radio!<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>After =
commenting out the set_rx_agc function calls, the script now seems to =
run fine, and I get 4 data files.=C2=A0 I still need to check out the =
files to make sure they look correct, but they seem to be the correct =
size!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>John<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></blockquote><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Try a subdev spec of:<br><br>A:0 A:1 B:0 =
B:1<br><br>Make sure you've set the source block to use 4 channels, also =
what device address and args are you using?<br><br>Do you get any error =
messages?&nbsp;&nbsp; Please share them =
here.<br><br><o:p></o:p></p></div></body></html>
------=_NextPart_001_0154_01DB980C.601C52A0--

------=_NextPart_000_0153_01DB980C.601C52A0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEt0w
ggOKMIICcqADAgECAgEBMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3Qg
Q0EtMjAeFw0xNjA0MjAxMjAwMDBaFw0zNTA0MTkyMzU5NTlaMFYxCzAJBgNVBAYTAlVTMR8wHQYD
VQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExM
IFJvb3QgQ0EtMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL91qARBjjibZuLnL2n+
ryiBT7PMGrQnekpsKv13kTaOz94zyMTT8Bd/fERg1JjySFwO4ncw+o9KKRSFvpC6mMnvXu/PD1dH
amiZV/PNfHzQ20hPvAeoYnqik0e1XziO+FFUBFClURbkRcOrlWLr4HsNk4/wtnRHnt+3q7kJeZx5
G1djrFp2ezvsrfnrXeh0XGly5T/avFioANwe75DlSDAiqALmlo/gRauyvljZIsovynTh/SZjqW8k
SuI3AO8Wy5xfCRVEjYOXOGNQSaxWmbZAnhujZvaeduBpZZERcz4KY/FYnFfgCvva2NO3U8dNpGKL
U5yrstGMQQMLFF8QEBMCAwEAAaNjMGEwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU/8nJZUxT
gPGpDDwhroIqx+74MvswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMA0GCSqGSIb3DQEBCwUAA4IBAQB6mHxH/9yeWjCoZWEND51AGzAfI2Uq/fx743zhdNHK
xVAn0q6hvCUMKPkv4quuoHKethRICdH0JA4FYOpvgthE6NS6FoksYWAn3EiEBApY5V8EfMBUmshf
NtkuvSKrx4XauHefI1OoGIurLI1OL8LL7FS0SSpP5vwoP8PIFumBzOWoQQ+v+QnHpdnyO6EprJDv
fdfqLawtdWHw8Ahb8+wJtK/ivYlYUlrWuIZiLldGAYmtO3mSkjtNiz4EPGDs95LtGLfpofFVkSrs
dgnGIzKZPlg1dATKe+bam+qagRZHCrxAV6sYPvPhv7po4ouB9HOZLyYWkMspG5jipsTvSHCSMIIE
wDCCA6igAwIBAgIBGjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMjEwNDE0MTEwMDAwWhcNMzIwNDE0MTEwMDAwWjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS04MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAttKiUZi+ezd6XR3/UBsFtO/XphH8
qPCL1l7Qjq9d3pew3w9mRG5+16+VG4OkSdbg1/C/9G7Qf4E+b1UBcpRT7dMWQ4+czMj5hzJMX8RL
7tMvwgKyNGvIg6WcLm11NY0r10sesBaYVwerNQrkE66PBfTdFq4x62r7CO1GHrnpkzhIpn9GghsA
xeY5V2Z+NrkglNXTaSfUrsr1Did6A6FaOHqUfX02zXd5Rip5vvLK6y8eJlYcZpRZYDsP6wwPuSgv
8lDa/c/28y5egk1EEG3wIBXedgv+mnZ8ZIoAIkhreCZvWrAp8PLotMBY2YoyWVKmpoebfXuaUBB1
0bVHp491wwIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUB6lj96pk
z9L6G8h9ATWJ3kgVtGswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
KoZIhvcSAgEDAQkwDQYLKoZIhvcSAgEDAQowDQYLKoZIhvcSAgEDAQswDQYLKoZIhvcSAgEDAQ4w
DQYLKoZIhvcSAgEDAQ8wDQYLKoZIhvcSAgEDARAwDQYJKoZIhvcNAQELBQADggEBAJOSfJ2oJKi5
AR/DhGv15Y4etfy0fcTVlciAhmBemrvOA7UVTyn/hSTFR+C1aZLM5A9Y8173YIT/JE06cb+dszxW
OLu3eg1TIU/bhkkE6Z1WvDK1fh/T1qcv80BXTG53bGoGVy3n+Djp2w/UJRS5/ror02xW9pcwySwV
4YcgmlTtVyEmfCwfxi+BBOnELZGUWE3O01a44zd81XGS/dMgL504c1lLV1Vs25YmLvZhAe4pFjF+
FSBBdwz8zhIdaqa4BMuE3JJaUFtRdNs8nLR8phUlxhstUac70Shv6FE8PrIFxwkokA5zyxVW0LD3
dpWFLtx18GWfpXatqRreMspTGe4wggVAMIIEKKADAgECAhMmAAB0FHJQAiNxhwPuAAAAAHQUMA0G
CSqGSIb3DQEBCwUAMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0
b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTgwHhcNMjQwODI4MTcxNzUwWhcN
MjkwODI3MTcxNzUwWjBeMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEPMA0GA1UECxMGUGVvcGxlMR0wGwYDVQQDExRNYW5uLkpvaG4uUC41MDAwNTczOTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALrC1gG2GRgmq3F4jYI2jDiDa3ovinQzeFVrIjG6
Sx3dm4nD6Kug5esO0aen+GgXj2gxFmfERh7FiTulHxnU1OvUU10KRRljWVeux137+hvRel8DzsUd
0+/tAT9VSWXM9u04LhuqIZvdP9s1K3gJJWXljVSWMWPtbOnJf3N9dfPP+j9BS5DPJa9yxVQy3aXw
nbVuMXMvKJU6KRMb2xZfL0PVR450g7FZTGky3vCYhVTQwit5DjUtdiRDJwkcVPCFD3vjDuOvvEfA
wPxhPMpALil0ZPpx7opMDXw/Oi1N4HjwGyjpNPm6iYfbme89SvP6lyyY7LcOAq0dj05h9BomtUUC
AwEAAaOCAgIwggH+MB0GA1UdDgQWBBQ92yslVCtoz/v7KCCv9U1uOiFQ+TAOBgNVHQ8BAf8EBAMC
BsAwHwYDVR0jBBgwFoAUB6lj96pkz9L6G8h9ATWJ3kgVtGswMwYDVR0fBCwwKjAooCagJIYiaHR0
cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9sbGNhODBmBggrBgEFBQcBAQRaMFgwLQYIKwYBBQUH
MAKGIWh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXR0by9sbGNhODAnBggrBgEFBQcwAYYbaHR0cDov
L29jc3AubGwubWl0LmVkdS9vY3NwMD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIOD5R2H7Kdm
hq2HFYPq8EWFtqEfHYXL3jKH/4pzAgFkAgEKMCIGA1UdJQEB/wQYMBYGCCsGAQUFBwMEBgorBgEE
AYI3CgMMMBsGA1UdEQQUMBKBEG1hbm5qQGxsLm1pdC5lZHUwTAYJKwYBBAGCNxkCBD8wPaA7Bgor
BgEEAYI3GQIBoC0EK1MtMS01LTIxLTc5MzUwNTg3LTg5NjQxNDU1OS0yNjYyMDIwODY3LTU3ODcw
GAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIEGh4YAEwATABVAHMAZQByAFMA
aQBnAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQCIrJL/8d+l5D4LQY4U+4mDK+unMLeR1LWmXe4I
5uzcO3SPnQAD09noV67LAidJX/ctA+1dJ9JtZJr2gm1J59IGXVj2GgsvXHuPQnkwQ3mkA2abZeIM
xkCbtpobkXwLqYNblFnK2LXqKWJtFZB0XhsqEe82LUOZD3BIwMw9O/erwrmg5LQCdIVm12wK9M56
mVcCpr2M89FD5e3tQbN6eVQs5NOUjVVMp81Nktw0Qiv6royWJEGjgjUnS2mtDAeoo7lM4D7WmYBh
7yc3lv03mM3DpfbKTJN88pDEM8vzSkrx55qHq5a6MmW1lZe+WRKVyRr9j1SQOisYiO23+uEWUvVx
MIIFQzCCBCugAwIBAgITJgAAECJOdYPN2Sc27QAAAAAQIjANBgkqhkiG9w0BAQsFADBRMQswCQYD
VQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMw
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

------=_NextPart_000_0153_01DB980C.601C52A0--

--===============0241267270604635110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0241267270604635110==--
