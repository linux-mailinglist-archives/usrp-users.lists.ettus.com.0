Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 753FACC179
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2019 19:18:15 +0200 (CEST)
Received: from [::1] (port=54514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iGRDT-0003o1-Ss; Fri, 04 Oct 2019 13:18:07 -0400
Received: from mail-eopbgr730068.outbound.protection.outlook.com
 ([40.107.73.68]:20412 helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1iGRDP-0003e1-SB
 for usrp-users@lists.ettus.com; Fri, 04 Oct 2019 13:18:03 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVQYGnHVO4HKzbUQwbtT3XVFMxwJH4quTT+uRJs17efdOsPzWSIVBNOUr4daBsYm8URYW9+UKu23LBqS4txe5yEs5M9EDuwgUtyIMqqf/6Z3hv6SOAEKuvZLPB1WrPiJIQq3GWCBaMFl5KpqUFgq6hNKxRVg/hP25ha0sGqJ4DiF8IEkcnWQu6RspnJcFsiUsey0ZHuQR/hD08Y8GN+Mo3crvbMyPA4DqGEMbG5VKY6Y/gYGMeoQg/TxcFDTuFhFjvD/28JER2vRDlG1nHesEjMUFHI5iBSaQjuj4q82ATzRwbqJAFgBnyhdlzGTXEzw+meZ4ryTIrgkASTaO4Lzvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwSxv0WwjaomdKkxP4XtImG0TjH4oBLu/PtaTucMt98=;
 b=aIkeJmuJ4xFNpDI9xysKtGxxlRibNQupDC5E+9q8xtEXlRJmPLPbVyEc2KKa6GPtVn1rwFq7g1lR9U3WlkMK79vxqQrMfaD4zd2skPTRsId4wLoWa+8d5bhhTAcHQOIAR4nJpnHDQF0EtKYzRiNXz+wUBv+wbQBcnR+Cx7Ol59V82uOVyLmd347/JT8d53zPv66jiRfRIYjaabOhxbRep5+kEy1eta3Ik0FAFdEOIxG1UecsA6zaLXmX/HBrmAVE8CpYevEOnN40BYK8bjOC1BLHcn/ru1uNoUvGY/2Aa5GL3ESNr4TUEBYm2BKTuVvKMVGgk/cTvJT8No6P60JPNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XwSxv0WwjaomdKkxP4XtImG0TjH4oBLu/PtaTucMt98=;
 b=OTQxLMKfNvq44jiov8jkOs8fDK2eJ190uoNBSq50DPqh64nQaPsWRZScj8r/z1qfF2CUvd54oUhvXzQqwQWI/Ie2WpjQfgJ36W/hVe/rc38XoF6b3JD6UarY2CU2g/fVOZgTWuhLBfgkeQHPPIjpFSLghYrdmCvKdu17NTLVOwc=
Received: from BL0PR12MB2417.namprd12.prod.outlook.com (52.132.31.21) by
 BL0PR12MB2482.namprd12.prod.outlook.com (52.132.9.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 4 Oct 2019 17:17:21 +0000
Received: from BL0PR12MB2417.namprd12.prod.outlook.com
 ([fe80::f97a:5a45:f4df:5211]) by BL0PR12MB2417.namprd12.prod.outlook.com
 ([fe80::f97a:5a45:f4df:5211%7]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 17:17:21 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: usrp probe and find commands
Thread-Index: AQHVeteU0A98AhWslUKY/Ax1lUtsfw==
Date: Fri, 4 Oct 2019 17:17:20 +0000
Message-ID: <A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mark.koenig@iubelttechnologies.com; 
x-originating-ip: [50.233.168.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66b920be-2275-4080-a625-08d748eeb749
x-ms-traffictypediagnostic: BL0PR12MB2482:
x-microsoft-antispam-prvs: <BL0PR12MB2482CAB4AE20B0E7A73F5D708C9E0@BL0PR12MB2482.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(396003)(346002)(39830400003)(136003)(51914003)(199004)(189003)(44832011)(33656002)(6916009)(9686003)(6486002)(476003)(486006)(6436002)(6116002)(5640700003)(2501003)(256004)(3846002)(66066001)(6506007)(81156014)(71200400001)(71190400001)(8676002)(5660300002)(508600001)(99286004)(64756008)(8936002)(36756003)(25786009)(6306002)(66476007)(316002)(558084003)(7736002)(66946007)(66446008)(102836004)(66556008)(186003)(81166006)(6512007)(14454004)(76116006)(54896002)(26005)(86362001)(2351001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR12MB2482;
 H:BL0PR12MB2417.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: iubelttechnologies.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xi0iJI4sjsEw5mb0BeGVfWWhUj3LtBAtrw2RWwegHgsq3qn4WNVrffn/4W/MJ2cWH6EQsQvxscq2d+5YTjc3pPtWP6xYt01QS+tMUM8ZET1kRDAVuhIOuvLkiQ+obiHFIbbJptCsAodNxNLfPwEBPfSqUEibdsfYVoLwbthqGuPiSC2WqsOv3QuwZrKizJYaIHPk0cEEwSKtAWnFdgljFlmgClny+Qtb+9bbIsqbGR6mA14BQt5XBz/+ZHEKWRKn5/zo1Iu+QrJ0/TMz4AKQoLfQ+Tylx0323HQN+rbBdKEloF7ObS73GG6O0uEAoENAsmlGt9R9jnxfiAKTi7kT57jVqF7ybrjBogMoucWum2Ej2HECtWCqkZL3aBvXLWp0+UC3dvikCCrfiogNAVxNT4zlKD9JHo/3BrUuRd63EPc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b920be-2275-4080-a625-08d748eeb749
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 17:17:20.9078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VFowYe9GvFuGPzurqpZJSqbEqBoB9/UxkKMRN8QdhIPiiM9p5srySbNwBlvI4shx6KojIbyWOLOycS6Agkj+Va0YHtudsanWajWoJQXNU5/AlFvBW9GBHxwvjSMD5zze
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2482
Subject: [USRP-users] usrp probe and find commands
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
From: Mark Koenig via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Content-Type: multipart/mixed; boundary="===============5367037395194766167=="
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

--===============5367037395194766167==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A97E90B748D8425CA07125D24FEF2DB1contosocom_"

--_000_A97E90B748D8425CA07125D24FEF2DB1contosocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRlYSB3aHkgSSBjYW4gb25seSBwcm9iZSBteSByYWRpbyBp
ZiBJIGluY2x1ZGUgdGhlIGFkZHJlc3Mgc3RyaW5nPw0KDQpVaGRfdXNycF9wcm9iZSAtLT4geWll
bGRzIG5vIHJlc3VsdHMNCg0KVWhkX3VzcnBfcHJvYmUg4oCTYXJncyDigJxhZGRyPTE5Mi4xNjgu
MTAuMuKAnSAtLT4gZmluZCB0aGUgcmFkaW8gYW5kIHlpZWxkcyByZXN1bHRzDQoNCg0KQWxzbywg
dGhlIHVoZF9maW5kX2RldmljZXMgY29tbWFuZCBkb2VzIG5vdCByZXR1cm4gYW55dGhpbmcuDQoN
ClRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNrLg0KDQpNYXJrDQo=

--_000_A97E90B748D8425CA07125D24FEF2DB1contosocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <10305784EDF84A47BD0C11A7F285AD1C@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iVGl0bGUiIGNvbnRlbnQ9IiI+DQo8bWV0YSBuYW1lPSJLZXl3b3JkcyIgY29udGVu
dD0iIj4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUg
KGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxlPjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8N
CkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6V2luZ2RpbmdzOw0KCXBhbm9zZS0xOjUgMCAwIDAg
MCAwIDAgMCAwIDA7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsN
CglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1p
bHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBE
ZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0K
CXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0
Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29I
eXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4
dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9s
bG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiM5NTRGNzI7DQoJdGV4dC1k
ZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlw
ZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0K
CWNvbG9yOndpbmRvd3RleHQ7fQ0Kc3Bhbi5tc29JbnMNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0
LW9ubHk7DQoJbXNvLXN0eWxlLW5hbWU6IiI7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTsN
Cgljb2xvcjp0ZWFsO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1v
bmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0
aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4w
aW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxl
Pg0KPC9oZWFkPg0KPGJvZHkgYmdjb2xvcj0id2hpdGUiIGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2
M0MxIiB2bGluaz0iIzk1NEY3MiI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPkRvZXMgYW55b25l
IGhhdmUgYW55IGlkZWEgd2h5IEkgY2FuIG9ubHkgcHJvYmUgbXkgcmFkaW8gaWYgSSBpbmNsdWRl
IHRoZSBhZGRyZXNzIHN0cmluZz8NCjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpw
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjExLjBwdCI+VWhkX3VzcnBfcHJvYmUgPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0O2ZvbnQtZmFtaWx5OldpbmdkaW5ncyI+w6A8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxMS4wcHQiPiB5aWVsZHMgbm8gcmVzdWx0czxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNw
OzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExLjBwdCI+VWhkX3VzcnBfcHJvYmUg4oCTYXJncyDigJxhZGRyPTE5Mi4xNjguMTAu
MuKAnQ0KPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5Oldp
bmdkaW5ncyI+w6A8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPiBmaW5kIHRo
ZSByYWRpbyBhbmQgeWllbGRzIHJlc3VsdHM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5BbHNvLCB0aGUgdWhkX2ZpbmRf
ZGV2aWNlcyBjb21tYW5kIGRvZXMgbm90IHJldHVybiBhbnl0aGluZy48bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPlRoYW5rcyBmb3IgdGhlIHF1aWNrIGZlZWRiYWNr
LjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+TWFyazxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_A97E90B748D8425CA07125D24FEF2DB1contosocom_--


--===============5367037395194766167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5367037395194766167==--

