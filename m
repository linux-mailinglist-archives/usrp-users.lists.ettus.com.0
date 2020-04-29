Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 395E41BD30B
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2020 05:44:39 +0200 (CEST)
Received: from [::1] (port=59848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTdeF-0007It-5H; Tue, 28 Apr 2020 23:44:35 -0400
Received: from mail-eopbgr1290110.outbound.protection.outlook.com
 ([40.107.129.110]:29728 helo=KOR01-SL2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ksshin@postech.ac.kr>)
 id 1jTdeA-00072R-9h
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 23:44:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EIBk64kP0Ge1zIs8To8b8ESLbp42htf6Ec4iKw/VcJpQrUNdCpYKTYdOXQnK+Q95CKm+oALso5wcbRxVGMYZ8wYRRsLyXH+O6ptR2TidufUqnYXpydbJRBSSMute7LDd/ByAZ01eM28JtMxYz+gT0GBcSlWDNMowdrC6HAeInxpk8ybm8HzFx+T31iPKmL7RMoF2Zs5bZ2Tw3zV16EdFs3zy+Debl5QCJtOFFXuIIhrKnMeLffFJNdnI+pcuvuRx+AQJai27n2UXbz+Sva7OTiUOwOCDV+JbcgRPdk1YORculOrC2h5WwDgwvDVXxw9bjKQ5d5fYZwtOtBCZb1fxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRDbx6LENb9tHpbfxsmllbGirjrf+tG2wbHU0yakJmg=;
 b=GLFKCkcmf/SvbUFonxaz+AbPP2jZ3WRO6aMJ0alNs0U2NQf2j2FCRGYBiFwFKIBIaCC4M8PI1Lkopant2lAeAsmVGTH26OyTGKOzuZJTxOnUeId6GYVH/syKmBV6qFjHcdHYFD6nKF9fdA5UasUSL1H6/qFoQTzzCjAPK7oFYzPkFYwIyGjLqSZOUJurANZ/3+8V+Sz+fv9V/vNeiI6jLRa2SaKWaNRdKSn1iYxj99mpyiPuRU9oDhS0LYiDK30yHtTHs6FBAoEvQnpDjc6Yl1m5A3ljEVqFdYkZACKxaBJyrrBsWqfnhhDYuVN9u4JQ2GLfRyTT05pUwoYmiblQ9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRDbx6LENb9tHpbfxsmllbGirjrf+tG2wbHU0yakJmg=;
 b=rtePpm6cGuMdHmU8MmbcvsJGzu0J1qpVdrtBqg6S9BpMcuW92rD4k4IgVEDZg2uOhYcQUKmaXhWqZk/fTJME+/AUyouzSWr/ANEXVFrsAp238r5cvq/bfvevV/guO2YXDr5Z4PIFiF1egrxK4LfNSTuW2epxIX0R3VwfGb9e5F8=
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM (10.174.46.149) by
 SL2P216MB0284.KORP216.PROD.OUTLOOK.COM (10.174.121.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Wed, 29 Apr 2020 03:43:46 +0000
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::ecce:e6d0:76c9:759]) by SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::ecce:e6d0:76c9:759%3]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 03:43:46 +0000
To: guowang qiu <qiu.guowang007@gmail.com>
Thread-Topic: [USRP-users] 10.23Msps Sample Rate
Thread-Index: AQHWHMUfOiq3aLoG1kWnz5M4S8rVh6iN8TXcgADmjoCAAIigfw==
Date: Wed, 29 Apr 2020 03:43:46 +0000
Message-ID: <SL2P216MB0331C2A04A5CCC61763D6DDE93AD0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
References: <CACjmV_mkuEX=JjGakNemNB0CSxZjWwrSCQvLWjQetXRHLGUs8A@mail.gmail.com>
 <SL2P216MB03313AE03A88DF8640648FA293AC0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>,
 <CACjmV_nhqZWKuYiHVHwc+TnBLUcJBOUvuWYv=ZadJRCEmFAo6w@mail.gmail.com>
In-Reply-To: <CACjmV_nhqZWKuYiHVHwc+TnBLUcJBOUvuWYv=ZadJRCEmFAo6w@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=postech.ac.kr;
x-originating-ip: [119.202.91.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2faae0af-0f3c-44f0-c69b-08d7ebef8569
x-ms-traffictypediagnostic: SL2P216MB0284:
x-microsoft-antispam-prvs: <SL2P216MB028420330205269FDA32539093AD0@SL2P216MB0284.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03883BD916
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SL2P216MB0331.KORP216.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39850400004)(136003)(346002)(376002)(9686003)(52536014)(55016002)(33656002)(6506007)(6916009)(8676002)(786003)(316002)(2906002)(478600001)(8936002)(966005)(4326008)(26005)(76116006)(86362001)(66446008)(71200400001)(19627405001)(5660300002)(66946007)(66556008)(66476007)(64756008)(7696005)(186003)(8956003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eUJZevjmouI04Mjlk2WTzjoxT7hRbmeXtvor/ZODslBK/xpNN8SzPImWTxozrW4sDAhIoAc7HGm1dV5Cebpx/aMpuCNlYwjwB5h2ibg7a6ZiRVF40YmmynCA0EcdPlg8ZBkZ0DOitifjp/LcYAtxc4KSUEepTv8mJ6tAAHXmpKCtrqn2wGOpqjqXfhAKMFrN3CrwVetrgIPe1vxllQHrtmKzlZePgZFV1pEbElXtFQvjW3iAu5xcet5SRu78DS9okiG1pLuOAgu4e+QFBcCtlvFPXC0GfL0kivA83hKG2amh9hkz8MW5TUZzv6GAZoeOc0z3MDq9lbcM/Q24lNCbe/5Pn3771Z0k/eWoTe9eKEmoc/20eyidncGnPDdeIgdoJXYalqO/ZxlBjefkfwng+UTQXbr50W8nLLwqmjbhMyvrOKfnVRxYLbEu0Xjfm3QzrQeHJk8lqB4Iul7I//d3TRwnlzhNLwqRV8H1QbJQY5TCeQPO3sAeKF20q1cIhmKlFgZ1M7ZHw0wkTVqgOySQE+8j721yLmA6fM3OkBU0kQ10Jbwp6Tk4yFyFMC+YQq0x
x-ms-exchange-antispam-messagedata: sKgO1OaR+z459Wb4rGpxB6Fwae0q5X4+SQ3R6L820+BeC4kKRLbQlt7bgJGqRS5RmM/Nb7Erlwcaawdj7kP+QiJ/m9wpCeWxn7hhQxVvSyYFgzDV/PvZXon/ZBm7uCavIFjoUVPfReGjLdCYPiM8O1Y4ivW+N0z+bvJ3S8fCF/lo8whueS9xYZhqrYY2OqPG5vsxR/o5SO3MDw24Y3jBl2h+8jlIhXQY3b6tUTlSaIZpmmOYPJ0wjqtP9HEi0WI+eAXK6zpzVCSH2WJgw7MHUDExUfLUah74LjJyVmm2KbcfgX+fVb6c//w+TjsoPkOv77nzgc93cajS0dgSVrqycx11dnfkmIgYPQrGsAAYnOqFqpEViMZv0kio+FAoi+Dpydlm5+gsFe/mxdPFeDKbLNCMAVlxOeSqClmFLJScs2xpICztvuUW4wn9xQwBJNrCfxBJ7kE0sfFOFQXE2AN56RppulKaiaKnzWL/OMe+R2gC0HYktkoOffdtrTwq+s6qn3RnMe/vj1ImN47zA0+JbK4fUQR9ik7Xho+zyYd/fn18yyG6AWv/NN3E05a5F7RCVEfsWYuwhms3teeZngM2e1i7PP0WxdOeqN0uwZrT66H/BSY+bQR5e7DMNqG8xF91WKv/x15DjPuX3CwcB6F3XSSucGNNj4c6nHH/PTuDSWLauSBe2sSe3jL/K0hqcoTCxc+WroyOxJrNIioLRdZ5Zqwwn8quP9debnbAlo04ReJenYPC+1NCd14kpTvG4oMR6JO2VfQ4cgTPPUJLEUHStvSeVoRS5NYUfUMIEv71w5E=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-Network-Message-Id: 2faae0af-0f3c-44f0-c69b-08d7ebef8569
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 03:43:46.3717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kpP2yW+HP+cT4TkQ5qPBCZMtAultm0ab97pvUC1U6rHFkft+upUXUdJQVdfSt4JtIXtXv64JwTBra62+JjsGpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB0284
Subject: Re: [USRP-users] 10.23Msps Sample Rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Kyeong Su Shin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kyeong Su Shin <ksshin@postech.ac.kr>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0892043593396861894=="
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

--===============0892043593396861894==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB0331C2A04A5CCC61763D6DDE93AD0SL2P216MB0331KORP_"

--_000_SL2P216MB0331C2A04A5CCC61763D6DDE93AD0SL2P216MB0331KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gRGFtb24sDQoNClRoYXQgZG9lcyBub3QgbWVhbiB0aGF0IHlvdSBoYXZlIHRvIHVzZSBh
IHBoeXNpY2FsIDEwLjIzIE1IeiBjbG9jay4gQSBnb29kIGRpZ2l0YWwgcmVzYW1wbGVyIHNob3Vs
ZCBhbGxvdyB0aGUgZGV2aWNlIHRvIHRyYW5zbWl0IGVzc2VudGlhbGx5IHRoZSBzYW1lIHNpZ25h
bC4gSW1wbGVtZW50aW5nIGEgZ29vZCByZXNhbXBsZXIgY291bGQgYmUgY2hhbGxlbmdpbmcgKGEg
cmF0aW9uYWwtcmVzYW1wbGVyIG1heSB0YWtlIHRvbyBtdWNoIHRhcHMgdG8gaW1wbGVtZW50KSwg
YnV0IHRoZXJlIGFyZSBzdGlsbCBzb21lIGZlYXNpYmxlIGRlc2lnbnMgKGVzcGVjaWFsbHkgaWYg
aXQgZG9lcyBub3QgbmVlZCB0byBwcm9jZXNzIHRoZSBkYXRhIGluIHJlYWwtdGltZSwgYnkgYW55
IGNoYW5jZSwgb3IgaWYgeW91IGFyZSBva2F5IHdpdGggd3JpdGluZyBIREwgY29kZXMpLg0KDQpJ
biBmYWN0LCBVU1JQcyBhbHJlYWR5IGRvIHRoaXMuIFRoZWlyIFJ4IGNoYWlucyBzYW1wbGUgYXQg
YSBmYXN0ZXIgcmF0ZSwgYW5kIHRoZW4gZGVjaW1hdGUgdGhlIHNhbXBsZWQgZGF0YSB0byB0aGUg
dGFyZ2V0IHNhbXBsaW5nIHJhdGVzLiBUaGVpciBUeCBjaGFpbnMgZG8gdGhlIG9wcG9zaXRlLiBX
aGVuIHlvdSBhc2sgVVNSUHMgdG8gc2FtcGxlIGF0LCBzYXksIDEwIE1TL3MsIHRoZWlyIEFEQ3Mg
YXJlIG5vdCBzYW1wbGluZyBhdCAxMCBNUy9zOiB0aGV5IHNhbXBsZSBhdCAyMDAgTVMvcywgdGhl
biBwcm92aWRlIHlvdSByZXNhbXBsZWQgdmVyc2lvbiBvZiB0aGUgZGF0YSBhdCAxMCBNUy9zLiBJ
dCdzIGp1c3QgdGhhdCB0aGUgZGVmYXVsdCByZXNhbXBsZXJzIGluY2x1ZGVkIGluIHRoZWlyIEZQ
R0FzIGhhdmUgbGltaXRlZCBjYXBhYmlsaXRpZXMsIHNvIHRoZXkgY2Fubm90IGNvdmVyIHRoZSBz
YW1wbGluZyByYXRlcyB0aGF0IHlvdSBhcmUgbG9va2luZyBmb3IuDQoNCkFsc28sIEkgZG8gbm90
IGtub3cgd2hhdCBhcHBsaWNhdGlvbnMgeW91IGFyZSB3b3JraW5nIG9uLCBidXQgaWYgeW91IGFy
ZSB3b3JraW5nIG9uIEdOU1MgKGl0J3MganVzdCBteSBndWVzcywgc2luY2UgMTAuMjMgTUh6IGlz
IGEgY29tbW9uIHJhdGUgZm9yIEdOU1Mgc2F0ZWxsaXRlcyksIHRoZSBwcmVjaXNpb24gb2YgdGhl
IGRhdGEgc3RyZWFtIGRvZXMgbm90IGFjdHVhbGx5IG1hdHRlciB0aGF0IG11Y2guIFllcywgeW91
IGRvIHdhbnQgdG8gdXNlIGEgZ29vZCBjbG9jaywgc28gYXMgdGhlIHNpZ25hbHMgd291bGQgY29y
cmVsYXRlIHdlbGwsIGJ1dCB5b3UgY2FuIG1ha2Ugcm91Z2ggZXN0aW1hdGVzIChsaWtlIHVzaW5n
IHNxdWFyZSBzaGFwaW5nIGZpbHRlcikgd2hlbiB5b3UgYXJlIGdlbmVyYXRpbmcgdGhlIGRhdGEs
IGFuZCBzdGlsbCBnZXQgZGVjZW50IGNvcnJlbGF0aW9uIHBlYWtzLCBhcyBsb25nIGFzIHRoZSBh
c3N1bXB0aW9ucyBhcmUgbm90IGJhZCBlbm91Z2ggdG8gc2lnbmlmaWNhbnRseSBicmVhayB0aGUg
Y29ycmVsYXRpb24gcHJvcGVydGllcyBvZiB0aGUgc2lnbmFscy4gVGhpcyBpcyByZWd1bGFybHkg
ZXhwbG9pdGVkIGluIEdOU1MgcmVjZWl2ZXJzIGFuZCB0cmFuc21pdHRlcnMuDQoNCklmIHlvdSBz
dGlsbCBiZWxpZXZlIHRoYXQgeW91IHdhbnQgdG8gdXNlIGEgcGh5c2ljYWwgMTAuMjMgTUh6IGNs
b2NrLCB0aGVuIG1heWJlIHlvdSB3YW50IHRvIGNoZWNrIG91dCB0aGUgZmFjdCB0aGF0IFVTUlAg
eDMwMHMgc3VwcG9ydCAzMC43MiBNSHogZXh0ZXJuYWwgcmVmIGNsb2NrICggaHR0cHM6Ly9maWxl
cy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfdXNycF94M3gwLmh0bWwjeDN4MF9od194M3gwX2h3X3Jl
ZjEwTSApLiBNYXliZSB5b3UgY2FuIHRyeSBpbnB1dHRpbmcgc29tZXRoaW5nIGxpa2UgMzAuNjkg
TUh6ICgxMC4yMyAqIDMpIGFzIHlvdXIgZXh0IHJlZiBjbG9jay4uIGJ1dCBJIGFtIG5vdCBzbyBz
dXJlIGFib3V0IHRoaXMuIChJdCBXSUxMIHNjcmV3IHVwIHNvbWUgdGltaW5nLCBidXQgaG93IGJh
ZD8pIFBsZWFzZSBub3RlIHRoYXQgeW91IG1heSBuZWVkIHRvIHVzZSBhIHJlY2VudCB2ZXJzaW9u
IG9mIHRoZSBVSEQgYW5kIHRoZSBGUEdBIGZpcm13YXJlLg0KDQpSZWdhcmRzLA0KS3llb25nIFN1
IFNoaW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq6uLO9ILvntvc6IGd1b3dh
bmcgcWl1IDxxaXUuZ3Vvd2FuZzAwN0BnbWFpbC5jb20+DQq6uLO9ILOvwqU6IDIwMjCz4iA0v/kg
MjnAzyC89r/kwM8gv8DA/CAzOjEzDQq53rTCILvntvc6IEt5ZW9uZyBTdSBTaGluIDxrc3NoaW5A
cG9zdGVjaC5hYy5rcj4NCsL8wbY6IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT47IERhbW9uIFFpdSA8cWl1Lmd1b3dhbmcwMDdAZ21haWwuY29t
Pg0Kwaa48TogUmU6IFtVU1JQLXVzZXJzXSAxMC4yM01zcHMgU2FtcGxlIFJhdGUNCg0KSGkgS3ll
b25nIFN1IFNoaW4sDQoNClRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4NCldlIG5lZWQgdG8gc2Vu
ZCBvdXQgc2lnbmFsIGF0IGEgdmVyeSBwcmVjaXNlIHRpbWUuIEludGVydmFsIGJldHdlZW4gcGFj
a2V0IHRyYW5zbWl0dGluZyBuZWVkcyB0byBiZSBhbiBpbnRlZ3JhbCBtdWx0aXBsZSBvZiAxIC8g
MTAuMjNNLCBzbyB0aGUgbWFzdGVyIGNsb2NrIHJhdGUgaXMgc2hvdWxkIGJlIE4qMTAuMjNNSHou
DQoNCkJlc3QgcmVnYXJkcywNCkRhbW9uDQoNCg0KDQpPbiBUdWUsIDI4IEFwciAyMDIwIGF0IDEy
OjQ1LCBLeWVvbmcgU3UgU2hpbiA8a3NzaGluQHBvc3RlY2guYWMua3I8bWFpbHRvOmtzc2hpbkBw
b3N0ZWNoLmFjLmtyPj4gd3JvdGU6DQpIZWxsbyBHdW93YW5nOg0KDQpGaXJzdCwgaWYgeW91IGFy
ZSB3b2tpbmcgb24gR05TUyAoaXQncyBqdXN0IG15IGd1ZXNzLCBidXQgdGhhdCdzIHdoZXJlIDEw
LjIzIE1IeiB1c3VhbGx5IGNvbWVzIGZyb20pLCB5b3UgdXN1YWxseSBET04nVCBuZWVkIHRvIHVz
ZSAxMC4yMyBNUy9zIChzZWUgR05TUy1TRFIgYW5kIGdwcy1zZHItc2ltIHNvdXJjZSBjb2Rlcyku
IFNvLCB5b3UgbWF5IHdhbnQgdG8gdGhpbmsgYWJvdXQgdGhhdCBiZWZvcmUgcHJvY2VlZGluZyBm
dXJ0aGVyLg0KDQpJZiB5b3UgYWJzb2x1dGVseSB3YW50IHRvIHVzZSAxMC4yMyBNUy9zLCB0aGVu
IHlvdSBjYW4gdHJ5IHJlc2FtcGxpbmcgeW91ciBkYXRhIChlaXRoZXIgb24geW91ciBQQywgb24g
dGhlIEZQR0EsIG9yIGJvdGgpLiBJdCBtYXkgcmVxdWlyZSBhIHByZXR0eSBzZXJpb3VzIHJlc2Ft
cGxlciwgdGhvdWdoIChjb3VsZCBiZSBkaWZmaWN1bHQgdG8gdGhpcyBpbiByZWFsLXRpbWUpLg0K
DQpZb3UgY2FuIHRyeSBhbHRlcmluZyB0aGUgYWN0dWFsIGhhcmR3YXJlIGNsb2NrIG9mIHRoZSBi
b2FyZCwgYnV0IGRvIG5vdCBleHBlY3QgaXQgdG8gYmUgYSB0cml2aWFsIHRhc2suDQoNClJlZ2Fy
ZHMsDQpLeWVvbmcgU3UgU2hpbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCrq4
s70gu+e29zogZ3Vvd2FuZyBxaXUgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4+ILTrvcUgVVNSUC11c2Vy
cyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vycy1i
b3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4+DQq6uLO9ILOvwqU6IDIwMjCz4iA0v/kgMjjAzyDIrb/k
wM8gv8DA/CAzOjUyDQq53rTCILvntvc6IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPG1haWx0
bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
PG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4+DQrC/MG2OiBEYW1vbiBRaXUgPHFp
dS5ndW93YW5nMDA3QGdtYWlsLmNvbTxtYWlsdG86cWl1Lmd1b3dhbmcwMDdAZ21haWwuY29tPj4N
CsGmuPE6IFtVU1JQLXVzZXJzXSAxMC4yM01zcHMgU2FtcGxlIFJhdGUNCg0KSGkgYWxsLA0KDQpX
ZSBhcmUgdHJ5aW5nIHRvIGdldCAxMC4yM01zcHMgb3IgMjAuNDZNc3BzIHNhbXBsZSByYXRlIHdp
dGggWDMxMC4gTGF0ZXN0IFVIRCBkcml2ZXIgZW5hYmxlcyBVU1JQIHgzMTAgc3VwcG9ydCAxODQu
MzJNSHogdG8gMjAwTUh6IG1hc3RlciBjbG9jayByYXRlLiBCdXQgaXQganVzdCBzdXBwb3J0IHNv
bWUgZGlzY3JldGUgdmFsdWVzo6x1bmZvcnR1bmF0ZWx5LCBpdCBqdXN0IGRpZG4ndCBzdXBwb3J0
IDEwLjIzTSoxOCBvciAxMC4yM00qMTkuDQpXZSBoYXZlIHRyaWVkIHRvIGlucHV0IGFuIGV4dGVy
bmFsIHJlZmVyZW5jZSBjbG9jayBvZiAxMC4yM01IeiwgYW5kIHdlIHdhbnQgdG8gY2hlYXQgeDMx
MCB0aGF0IHRoZSBleHRlcm5hbCBjbG9jayBpcyAxME1Iei4gV2Ugc2V0IHRoZSBtYXN0ZXIgY2xv
Y2sgcmF0ZSBvZiB0aGUgc3lzdGVtIGFzIDIwME1Iei4gSWYgdGhlIFBMTCBjYW4gbG9jayB0byB0
aGUgZXh0ZXJuYWwgY2xvY2sgc291cmNlLCB0aGUgYWN0dWFsIG1hc3RlciBjbG9jayByYXRlIGlz
IDEwLjIzIKG/IDIwTUh6LiBIb3dldmVyLCB3aGVuIHRoZSBwcm9ncmFtIGlzIHJ1bm5pbmcsIHRo
ZSBVSEQgZHJpdmVyIHRocm93cyBhbiBleGNlcHRpb24sIGluZGljYXRpbmc6DQp0ZXJtaW5hdGUg
Y2FsbGVkIGFmdGVyIHRocm93aW5nIGFuIGluc3RhbmNlIG9mICd1aGQ6OnJ1bnRpbWVfZXJyb3In
DQogIHdoYXQoKTogUnVudGltZUVycm9yOiBSZWZlcmVuY2UgQ2xvY2sgUExMIGZhaWxlZCB0byBs
b2NrIHRvIGV4dGVybmFsIHNvdXJjZS4NCg0KSXMgdGhlcmUgYW55IHdheSB0byBvYnRhaW4gMTAu
MjNNc3BzIHNhbXBsZSByYXRlIHdpdGggWDMxMD8NCg0KQmVzdCByZWdhcmRzLA0KRGFtb24NCg==

--_000_SL2P216MB0331C2A04A5CCC61763D6DDE93AD0SL2P216MB0331KORP_
Content-Type: text/html; charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dks_c_5601=
-1987">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello Damon,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
That does not mean that you have to use a physical 10.23 MHz clock. A good =
digital resampler should allow the device to transmit essentially the same =
signal. Implementing a good resampler could be challenging (a rational-resa=
mpler may take too much taps to
 implement), but there are still some feasible designs (especially if it do=
es not need to process the data in real-time, by any chance, or if you are =
okay with writing HDL codes).&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
In fact, USRPs already do this. Their Rx chains sample at a faster rate, an=
d then decimate the sampled data to the target sampling rates. Their Tx cha=
ins do the opposite. When you ask USRPs to sample at, say, 10 MS/s, their A=
DCs are not sampling at 10 MS/s:
 they sample at 200 MS/s, then provide you resampled version of the data at=
 10 MS/s. It's just that the default resamplers included in their FPGAs hav=
e limited capabilities, so they cannot cover the sampling rates that you ar=
e looking for.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Also, I do not know what applications you are working on, but if you are wo=
rking on GNSS (it's just my guess, since 10.23 MHz is a common rate for GNS=
S satellites), the precision of the data stream does not actually matter th=
at much. Yes, you do want to use
 a good clock, so as the signals would correlate well, but you can make rou=
gh estimates (like using square shaping filter) when you are generating the=
 data, and still get decent correlation peaks, as long as the assumptions a=
re not bad enough to significantly
 break the correlation properties of the signals. This is regularly exploit=
ed in GNSS receivers and transmitters.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If you still believe that you want to use a physical 10.23 MHz clock, then =
maybe you want to check out the fact that USRP x300s support 30.72 MHz exte=
rnal ref clock (&nbsp;<a href=3D"https://files.ettus.com/manual/page_usrp_x=
3x0.html#x3x0_hw_x3x0_hw_ref10M" id=3D"LPNoLP892296">https://files.ettus.co=
m/manual/page_usrp_x3x0.html#x3x0_hw_x3x0_hw_ref10M</a>
 ). Maybe you can try inputting something like 30.69 MHz (10.23 * 3) as you=
r ext ref clock.. but I am not so sure about this. (It WILL screw up some t=
iming, but how bad?) Please note that you may need to use a recent version =
of the UHD and the FPGA firmware.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kyeong Su Shin</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=BA=B8=B3=BD =BB=E7=B6=F7:</b> =
guowang qiu &lt;qiu.guowang007@gmail.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2020=B3=E2 4=BF=F9 29=C0=CF =BC=F6=BF=E4=
=C0=CF =BF=C0=C0=FC 3:13<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> Kyeong Su Shin &lt;ksshin@postech.ac.kr&g=
t;<br>
<b>=C2=FC=C1=B6:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.=
com&gt;; Damon Qiu &lt;qiu.guowang007@gmail.com&gt;<br>
<b>=C1=A6=B8=F1:</b> Re: [USRP-users] 10.23Msps Sample Rate</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi&nbsp;Kyeong Su Shin,</div>
<div><br>
</div>
<div>Thank you for your reply.</div>
<div>We need to send out signal at a very precise time. Interval between pa=
cket transmitting needs to be an integral multiple of 1 / 10.23M, so the ma=
ster clock rate is should be N*10.23MHz.</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Damon</div>
<br>
<br>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, 28 Apr 2020 at 12:45, Kyeon=
g Su Shin &lt;<a href=3D"mailto:ksshin@postech.ac.kr">ksshin@postech.ac.kr<=
/a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello Guowang:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
First, if you are woking on GNSS (it's just my guess, but that's where 10.2=
3 MHz usually comes from), you usually DON'T need to use 10.23 MS/s (see GN=
SS-SDR and gps-sdr-sim source codes). So, you may want to think about that =
before proceeding further.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If you absolutely want to use 10.23 MS/s, then you can try resampling your =
data (either on your PC, on the FPGA, or both). It may require a pretty ser=
ious resampler, though (could be difficult to this in real-time).
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
You can try altering the actual hardware clock of the board, but do not exp=
ect it to be a trivial task.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Kyeong Su Shin<br>
</div>
<div id=3D"x_gmail-m_2574267859068596766appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_2574267859068596766divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>=
=BA=B8=B3=BD =BB=E7=B6=F7:</b> guowang qiu via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt;
 =B4=EB=BD=C5 USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ett=
us.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2020=B3=E2 4=BF=F9 28=C0=CF =C8=AD=BF=E4=
=C0=CF =BF=C0=C0=FC 3:52<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> <a href=3D"mailto:usrp-users@lists.ettus.=
com" target=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt;<br>
<b>=C2=FC=C1=B6:</b> Damon Qiu &lt;<a href=3D"mailto:qiu.guowang007@gmail.c=
om" target=3D"_blank">qiu.guowang007@gmail.com</a>&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] 10.23Msps Sample Rate</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi all,
<div><br>
</div>
<div>We are trying to get 10.23Msps or 20.46Msps sample rate with X310. Lat=
est UHD driver enables USRP x310 support 184.32MHz to 200MHz master clock r=
ate. But it just support some&nbsp;discrete values=A3=ACunfortunately, it j=
ust didn't support 10.23M*18 or 10.23M*19.</div>
<div>We have tried to input an external reference clock of 10.23MHz, and we=
 want to cheat x310 that the external clock is 10MHz. We set the master clo=
ck rate of the system as 200MHz. If the PLL can lock to the external clock =
source, the actual master clock
 rate is 10.23 =A1=BF 20MHz. However, when the program is running, the UHD =
driver throws an exception, indicating:<br>
terminate called after throwing an instance of 'uhd::runtime_error'</div>
<div>&nbsp; what(): RuntimeError: Reference Clock PLL failed to lock to ext=
ernal source.</div>
<div><br>
</div>
<div>Is there any way to obtain 10.23Msps sample rate with X310?<br>
<br>
</div>
<div>Best regards,</div>
<div>Damon</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_SL2P216MB0331C2A04A5CCC61763D6DDE93AD0SL2P216MB0331KORP_--


--===============0892043593396861894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0892043593396861894==--

