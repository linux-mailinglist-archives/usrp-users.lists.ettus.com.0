Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DB139598
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 21:29:49 +0200 (CEST)
Received: from [::1] (port=43292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZKYe-0008OS-HP; Fri, 07 Jun 2019 15:29:48 -0400
Received: from mail-eopbgr790121.outbound.protection.outlook.com
 ([40.107.79.121]:11767 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1hZKYa-0008Cz-CQ
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 15:29:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector1-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnlS8m4Y0yZ6N6IAqdMn/Sy52mPOUYdAZLRJRMAp1Z4=;
 b=EwtHIF8g4zAUP2imodbj2HTj7ImtvhWolO2v760UuGhBI7qiiegLZfn1P4IEzCJSDF+w1ENlHMkuC1Po2XKmiQqaw/9ihDmN279YzSrBFD28tH1HnW2+KbiaoELLDnodYLARsKy5/ePJixISQa5jS5m1yEaGWaIZCNnta7NbmLM=
Received: from CY4PR02MB2647.namprd02.prod.outlook.com (10.173.40.139) by
 CY4PR02MB2805.namprd02.prod.outlook.com (10.175.63.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Fri, 7 Jun 2019 19:29:02 +0000
Received: from CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::8538:4eb4:63b1:38fa]) by CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::8538:4eb4:63b1:38fa%7]) with mapi id 15.20.1965.011; Fri, 7 Jun 2019
 19:29:02 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: A question of Frequency Offset
Thread-Index: AQHVHWMQOP2VIfWBPEqHrqtNwvKEyA==
Date: Fri, 7 Jun 2019 19:29:02 +0000
Message-ID: <CY4PR02MB264794A26301FF05CB0801E0AA100@CY4PR02MB2647.namprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec86d826-81d9-4a4f-7479-08d6eb7e65db
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR02MB2805; 
x-ms-traffictypediagnostic: CY4PR02MB2805:
x-microsoft-antispam-prvs: <CY4PR02MB2805434BF679AC368FE52B1FAA100@CY4PR02MB2805.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(39860400002)(346002)(136003)(199004)(189003)(2351001)(476003)(19627405001)(66476007)(53936002)(66946007)(73956011)(6116002)(3846002)(86362001)(486006)(6916009)(76116006)(33656002)(2501003)(68736007)(74316002)(26005)(186003)(25786009)(88552002)(7696005)(54896002)(5640700003)(9686003)(99286004)(55016002)(105004)(66556008)(6506007)(64756008)(66446008)(2906002)(6436002)(8936002)(81156014)(8676002)(81166006)(256004)(14454004)(5660300002)(71200400001)(71190400001)(7736002)(66066001)(52536014)(75432002)(478600001)(786003)(316002)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR02MB2805;
 H:CY4PR02MB2647.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XF9v/snBKcAi1QZLU8VH68nXY9Y/IHQlcsT4mvIVdj6R+Kb5N/6XgqEIuqWIrOKbwdtOnlye3AH6ZPVNzGE0IPFjdDsVXtE41FLbTgll9VmfIUnpDbzD7FNyse0kZJNH0nR3Yg9hE8ozAMgcX41ypfy2F2bZEU3BZ+S4gBf1l/Aas5QiJMBJnqK3Lk9CiobCxtTtjyEsEF1DR0NRAJ79V5lTvJH5PAyLRKtsmto9sz7TzJ3UCKzlDRcz2XsqRlz9WFIGwkEvojcACow5Q40y4gu/8XCvKofpP3CzFtiEWcQ8pJRiHF9Zuol0o8dO61KxETqX1zRl6htDQq88/Xzo9aFZhHSHiTbVHQhyid4Jpxd4hRLGh3eYig6sgbcFXX3y6zGJoKI00MDiCmHy570xurc8WDjJqh7QDx2OQd96qq8=
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ec86d826-81d9-4a4f-7479-08d6eb7e65db
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 19:29:02.5870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzj28@psu.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2805
Subject: [USRP-users] A question of Frequency Offset
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
Content-Type: multipart/mixed; boundary="===============8293565318733286316=="
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

--===============8293565318733286316==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR02MB264794A26301FF05CB0801E0AA100CY4PR02MB2647namp_"

--_000_CY4PR02MB264794A26301FF05CB0801E0AA100CY4PR02MB2647namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQoNCkknbSB0cmFuc21pdHRpbmcgYSBzaWduYWwgYW5kIHJlY2VpdmluZyBpdCB1c2luZyBV
U1JQcyBhbmQgd2FudCB0byBlc3RpbWF0ZSB0aGUgZnJlcXVlbmN5IG9mZnNldCwgYnV0IEknbSBn
ZXR0aW5nIHNvbWV0aGluZyBjb25mdXNpbmcuDQoNCkknbSB1c2luZyAyLjQ1R0h6IGZvciB0aGUg
dHJhbnNtaXR0aW5nLCBhbmQgdGhlIHNhbXBsaW5nIHJhdGUgaXMgMU1Iei4gVGhlIHNpZ25hbCBj
b25zaXN0cyBvZiA1IHJlcGVhdGVkIHByZWFtYmxlcywgYW5kIGVhY2ggb2YgdGhlbSBoYXMgMTAw
IGRhdGEgcG9pbnRzIChpLmUuIDEwMKbMcykuIFRvdGFsbHkgdGhlIHNpZ25hbCBoYXMgNTAwIGRh
dGEgcG9pbnRzICg1MDCmzHMpLCB3aXRoIGEgcGVyaW9kIG9mIDEwMKbMcy4NCg0KQWZ0ZXIgZ2V0
dGluZyB0aGUgcmVjZWl2ZWQgZGF0YSwgSSBjYW4gdXNlIGEgcGFpciBvZiBkYXRhIHBvaW50cyB3
aG9zZSBkaXN0YW5jZSBpcyAxMDCmzHMgdG8gY2FsY3VsYXRlIHRoZSBmcmVxdWVuY3kgb2Zmc2V0
LiBIb3dldmVyLCBpZiBJIHVzZSBkaWZmZXJlbnQgcGFpcnMgb2YgZGF0YSBwb2ludHMsIEkgd2ls
bCBnZXQgZGlmZmVyZW50IHJlc3VsdHMuIEZvciBleGFtcGxlLCBpZiB0aGUgcmVjZWl2ZWQgc2ln
bmFsIGlzIFt5MSwgeTIsIHkzLCAuLi4sIHkxMDEsIHkxMDIsIHkxMDMsIC4uLiwgeTQ5OSwgeTUw
MF0sIHRoZSBmcmVxdWVuY3kgb2Zmc2V0IGNhbGN1bGF0ZWQgYnkgeTEwMSBhbmQgeTEgaXMgZGlm
ZmVyZW50IGZyb20gdGhhdCBjYWxjdWx0ZWQgYnkgeTEwMiBhbmQgeTIsIGFuZCB0aGF0IGhhcHBl
bnMgZm9yIGFsbCB0aGUgcGFpcnMgb2YgZGF0YSBwb2ludHMuIEkgc2hvdWxkIGhhdmUgZ290IHNp
bWlsYXIgZnJlcXVlbmN5IG9mZnNldHMgd2hlbiB1c2luZyBkaWZmZXJlbnQgcGFpcnMgb2YgZGF0
YSwgYnV0IGFjdHVhbGx5IEkgZ290IGRpZmZlcmVudCByZXN1bHRzIGZvciBlYWNoIHBhaXIgb2Yg
dGhlIGRhdGEuDQoNCkRvZXMgYW55b25lIGtub3cgd2hhdCB0aGUgY2FzZSBpcywgb3IgYW55IHN1
Z2dlc3Rpb25zIG9uIHRoZSByaWdodCB3YXkgdG8gY2FsY3VsYXRlIGZyZXF1ZW5jeSBvZmZzZXQ/
IFRoYW5rcyBhIGxvdCENCg0KQmVzdCwNCkZlbmd5YW5nDQo=

--_000_CY4PR02MB264794A26301FF05CB0801E0AA100CY4PR02MB2647namp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm transmitting a signal and receiving it using USRPs and want to estimate=
 the frequency offset, but I'm getting something confusing.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm using 2.45GHz for the transmitting, and the sampling rate is 1MHz. The =
signal consists of 5 repeated preambles, and each of them has 100 data poin=
ts (i.e. 100=A6=CCs). Totally the signal has 500 data points (500=A6=CCs), =
with a period of 100=A6=CCs.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
After getting the received data, I can use a pair of data points whose dist=
ance is 100=A6=CCs to calculate the frequency offset. However, if I use dif=
ferent pairs of data points, I will get different results. For example, if =
the received signal is [y1, y2, y3, ...,
 y101, y102, y103, ..., y499, y500], the frequency offset calculated by y10=
1 and y1 is different from that calculted by y102 and y2, and that happens =
for all the pairs of data points. I should have got similar frequency offse=
ts when using different pairs of
 data, but actually I got different results for each pair of the data.</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Does anyone know what the case is, or any suggestions on the right way to c=
alculate frequency offset? Thanks a lot!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang</div>
</body>
</html>

--_000_CY4PR02MB264794A26301FF05CB0801E0AA100CY4PR02MB2647namp_--


--===============8293565318733286316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8293565318733286316==--

