Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D7527D530
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 19:55:42 +0200 (CEST)
Received: from [::1] (port=54982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNJqm-0003TJ-Ay; Tue, 29 Sep 2020 13:55:40 -0400
Received: from mail-dm6nam12on2081.outbound.protection.outlook.com
 ([40.107.243.81]:7264 helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kNJqi-0003Lh-7u
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 13:55:36 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ew5K0oVzGgxOadk+MESeRj52kHBPPkfiH21ogKlXGkbzExYO51CVwXE/IJLFDizmNt2CuOImCWnRH8Gpvgk0qKGGv/BJa2KMbk1ZOr2G6Vrw1HYojXVdtKH8lSf9D4ysEinMMMFtMNhTJxn8uMaS/EMP+TPd94RJMtadxq9JDtkcQxb9cNXtlXGW/fTGdbGv/Qn+SCokcnRK0oOBtiJfMXh7sxp7vGOTevDla5Xjrg7D9ATuB4QO7dkkydgjOcCqvhM7ggYFW4sIcTvkDF5nqAFJ4i+yaB1qYVMQbgsDeNYY9Nd+SN2Hz66xdzqXgNCLugUVK1/T1LtIxe70KpOpVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vSM/C3zDRsavWCwsJb8ug17WEQfQy4rhECW5un+voYU=;
 b=WrsvqVEgBSoHr9+tOlKlz5CJR0KdZhmlAH2EeJePVPZFsU34o71anbq7TkuYvyergdkb9YdzJ3kMYES8KwuwXWgReL3gi6CdUOcl6YGUgnXw83RtO5VmBSBZOVtiVFgpcip9vIBL0zKp3Yoa/FStGYJHuZDrArB3QIUzQj/NvjCaQrPqygygt3sbeo7GkP0nvm5Y7lvF2Ap889krqKa4OMFe2lNhPdtxqZ4jyIIntg9tWm3FwVfoAHCYD5bazRoK7A0/o2mSohxesK4+NUmn7HuPvGZrv9hu/KFv/eBtek4GNo+p0cNmQXRQNBcwxBUVwJ9M9Z0w0yvTgs2/337tog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vSM/C3zDRsavWCwsJb8ug17WEQfQy4rhECW5un+voYU=;
 b=UsReknPUGMBmg2uz7IKLpNYLgcPMtqIs+k04sFkkcfXl8xgL/zWPjZy0PZ7cgOfNWd3tB5qO7O4nuqN6h3Gl4S9u2fqwpXurJ4zCtAodob6ZTokgkFseEaxfOHDLkx2Wwc/a4Ly0QaeDfCrgjlCSgoTtBQMRYFbIDivvj5tOsLw=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM6PR12MB3164.namprd12.prod.outlook.com (2603:10b6:5:188::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Tue, 29 Sep
 2020 17:54:53 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1%4]) with mapi id 15.20.3412.029; Tue, 29 Sep 2020
 17:54:53 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] TWINRX Gain
Thread-Index: AQHWlodZUI4MTk+k5EORf24LkVKWzql/5TUAgAAAQIk=
Date: Tue, 29 Sep 2020 17:54:53 +0000
Message-ID: <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
In-Reply-To: <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da377d87-f847-40d9-4ff9-08d864a0c51c
x-ms-traffictypediagnostic: DM6PR12MB3164:
x-microsoft-antispam-prvs: <DM6PR12MB31648278662FEFC5ED89B1EF8C320@DM6PR12MB3164.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GJcD43Uyu5jQrOC2Q6s1n0sD07ktKRCQft6Auz1FJ8Ze5lAXpXfD5kP258jDC2pTBqpaH43FZu6n8uuE4s9qxwGOkmJcP38rqNJ7B3iob1ooJlN7zuubLq/HPgOnp5+LZrnWbOadljz0V0M5MYtiihTCCyOrYrMnEepsCB6GTw55sgrNbKnHnvtQyu2sjvKfL+iPvxTiyHOHY60Anpb3L6YINhQgXTQKZbJq5tXda+cyWXT0uRjcvVdK6rRmf6trA42JwnT7J0IM/w9I6t99MV5LNem7KxnE5bUmz/f/QNaWOQfaVp7vduFaU22cpED+KCeYkoBgyN1/SiWK5xB6obrBQV194Js3vY2pVy6QBPygql9IIjXXPWhreqYMz7KQoyT9/7M8RR01N60AjELDyMhxNjDOOvCxWjPQYA4/x9bFnfUamCfrNGnw7S2wchRRPLhPA26A8Eka6GiXmgIa+w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(136003)(366004)(396003)(39830400003)(5660300002)(76116006)(66476007)(66946007)(71200400001)(86362001)(52536014)(33656002)(83380400001)(66556008)(64756008)(66446008)(4326008)(186003)(6916009)(478600001)(44832011)(316002)(2906002)(53546011)(6506007)(19627405001)(8936002)(55016002)(7696005)(966005)(9686003)(26005)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: g51geEtekJ56sE/RDA3q/VbtAwntV9yLsGDodKeAdnPDHjnfQPUZPGw8TFpVir5WXvPhwxpP1Yrt2NhCvIL4lmhidD3nkX7cTDwJ70KOOQ3t55pZ/90eWPcOHcMY0BG236WeOvJt9B9NWirlRn+C8JVcDLExuuNTEO8c/EuI377qVixli8r1IX7F4RICMKotL9GOjpBlZC/pm0pieBoXRpc9dRaO51UQyEvebBOTFfgvJzJ0StDyqPm2lhqCr4vOUcT7ZiaUINhMts5pRmJmHlbxlwW0Nnitk2w1v8tzhuAOaAgezEsZ2WvYwhQvGnq+t1HnUcvzvrkFjDB9UxlnJnYVczmAhUDA7gaLHW1D0fxZvckw5BOi5gqLkGEZ4Vq5OcRORmC/BDy4B1jkpMLSLsDb9Vgg7yF9rnhFfksodfyPVfdCQEjm4UhZ8hMyaBtfSlk6vv0danPP9KScdcKU5tqRDMs0jlLisyekwv/9cOwJ2YgKGpU0GEzzob0mLcyoqKBfYLOHQtdn/YpflPSGXtCz7RCcpT6paKOIKZdyltII17piwM3W1nWs+9JfgEu3khlWBu94iPtivqryS37qZ4kAmmcUUH1jv3nh0A1JKHpTMyO3t4MU96mkhza+nqf0QRd2NGGEyPE09fhmLKMDGw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da377d87-f847-40d9-4ff9-08d864a0c51c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2020 17:54:53.6217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jsycoFYg+w9BbXwfzTeQE92u6dYep020fVIJSl/WNKXJuB8vM9BKItphG5zCLiJujEOyLelmNGS1rrBiAzt1E6GEXPP+lQyfmn7l7SKh7Ah/4QYHAQA0IM/3MS6HxyTw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3164
Subject: Re: [USRP-users] TWINRX Gain
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mark Koenig via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Content-Type: multipart/mixed; boundary="===============0857350282128400405=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0857350282128400405==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB3067482AEC0E9D141AC2FE2C8C320DM6PR12MB3067namp_"

--_000_DM6PR12MB3067482AEC0E9D141AC2FE2C8C320DM6PR12MB3067namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFyY3VzLA0KDQpUaGFuayB5b3UgZm9yIHRoZSBxdWljayByZXNwb25zZS4gIEluIG15IGFwcGxp
Y2F0aW9uIEkgYW0gdHJ5aW5nIHRvIHJlbW92ZSB0aGUgdHJ1ZSBnYWluIEkgYW0gYXBwbHlpbmcg
dG8gdGhlIHNpZ25hbC4gIFNvIHdoZW4geW91IHJlZmVyIHRvIGNvbnRyb2wgcmFuZ2UsIG1vdmlu
ZyBmcm9tIDAgdG8gMTAsIG1heSByZXN1bHQgaW4gb25seSA1ZEIgb2YgZ2Fpbiwgb3Igc29tZXRo
aW5nIHRvIHRoYXQgZWZmZWN0LCBjb3JyZWN0PyAgV2hlbiB5b3UgaGF2ZSB0aGF0IGluZm9ybWF0
aW9uIG9mIHRoZSB0cnVlIGdhaW4gYXBwbGllZCwgY2FuIHlvdSBwYXNzIGl0IGFsb25nPw0KDQpU
aGFuayB5b3UgdmVyeSBtdWNoLg0KDQpNYXJrDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KRnJvbTogTWFyY3VzIEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0KU2Vu
dDogVHVlc2RheSwgU2VwdGVtYmVyIDI5LCAyMDIwIDE6NTEgUE0NClRvOiBNYXJrIEtvZW5pZyA8
bWFyay5rb2VuaWdAaXViZWx0dGVjaG5vbG9naWVzLmNvbT4NCkNjOiB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbSA8VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQpTdWJqZWN0OiBSZTogW1VT
UlAtdXNlcnNdIFRXSU5SWCBHYWluDQoNCkl04oCZcyB0aGUgZ2FpbiBjb250cm9sIHJhbmdlLiBO
b3QgdGhlIGFic29sdXRlIGdhaW4uIEkgZG9u4oCZdCBrbm93IG9mIHRoZSB0b3Agb2YgbXkgaGVh
ZCBob3cgbXVjaCBvZiB0aGF0IHJhbmdlIGlzIGdhaW4gYW5kIGhvdyBtdWNoIGlzIGF0dGVudWF0
aW9uLg0KDQoNCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQpPbiBTZXAgMjksIDIwMjAsIGF0IDE6
NDMgUE0sIE1hcmsgS29lbmlnIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6DQoNCu+7vw0KVGhlIFR3aW5SeCBkYXVnaHRlcmNhcmQgaWRlbnRpZmllcyBh
cyBoYXZpbmcgMC05M2RCIGdhaW4gcmFuZ2UuICBJcyB0aGlzIHRydWU/ICBJZiBJIGRpYWwgaW4g
OTBkQiBhbSBJIHRydWx5IGdldHRpbmcgOTBkQiBvZiBnYWluIGFuZCBteSBpbmNvbWluZyBzaWdu
YWwgaXMgYW1wbGlmaWVkIHRoYXQgbXVjaCBvciBpcyB0aGVyZSBzb21lIHNvcnQgb2Ygb2Zmc2V0
IGFuZCB0aGUgZ2FpbiByYW5nZSBpcyBzb21ldGhpbmcgZGlmZmVyZW50PyAgSSBiZWxpZXZlIHRo
ZSBVQlgtMTYwIG9mZmVycyAwLTMxLjVkQi4NCg0KVGhhbmtzDQoNCk1hcmsNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdA0KVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQ0K

--_000_DM6PR12MB3067482AEC0E9D141AC2FE2C8C320DM6PR12MB3067namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBD
YWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEycHQ7IGNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij4NCk1hcmN1cyw8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFt
aWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEy
cHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9u
dC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6
ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KVGhhbmsgeW91IGZvciB0aGUgcXVpY2sg
cmVzcG9uc2UuJm5ic3A7IEluIG15IGFwcGxpY2F0aW9uIEkgYW0gdHJ5aW5nIHRvIHJlbW92ZSB0
aGUgdHJ1ZSBnYWluIEkgYW0gYXBwbHlpbmcgdG8gdGhlIHNpZ25hbC4mbmJzcDsgU28gd2hlbiB5
b3UgcmVmZXIgdG8gY29udHJvbCByYW5nZSwgbW92aW5nIGZyb20gMCB0byAxMCwgbWF5IHJlc3Vs
dCBpbiBvbmx5IDVkQiBvZiBnYWluLCBvciBzb21ldGhpbmcgdG8gdGhhdCBlZmZlY3QsIGNvcnJl
Y3Q/Jm5ic3A7IFdoZW4geW91IGhhdmUNCiB0aGF0IGluZm9ybWF0aW9uIG9mIHRoZSB0cnVlIGdh
aW4gYXBwbGllZCwgY2FuIHlvdSBwYXNzIGl0IGFsb25nPzwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9u
dC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6
ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxl
PSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9u
dC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpUaGFuayB5b3UgdmVyeSBtdWNo
LjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBIZWx2ZXRp
Y2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0K
PGJyPg0KPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWwsIEhl
bHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDAp
OyI+DQpNYXJrPC9kaXY+DQo8ZGl2IGlkPSJhcHBlbmRvbnNlbmQiPjwvZGl2Pg0KPGhyIHN0eWxl
PSJkaXNwbGF5OmlubGluZS1ibG9jazt3aWR0aDo5OCUiIHRhYmluZGV4PSItMSI+DQo8ZGl2IGlk
PSJkaXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJp
ZiIgc3R5bGU9ImZvbnQtc2l6ZToxMXB0IiBjb2xvcj0iIzAwMDAwMCI+PGI+RnJvbTo8L2I+IE1h
cmN1cyBEIExlZWNoICZsdDtwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbSZndDs8YnI+DQo8Yj5TZW50
OjwvYj4gVHVlc2RheSwgU2VwdGVtYmVyIDI5LCAyMDIwIDE6NTEgUE08YnI+DQo8Yj5Ubzo8L2I+
IE1hcmsgS29lbmlnICZsdDttYXJrLmtvZW5pZ0BpdWJlbHR0ZWNobm9sb2dpZXMuY29tJmd0Ozxi
cj4NCjxiPkNjOjwvYj4gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gJmx0O1VTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNd
IFRXSU5SWCBHYWluPC9mb250Pg0KPGRpdj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGRpdiBkaXI9
ImF1dG8iPkl04oCZcyB0aGUgZ2FpbiBjb250cm9sIHJhbmdlLiBOb3QgdGhlIGFic29sdXRlIGdh
aW4uIEkgZG9u4oCZdCBrbm93IG9mIHRoZSB0b3Agb2YgbXkgaGVhZCBob3cgbXVjaCBvZiB0aGF0
IHJhbmdlIGlzIGdhaW4gYW5kIGhvdyBtdWNoIGlzIGF0dGVudWF0aW9uLiZuYnNwOw0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPGJyPg0KPGRpdiBkaXI9Imx0ciI+U2VudCBmcm9tIG15
IGlQaG9uZTwvZGl2Pg0KPGRpdiBkaXI9Imx0ciI+PGJyPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0
ZSI+T24gU2VwIDI5LCAyMDIwLCBhdCAxOjQzIFBNLCBNYXJrIEtvZW5pZyB2aWEgVVNSUC11c2Vy
cyAmbHQ7dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20mZ3Q7IHdyb3RlOjxicj4NCjxicj4NCjwv
YmxvY2txdW90ZT4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+DQo8ZGl2IGRpcj0i
bHRyIj7vu78NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNh
LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NClRoZSBUd2lu
UnggZGF1Z2h0ZXJjYXJkIGlkZW50aWZpZXMgYXMgaGF2aW5nIDAtOTNkQiBnYWluIHJhbmdlLiZu
YnNwOyBJcyB0aGlzIHRydWU/Jm5ic3A7IElmIEkgZGlhbCBpbiA5MGRCIGFtIEkgdHJ1bHkgZ2V0
dGluZyA5MGRCIG9mIGdhaW4gYW5kIG15IGluY29taW5nIHNpZ25hbCBpcyBhbXBsaWZpZWQgdGhh
dCBtdWNoIG9yIGlzIHRoZXJlIHNvbWUgc29ydCBvZiBvZmZzZXQgYW5kIHRoZSBnYWluIHJhbmdl
IGlzIHNvbWV0aGluZyBkaWZmZXJlbnQ/Jm5ic3A7IEkgYmVsaWV2ZQ0KIHRoZSBVQlgtMTYwIG9m
ZmVycyAwLTMxLjVkQi48L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJp
YWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDAp
Ij4NCjxicj4NCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaSxBcmlhbCxI
ZWx2ZXRpY2Esc2Fucy1zZXJpZjsgZm9udC1zaXplOjEycHQ7IGNvbG9yOnJnYigwLDAsMCkiPg0K
VGhhbmtzPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpLEFyaWFsLEhlbHZl
dGljYSxzYW5zLXNlcmlmOyBmb250LXNpemU6MTJwdDsgY29sb3I6cmdiKDAsMCwwKSI+DQo8YnI+
DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNh
LHNhbnMtc2VyaWY7IGZvbnQtc2l6ZToxMnB0OyBjb2xvcjpyZ2IoMCwwLDApIj4NCk1hcms8L2Rp
dj4NCjxzcGFuPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
PC9zcGFuPjxicj4NCjxzcGFuPlVTUlAtdXNlcnMgbWFpbGluZyBsaXN0PC9zcGFuPjxicj4NCjxz
cGFuPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9zcGFuPjxicj4NCjxzcGFuPmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bTwvc3Bhbj48YnI+DQo8L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jv
ZHk+DQo8L2h0bWw+DQo=

--_000_DM6PR12MB3067482AEC0E9D141AC2FE2C8C320DM6PR12MB3067namp_--


--===============0857350282128400405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0857350282128400405==--

