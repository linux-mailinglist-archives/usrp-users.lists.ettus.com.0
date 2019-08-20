Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AA696BD2
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 23:55:54 +0200 (CEST)
Received: from [::1] (port=37300 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i0C6a-0000Qt-1o; Tue, 20 Aug 2019 17:55:52 -0400
Received: from mail-eopbgr730111.outbound.protection.outlook.com
 ([40.107.73.111]:6739 helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1i0C6W-0000LK-A2
 for usrp-users@lists.ettus.com; Tue, 20 Aug 2019 17:55:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYbQwmD5Q2nbR80fjw80AbYHCE6dDDFfI38VXMdPyc4PSLWWxUl6stYk9gCx8wXQex+UEu0cP7PDXVhLMG9mJaataSjDhhK+rj0Mp4dty8DA4s0Vo0ZaYS+UQR0Wxgs8fvk2ogLESoviXxOP5ELlcSS3yrnhPUHaTTmac2dL8+kb9fa0T/RWIBA4LA2zkpG8D5cOttRi3VTjrtWDhP2N7PcoLTWl3HsGKgTzo9h/5R8vkjxg4zqlrNZ1/5ZG83aTdq3RSRPiTcm7lXnbpKFRGbfme7NcR82GmMUE7MzDuRnuypKZgVY8Av9c3VnmgF1tocobNHsAWYmpDSYmdQPc0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qELCMPDzsMq5OMMpN+/lEoaaYe7NX+lHFS4C7HiVTsc=;
 b=GGxOSJjeeAaGPwCW7pEb/2/OIQGVTl/LFqswMjHp0BecX97RAygvEEz6+7/QQ0lnVtLHaliHKE3YCHZDvGOGoSpVqK+M7XpYrFJcfWTgTZJNa9ZljYU7DtbaOWE9x/Sam+PiB3YutEEeGjvH1loo1ikR5aOBiy5LSnqoef928h39QkNpQ2UW+Np9yqIGuk5tgXafME/1GZFw0RKCtKlPB8kHAkt/3dcGih0YDqER1VC7yHtGNyCBsB1NHx/vHADM6zIGSUoIkx87TzwyGXWYy3Y2WVkGUEl4YvrJ6CXN9bI9LBcFNcdH+DDrBQJWvIzMFl32wsLtjYV4V9KZRVxOTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=psu.edu; dmarc=pass action=none header.from=psu.edu; dkim=pass
 header.d=psu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector2-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qELCMPDzsMq5OMMpN+/lEoaaYe7NX+lHFS4C7HiVTsc=;
 b=fGgNQEylUGGFB73LnJvJ00ombmAoXmnRTVvXPg5CnQIXtACVZCS+/0A25udF52lvqWd4H2bvQR2+6y979FlsFJPxizOVZfFeikmZe3MN/uWP5Qd8sg708Ii7kpICwBeKwbbrUNcbMfC/lGZF3hOGzwgFZfokoiZadbRv+Qc0iag=
Received: from BL0PR02MB3716.namprd02.prod.outlook.com (52.132.28.144) by
 BL0PR02MB6515.namprd02.prod.outlook.com (10.255.69.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 21:55:06 +0000
Received: from BL0PR02MB3716.namprd02.prod.outlook.com
 ([fe80::554d:6bd6:af97:38c9]) by BL0PR02MB3716.namprd02.prod.outlook.com
 ([fe80::554d:6bd6:af97:38c9%5]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 21:55:06 +0000
To: Sam Reiter <sam.reiter@ettus.com>, usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: =?gb2312?B?u9i4tDogW1VTUlAtdXNlcnNdIEEgUXVlc3Rpb24gYWJvdXQgU3luY2hyb25p?=
 =?gb2312?Q?zation?=
Thread-Index: AQHVV44LCwgGm8pm8kSBfS7PPTudmacEUDZA
Date: Tue, 20 Aug 2019 21:55:06 +0000
Message-ID: <BL0PR02MB37162390799684C80029546FAAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
References: <BL0PR02MB3716F0B244D891333FE1A648AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
 <CANf970Y4BUfLQLoXTN7qXEjoCuT4=07D1Vad7_dbYkbHj_hQvw@mail.gmail.com>
 <BL0PR02MB371652F9FB5636C7B758C7C4AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>,
 <CANf970Z3YTuvgmmPk92rezcaUK+05zZs_D-4N=BJ6q87waTnzw@mail.gmail.com>
In-Reply-To: <CANf970Z3YTuvgmmPk92rezcaUK+05zZs_D-4N=BJ6q87waTnzw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54884b9a-f9ce-48d4-9173-08d725b91048
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR02MB6515; 
x-ms-traffictypediagnostic: BL0PR02MB6515:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR02MB6515424D7864271E81B6C46EAAAB0@BL0PR02MB6515.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(53754006)(40764003)(199004)(189003)(6436002)(75432002)(606006)(102836004)(19627405001)(8936002)(966005)(53546011)(2906002)(55016002)(6506007)(6116002)(3846002)(54896002)(6306002)(9686003)(786003)(5660300002)(236005)(476003)(81156014)(81166006)(486006)(52536014)(53936002)(88552002)(316002)(33656002)(5070765005)(110136005)(478600001)(99286004)(186003)(25786009)(76116006)(7736002)(66066001)(105004)(66946007)(224303003)(74316002)(66476007)(66556008)(64756008)(66446008)(7696005)(76176011)(26005)(11346002)(86362001)(14454004)(256004)(14444005)(446003)(71190400001)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR02MB6515;
 H:BL0PR02MB3716.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WXTH+m1kiSgGQnwXGk468KXFq7ObHaARLPYG/XUBLYfkVkMRwEib0AKiuOpfmI1EZDbBhyb7QH0Rb+/B/IUhzBh3g49G1+hLULwpP5OWLrZRLxv7q6plqZ8x6ZP2L6TtBdMRjOkG3Kgc12tnLWL3Ai6QKaXQMQMD7gkrmL68fb1PuLq3J0LhbneiPSh4WTH9cfXg6ykCTu5VhjcCvTXpw/lUBgtuhZOECaVLJtow7INe6skjZOsFjWHVS/v5/ATWWGu9j0iCmUQf17SkndqHyIxqzcJtxLjKUJNKU9i6OFbCTVhIwvRt+FFc5ee7X9LVj0l4jG7jTC3Ajy08gKXSjQjT0SYK3j8yl2xufCpQCmVlCQWkhZXwGM8/wEH28NRmej407TafMAfH2ItLpwzfkcCBNSlvKDQkIIBjXPBux5w=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 54884b9a-f9ce-48d4-9173-08d725b91048
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 21:55:06.6194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HZKgukoqo8Z2nqopfxHMwgq7m4dc3cK40jbUjExGEAiJXxLtLVS26op9qwShl0wQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6515
Subject: [USRP-users] =?gb2312?b?u9i4tDogIEEgUXVlc3Rpb24gYWJvdXQgU3luY2hy?=
 =?gb2312?b?b25pemF0aW9u?=
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Jiang, Fengyang via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Jiang, Fengyang" <fzj28@psu.edu>
Content-Type: multipart/mixed; boundary="===============9147980846323182059=="
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

--===============9147980846323182059==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BL0PR02MB37162390799684C80029546FAAAB0BL0PR02MB3716namp_"

--_000_BL0PR02MB37162390799684C80029546FAAAB0BL0PR02MB3716namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpNeSBnb2FsIGlzIHRvIGVsaW1pbmF0ZSB0aGUgZnJlcXVlbmN5IG9mZnNldCBh
bmQgc2FtcGxpbmcgb2Zmc2V0LCBhbmQgdG8gaGF2ZSBhIGNvbnNpc3RlbnQgc3RhcnQgdGltZS4g
SXMgdGhlcmUgYW55dGhpbmcgZWxzZSB0aGF0IEkgc2hvdWxkIGRvIHRvIGFjaGlldmUgdGhlc2U/
IFRoYW5rcyEhDQoNCkJlc3QgcmVnYXJkcywNCkZlbmd5YW5nDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0Kt6K8/sjLOiBTYW0gUmVpdGVyIDxzYW0ucmVpdGVyQGV0dHVzLmNvbT4N
Creiy83KsbzkOiAyMDE5xOo41MIyMMjVIDE1OjMyDQrK1bz+yMs6IEppYW5nLCBGZW5neWFuZyA8
ZnpqMjhAcHN1LmVkdT47IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K
1vfM4jogUmU6IFtVU1JQLXVzZXJzXSBBIFF1ZXN0aW9uIGFib3V0IFN5bmNocm9uaXphdGlvbg0K
DQpMZXQncyBrZWVwIHRoZSB1c3JwLXVzZXJzIGxpc3QgaW5jbHVkZWQgb24gdGhlc2UgY29tbXVu
aWNhdGlvbnMgLS0gdGhlcmUgYXJlIHBsZW50eSBvZiBmb2xrcyBmYXIgbW9yZSBleHBlcmllbmNl
ZCB0aGFuIG15c2VsZiB3aG8gbWF5IGhhdmUgdmFsdWFibGUgaW5wdXQuDQoNCldoeSBkb24ndCB3
ZSBsb29rIGF0IHRoaXMgZnJvbSB0aGUgc3RhbmRwb2ludCBvZiB5b3VyIHJlcXVpcmVtZW50cy4g
V2hhdCBpcyB5b3VyIGVuZCBnb2FsIHdpdGggc3luY2hyb25pemluZyB5b3VyIHR3byBkZXZpY2Vz
PyBEbyB5b3UgbmVlZCB0aW1lIGFsaWdubWVudCBvZiBzYW1wbGVzLCBwaGFzZSBjb2hlcmVuY2Ug
YmV0d2VlbiBjaGFubmVscywgYSBjb25zaXN0ZW50IHN0YXJ0IHRpbWUgYmV0d2VlbiB5b3VyIHR3
byBiZW5jaG1hcmtpbmcgcHJvZ3JhbXMsIG9yIHNvbWV0aGluZyBlbHNlPw0KDQpEaXNjdXNzaW5n
IHlvdXIgYXBwbGljYXRpb24gYW5kIGVuZCBnb2FsIHdvdWxkIGJlIGhlbHBmdWwgaGVyZSBhcyB3
ZWxsLg0KDQotU2FtDQoNCk9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDI6MTggUE0gSmlhbmcsIEZl
bmd5YW5nIDxmemoyOEBwc3UuZWR1PG1haWx0bzpmemoyOEBwc3UuZWR1Pj4gd3JvdGU6DQpIaSBT
YW0sDQoNClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwISBJbmRlZWQgSSdtIHVzaW5nIGJlbmNobWFy
ayBzY3JpcHRzIGFuZCBJIHRoaW5rIGFkZGluZyBhcmd1bWVudHMgd2lsbCBoZWxwLiBJJ20gdXNp
bmcgdHdvIHNlcGVyYXRlZCBjb21tYW5kcyBmb3IgdHJhbnNtaXR0aW5nIGFuZCByZWNlaXZpbmcs
IHNvIGlmIEkgdXNlOg0KDQpweXRob24zIGJlbmNobWFya190eF9jb3BpZWRfZnJvbV9pbnMucHkg
LWYgMi40NUcgLS1hcmdzPSJhZGRyPTE5Mi4xNjguMTAuMywgY2xvY2tfc291cmNlPWV4dGVybmFs
LCB0aW1lX3NvdXJjZT1leHRlcm5hbCIgLS10eC1nYWluPTQwIC0tYmFuZHdpZHRoPTFNDQpweXRo
b24zIGJlbmNobWFya19yeF9jb3BpZWRfZnJvbV9pbnMucHkgLWYgMi40NUcgLS1hcmdzPSJhZGRy
PTE5Mi4xNjguMTAuMiwgY2xvY2tfc291cmNlPWV4dGVybmFsLCB0aW1lX3NvdXJjZT1leHRlcm5h
bCIgLS1yeC1nYWluPTQwIC0tYmFuZHdpZHRoPTFNDQoNCndpbGwgdGhhdCBzYXRpc2Z5IG15IHJl
cXVpcmVtZW50cz8gVGhhbmsgeW91IHNvIG11Y2ghDQoNCkJlc3QgcmVnYXJkcywNCkZlbmd5YW5n
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8/sjLOiBTYW0gUmVpdGVyIDxz
YW0ucmVpdGVyQGV0dHVzLmNvbTxtYWlsdG86c2FtLnJlaXRlckBldHR1cy5jb20+Pg0Kt6LLzcqx
vOQ6IDIwMTnE6jjUwjIwyNUgMTQ6NDMNCsrVvP7IyzogSmlhbmcsIEZlbmd5YW5nIDxmemoyOEBw
c3UuZWR1PG1haWx0bzpmemoyOEBwc3UuZWR1Pj4NCtb3zOI6IFJlOiBbVVNSUC11c2Vyc10gQSBR
dWVzdGlvbiBhYm91dCBTeW5jaHJvbml6YXRpb24NCg0KSG93IHlvdSBpbXBsZW1lbnQgdGhpcyB3
aWxsIGRlcGVuZCBvbiB3aGF0IG1ha2VzIHRoZSBtb3N0IHNlbnNlIGZvciB5b3VyIGFwcGxpY2F0
aW9uLiBJZiB5b3UncmUganVzdCBnZXR0aW5nIHN0YXJ0ZWQgcnVubmluZyBzaGlwcGluZyBleGFt
cGxlcywgeW91IGNhbiBhZGQgZGV2aWNlIGFyZ3VtZW50cyBmb3IgY2xvY2tfc291cmNlIGFuZCB0
aW1lX3NvdXJjZSB0byBzcGVjaWZ5IGV4dGVybmFsIHRpbWUgc291cmNlcy4gRm9yIGV4YW1wbGU6
DQoNCi4vYmVuY2htYXJrX3JhdGUgLS1yeF9yYXRlPTFlNiAtLXR4X3JhdGU9MWU2IC0tYXJncyBh
ZGRyMD0xOTIuMTY4LjEwLjIsYWRkcjE9MTkyLjE2OC4xMC4zLGNsb2NrX3NvdXJjZTA9ZXh0ZXJu
YWwsdGltZV9zb3VyY2UwPWV4dGVybmFsLGNsb2NrX3NvdXJjZTE9ZXh0ZXJuYWwsdGltZV9zb3Vy
Y2UxPWV4dGVybmFsDQoNCkFzIHlvdSBtb3ZlIG9uIGZyb20gc2hpcHBpbmcgZXhhbXBsZXMsIHlv
dSB3b3VsZCB3YW50IHRvIGluY2x1ZGUNCg0KdXNycC0+c2V0X2Nsb2NrX3NvdXJjZSgiZXh0ZXJu
YWwiKTsNCnVzcnAtPnNldF90aW1lX3NvdXJjZSgiZXh0ZXJuYWwiKTsNCg0KYXQgdGhlIGFwcHJv
cHJpYXRlIHBsYWNlIGluIHlvdXIgY29kZSB0byBjb25maWd1cmUgdGltaW5nLg0KDQotU2FtDQoN
Ck9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDE6MDkgUE0gSmlhbmcsIEZlbmd5YW5nIHZpYSBVU1JQ
LXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxtYWlsdG86dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+PiB3cm90ZToNCkhpIGFsbCwNCg0KSSdtIHRyeWluZyB0byBzeW5jaHJvbml6
ZSAyIFVTUlAgTjIxMCBkZXZpY2VzIHVzaW5nIHRoZSBPY3RvQ2xvY2stRyBDREEtMjk5MCBhcyBl
eHRlcm5hbCAxME1IeiByZWZlcmVuY2UgYW5kIFBQUyBzb3VyY2VzLiBJdCBpcyBzYWlkIHRoYXQg
SSBuZWVkIHRvIHNldCB1cCB0d28gY29uZmlndXJhdGlvbnM6DQoNCnVzcnAtPnNldF9jbG9ja19z
b3VyY2UoImV4dGVybmFsIik7DQp1c3JwLT5zZXRfdGltZV9zb3VyY2UoImV4dGVybmFsIik7DQoN
CldoaWNoIGZpbGUgaW4gd2hpY2ggcGF0aCBzaG91bGQgSSBtb2RpZnkgaW4gb3JkZXIgdG8gYXBw
bHkgdGhlc2UgY29uZmlndXJhdGlvbnM/IFRoYW5rcyBhIGxvdCENCg0KQmVzdCByZWdhcmRzLA0K
RmVuZ3lhbmcgSmlhbmcNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdA0KVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPGh0dHBzOi8v
bmFtMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwJTNBJTJGJTJG
bGlzdHMuZXR0dXMuY29tJTJGbWFpbG1hbiUyRmxpc3RpbmZvJTJGdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20mZGF0YT0wMiU3QzAxJTdDZnpqMjglNDBwc3UuZWR1JTdDMzhkOThkMzgyZDdjNDE5
MWNjZDYwOGQ3MjVhNTJkMTQlN0M3Y2Y0OGQ0NTNkZGI0Mzg5YTljMWMxMTU1MjZlYjUyZSU3QzAl
N0MxJTdDNjM3MDE5MjYzNjYyNTMxNDQwJnNkYXRhPW1IWk1hWkhJZ0tCYVlPZ2dIeiUyQlp3dEpZ
UmFaTHBLbmxtRDAlMkJIaENqVCUyRlElM0QmcmVzZXJ2ZWQ9MD4NCg==

--_000_BL0PR02MB37162390799684C80029546FAAAB0BL0PR02MB3716namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi Sam,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
My goal is to eliminate the frequency offset and sampling offset, and to ha=
ve a consistent start time. Is there anything else that I should do to achi=
eve these? Thanks!!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Sam Rei=
ter &lt;sam.reiter@ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2019=C4=EA8=D4=C220=C8=D5 15:32<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Jiang, Fengyang &lt;fzj28@psu.edu&gt;; usrp-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] A Question about Synchronization</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>Let's keep the usrp-users list included on these communications -- the=
re are plenty of folks far more experienced than myself who may have valuab=
le input.
<br>
</div>
<div><br>
</div>
<div>Why don't we look at this from the standpoint of your requirements. Wh=
at is your end goal with synchronizing your two devices? Do you need time a=
lignment of samples, phase coherence between channels, a consistent start t=
ime between your two benchmarking
 programs, or something else?</div>
<div><br>
</div>
<div>Discussing your application and end goal would be helpful here as well=
. <br>
</div>
<div><br>
</div>
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">-Sam</div>
<div dir=3D"ltr"><br>
</div>
</div>
</div>
</div>
</div>
</div>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Aug 20, 2019 at 2:18 PM Jia=
ng, Fengyang &lt;<a href=3D"mailto:fzj28@psu.edu">fzj28@psu.edu</a>&gt; wro=
te:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Sam,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you for your help! Indeed I'm using benchmark scripts and I think add=
ing arguments will help. I'm using two seperated commands for transmitting =
and receiving, so if I use:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
python3 benchmark_tx_copied_from_ins.py -f 2.45G --args=3D&quot;addr=3D192.=
168.10.3, clock_source=3Dexternal, time_source=3Dexternal&quot; --tx-gain=
=3D40 --bandwidth=3D1M</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline">python3 benchmark_rx_copied_from_ins=
.py -f 2.45G --args=3D&quot;addr=3D192.168.10.2, clock_source=3Dexternal, t=
ime_source=3Dexternal&quot; --rx-gain=3D40 --bandwidth=3D1M</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; background-c=
olor:rgb(255,255,255); display:inline"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
will that satisfy my requirements? Thank you so much!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Best regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Fengyang</div>
<div id=3D"x_gmail-m_-3474368557349792279appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_-3474368557349792279divRplyFwdMsg" dir=3D"ltr"><font f=
ace=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>=
=B7=A2=BC=FE=C8=CB:</b> Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.c=
om" target=3D"_blank">sam.reiter@ettus.com</a>&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2019=C4=EA8=D4=C220=C8=D5 14:43<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Jiang, Fengyang &lt;<a href=3D"mailto:fzj28@psu.=
edu" target=3D"_blank">fzj28@psu.edu</a>&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] A Question about Synchronization</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">How you implement this will depend on what makes the most =
sense for your application. If you're just getting started running shipping=
 examples, you can add device arguments for clock_source and time_source to=
 specify external time sources. For
 example:
<div><br>
</div>
<div><span style=3D"font-family:monospace">./benchmark_rate --rx_rate=3D1e6=
 --tx_rate=3D1e6 --args addr0=3D192.168.10.2,addr1=3D192.168.10.3,clock_sou=
rce0=3Dexternal,time_source0=3Dexternal,clock_source1=3Dexternal,time_sourc=
e1=3Dexternal</span></div>
<div><br>
</div>
<div>As you move on from shipping examples, you would want to include</div>
<div><br>
</div>
<div>
<div style=3D"font-size:13px; line-height:1; font-family:monospace,fixed; m=
in-height:13px; padding-left:53px; margin:0px">
usrp-&gt;set_clock_source(<span style=3D"color:rgb(0,32,128)">&quot;externa=
l&quot;</span>);</div>
<div style=3D"font-size:13px; line-height:1; font-family:monospace,fixed; m=
in-height:13px; padding-left:53px; margin:0px">
usrp-&gt;set_time_source(<span style=3D"color:rgb(0,32,128)">&quot;external=
&quot;</span>);</div>
</div>
<div><br>
</div>
<div dir=3D"ltr">at the appropriate place in your code to configure timing.=
 <br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">-Sam <br>
</div>
</div>
<br>
<div class=3D"x_gmail-m_-3474368557349792279x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail-m_-3474368557349792279x_gmail_attr">On Tu=
e, Aug 20, 2019 at 1:09 PM Jiang, Fengyang via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail-m_-3474368557349792279x_gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(204,204,204); padding-l=
eft:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi all,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm trying to synchronize 2 USRP N210 devices using the&nbsp;OctoClock-G CD=
A-2990 as external 10MHz reference and PPS sources. It is said that I need =
to set up two configurations:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div style=3D"font-size:13px; line-height:1; font-family:monospace,fixed; m=
in-height:13px; padding-left:53px; margin:0px">
usrp-&gt;set_clock_source(<span style=3D"color:rgb(0,32,128)">&quot;externa=
l&quot;</span>);</div>
<div style=3D"font-size:13px; line-height:1; font-family:monospace,fixed; m=
in-height:13px; padding-left:53px; margin:0px">
usrp-&gt;set_time_source(<span style=3D"color:rgb(0,32,128)">&quot;external=
&quot;</span>);</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Which file in which path should I modify in order to apply these configurat=
ions? Thanks a lot!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Best regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Fengyang Jiang</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&amp;da=
ta=3D02%7C01%7Cfzj28%40psu.edu%7C38d98d382d7c4191ccd608d725a52d14%7C7cf48d4=
53ddb4389a9c1c115526eb52e%7C0%7C1%7C637019263662531440&amp;sdata=3DmHZMaZHI=
gKBaYOggHz%2BZwtJYRaZLpKnlmD0%2BHhCjT%2FQ%3D&amp;reserved=3D0" originalsrc=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" sha=
sh=3D"PycL0zqxRMeSZhYtdalBmAdlyCGPSsCc73vCLmLKvmCySlNf9PDvzw040MMHqvd3fW2uC=
utJY1iN3Sr&#43;us4sYfsdYCAPOIC5HnnnmFfbB9yVJSx6jSD7YRfiXWM2erxJKoDJIalCQFPy=
XGBDn&#43;kZ3K3rniB&#43;Dy&#43;3jHoW8&#43;fV8zM=3D" rel=3D"noreferrer" targ=
et=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR02MB37162390799684C80029546FAAAB0BL0PR02MB3716namp_--


--===============9147980846323182059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9147980846323182059==--

