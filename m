Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEE34C497F
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 16:47:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3014B38511A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 10:47:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="kYsqMsgv";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0057.outbound.protection.office365.us [23.103.208.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 33EA23848AC
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 10:46:50 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Vv1fRzRzHZmYy1zVdsEvNNfi6VTGfbmqmOe1+ydHKTHBE/Urs4wcbkbax5CPwwqtS6VzdmOkSyeay+2oK0Ln6cucJuJnusXlpeLI5FuS45+6re6VJTmFz/UKsK/yvQG8bIld0xk/sJVuSaz4ESYSZrPPILW2Eog0QAwuF6DOehKcggwvU/tOVcwV/Z1+uwAc60IzaWxYlXFyJpbMrtdC9bDpU4ze+1pmj2lyx9g0GYQtW1QNUJ8DEBKnPpGJ5D/aBJ3BgshTbAuK6SjyBU5vyQ/TaHp+dd8FfdRvSJgXph2RoHLIe6F/mtz3Q7rTnl1oalVEQpDFOMZ1kQ1Zlqjy8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=afsJ4523aKGkiJkJHHmt6tmBiCnWbQncItJOpE095uM=;
 b=qJz0gqsFLLGoLaHiq2UQSFRgiIqjzvoaOPQnjhtS8shxogTNc9tYTGih5/P6w8bkBcWt9TsefK5K8OWqVa8e+6jAuwrr55GPEGgOUlulHFX8k5pXxWfF66pbroj+OtQRZrWh5Ev0neUKIPQHA3fLPcWzAOTLquieu6sOYYbRXzyIRYIFP7fYncSTYTtZHcojwkY27Vwb/RtVUsUDEjJQdVieKLpaaam3r9RmquzOz30+S3nLRJi6/iQoaFQGm2H2zV5ZbPH5ItSl5J2/AXSHDWkAt4o9MfYoKXTnc74ObtNo8ToxueZXEUULh0GOhsmuMfV6gw7N4U5pztCM+Us+4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=afsJ4523aKGkiJkJHHmt6tmBiCnWbQncItJOpE095uM=;
 b=kYsqMsgvu1lrJBAI9IxTOgJY0kIvAQ564JWTkmYz8edFqnjyrMtWYnkE1Gbhw1pu5KaEC2m3upTr0TkSNvJjY763uM8ri2Vu4raDlYIWQdjzCNndrvvYL8VoGe+wzFunCyq3Ua8so8Lhrf0dlGIU0Q26JEmvxue3HLyON+4b1GkAFB+CiOaMNEuYwJTmsJMBYNircu4QniL6n9RAywpamSkRens9+SWY/Cf2pgxJOakuTpgAXrRs2l9qBlovTQF1zEFrirgziEQmlgbKLn83s/rxP1htjoP42HXfX65apBL4B94yNqKGcNqSrnaSe9LKMuJ33MIAaKxZXZZWZQjd3g==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1634.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:188::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Fri, 25 Feb
 2022 15:46:40 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 15:46:40 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Brian Padalino
	<bpadalino@gmail.com>
Thread-Topic: [USRP-users] Re: Question about external refclk into N320
Thread-Index: AdgqWWtHuntLxfN+TuOeyRU2r3pkEwAAgrcAAAAOTgAAAHHZAAAALX7A
Date: Fri, 25 Feb 2022 15:46:40 +0000
Message-ID: 
 <PH1P110MB166508EFAA2AD7D8F5AD8503B73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
References: 
 <PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
 <945ac0f4-1724-3472-84cd-1be23fb5c50f@gmail.com>
 <CAEXYVK5y2S3WRhFwVN2pqRcL8usB1iQii9NiWU4SyO-O8xFhfg@mail.gmail.com>
 <233132a2-d66e-c023-f1cd-41891e01df23@gmail.com>
In-Reply-To: <233132a2-d66e-c023-f1cd-41891e01df23@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f035e4bf-9d75-4769-052c-08d9f876041d
x-ms-traffictypediagnostic: PH1P110MB1634:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB16342448CBB5BED286896046B73E9@PH1P110MB1634.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ml/w7/90SnNolNODUIMzT2reujxPyavODPyue3AU5Kfm3xnvZYN8OwxtahbHZieVHqfrUBczhaKkggUmGznGPX0f4lvp4nYM0ParuoZVc9XsHDGKf+TDbwAszU85D1kq9OlM6fcXb7EJTPPFeyMJIb/88bQx9GsbK8jTWrXIVC0Si5N7rc/0NjnTKdfcjj/VlESQXd7vFNE7blt4jBguXzvcANDW8rIb4N92t7As1PHWk++wbLph8G/5Gwcc1vdE6627gpcd6w0Gr8yGedHAw9TuaLv3rWDOo2TTufrs0fzLPLGXmfoj+DLzq+PnAV7u8z2IB5dGeYysfK3NsTwYjwKhN3Sv+mXC9gqcvyOTxvxnHU26TlP9XRLuahWQZqEC8Q2xn8FgzNTjtIfsEbG91kxLhqCKKMdX905opy43jyGHOgOO1K4Rw35SdU7CKbgD6S5Rc7gtoMpwg7TlqyhawTxidqDqYM/Lu1kZAFNNV6i4SrXeQQUVLX5m+jnn+FB3OOyQtPb3PzQK2+MEZjNc1u0X2Fa1U10h/b1K0ibY4CD4FTa/Ecn+YIJqzN6RUGtVLjhfxVMAB3ImneXuYhhqLnYxzL3uscidEIuFYdPAmpD1SAspyVAKB8YUzC1c9/MkOOloDZ5QKqPjxXpyY53V8w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(366004)(136003)(376002)(396003)(39830400003)(4326008)(38100700002)(2906002)(76116006)(66446008)(66476007)(508600001)(66556008)(66946007)(86362001)(8676002)(122000001)(38070700005)(55016003)(8936002)(316002)(64756008)(71200400001)(83380400001)(9686003)(558084003)(7696005)(52536014)(6506007)(186003)(33656002)(5660300002)(110136005)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 2A8tXw78KGQ6slGvso0cl7AeyiEZpRy5AEtkW6lrfiRpl4038H7WBqy4oSjBdz3M4TgdboXdwqnLWnfhRrxW4C22QCoO1aDgv93i29LtXkhwB2IDL6M3wv9LXqDHLadKEPsfuAAAjn+eDoVS80HGlZvrGNwT5WvOLcJWflBay5GxBL8/bYToCm/+swaEkwR4tsTrLsU0LQB6fSfmOz9eLA==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f035e4bf-9d75-4769-052c-08d9f876041d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 15:46:40.7694
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1634
Message-ID-Hash: 62T7K5L5NBVZ3GHNP6MUKOCPGWZ4D7IU
X-Message-ID-Hash: 62T7K5L5NBVZ3GHNP6MUKOCPGWZ4D7IU
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about external refclk into N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OB7J2DEJUGMZG5AOZG4YDDDBRWTI63OZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7046918511856073521=="

--===============7046918511856073521==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB166508EFAA2AD7D8F5AD8503B73E9PH1P110MB1665NAMP_"

--_000_PH1P110MB166508EFAA2AD7D8F5AD8503B73E9PH1P110MB1665NAMP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGFsbCDigJMgSSB0aGluayB0aGF0IGFsbCBtYWtlcyBzZW5zZS4gIFNvIHRoZSBpbnB1
dCBjbG9jayBpcyBBQyBjb3VwbGVkLCB3aGljaCBzdHJpcHMgdGhlIERDIGNvbXBvbmVudCwgdGhl
biB0aGUgbGV2ZWwgaXMgY2xhbXBlZCBieSB0aGUgZGlvZGVzLiBUaHVzIHRoZSBUSSBjaGlwIGFs
d2F5cyBnZXRzIGEgY2xpcHBlZCBzaW5ld2F2ZSByZWdhcmRsZXNzIG9mIHdoYXQgdGhlIGlucHV0
IHNpZ25hbCBsb29rZWQgbGlrZS4uDQo=

--_000_PH1P110MB166508EFAA2AD7D8F5AD8503B73E9PH1P110MB1665NAMP_
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
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvUGxhaW5UZXh0LCBsaS5Nc29QbGFp
blRleHQsIGRpdi5Nc29QbGFpblRleHQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1z
dHlsZS1saW5rOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1hcmdpbjowaW47DQoJZm9udC1zaXplOjEx
LjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpzcGFuLkVtYWlsU3R5
bGUxOQ0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIs
c2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCnNwYW4uUGxhaW5UZXh0Q2hhcg0KCXtt
c28tc3R5bGUtbmFtZToiUGxhaW4gVGV4dCBDaGFyIjsNCgltc28tc3R5bGUtcHJpb3JpdHk6OTk7
DQoJbXNvLXN0eWxlLWxpbms6IlBsYWluIFRleHQiOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixz
YW5zLXNlcmlmO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5
Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4g
MTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rp
b24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDld
Pjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0K
PC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91
dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpz
aGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVT
IiBsaW5rPSJibHVlIiB2bGluaz0icHVycGxlIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQi
Pg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29QbGFpblRleHQiPlRo
YW5rcyBhbGwg4oCTIEkgdGhpbmsgdGhhdCBhbGwgbWFrZXMgc2Vuc2UuJm5ic3A7IFNvIHRoZSBp
bnB1dCBjbG9jayBpcyBBQyBjb3VwbGVkLCB3aGljaCBzdHJpcHMgdGhlIERDIGNvbXBvbmVudCwg
dGhlbiB0aGUgbGV2ZWwgaXMgY2xhbXBlZCBieSB0aGUgZGlvZGVzLiBUaHVzIHRoZSBUSSBjaGlw
IGFsd2F5cyBnZXRzIGEgY2xpcHBlZCBzaW5ld2F2ZSByZWdhcmRsZXNzIG9mIHdoYXQgdGhlIGlu
cHV0IHNpZ25hbA0KIGxvb2tlZCBsaWtlLi48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_PH1P110MB166508EFAA2AD7D8F5AD8503B73E9PH1P110MB1665NAMP_--

--===============7046918511856073521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7046918511856073521==--
