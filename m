Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 646122A81D4
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 16:06:02 +0100 (CET)
Received: from [::1] (port=44146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kagps-0007jb-P4; Thu, 05 Nov 2020 10:06:00 -0500
Received: from mail-bn8nam11on2082.outbound.protection.outlook.com
 ([40.107.236.82]:18497 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kagpo-0007dB-CX
 for usrp-users@lists.ettus.com; Thu, 05 Nov 2020 10:05:56 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtdL2CowVNfCowzMNMAHfdX2yUttvS31uOhIoO3JFjZchKZAGGXht/CuJI1jw+OD4HsrAWuaUkxjGV68xEFqErs5A6Ba6dE4qTmkphdP+D9z3IGq3m6icUBI+woztt8AivtwmHNWfNVGt5JGhDYZu3qS0ULoqY3uRv0pPm+Poh/HSAnq3MGC2DgV9ETSu/QQd9+jn9t4iad7kEI397uFyTmV7y6DxVSLjum3VA6QwP2PfygzViU/+8WNqqj5uH13TuoedBD25iylouuCWC3tQ901PQ5kchaO6Edqer7fu/c/8XOomXhvFR11v4OVQM6gTaXhAMreg9+nnV8DRvzUYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ff8B+gkUMS9IxHt/+JCuZ4IYMAa2xHlCaHmcSizDMzc=;
 b=We/lgp0RXEdYYLKbBfNlmLYoq1ixh4eHtkfgPlrUzZJ2zL7wLD4qUTS4G9/qlHNdhWvt4lpUrRxpbobb2zBlysBgJoCErab89iqBMSpePFLM0m25dSZRjfTBj1FrAcgaKV4VpcY5+WgKOZnFUuDULP/dQWhKDDf/QOx1X6Oze1NKpsrAV5AL+ynhc6aNkXuqmyyBtpLJOCEJfjLAy/SWpsdnT0WeQrK7DrQYKQkMyptJ9hZp0zwjdQdk9+d50s7uDP3qa6Cxt7sNhDA1wB9p/wy5fiihkdUO9PL4p56DYWzUd0EMOfvzA2qg3EfA6i4E9XSEE4Qk/6O8OTwClYsPSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ff8B+gkUMS9IxHt/+JCuZ4IYMAa2xHlCaHmcSizDMzc=;
 b=l3FNNQ0NGCf4d9H15X3WFjQQpAMPOFKYYWt2VRlZkE4vXklu6gP3D0Ie5OWyzpiQACS58WR+HhKgYp8w0NW9qn5e9uh900MTiBYmJdEAtfU4wORezgCQ7ZkHyhtBYnVinp4B1Jkb2omzjZNHJFLk4NKj0cigwdPaXar73aDv4uo=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM6PR12MB2633.namprd12.prod.outlook.com (2603:10b6:5:50::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Thu, 5 Nov
 2020 15:05:14 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::a9ad:1f6f:47af:bce]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::a9ad:1f6f:47af:bce%6]) with mapi id 15.20.3499.032; Thu, 5 Nov 2020
 15:05:14 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: uhd_cal_rx_iq_balance
Thread-Index: AQHWs4UQPPR5FrYF3EGD94URUjNoiA==
Date: Thu, 5 Nov 2020 15:05:13 +0000
Message-ID: <3C6FE1A2-33E5-40EC-9904-399B8FB7933D@iubelttechnologies.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07deb598-1623-4619-2b4d-08d8819c32ea
x-ms-traffictypediagnostic: DM6PR12MB2633:
x-microsoft-antispam-prvs: <DM6PR12MB2633BDED906F08F02F7C9A178CEE0@DM6PR12MB2633.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rL5kV5E/jZb9OKPd1XzmRW0nMdOQSdhBJ/GVUrFLHxzrXDb39oYRKAKwHMC/Sn3Oi4a76JQq+ZK+jlofVqZK/4VJpicY6KN00/edQp+YHDinxefVXUaVEqJmNGU8CX/IuLE0L6yU8oSV2uJQKHIhtTyT1FACDjFP0BdXvhFxQz2CTctVyBxKc0+fRCD1hT9BH9oY79cYKBIfct22l1D9+KQCfUvhIes07stZOyEtYofzW7XUCwoj5H7+3ZwS3W2HX8UVjIxBTC7zy0LxbeO/YmeHiD62WW/TBiVWoC5syrTTqtn5x/HDqR/zdWwpujcEElyYMGcPdRhW++oIkAUa/Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(376002)(136003)(346002)(39830400003)(91956017)(8676002)(4744005)(2616005)(6512007)(76116006)(44832011)(8936002)(66946007)(9326002)(2906002)(6486002)(66476007)(66556008)(64756008)(66446008)(316002)(7116003)(86362001)(6916009)(478600001)(5660300002)(33656002)(6506007)(186003)(26005)(36756003)(71200400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /uYq2PcjnsuAi2JixoFpgLjn7iknb8vZBFwF+nxuiwI1tpxZROn8LvpUarV5DTT+oMFfr8r2Y/AtQFN4YoR/6oU+hS8Q/BiepKeSFx6u3SFQVktdOsCGRdnrBZ1SSCghpgidSzxamntuCMXWIpP4yBaL/0TEscYd5MchPSDUqejW7DnZn5SUYyqLDPaMo25zbX6iIy3ikJcZXJfwr+78qlFKAbFJ2lH9NBD2xuw3Nm/p84BBGNOzSgRABP7GmqKSza2Jzjpews5i/I4GxD8BA05+tfgIvJVE9Pk6ILXMFAXfsgUCYW0CNjdlza1QiW6tBPAqWBQU3NF4Nkpn/EKFz06/VvysOVmBObVn/Zq548wSxH4S2v2K/qHxemBOXH2kJtASgCM6N5PVkEjWAZ7jD6SrqAD1b3xV2b0WqwJo03zB7jARwlbGDzRj9tBetRtTRZzZkTUodKyQnh2BDcZsUe9NfGGoJBpJ1+sREIFwdsz5RS8fTKytN84M1m+ORHNUr6MfThUcrJtfxWVU2uiPLONq/erfqBmf+wqJqX0fPOLwg5PM/YInZUm2SiwmxHRamBFVXVKY/oQYmY3AC4duSUZC2lOQGnjc3sPxboF7EaP/5dEPoflbWH7HJm5y8uPHkD4vZTcZBmQ9tYt6kMaxVg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07deb598-1623-4619-2b4d-08d8819c32ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2020 15:05:14.0424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7fzu8a9U/7CpTBCYDwVh1w2GdjZgHsLj8k+p64NhikE/hRQj2ESUZUL/ddID0uQF3bGCyQeC7/Yaq3Lw8dS3Kb5gZWZ3aZpykIhlyDq6nYJQ3pGDy0zu4pcNka85YhEM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2633
Subject: [USRP-users] uhd_cal_rx_iq_balance
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
Content-Type: multipart/mixed; boundary="===============7399115762545426620=="
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

--===============7399115762545426620==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3C6FE1A233E540EC9904399B8FB7933Diubelttechnologiescom_"

--_000_3C6FE1A233E540EC9904399B8FB7933Diubelttechnologiescom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgaGF2ZSBzb21lIHF1ZXN0aW9ucyByZWdhcmRpbmcgdGhlIFJ4IGlxIGJhbGFu
Y2UgZnVuY3Rpb24uICBBZnRlciBydW5uaW5nIHRoaXMgc2NyaXB0IG9uIGEgcGFydGljdWxhciBy
YWRpbyAoeDMxMCBvciBOMjEwKSB3aXRoIGEgVUJYIGl0IHNhdmVzIHRoZSByZXN1bHRzIG9uIHRo
ZSBtYWNoaW5lIGluIHdoaWNoIGl0IHdhcyByYW4gb24sIGNvcnJlY3Q/ICBJZiBJIG5lZWQgdG8g
bW92ZSB0aGUgVUJYIHRvIGFub3RoZXIgcmFkaW8gKFgzMTAgb3IgTjIxMCksIGJ1dCB0aGUgbmV3
IHJhZGlvIHdpdGggdGhlIFVCWCB3aWxsIGJlIG9uIHRoZSBzYW1lIG1hY2hpbmUsIGRvIEkgbmVl
ZCB0byByZXJ1biB0aGUgSVEgYmFsYW5jZSBzY3JpcHQ/DQoNCklzIHRoZXJlIGEgc2NlbmFyaW8g
SSB3b3VsZG7igJl0IHdhbnQgdG8gYWx3YXlzIGJlIGFwcGx5aW5nIHRoZSBJUSBiYWxhbmNlIGNv
cnJlY3Rpb25zPw0KDQpUaGFua3MNCg0KTWFyaw0K

--_000_3C6FE1A233E540EC9904399B8FB7933Diubelttechnologiescom_
Content-Type: text/html; charset="utf-8"
Content-ID: <B1F27D7653E24040829B26738FA8EDEA@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iVGl0bGUiIGNvbnRlbnQ9IiI+DQo8bWV0YSBuYW1lPSJLZXl3b3JkcyIgY29udGVu
dD0iIj4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUg
KGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxlPjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8N
CkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MCAw
IDAgMCAwIDAgMCAwIDAgMDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJ
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
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5IZWxsbyw8bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPkkgaGF2ZSBzb21lIHF1ZXN0aW9ucyByZWdhcmRpbmcg
dGhlIFJ4IGlxIGJhbGFuY2UgZnVuY3Rpb24uJm5ic3A7IEFmdGVyIHJ1bm5pbmcgdGhpcyBzY3Jp
cHQgb24gYSBwYXJ0aWN1bGFyIHJhZGlvICh4MzEwIG9yIE4yMTApIHdpdGggYSBVQlggaXQgc2F2
ZXMgdGhlIHJlc3VsdHMgb24gdGhlIG1hY2hpbmUgaW4gd2hpY2ggaXQgd2FzIHJhbiBvbiwgY29y
cmVjdD8mbmJzcDsNCiBJZiBJIG5lZWQgdG8gbW92ZSB0aGUgVUJYIHRvIGFub3RoZXIgcmFkaW8g
KFgzMTAgb3IgTjIxMCksIGJ1dCB0aGUgbmV3IHJhZGlvIHdpdGggdGhlIFVCWCB3aWxsIGJlIG9u
IHRoZSBzYW1lIG1hY2hpbmUsIGRvIEkgbmVlZCB0byByZXJ1biB0aGUgSVEgYmFsYW5jZSBzY3Jp
cHQ/PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5JcyB0aGVyZSBh
IHNjZW5hcmlvIEkgd291bGRu4oCZdCB3YW50IHRvIGFsd2F5cyBiZSBhcHBseWluZyB0aGUgSVEg
YmFsYW5jZSBjb3JyZWN0aW9ucz88bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPlRoYW5rczxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+
TWFyazxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_3C6FE1A233E540EC9904399B8FB7933Diubelttechnologiescom_--


--===============7399115762545426620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7399115762545426620==--

