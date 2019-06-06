Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C7C37B5D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2019 19:47:35 +0200 (CEST)
Received: from [::1] (port=47838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYwU5-00053k-BM; Thu, 06 Jun 2019 13:47:29 -0400
Received: from mail-eopbgr800054.outbound.protection.outlook.com
 ([40.107.80.54]:56704 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1hYwU1-0004yl-5Q
 for usrp-users@lists.ettus.com; Thu, 06 Jun 2019 13:47:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector1-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olot75ZaRi9OaSy6wZb6tp16LMYC9KJQDhClcC3hGUI=;
 b=OXeqUtyk+hz69yMzy0V0scOcUSZV+UYrk6D95HaYYFLuIeTN2fCgCRGsL9ef16ODwlw6CbDuRx/pdlq/iUtjS114RED32p2MFP4+2qYFI76opB3VY88BspclOenK7F/AbC2LUy0HeeeZqoi7VBc2lH+AQrpwmn18AFUW+sIpBqA=
Received: from SN1PR12MB2432.namprd12.prod.outlook.com (52.132.195.147) by
 SN1PR12MB2494.namprd12.prod.outlook.com (52.132.196.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 17:46:42 +0000
Received: from SN1PR12MB2432.namprd12.prod.outlook.com
 ([fe80::b040:7493:ffed:b451]) by SN1PR12MB2432.namprd12.prod.outlook.com
 ([fe80::b040:7493:ffed:b451%7]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 17:46:42 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Comms Error
Thread-Index: AQHVHI/NVIyvbznEhECJ70bjpgmcYw==
Date: Thu, 6 Jun 2019 17:46:42 +0000
Message-ID: <8415D3F8-C584-4C83-A315-C9941AD31D30@contoso.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mark.koenig@iubelttechnologies.com; 
x-originating-ip: [50.233.168.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a307a14d-da07-465a-0ac7-08d6eaa6efc0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN1PR12MB2494; 
x-ms-traffictypediagnostic: SN1PR12MB2494:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <SN1PR12MB2494DA1730E58616E0D40C668C170@SN1PR12MB2494.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39830400003)(366004)(136003)(189003)(199004)(33656002)(66446008)(5660300002)(76116006)(66556008)(5640700003)(6436002)(6486002)(64756008)(8936002)(8676002)(81156014)(81166006)(54896002)(6306002)(66066001)(3480700005)(53936002)(82746002)(91956017)(7116003)(6512007)(9686003)(316002)(66476007)(73956011)(486006)(71190400001)(25786009)(2501003)(6116002)(3846002)(102836004)(256004)(186003)(83716004)(66946007)(6916009)(36756003)(476003)(7736002)(4744005)(6506007)(86362001)(2906002)(99286004)(14454004)(71200400001)(26005)(2351001)(508600001)(68736007)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR12MB2494;
 H:SN1PR12MB2432.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: iubelttechnologies.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q7+KuhBPcIsmlMQ/rYFzsG6LiagEaV+fi/RgvaOCIf0ShIfyN0eV3XzwOa0KbXBmHOgvz+UezXykJ4sR1giGA+0q09VI2IDzucFwCXKyG0kIYkqaHQ3VCX6qPY5u8IsFGFo7ma/1oiUzoO5B+GUU3DodpNd/4XxlndT9B+IEZQgHGWUBT4ZwcNHnYfYwu+qE5A8iEMzMVaL0hwRst5bYKULL/ynfHOZAvo6VOWq8NxNPk6/wpOSoPFpDnqULC4ym5NBaXXaWV4EvqEePgMuQ+3CVov4cMMSakZ2so5jmnO5doj6TbhHhzWaIfhjnZqVxka3bxXwj9pbwwHlLVJATqq8hRKtJFNon87bOOSn9+e0sUbUXdIva3TcKoR2JtSUuRjNpNXVMIUD/NRa4HUYm2ml/cwORxzxRv7qn37BxbOE=
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a307a14d-da07-465a-0ac7-08d6eaa6efc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 17:46:42.3996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mark.koenig@iubelttechnologies.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2494
Subject: [USRP-users] UHD Comms Error
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
Content-Type: multipart/mixed; boundary="===============6453809753943798285=="
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

--===============6453809753943798285==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8415D3F8C5844C83A315C9941AD31D30contosocom_"

--_000_8415D3F8C5844C83A315C9941AD31D30contosocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGxlYXNlIGhlbHAsIHdpdGggdGhlIGVycm9yIEkgYW0gc2VlaW5nLg0KDQpJIGFtIGN1cnJlbnRs
eSB1c2luZyBhbiBYMzEwIHdpdGggYSBVQlgxNjAgZGF1Z2h0ZXJjYXJkIGFuZCBJIGdldCB0aGUg
ZXJyb3IgYmVsb3cgd2hlbiBjaGFuZ2luZyB0aGUgZnJlcXVlbmN5IHBhcmFtZXRlcnMgb2YgdGhl
IHJhZGlvLg0KDQpSdW50aW1lRXJyb3I6IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IFJhZGlv
IGN0cmwgKEEpIHBhY2tldCBwYXJzZSBlcnJvciAtIEFzc2VydGlvbkVycm9yOiBwYWNrZXRfaW5m
by5wYWNrZXRfY291bnQgPT0gKHNlcV90b19hY2sgJiAweGZmZikNCiAgaW4gdWludDY0X3QgcmFk
aW9fY3RybF9jb3JlXzMwMDBfaW1wbDo6d2FpdF9mb3JfYWNrKGJvb2wpDQoNCg0KSSBhbSBjdXJy
ZW50bHkgcnVubmluZyBVSEQgMy45LjcsIGJ1dCBoYXZlIGFsc28gc2VlbiBhIHNpbWlsYXIgZXJy
b3Igd2l0aCAzLjEwLjINCg0KVGhhbmtzDQoNCk1hcmsNCg==

--_000_8415D3F8C5844C83A315C9941AD31D30contosocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <A7DBA802ADA5AE48AEDC0A03AA774702@namprd12.prod.outlook.com>
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
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5QbGVhc2UgaGVscCwgd2l0aCB0aGUgZXJy
b3IgSSBhbSBzZWVpbmcuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
Ij5JIGFtIGN1cnJlbnRseSB1c2luZyBhbiBYMzEwIHdpdGggYSBVQlgxNjAgZGF1Z2h0ZXJjYXJk
IGFuZCBJIGdldCB0aGUgZXJyb3IgYmVsb3cgd2hlbiBjaGFuZ2luZyB0aGUgZnJlcXVlbmN5IHBh
cmFtZXRlcnMgb2YgdGhlIHJhZGlvLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpw
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjExLjBwdCI+UnVudGltZUVycm9yOiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBSYWRpbyBj
dHJsIChBKSBwYWNrZXQgcGFyc2UgZXJyb3IgLSBBc3NlcnRpb25FcnJvcjogcGFja2V0X2luZm8u
cGFja2V0X2NvdW50ID09IChzZXFfdG9fYWNrICZhbXA7IDB4ZmZmKTxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
Ij4mbmJzcDsgaW4gdWludDY0X3QgcmFkaW9fY3RybF9jb3JlXzMwMDBfaW1wbDo6d2FpdF9mb3Jf
YWNrKGJvb2wpPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpw
PiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExLjBwdCI+SSBhbSBjdXJyZW50bHkgcnVubmluZyBVSEQgMy45LjcsIGJ1
dCBoYXZlIGFsc28gc2VlbiBhIHNpbWlsYXIgZXJyb3Igd2l0aCAzLjEwLjI8bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
LjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPlRoYW5rczxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48
bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjExLjBwdCI+TWFyazxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2
Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_8415D3F8C5844C83A315C9941AD31D30contosocom_--


--===============6453809753943798285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6453809753943798285==--

