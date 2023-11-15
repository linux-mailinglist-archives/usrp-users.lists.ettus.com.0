Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF807EC25D
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 13:35:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3510E3845D9
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 07:35:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700051738; bh=f78BA0NiH+vLxCbYZIFFlemxwf4K5txltVJWAX3IDXA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YPFTE9lcL7hhdXo8vSjHl5nuntwLDO9gQyDVS4XimC2bO7+H95X0o3QbUQVLhYqJD
	 gEREVichyxctM5AwcPRFYgRiqhuL/EP1mqR5lODr5CnMrqWtpb8Qn0IItYd2tCQFqr
	 qpd5Xjo2doS+QZLKPuWSUKvHAzl+u0VHCyGWgN31cruLphqKlhiGi0e15EF13V/nbh
	 cE5J0gzNKlQjI67Hlpjne1KwiCvYyOx4abjLQ+BR+nvtHFZQW94zDBFf2uzOnObWz+
	 AtSrBZpmgch8/5l3qBD5gFFNLRK+DtPMdZQdgySd4dCkIdopnyJgjaCfGgZeXfUaIw
	 4evoF+any4J6g==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2109.outbound.protection.outlook.com [40.107.223.109])
	by mm2.emwd.com (Postfix) with ESMTPS id 32308383F9B
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 07:35:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="JxVA6ctu";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=keXaXoD6LH9+fkcaNVdmVKg0nTysFmZ+2iH+xWLIKmhaIeGGiP/xvcN2jJ3UZE6tNBznWJv19vsT7zV8WGXgZxKcmeuXk+Lvl8ffxj0ApoFioO+HNhLmTudfbX785tfVf0laQylyaahGVuv8gTzE43tNv2ptf4PbH1RMx51JUWczbQMbapjeSrtnbDAwC9dYlcQ9EEN7/yc0bC+uXk4gMKZFMzwDCP+JFrQVLD4irYuf5uRfunZdCAv7xINUkzlfMYOvVjicYK1EEMgOT23AnPfdQ1L0oZp6GKOZwytWb7MOCioR9LAh6ELDg6rmwwWrwlok/BCiZcBbFYfQ2BrO6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+FlHp9MsZO+vPk0wQxlcry+H6Mbrouncfaa3ZsaMUQ=;
 b=ie3U5lkp09G/lo33u6snvarTOfWzYPnopBGkhz5Zin10SGJOsAbyUROmNk3tm+dQDQWK/4hIa/Z7E5Z38YIGNU7EfaQikxaJ5HqIxUinZswnL9QhMQ/8zBwBBWPzxjcdI4206OwthmUqSpFUm8Di+3EaIxCmc7ELvhQaWVFK9FlBsO3LvoMUGu5anX897sxiL5GRob8wuaVTfo/fuxHmm+342OdIhH6BMkUp8HpUj/a1glgp+zBTnpHl5Fa+Me0lhwEDWWKTZScU5BsxN7LebyUw24BogI52aW1r4x5cj0qwLvHR5cYdbckNGzuDxILcL1u8FcCQoZ+kHkFp14MDiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+FlHp9MsZO+vPk0wQxlcry+H6Mbrouncfaa3ZsaMUQ=;
 b=JxVA6ctuX1eRjWdLmH1k6M2uycw45+yQH7KZbgjUnoObNvQggU+zO8wJXvFRjWwbd6BYYmCTWXzQ69PQrzFfQCVi7PjSon8jDIG2n05y01oD6Gm9vJCHoRwxqNh7myoE95rmwEis/6K94PPv+N+t0RzJw5vnXg9aVmXH15SIlAE=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by SJ2PR04MB8803.namprd04.prod.outlook.com (2603:10b6:a03:546::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.20; Wed, 15 Nov
 2023 12:34:51 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::3f4c:be8b:1cc0:fae7]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::3f4c:be8b:1cc0:fae7%3]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 12:34:51 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: x410 stuck in reboot
Thread-Index: AQHaF0ujss0VFimy7keGJWbGIV8a3LB6ciOAgADYWEA=
Date: Wed, 15 Nov 2023 12:34:51 +0000
Message-ID: 
 <PH0PR04MB8311BCD5113AAED57D47E1F3F3B1A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: <2NvKETQYSWrPAtzelokWuYDmI0Jb4VHa54FtGJJtg@lists.ettus.com>
 <86ea9e64-6be4-4a63-a550-e915dab92d59@gmail.com>
In-Reply-To: <86ea9e64-6be4-4a63-a550-e915dab92d59@gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=8c9eaf4a-65ec-4c8a-b70b-0ef5e8163550;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-11-15T12:09:17Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|SJ2PR04MB8803:EE_
x-ms-office365-filtering-correlation-id: 28abf7f1-a616-46f5-0120-08dbe5d74393
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 57N3RkBUjtPS8vRqhFKXpFhK5Xc0/FC+25RH+AEeP8lm/kSW2qjoKrRSKnZOnLAQX7T6ReKjFuabEJhZ/cLa4bV3v7TSGa1Odke0w9eXrIs8CliVO22pIjzssGnDb6RJe37tRmclpAwUwRQgcsJ7kMQ5M4LdV/m2EX4cHj5MPvyE0XGJ/xRNsQ9S6W9GyZ4YwJUz/1j4jd0UH4ZKNHFFkTs04ui9WUp5JC6J5PK7TahkdbcMTPPe502gt/J4sbIszPwk1d2s/MByKk3Pqpp9Pv1Uvrd+1raResFeF2vzwLkFkd3UUHX/Oaw5s1tEYxYSkozT2pXrb4wL8nCjkkd7+fmbeujrTMlE7XfRBbE0u7eHZe45IgIB81PQPePRLPQtyl18JQ9weTnHeQy28YWCRivDsOYD4Df32ww7DTBDUmV/wGFUGiDv+qhMP/hojznJoKRtWeGgRed/FuEor6QEONzLM45/dXJDT7YlKjZw/aHw/GDMR4Yd+R5Tpd/gp/WetVkD/gNGktHbIQvSDeDyWRfrkkImITLNLTKDNFr1/hafcn2oUvR0ELjYnhdk56yv8h6mLx1Nucv0n+1IwLWoHj+6AxTslk6IZkmnXRXHrlo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(346002)(39860400002)(396003)(136003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(76116006)(66946007)(66899024)(6916009)(66446008)(64756008)(8676002)(66476007)(52536014)(66556008)(8936002)(316002)(478600001)(71200400001)(966005)(41300700001)(33656002)(86362001)(5660300002)(2906002)(122000001)(38100700002)(6506007)(26005)(7696005)(53546011)(9686003)(83380400001)(66574015)(38070700009)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bnZPQm16SmFMRUYrSGx3d04velpOZEh0dXN6TW5tZ2VST0MzMWV6eWEzaU1M?=
 =?utf-8?B?Y25uVlFoZUJzV0dyNHBIdm5tS09VREdUbnZUL0hjSkpEd0ZQMWY5czZSamJL?=
 =?utf-8?B?TFlET2ZBZmp4M3ZUY3g5ZTUyVXN0bEVYcjB3WnYrRlc4SDBRNjA3UHl2YlVG?=
 =?utf-8?B?NW9UV0ZYdlU2Q1FEZ1h0OHJUWUlEc1BjTW1SSlZ6ODd3aStwMW9VczlIUEhv?=
 =?utf-8?B?Sk5tZVA2RzV3SXlQejd4NHRPVGNUb2VXVFNMc0t1TU9OZTJtWXhuZHpUbk1V?=
 =?utf-8?B?SHJPeFNaaTZvbWtjbTJaWm0wZTlhbWVWRnMyb1A1eSs4VHFpZUJPZHZoTHhn?=
 =?utf-8?B?KzdCUWs2ZjRDVFB4RjdQZEY0aWozM3N4cWd5MW1FSUc4aUMrSXNEQkpXeDJS?=
 =?utf-8?B?WTJtSHNMMnRkVW1OQmgwTUkreWg3OWlSRWFWSlZSbXZxK1JTZS9jNjh3MHls?=
 =?utf-8?B?MG80Zm9FV1cxRDhWTG4zbCtTWUovaVVma28weFhDbFlCbjVFdGlVZEEvSVlk?=
 =?utf-8?B?QnlpeW1XTTlUZWlhUUVuZmtZRFhhQitvZXhINHBkZXBWaWJMNndxalRmV1hQ?=
 =?utf-8?B?T2E3MWJTMUhoTUYvS3lyZFRITDRjbXdYSEJIdGZyR0k4Snl6QmpOMWEvM2M2?=
 =?utf-8?B?UFdpT3RKSkQ5cGJiZ2F3ZWprOUpkakFBQ0tiMWk0eHZ5Q1N6cFEwU3l2ZEJo?=
 =?utf-8?B?RHl6Z0tiSXIwY2ZMNm4vaWRYWS9MQ2phbmI0VVB0T2x3L1pHY0FqdlBxdFE2?=
 =?utf-8?B?OEFOZWxrRjlVeGJ6RWJIbTlKSWw1dVdNRzcxcXE0V0pnR25hWHk0Zi9QbmM5?=
 =?utf-8?B?clllVGNmckNVSGRyVXVMUDRYSjArckhieldGcnZrN1YwNE03bHdjUFBDdlhC?=
 =?utf-8?B?NHpzYnVnYkhSaE9hY21Sa2dWNlFhY2F1M1hST2ZjbElpNTlqYUQ0cDR4Z09r?=
 =?utf-8?B?Unh1WlFPaVpPRzAyV3dCTTZua2F3dkVwQldNdUFWMXdNbWZWK2FxcUpReFRJ?=
 =?utf-8?B?WEQyUXVmMElTYS8ydVptRFB5bDJNYXVYQWtNcmxDbjNxWXhSZzZyYlhtL0Vn?=
 =?utf-8?B?eFBpZ1hEem5mNFp1TVF3QXUxQU80SE5PWWlqVjF6QUROQThuNGxZMlF2ajJq?=
 =?utf-8?B?U1BCenJucGx5anlteGhuVzJCZFJRQ2NZWFpBU3BIQ2krRkx1SGxTZUFPcEdN?=
 =?utf-8?B?M0ptL215bjJSdy9Va0lpV0pSVmVBTlYwOS9TSWQxbGVHakY3d2lXSzhnOFVR?=
 =?utf-8?B?UE5hKzE5VTA3bWJnSlBkK09xTmN6WHVWSFByN0UxUklWMW5sRW5IM284VHB5?=
 =?utf-8?B?Z1Q1a0pVOXgydjNEZkN3ck9UQjlNWUoySzdjV3hvZWI5MDdSTkhHZHdOT3Nv?=
 =?utf-8?B?QzFIOVZ1aW5hR1VPOFkyM2F0ZEdjUVprZXF1V3g0elFrU2RaRlpDcTIrMmhj?=
 =?utf-8?B?eXZjTVhGaGlFZjFLenlIK3RpSXZaTWFBT1ZvZVFEdUYwNHJLbDRMSnZPVm0x?=
 =?utf-8?B?MFc4SkU5eUxpQVc1eE5QRGI2OUdJaXNwSlFRQ21iS2VKYTkwNzlrSHh5MlRl?=
 =?utf-8?B?bzR6T2lJZTZ0OGt0OTVQRjBRcUFoZXlaanE3SDhUaWY2WndwY3BMZVFYdzRm?=
 =?utf-8?B?ZFYvaVpCbFFBMVA1VG11bjZZT1pBU2Nud0pJekhZdmZsUzRCU2QxTEpDVEZ1?=
 =?utf-8?B?M1kyVHNyb2Jpb2dlUGtiaktOVm1XY3JaUWdSZHpSandBWkcycW1ETDVhdERi?=
 =?utf-8?B?bzEzUzlZRkdQL1dCektocXoyWHpHbmRHZk5NOXkzc01CQ3JKaHV3ek0yWmdB?=
 =?utf-8?B?OFBlaVg4THhnUmx3blRmeWZNN1MyWG85T2thcjc3NFB4ZUZrOUJndHJWRUJj?=
 =?utf-8?B?SWpHUmxvWml5dStpQXdVdjVuSGlsd3loRGRWeWMyQjkrQ0pxV1JLNWVWbUNB?=
 =?utf-8?B?MHd0N09aS2dJaG45TFcxaG5YQys2OWZzdG8vTWhJUzdpZ1RNQWlLcjlPbjBS?=
 =?utf-8?B?S2RwU3lGaGFNbTdEZWg4K3U5UDVBcmVuUmExM0xxVGRnMVBnd1g5TllURUVM?=
 =?utf-8?B?L09xOHlYblRkclFXdEhjTEdxeGJ5SDhacFhSL21ZTmJXV3grbG5Xb25kWUh0?=
 =?utf-8?Q?TgPw77Br0KUP9Sk05M7UsbNDc?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28abf7f1-a616-46f5-0120-08dbe5d74393
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 12:34:51.7474
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w/nfkzNUgB7wgZMXwNy4Ac16Unb02r0be5bqQFWw2uAXMc5zLMGAoeXeQjqOe3/dArdc8IG9TH8dlEVBUWeHeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR04MB8803
Message-ID-Hash: BYZEI4YMKBK6S24Z43WNXGZNPWGQOUPQ
X-Message-ID-Hash: BYZEI4YMKBK6S24Z43WNXGZNPWGQOUPQ
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TX5REOBQ6XAEOOTBJWQOXFKGTNH52JVE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

SSd2ZSBqdXN0IHRyaWVkIFNTSCdpbmcgaW50byBhbiBYNDEwIHZpYSB0aGUgU0ZQIHBvcnRzIGFu
ZCB0aGF0IHdvcmtlZC4gTmV2ZXJ0aGVsZXNzLCBJJ2QgcHJlZmVyIHVzaW5nIHRoZSAxIEdicHMg
aW50ZXJmYWNlLg0KWW91IHdyb3RlIHlvdSBhcmUgdW5hYmxlIHRvIHVzZSB0aGUgSlRBRyBwb3J0
IHRvIGNvbm5lY3QgdG8gdGhlIGRldmljZS4gV2hhdCBkb2VzIHRoYXQgbWVhbj8gQ2FuIHlvdSBj
b25uZWN0IHRvIHRoZSBzZXJpYWwgcG9ydCBleHBvc2VkIGJ5IHRoaXMsIGJ1dCB5b3UgY2Fubm90
IGxvZ2luIHRvIHRoZSBlbWJlZGRlZCBMaW51eCBvciBhcmUgeW91IGNvbXBsZXRlbHkgdW5hYmxl
IHRvIGNvbm5lY3Q/IElmIHlvdSBjYW5ub3QgY29ubmVjdCB0byB0aGUgc2VyaWFsIGNvbnNvbGUg
dGhlbiByZW1vdmluZyB0aGUgcG93ZXIgc3VwcGx5IGZvciBzb21lIHRpbWUsIHJlY29ubmVjdGlu
ZyBhbmQgc3dpdGNoaW5nIHRoZSBYNDEwIG9uIGFnYWluIG1pZ2h0IGhlbHAsIHRvby4NCg0KSSBk
b24ndCBrbm93IHdoYXQgaXMgZ29pbmcgb24gd2l0aCB0aGlzIGRldmljZSwgYnV0IGlmIGl0J3Mg
cmVhbGx5IGEgYm9vdCBsb29wIGFuZCB5b3UgY2FuIGF0IGxlYXN0IGNvbm5lY3QgdG8gdGhlIEpU
QUcgd2hpbGUgYm9vdGluZyB1cCB5b3UgY291bGQgdHJ5IHRoaXM6DQpodHRwczovL2ZpbGVzLmV0
dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX3g0eHguaHRtbCN4NHh4X3Jlc2V0dGluZ19ib290X2Vu
dmlyb25tZW50DQoNCklmIHRoYXQgZG9lc24ndCBoZWxwIGJ1dCB5b3UgaGF2ZSB0aGUgSlRBRyBh
Y2Nlc3MsIHlvdSBzaG91bGQgdHJ5IHJlLWltYWdpbmcgdGhlIGRldmljZToNCmh0dHBzOi8vZmls
ZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfeDR4eC5odG1sI3g0eHhfYWNjZXNzaW5nX2Vt
bWNfdXNiDQoNClVubGVzcyB5b3UgaGF2ZSBhIGxvdCBvZiB3b3JrIG9uIHRoZSBkZXZpY2UgdGhh
dCBpc24ndCBzYXZlZCBhbnl3aGVyZSBlbHNlLCBJIHdvdWxkbid0IHNwZW5kIGFueSB0aW1lIG9u
IHJlc3RvcmluZyB0aGUgZmlsZSBzeXN0ZW0gYnV0IHJhdGhlciBmbGFzaCB0aGUgZGV2aWNlIGFn
YWluLg0KDQpBcyBhIGxhc3QgcmVzb3J0IGlmIHlvdSBjYW5ub3QgZ2V0IHRoZSBkZXZpY2UgYmFj
ayB1cCBhbmQgcnVubmluZywgcGxlYXNlIHJlYWNoIG91dCB0byBvdXIgc3VwcG9ydCB0ZWFtLg0K
DQovTWFydGluDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBNYXJjdXMgRC4g
TGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0KU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJl
ciAxNSwgMjAyMyAxMjoxNSBBTQ0KVG86IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQpTdWJq
ZWN0OiBbVVNSUC11c2Vyc10gUmU6IHg0MTAgc3R1Y2sgaW4gcmVib290DQoNCk9uIDE0LzExLzIw
MjMgMTc6NDAsIGptYWxveWFuQHVtYXNzLmVkdSB3cm90ZToNCj4NCj4gSSB3YXMgZXZlbnR1YWxs
eSBhYmxlIHRvIHJlc29sdmUgdGhlIOKAnFtGQUlMRURdIEZhaWxlZCB0byBzdGFydCBGaWxlDQo+
IFN5c3RlbSBDaGVjayBvbiBSb290IERldmljZS7igJ0gdXNpbmcgZnNjayB0b29scy4NCj4NCj4g
SSBzdGlsbCBhbSBub3QgYWJsZSB0byBzc2ggaW50byB0aGUgeDQxMCBob3dldmVyLiBUaGUgYWRk
cmVzc2VzIHRvIG5vdA0KPiBhdXRvbWF0aWNhbGx5IGNoYW5nZSB0byB0aGUgZGVmYXVsdCB2YWx1
ZXMoaS5lIHNmcDAgPSAxOTIuMTY4LjEwLjIpLA0KPiBhbmQgbWFudWFsbHkgY2hhbmdpbmcgdGhl
bSBkb2VzIG5vdCBhcHBlYXIgdG8gd29yayBlaXRoZXIuDQo+DQo+DQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vic2NyaWJlDQo+IHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBtYW5hZ2Vt
ZW50IGNvbnNvbGUgb2YgdGhlIFg0MTAgKGlmIGl0J3MgbGlrZSBvdGhlcnMgb2YgaXRzIHR5cGUp
IHVzZXMgREhDUCBieSBkZWZhdWx0LCBhbmQgeW91J2xsIGhhdmUgdG8gZmlndXJlIG91dCB3aGF0
DQogICBhZGRyZXNzIHRvIHVzZSBiYXNlZCBvbiB0aGF0LiAgSWYgaXQncyBsaWtlIG90aGVyIHNp
bWlsYXIgZGV2aWNlcyAoSSBkb24ndCBoYXZlIG9uZSBpbiBteSBjb2xsZWN0aW9uIHlldCksIHlv
dSBjYW5ub3QNCiAgIFNTSCBpbiB2aWEgdGhlIFNGUCBwb3J0cy0tdGhleSBhcmUgc3RyaWN0bHkg
Zm9yIGRhdGEgc3RyZWFtaW5nLCBhbmQgY2VydGFpbmx5IG5vdCBmb3IgbXVuZGFuZSB0YXNrcyBs
aWtlIFNTSCBtYW5hZ2VtZW50Lg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQ0KTmF0aW9uYWwgSW5zdHJ1bWVudHMgRHJlc2RlbiBHbWJIOyBH
ZXNjaMOkZnRzZsO8aHJlciAoTWFuYWdpbmcgRGlyZWN0b3JzKTogSm9obiBTdGFudG9uIE1jRWxy
b3ksIEFsYmVydCBFZHdhcmQgUGVyY2l2YWwgSUlJLCBLYXRobGVlbiBTcHVyY2s7IFNpdHogKFJl
Z2lzdGVyZWQgT2ZmaWNlKTogRHJlc2RlbjsgSFJCIChDb21tZXJjaWFsIFJlZ2lzdGVyIE5vLik6
IDIyMDgxOyBSZWdpc3RlcmdlcmljaHQgKFJlZ2lzdHJhdGlvbiBDb3VydCk6IERyZXNkZW4NCg0K
VGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBpbnRlbmRlZCBvbmx5IGZvciB0aGUg
cGVyc29uIHRvIHdob20gdGhpcyBlbWFpbCBpcyBhZGRyZXNzZWQgYW5kIG1heSBjb250YWluIGNv
bmZpZGVudGlhbCBhbmQvb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91IHJlY2VpdmVk
IHRoaXMgZW1haWwgaW4gZXJyb3IsIHBsZWFzZSBkbyBub3QgZGlzY2xvc2UgdGhlIGNvbnRlbnRz
IHRvIGFueW9uZSwgYnV0IG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJldHVybiBlbWFpbCBhbmQgZGVs
ZXRlIHRoaXMgZW1haWwgKGFuZCBhbnkgYXR0YWNobWVudHMpIGZyb20geW91ciBzeXN0ZW0uDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
