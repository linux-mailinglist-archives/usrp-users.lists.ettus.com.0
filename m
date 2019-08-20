Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A697A96BD5
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 23:57:19 +0200 (CEST)
Received: from [::1] (port=38988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i0C7x-0000mV-Uu; Tue, 20 Aug 2019 17:57:17 -0400
Received: from mail-eopbgr740098.outbound.protection.outlook.com
 ([40.107.74.98]:12946 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1i0C7t-0000eu-LO
 for usrp-users@lists.ettus.com; Tue, 20 Aug 2019 17:57:13 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLOmd/8xq6Yd84FLUvKpgrKvHzP1P3bdrZy4CmoFy0Lsv0ldaQgixXhUdQOKvZV9sRuhnXLnj1XtWsRfm0VzGw1gkLerWth6vS+DaVH0t41ejdHVI0GgGQ5fbyc0oXbVsaN3SUxo4DkbfWue+gggTrllqp6KZnnVEgBHqpzaNxVWSwINbuCHlNVTlsvUw6u3/P1Iv2wQ6036yqHzfDD0Wrq/DMhvvhQmsbCATEv35h9LnhWG31DuY9TZi7K36RZlJbaq5QTvDJICYYFssIsVcK5K4oVq2F010x6kiZNbGGADJ0QPajQnTrFPBs8rgcy5Qu6ufC5wEjC+tniMA+70yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vzOiF2Tc75gN76XpyM+klMGT79+V0sm2c5V0fwgL+4=;
 b=C+vCz2Gp0H+Mpw+AbM3aBTktLYZnCI2ebdr6i2toXUgKsVCwKOpYR+vO7QWpa03NdFifGMSu0m8YhGCDNGroPcJ85QCFVTrIO49RpX5+MfC5lg3o5CeZII6sj7D/kMkdPZB4KiFbNZEvUbv9dEqcbIpmzf8t8FhSu8btB+6NWt4HT2k1MLOH7eT/za6frGrZM6dqa7X0tHH6ISpIvWiyRGB7GBYCRnvF6vFj+Gn7W4QJ/zf9svAjU61YonHd1r8Kx/AAL5FuZyxgk4i63oo+ORLgcqa+9KTyDjLyMKHpT5L0gCRO/qcfqaJRQqFpXJ+PW2u61+e+SUwcw59wcC6xUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=psu.edu; dmarc=pass action=none header.from=psu.edu; dkim=pass
 header.d=psu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector2-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vzOiF2Tc75gN76XpyM+klMGT79+V0sm2c5V0fwgL+4=;
 b=ZSLvgpkxgyABqU+c6tFrF74NnGxEzky/iY8ltYBudmhjesyAwV6cwTO84xn7SVdzB2P284mGwiKVzImyhp+aKgshH6buUV7gvr9LZWpUindTAYkhip2VJqtcM6bL90O8caHt7qAA4uLrLEhTl/U+8J2zgOEWfNbS7Ty1fgLSvk8=
Received: from BL0PR02MB3716.namprd02.prod.outlook.com (52.132.28.144) by
 BL0PR02MB6515.namprd02.prod.outlook.com (10.255.69.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 21:56:32 +0000
Received: from BL0PR02MB3716.namprd02.prod.outlook.com
 ([fe80::554d:6bd6:af97:38c9]) by BL0PR02MB3716.namprd02.prod.outlook.com
 ([fe80::554d:6bd6:af97:38c9%5]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 21:56:32 +0000
To: Nate Temple <nate.temple@ettus.com>
Thread-Topic: =?gb2312?B?u9i4tDogW1VTUlAtdXNlcnNdIEEgUXVlc3Rpb24gYWJvdXQgU3luY2hyb25p?=
 =?gb2312?Q?zation?=
Thread-Index: AQHVV4FrMDBV58qmyEGjW5o5SIwvAqcEbbcA///kHA0=
Date: Tue, 20 Aug 2019 21:56:32 +0000
Message-ID: <BL0PR02MB3716AFC51BBD11F5BA590BC3AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
References: <BL0PR02MB3716F0B244D891333FE1A648AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>,
 <CAL263izhscyCerGAWEK9Rrx=YXByb2-ZZDQT-WLmBJR3EQAkaQ@mail.gmail.com>
In-Reply-To: <CAL263izhscyCerGAWEK9Rrx=YXByb2-ZZDQT-WLmBJR3EQAkaQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4239028-ff1c-49ce-f1f2-08d725b94361
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR02MB6515; 
x-ms-traffictypediagnostic: BL0PR02MB6515:
x-ms-exchange-purlcount: 6
x-microsoft-antispam-prvs: <BL0PR02MB6515537D0F2F57C3844A647AAAAB0@BL0PR02MB6515.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(376002)(396003)(346002)(53754006)(199004)(189003)(6436002)(75432002)(606006)(102836004)(19627405001)(6916009)(8936002)(966005)(53546011)(2906002)(55016002)(6506007)(6116002)(3846002)(54896002)(6306002)(9686003)(786003)(5660300002)(236005)(476003)(81156014)(81166006)(486006)(52536014)(53936002)(88552002)(316002)(33656002)(478600001)(4326008)(99286004)(186003)(25786009)(76116006)(7736002)(66066001)(105004)(66946007)(224303003)(74316002)(66476007)(66556008)(64756008)(66446008)(7696005)(76176011)(26005)(11346002)(86362001)(14454004)(5024004)(256004)(14444005)(446003)(71190400001)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR02MB6515;
 H:BL0PR02MB3716.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lznHwd2tx4/JVkBGKeuzJEl5R9niXIAsgKFWur2/dGDtb7ys13Xa+zr0it9AzpPWb6cF/wk1H37S1U/aFLQOSdmlyjemllCHHEUOZvIqhin0zyOtOABeNwGZdTTTY1bNm9WiaXsor6BqDwreyrOnH/gmrscH794t/utn6N1UCpmGvf9gGYjFt4t7IOKeC7LWNZv2w4hT3eUoS/ryhdX2+1T56l/1+lare9q9c+uWV1jXv0960fwx5BM7wmkeItaqCdm+Thau6TkC/8l+DgN/oKMOUfm9O8keZlZm8qccLVnCzuVkhYYKIQBERP06stYv7v+5FqJ04r76LBnV3wylDpefcU00Vs63zevGkx1J+hgkZ3MmCyXyB8IN4oS23AJr7IqYEUt2VxuyD1vDKdrw7xgGMSCjJhe0Pg6YOPOagjQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: a4239028-ff1c-49ce-f1f2-08d725b94361
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 21:56:32.3755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CXDxJLPrNVwxsQN2/JxN7DiAT+SjhJmFK6JbGjX+xa0iNFwIjYEkwejpnyq58iLw
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0722098768334527404=="
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

--===============0722098768334527404==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BL0PR02MB3716AFC51BBD11F5BA590BC3AAAB0BL0PR02MB3716namp_"

--_000_BL0PR02MB3716AFC51BBD11F5BA590BC3AAAB0BL0PR02MB3716namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTmF0ZSwNCg0KVGhhbmtzIGEgbG90IGZvciB5b3VyIGhlbHAhIEknbGwgbG9vayBhdCB0aGVz
ZSBhbmQgc2VlIHdoYXQgSSBjYW4gZG8uDQoNCkJlc3QgcmVnYXJkcywNCkZlbmd5YW5nIEppYW5n
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0Kt6K8/sjLOiBOYXRlIFRlbXBsZSA8
bmF0ZS50ZW1wbGVAZXR0dXMuY29tPg0Kt6LLzcqxvOQ6IDIwMTnE6jjUwjIwyNUgMTU6MzUNCsrV
vP7IyzogSmlhbmcsIEZlbmd5YW5nIDxmemoyOEBwc3UuZWR1Pg0Ks63LzTogdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K1vfM4jogUmU6IFtV
U1JQLXVzZXJzXSBBIFF1ZXN0aW9uIGFib3V0IFN5bmNocm9uaXphdGlvbg0KDQpIaSBGZW5neWFu
ZywNCg0KVGhlc2UgYXJlIGNhbGxzIHRvIHRoZSBVSEQgQVBJIHdpdGhpbiB5b3VyIGFwcGxpY2F0
aW9uLg0KDQpUaGVyZSBhcmUgc2V2ZXJhbCBleGFtcGxlcyBoZXJlIFswXSBvZiB1c2luZyB0aGUg
VUhEIEFQSS4gSSB3b3VsZCBlbmNvdXJhZ2UgeW91IHRvIGNoZWNrb3V0IHNwZWNpZmljYWxseSB0
aGVzZSBleGFtcGxlcyBbMV0sWzJdIGFzIGEgc3RhcnRpbmcgcG9pbnQuIEFkZGl0aW9uYWxseSB0
aGVyZSBpcyB0aGlzIGFwcCBub3RlIFszXSB3aGljaCBzaG93cyBob3cgdG8gZ2V0IHN0YXJ0ZWQg
d2l0aCB0aGUgaW5pdF91c3JwIGV4YW1wbGUgdG8gc2V0dXAgYSBjbWFrZSBmaWxlLiBUaGlzIHNl
Y3Rpb24gWzRdIG9mIHRoZSBVSEQgbWFudWFsIGlzIGFsc28gdXNlZnVsIGZvciB0aGUgQVBJIHJl
ZmVyZW5jZS4NCg0KQWRkaXRpb25hbGx5IHlvdSdsbCBuZWVkIHRvIG1ha2Ugc3VyZSB0aGUganVt
cGVyIGF0IEo1MTAgaXMgc2V0IHRvIHRoZSBjb3JyZWN0IHBvc2l0aW9uIGZvciBhbiBleHRlcm5h
bCByZWZlcmVuY2UuIEkndmUgYXR0YWNoZWQgYSBkaWFncmFtIGZvciBzZXR0aW5nIHVwIGEgR1BT
RE8gb24gTjIxMCAob25seSBleGFtcGxlIEkgaGF2ZSBhdCB0aGUgbW9tZW50KS4gSW5zdGVhZCBv
ZiBzZXR0aW5nIHRoZSBqdW1wZXIgdG8gMi8zIGZvciBHUFNETywgeW91IHNob3VsZCBtYWtlIHN1
cmUgaXQgaXMgb24gcGlucyAxLzIgZm9yIHRoZSBleHRlcm5hbCByZWYgaW4uDQoNClswXSAtIGh0
dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC90cmVlL21hc3Rlci9ob3N0L2V4YW1w
bGVzPGh0dHBzOi8vbmFtMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1o
dHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZFdHR1c1Jlc2VhcmNoJTJGdWhkJTJGdHJlZSUyRm1h
c3RlciUyRmhvc3QlMkZleGFtcGxlcyZkYXRhPTAyJTdDMDElN0NmemoyOCU0MHBzdS5lZHUlN0Nj
NGFkMmQ1YTk4YTA0ZGFlM2QwZTA4ZDcyNWE1NjQ3ZiU3QzdjZjQ4ZDQ1M2RkYjQzODlhOWMxYzEx
NTUyNmViNTJlJTdDMCU3QzAlN0M2MzcwMTkyNjQ1OTYyNTQ4Mzgmc2RhdGE9S0hmdFBlcHhzR2RP
VFZlNGMzN09HS3lVT1lYRTBMUnVkJTJCd3VuWUs4RGhNJTNEJnJlc2VydmVkPTA+DQpbMV0gLSBo
dHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91aGQvYmxvYi9tYXN0ZXIvaG9zdC9leGFt
cGxlcy9yeF9zYW1wbGVzX3RvX2ZpbGUuY3BwPGh0dHBzOi8vbmFtMDEuc2FmZWxpbmtzLnByb3Rl
Y3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZFdHR1c1Jl
c2VhcmNoJTJGdWhkJTJGYmxvYiUyRm1hc3RlciUyRmhvc3QlMkZleGFtcGxlcyUyRnJ4X3NhbXBs
ZXNfdG9fZmlsZS5jcHAmZGF0YT0wMiU3QzAxJTdDZnpqMjglNDBwc3UuZWR1JTdDYzRhZDJkNWE5
OGEwNGRhZTNkMGUwOGQ3MjVhNTY0N2YlN0M3Y2Y0OGQ0NTNkZGI0Mzg5YTljMWMxMTU1MjZlYjUy
ZSU3QzAlN0MwJTdDNjM3MDE5MjY0NTk2MjY0ODMyJnNkYXRhPVlveDVucm9NSERBQVFVREoyeTl3
R0xZJTJCQUx4Y3ZpUlIxRDBMN0I2N0F2cyUzRCZyZXNlcnZlZD0wPg0KWzJdIC0gaHR0cHM6Ly9n
aXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFzdGVyL2hvc3QvZXhhbXBsZXMvcnhf
bXVsdGlfc2FtcGxlcy5jcHA8aHR0cHM6Ly9uYW0wMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRs
b29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRkV0dHVzUmVzZWFyY2glMkZ1
aGQlMkZibG9iJTJGbWFzdGVyJTJGaG9zdCUyRmV4YW1wbGVzJTJGcnhfbXVsdGlfc2FtcGxlcy5j
cHAmZGF0YT0wMiU3QzAxJTdDZnpqMjglNDBwc3UuZWR1JTdDYzRhZDJkNWE5OGEwNGRhZTNkMGUw
OGQ3MjVhNTY0N2YlN0M3Y2Y0OGQ0NTNkZGI0Mzg5YTljMWMxMTU1MjZlYjUyZSU3QzAlN0MwJTdD
NjM3MDE5MjY0NTk2MjY0ODMyJnNkYXRhPURMJTJGSHI3ZmxYZHk4U25RJTJGNmxqUFNSeEducUNF
S2QwdzhtUkklMkJ6WThWZTQlM0QmcmVzZXJ2ZWQ9MD4NClszXSAtIGh0dHBzOi8va2IuZXR0dXMu
Y29tL0dldHRpbmdfU3RhcnRlZF93aXRoX1VIRF9hbmRfQyUyQiUyQjxodHRwczovL25hbTAxLnNh
ZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZrYi5ldHR1
cy5jb20lMkZHZXR0aW5nX1N0YXJ0ZWRfd2l0aF9VSERfYW5kX0MlMjUyQiUyNTJCJmRhdGE9MDIl
N0MwMSU3Q2Z6ajI4JTQwcHN1LmVkdSU3Q2M0YWQyZDVhOThhMDRkYWUzZDBlMDhkNzI1YTU2NDdm
JTdDN2NmNDhkNDUzZGRiNDM4OWE5YzFjMTE1NTI2ZWI1MmUlN0MwJTdDMCU3QzYzNzAxOTI2NDU5
NjI3NDgzMCZzZGF0YT00NGhHTE92WlFNbmxyZ1ElMkIxYkhGcmtFWmtUTG1OckFtME52UGkyNDZ0
NkUlM0QmcmVzZXJ2ZWQ9MD4NCls0XSAtIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9w
YWdlX3VoZC5odG1sPGh0dHBzOi8vbmFtMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5j
b20vP3VybD1odHRwcyUzQSUyRiUyRmZpbGVzLmV0dHVzLmNvbSUyRm1hbnVhbCUyRnBhZ2VfdWhk
Lmh0bWwmZGF0YT0wMiU3QzAxJTdDZnpqMjglNDBwc3UuZWR1JTdDYzRhZDJkNWE5OGEwNGRhZTNk
MGUwOGQ3MjVhNTY0N2YlN0M3Y2Y0OGQ0NTNkZGI0Mzg5YTljMWMxMTU1MjZlYjUyZSU3QzAlN0Mw
JTdDNjM3MDE5MjY0NTk2Mjc0ODMwJnNkYXRhPXdXOHFqb2hUeDY3RmJqUGliMkJIc0pTUHRLWTRW
VDJYdk84VmJxeXdWOVklM0QmcmVzZXJ2ZWQ9MD4NCg0KUmVnYXJkcywNCk5hdGUgVGVtcGxlDQoN
Ck9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDExOjA5IEFNIEppYW5nLCBGZW5neWFuZyB2aWEgVVNS
UC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPj4gd3JvdGU6DQpIaSBhbGwsDQoNCkknbSB0cnlpbmcgdG8gc3luY2hyb25p
emUgMiBVU1JQIE4yMTAgZGV2aWNlcyB1c2luZyB0aGUgT2N0b0Nsb2NrLUcgQ0RBLTI5OTAgYXMg
ZXh0ZXJuYWwgMTBNSHogcmVmZXJlbmNlIGFuZCBQUFMgc291cmNlcy4gSXQgaXMgc2FpZCB0aGF0
IEkgbmVlZCB0byBzZXQgdXAgdHdvIGNvbmZpZ3VyYXRpb25zOg0KDQp1c3JwLT5zZXRfY2xvY2tf
c291cmNlKCJleHRlcm5hbCIpOw0KdXNycC0+c2V0X3RpbWVfc291cmNlKCJleHRlcm5hbCIpOw0K
DQpXaGljaCBmaWxlIGluIHdoaWNoIHBhdGggc2hvdWxkIEkgbW9kaWZ5IGluIG9yZGVyIHRvIGFw
cGx5IHRoZXNlIGNvbmZpZ3VyYXRpb25zPyBUaGFua3MgYSBsb3QhDQoNCkJlc3QgcmVnYXJkcywN
CkZlbmd5YW5nIEppYW5nDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCmh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbTxodHRwczov
L25hbTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cCUzQSUyRiUy
Rmxpc3RzLmV0dHVzLmNvbSUyRm1haWxtYW4lMkZsaXN0aW5mbyUyRnVzcnAtdXNlcnNfbGlzdHMu
ZXR0dXMuY29tJmRhdGE9MDIlN0MwMSU3Q2Z6ajI4JTQwcHN1LmVkdSU3Q2M0YWQyZDVhOThhMDRk
YWUzZDBlMDhkNzI1YTU2NDdmJTdDN2NmNDhkNDUzZGRiNDM4OWE5YzFjMTE1NTI2ZWI1MmUlN0Mw
JTdDMCU3QzYzNzAxOTI2NDU5NjI4NDgyOCZzZGF0YT1WJTJCcDBRbW91VVJzSVA2RUhXYWdxcVh6
ZjhNUmolMkJBeTglMkJ6Sm5DZEF3Tm5NJTNEJnJlc2VydmVkPTA+DQo=

--_000_BL0PR02MB3716AFC51BBD11F5BA590BC3AAAB0BL0PR02MB3716namp_
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
Hi Nate,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks a lot for your help! I'll look at these and see what I can do.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang Jiang</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Nate Te=
mple &lt;nate.temple@ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2019=C4=EA8=D4=C220=C8=D5 15:35<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Jiang, Fengyang &lt;fzj28@psu.edu&gt;<br>
<b>=B3=AD=CB=CD:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.=
com&gt;<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] A Question about Synchronization</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:arial,helvetica,sans-se=
rif">Hi Fengyang,<br>
<br>
These are calls to the UHD API within your application.<br>
<br>
There are several examples here [0] of using the UHD API. I would encourage=
 you to checkout specifically these examples [1],[2] as a starting point. A=
dditionally there is this app note [3] which shows how to get started with =
the init_usrp example to setup a
 cmake file. This section [4] of the UHD manual is also useful for the API =
reference.<br>
<br>
Additionally you'll need to make sure the jumper at J510 is set to the corr=
ect position for an external reference. I've attached a diagram for setting=
 up a GPSDO on N210 (only example I have at the moment). Instead of setting=
 the jumper to 2/3 for GPSDO, you
 should make sure it is on pins 1/2 for the external ref in.<br>
<br>
[0] - <a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Fgithub.com%2FEttusResearch%2Fuhd%2Ftree%2Fmaster%2Fhost%2Fexample=
s&amp;data=3D02%7C01%7Cfzj28%40psu.edu%7Cc4ad2d5a98a04dae3d0e08d725a5647f%7=
C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C637019264596254838&amp;sdata=3D=
KHftPepxsGdOTVe4c37OGKyUOYXE0LRud%2BwunYK8DhM%3D&amp;reserved=3D0" original=
src=3D"https://github.com/EttusResearch/uhd/tree/master/host/examples" shas=
h=3D"ownilc4OOkebgEM/gJ8p4dbXp89OYLcazJv2ai8Oet5ch0avax/t5sjujlHoLvGqoUeEuD=
sVqJFjpUU/T1b7Ghc3pufgfzJRwQr8qXuv5aqUGWyPXV8IuUEhW0jAIVkuE&#43;jofzw/KHeTS=
b5wR0iodPqsjxdq65W3zyhhKlwFmmE=3D">
https://github.com/EttusResearch/uhd/tree/master/host/examples</a><br>
[1] - <a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Fgithub.com%2FEttusResearch%2Fuhd%2Fblob%2Fmaster%2Fhost%2Fexample=
s%2Frx_samples_to_file.cpp&amp;data=3D02%7C01%7Cfzj28%40psu.edu%7Cc4ad2d5a9=
8a04dae3d0e08d725a5647f%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C637019=
264596264832&amp;sdata=3DYox5nroMHDAAQUDJ2y9wGLY%2BALxcviRR1D0L7B67Avs%3D&a=
mp;reserved=3D0" originalsrc=3D"https://github.com/EttusResearch/uhd/blob/m=
aster/host/examples/rx_samples_to_file.cpp" shash=3D"HCUWIm2p3/nMC9&#43;b7K=
V9RSOyE2YT5xYUblsJbnDb0kDkLH&#43;45X03FFyDnPJLP8QspiYAZbvVZlPHmvUMeg2MLa6lk=
z&#43;B1cC44KTiU3ungzry7h1F5zB75Yq5iikTG/5HcFVQt0Sr&#43;EexakSaY1g1MXQFUFTG=
8DD7h1ZHH&#43;2tFL4=3D">
https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_t=
o_file.cpp</a><br>
[2] - <a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Fgithub.com%2FEttusResearch%2Fuhd%2Fblob%2Fmaster%2Fhost%2Fexample=
s%2Frx_multi_samples.cpp&amp;data=3D02%7C01%7Cfzj28%40psu.edu%7Cc4ad2d5a98a=
04dae3d0e08d725a5647f%7C7cf48d453ddb4389a9c1c115526eb52e%7C0%7C0%7C63701926=
4596264832&amp;sdata=3DDL%2FHr7flXdy8SnQ%2F6ljPSRxGnqCEKd0w8mRI%2BzY8Ve4%3D=
&amp;reserved=3D0" originalsrc=3D"https://github.com/EttusResearch/uhd/blob=
/master/host/examples/rx_multi_samples.cpp" shash=3D"zOepM0k3KMovoZ5W30WMLx=
HgYRWknGqvEsm2ijMdTRXUPCRROE7b&#43;s6slBMdM/EWA4SVNFkmcgf3Cvwbipw9cErny2trp=
Ac/rQYvS7ogl88yDGPaGvr5wOfdFcCO5Xy&#43;WdJ1xZlZOFQAkdU/TjXe97vBSDG06tNIEabH=
VYBkGCc=3D">
https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_multi_sam=
ples.cpp</a><br>
[3] - <a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Fkb.ettus.com%2FGetting_Started_with_UHD_and_C%252B%252B&amp;data=
=3D02%7C01%7Cfzj28%40psu.edu%7Cc4ad2d5a98a04dae3d0e08d725a5647f%7C7cf48d453=
ddb4389a9c1c115526eb52e%7C0%7C0%7C637019264596274830&amp;sdata=3D44hGLOvZQM=
nlrgQ%2B1bHFrkEZkTLmNrAm0NvPi246t6E%3D&amp;reserved=3D0" originalsrc=3D"htt=
ps://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B" shash=3D"MhsehkgbGQ=
Pite9smYHwznbzRRsPw0nJ40bRoYQLENQSOI9fFqsbq8&#43;p&#43;RS95nOUJ67IZxZbPQ6sQ=
ovajtgpXf5YHm3CRDHaS6D6oTTVGmC68s7Omd85h1qWEH0wBAI4VMsW82L1V1n/kNUZAhp2/xyf=
b/S03HkIVCwuMasqfaM=3D">
https://kb.ettus.com/Getting_Started_with_UHD_and_C%2B%2B</a><br>
[4] - <a href=3D"https://nam01.safelinks.protection.outlook.com/?url=3Dhttp=
s%3A%2F%2Ffiles.ettus.com%2Fmanual%2Fpage_uhd.html&amp;data=3D02%7C01%7Cfzj=
28%40psu.edu%7Cc4ad2d5a98a04dae3d0e08d725a5647f%7C7cf48d453ddb4389a9c1c1155=
26eb52e%7C0%7C0%7C637019264596274830&amp;sdata=3DwW8qjohTx67FbjPib2BHsJSPtK=
Y4VT2XvO8VbqywV9Y%3D&amp;reserved=3D0" originalsrc=3D"https://files.ettus.c=
om/manual/page_uhd.html" shash=3D"tOtNtYwse9t0FUxN6Zku2C/flNUofYrYQ47pcXKep=
Rkv0nU29X6XCqs5bkDIowOwdQTYmefbo444mTG6RAd0jvi/6jlZwhmhZuP85ICoxyX6lzqvyHyl=
yyYyUObdrZ8opFgVEtfRK/qnsi/XIOUL6iOJJFHJBDyw5scHoy1&#43;nmg=3D">
https://files.ettus.com/manual/page_uhd.html</a><br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Aug 20, 2019 at 11:09 AM Ji=
ang, Fengyang via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
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
ta=3D02%7C01%7Cfzj28%40psu.edu%7Cc4ad2d5a98a04dae3d0e08d725a5647f%7C7cf48d4=
53ddb4389a9c1c115526eb52e%7C0%7C0%7C637019264596284828&amp;sdata=3DV%2Bp0Qm=
ouURsIP6EHWagqqXzf8MRj%2BAy8%2BzJnCdAwNnM%3D&amp;reserved=3D0" originalsrc=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" sha=
sh=3D"jedbWD4ewplPE5cZm6R50tTOFmZKiT1O/Bo4g&#43;lY/udQREgPFZtSaYoZnCLEmYtti=
yY21K2xR6lyRpBUbspNlR2Ce9QpTwz2ap&#43;wo/hf6qUJ31hH0c6tSPxmClXe6XRqE2hW8twS=
uJbHc7YOhx3/yeISbo62ZcM1888TFLnMlWM=3D" rel=3D"noreferrer" target=3D"_blank=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br=
>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BL0PR02MB3716AFC51BBD11F5BA590BC3AAAB0BL0PR02MB3716namp_--


--===============0722098768334527404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0722098768334527404==--

