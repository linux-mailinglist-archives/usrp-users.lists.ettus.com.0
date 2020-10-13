Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FAE28CCAB
	for <lists+usrp-users@lfdr.de>; Tue, 13 Oct 2020 13:40:06 +0200 (CEST)
Received: from [::1] (port=46406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSIev-0003Xs-8I; Tue, 13 Oct 2020 07:40:01 -0400
Received: from mail-eopbgr770071.outbound.protection.outlook.com
 ([40.107.77.71]:13635 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kSIeq-0003TU-Ny
 for usrp-users@lists.ettus.com; Tue, 13 Oct 2020 07:39:57 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ElwJ/0MoyIM8NFlK3IY15ImxKh0cdHcUCY/ZkIlg+HieBqVQQ4LVhHXUzflEOFq4N+NBWz3Cd2UYVGl3krfartJPoLGeZG5fJk0qUgqL2Obdu0nhuJOBAvs1oSXbkE/jMhJAFC+C5TFM37m/SUKcNncmSHj1TACRxhaOcMKwl9yMYWywaFd4Iga24i9cx8GrsoNyPcXjHi8BZ5cspGfrllGAOLZc7h1HvIe1Jn62cQvZ/PHrxD3DfNqy9DI2GNObIUuouW/J/QT6D8wnht9dWyMtElHR0mpztwZ1TCba7eqQeylUSx7y0COETp7RLzenNo2+BtFsWAsm0dt0SB/MCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDQYZuTVMrq5YnXckLd/DQ/U2Re7iwRsCU3sMEvybb0=;
 b=fZflshobjWJQqYpoYCVRx5CNfcNgPXN7X8z2NR/L5mRn85MkbnH1JFHvuwoSnx1vlUxXUi7Niym4BOEvmiNUCEmAtKQjMhqTTf0IaFxQj7tlptWtwdxm6PqK4N9zxlWMrYv4Ek0caS9DcJHvTPTHPz2MhALZxoEHAqPwIZSez+KYP8z0AWk9sIOkHQZy/YZHuJsJMJ/IwxdL/WyU1Rs0UQJCHkNLW3z4ZaC9M97XcdRH8sgJwIf8sNtMp3ZO4SsiX1eVcSZDl+b7Hq98WVyPS/18poFf1KcGLI6dtmDEIoLbL6QyHuXofKALxo1+lbaJyYKKqN8qAMPzHC9Temj5yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDQYZuTVMrq5YnXckLd/DQ/U2Re7iwRsCU3sMEvybb0=;
 b=VH/tbf1Kj8lEaJGFnrgJ0rqSlyKn8f3VOScliD7UcJZDJB9xIF7Eq2zagtpyGlpQEi9U9/ZGfPUkGbYW0ow8Wfyb1Cjl8YmPr6AY6LBXv8TOlkbPHt9J6fArQqm4+8IlhLgogKpdSsdFXBCW9h5rfllWrPTbr2ZifWfGgDxDiD8=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM6PR12MB4138.namprd12.prod.outlook.com (2603:10b6:5:220::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Tue, 13 Oct
 2020 11:39:15 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1%4]) with mapi id 15.20.3455.031; Tue, 13 Oct 2020
 11:39:14 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Details on how these charts were made
Thread-Index: AQHWoVV6b2e7mEPZhUylxLtQHneCZw==
Date: Tue, 13 Oct 2020 11:39:14 +0000
Message-ID: <9A418785-0BB4-44DA-854E-66130975896C@iubelttechnologies.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66042c0e-8022-48fa-b608-08d86f6c9cb2
x-ms-traffictypediagnostic: DM6PR12MB4138:
x-microsoft-antispam-prvs: <DM6PR12MB4138E2590AEE3AF576745EF48C040@DM6PR12MB4138.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I2Z11pc7Q0Hw+3UPD0unhXnIBz65JmRiHfMor3LQRsLa+JintIRqlrh2GDqvC4NxK7F+1l/uE0o+F+Q+7cCDAsF/8Y22SqUPLgXY2lig8YkO16S1UBhhWQkuhBFz33/KQGHQwZMsLWIzDKez/mGbj2Fp1Z5Qf/9u0T5wRu1UR5L93IeGw3DVL9mLJu5VYX3LXab2XmcL155uWCifogxnHRgKAllZVcqyGVqTMGjMPkDBpyuiDp5syfBAvSlDAvZDqqweSq1e0KXOvnpjtiypFderoLSL3Elt71o/MidnDBHPnNpHxDYbbkZiqQvGUqh/+Nfl8xu+iHxQQHdnXOTST3qvb6AEZwSojlcua7v2/HZJyfP4dTQDdDAEbqXQTa5N1rm4Sm/1Y360g4uDo4YxSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(39830400003)(136003)(346002)(376002)(66946007)(66446008)(66476007)(64756008)(66556008)(26005)(6512007)(4744005)(5660300002)(2616005)(71200400001)(91956017)(8936002)(186003)(44832011)(76116006)(8676002)(6486002)(86362001)(83080400001)(316002)(33656002)(478600001)(966005)(6916009)(36756003)(2906002)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: G7eo2fye7A3VWmXSyyPL8fD1L6w9FLhdlPl0pbzo6CT+Qc9RMzRrWLQtPIKJBDG9KQ8Op+b1+m1EkxSE3b7InL4fW/gaImpdD4+CKW7/CZWHnWZRYpBCcO7ESv1ZS0cLaPELh/9/UTJf/PmNpdyv0EB7OMLmsBqrlf5yhAWRbaRI0KhcUoh9665be2rmOr5bf1j8sVrK/IDdT5OSEsAzmWDHzu8LAQ0PoR16DdgbSI4s8aAgqhyp7WbUmhYcfDGOuyMFFiVjIuMGh0TIN2KJ8OYEnWdvv0ar/mCmtTEfBaYDYV90F+uLqQL5PNcQMf45boqgcibHqldzToUQ4V2UdjTpHp7XrDW1SGXReyZdgL1onTFg5HgZ/zZ/N3fJSljx7KRwZeIat+1kdAAjVaLK5adz3nlmHVhdDApC3mLGv1l0MrThB4J2mchhoJT4QFtz2CLx2HPPo8028ZOF69BPl9jni6Y/LTINqHV80bLb1wIyMhYGUgP2FxP2S31456ouzlpkrfarui1TWYvm7qDsMruPj+VqBUQyL1Cqek7wGd850Ppxj9488tU01Br4UyVtJNUQEz7BvWwkxR4GiCmsi5TCGNUlYddFtDmjj90A93tct7Rg6S1jWPldMi37LoszQ9lQTjA4dTU5TGvZs/NDqw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66042c0e-8022-48fa-b608-08d86f6c9cb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 11:39:14.6895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 492bgJ9EnRnkBIreLOXsNDGt4mtEoVCdc7uGa6XUZuW/O1uzLmVho3LE8Y8sqUvuL3k4leDKgFuAM05kNEcSJ5GNA1XuugyMANMPaWtQjuZn9nKd5okUpb+CWlKiISAl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4138
Subject: [USRP-users] Details on how these charts were made
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
Content-Type: multipart/mixed; boundary="===============6683971409471237729=="
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

--===============6683971409471237729==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9A4187850BB444DA854E66130975896Ciubelttechnologiescom_"

--_000_9A4187850BB444DA854E66130975896Ciubelttechnologiescom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSB0aGlua2luZyBvZiBkb2luZyBzb21lIFJGIGNoYXJhY3Rlcml6YXRpb24gb2YgdGhlIFR3
aW5SWCBkYXVnaHRlcmJvYXJkIGluIHRoZSBuZWFyIGZ1dHVyZSwgYW5kIEkgd2FzIGhvcGluZyB0
byB1c2UgdGhlIHBkZiBhcyBhIGd1aWRlLiAgVW5mb3J0dW5hdGVseSwgdGhlcmUgaXMgbm8gdGVz
dCBzZXQgdXAgb3IgdGVzdCBlcXVpcG1lbnQgbGlzdCB1c2VkIHRvIGNyZWF0ZSBzcGVjaWZpY2Fs
bHkgdGhlIFJ4IEdhaW4gcGxvdHMgdnMuIEZyZXF1ZW5jeSBmb3IgYSBnaXZlbiBnYWluIHZhbHVl
LiAgQW55IGhlbHAgd291bGQgYmUgZ3JlYXRseSBhcHByZWNpYXRlZCwgYXMgSSBtYXkgYmUgYWJs
ZSB0byBsb2NhdGUgdGhlIGVxdWlwbWVudCBpbiBteSBsYWIuDQoNCmh0dHBzOi8vZmlsZXMuZXR0
dXMuY29tL3BlcmZvcm1hbmNlX2RhdGEvdWJ4L1VCWC13aXRob3V0LVVIRC1jb3JyZWN0aW9ucy5w
ZGYNCg0KDQpUaGFuayB5b3UNCg0KTWFyaw0KDQoNCg==

--_000_9A4187850BB444DA854E66130975896Ciubelttechnologiescom_
Content-Type: text/html; charset="utf-8"
Content-ID: <571979890D40A340B85C053429DD3E34@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iVGl0bGUiIGNvbnRlbnQ9IiI+DQo8bWV0YSBuYW1lPSJLZXl3b3JkcyIgY29udGVu
dD0iIj4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUg
KGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxlPjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8N
CkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0
IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJ
cGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAyIDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8N
CnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsN
CgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJZm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21z
by1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1
bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1z
dHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjojOTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRl
cmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29t
cG9zZTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0
ZXh0O30NCnNwYW4ubXNvSW5zDQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCW1zby1z
dHlsZS1uYW1lOiIiOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7DQoJY29sb3I6dGVhbDt9
DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZh
bWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4
LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3Jk
U2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT4NCjwvaGVhZD4NCjxi
b2R5IGJnY29sb3I9IndoaXRlIiBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5
NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5JIGFtIHRoaW5raW5nIG9mIGRvaW5nIHNv
bWUgUkYgY2hhcmFjdGVyaXphdGlvbiBvZiB0aGUgVHdpblJYIGRhdWdodGVyYm9hcmQgaW4gdGhl
IG5lYXIgZnV0dXJlLCBhbmQgSSB3YXMgaG9waW5nIHRvIHVzZSB0aGUgcGRmIGFzIGEgZ3VpZGUu
Jm5ic3A7IFVuZm9ydHVuYXRlbHksIHRoZXJlIGlzIG5vIHRlc3Qgc2V0IHVwIG9yIHRlc3QgZXF1
aXBtZW50IGxpc3QgdXNlZA0KIHRvIGNyZWF0ZSBzcGVjaWZpY2FsbHkgdGhlIFJ4IEdhaW4gcGxv
dHMgdnMuIEZyZXF1ZW5jeSBmb3IgYSBnaXZlbiBnYWluIHZhbHVlLiZuYnNwOyBBbnkgaGVscCB3
b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLCBhcyBJIG1heSBiZSBhYmxlIHRvIGxvY2F0ZSB0
aGUgZXF1aXBtZW50IGluIG15IGxhYi48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxMS4wcHQiPmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL3BlcmZvcm1hbmNlX2RhdGEvdWJ4L1VC
WC13aXRob3V0LVVIRC1jb3JyZWN0aW9ucy5wZGY8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5UaGFuayB5b3U8bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPk1hcms8bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4N
CjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_9A4187850BB444DA854E66130975896Ciubelttechnologiescom_--


--===============6683971409471237729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6683971409471237729==--

