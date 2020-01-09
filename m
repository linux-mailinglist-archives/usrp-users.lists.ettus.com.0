Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE04135140
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 03:09:48 +0100 (CET)
Received: from [::1] (port=57244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipNGW-000326-Un; Wed, 08 Jan 2020 21:09:40 -0500
Received: from mail-dm6nam11on2052.outbound.protection.outlook.com
 ([40.107.223.52]:56256 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <manfredi@pitt.edu>) id 1ipNGU-0002ug-6C
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 21:09:38 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6qnrQdS+zvjVtBd0n+bVdVYsok7uD46ukN3200UputS7hkaiTI1gbO4ubfORU0wk8xzP19MuxuNIYQczqry16e0boqKjJxDnxFbT945BmG6/Uro/PEGNGpp0yDFBIeNNdIo+AXihW+sf6PD/GThuQOnb8JM59Ys3m1obPbzXMa4PmxQZn4OSUuokVy616kPorOvO283NfobtbRU/jManoMeVPSEfMZpUjphVch9gfMrTHzBK3eqyxa7HxdYEBRzL/12Bn4Q113Jg/gDKQbj5jfuee6MC034Ns/IMPbUsZzjJgC4RhZhI5F9kDCScqFGJdr3/qkUx4Fg71vlBVuROg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jkXEyC2hiMLZz6wWWjYzK+bQGQOKEyRyDQeFFYUFmRg=;
 b=Co3tl986gfCplVFB9jyn5t9tLKKzcXADwbECt43REqbh3C8nw8yHZmWERv7rrIJXtwunc3AGwW+Xa+GUnXfF0YDdWZ4SNWg7AqlwC1ZpH+dqtERiQTQIAvhPgHgvEiH7y4bgzAMmM0Ku/CXgIHWSJrj87CEPD+C5JcnzMNHL6GSIozfX0pH66W9gbPZcjzA/zT7rqXv84b1fBphszD+5HZddaUmcjqZWqWHV9Zc6bZQY4EeI+7JX3LgI+DiAhLXrIyw0wU4GL8K7ocqqhtVGxDz7Bmp7eCp/pBHS5gMlodiPb+Qtss67Y6rtR/+qCLZfdppiK/5YCWEA6kxM95oYDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pitt.edu; dmarc=pass action=none header.from=pitt.edu;
 dkim=pass header.d=pitt.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pitt.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jkXEyC2hiMLZz6wWWjYzK+bQGQOKEyRyDQeFFYUFmRg=;
 b=fqz1jFw1rkGCGar11dYkq9RMs5CoXCxtZ929mUuR7cyeOmwA+czkStpjPFep+fH1+/NJkEt3LTRu7vVaBR8rZl5XainVSIQPA1eZV0+xIEVoXclSjf87ScmNARS8DUBe1OgHnIagsgBa3rZ1BaiVf+wc31YWD/Gx4+zowCAFSmI=
Received: from BN7PR04MB4337.namprd04.prod.outlook.com (52.133.221.155) by
 BN7PR04MB4035.namprd04.prod.outlook.com (20.176.20.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Thu, 9 Jan 2020 02:08:56 +0000
Received: from BN7PR04MB4337.namprd04.prod.outlook.com
 ([fe80::150d:b6ca:d985:ae40]) by BN7PR04MB4337.namprd04.prod.outlook.com
 ([fe80::150d:b6ca:d985:ae40%5]) with mapi id 15.20.2602.017; Thu, 9 Jan 2020
 02:08:56 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP2 help
Thread-Index: AQHVxpG/5P3uVL5ISkKPZtFhd1oGMw==
Date: Thu, 9 Jan 2020 02:08:56 +0000
Message-ID: <397BF7BC-9816-405D-93AA-970BA734DBE4@contoso.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.20.0.191208
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=manfredi@pitt.edu; 
x-originating-ip: [71.112.172.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bec564b6-97dd-4baa-0092-08d794a8e1f9
x-ms-traffictypediagnostic: BN7PR04MB4035:
x-microsoft-antispam-prvs: <BN7PR04MB4035EC4D5CC1BD5FF7549022A7390@BN7PR04MB4035.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(189003)(199004)(9686003)(316002)(66946007)(71200400001)(9326002)(7116003)(86362001)(6916009)(186003)(8936002)(4744005)(66556008)(66446008)(81156014)(75432002)(66476007)(91956017)(6506007)(6512007)(6486002)(786003)(81166006)(76116006)(64756008)(478600001)(8676002)(36756003)(5660300002)(33656002)(2906002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR04MB4035;
 H:BN7PR04MB4337.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: pitt.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wx3LFQkXxSsFOTXL9jksph6YEs/qR7KHiy0n7zvQ4WZRlJM6jUzhp1xH0cSqfuMvrNb4JJ97wyRWQcpi9J7jbP0AKreUSNwfdH5dixpMa/hFf0YaRUun1Nlw71B1WWB4+EPvegiWceypJFhxTTlOJM6IZTGE6vOi7jVUgzSrElCGQQREtbBjIebqyrbN1wUr0Ydk7/F7bjMERerH3GXimrNkKXxGL44mkdjb+LJpNlf9j9Gf4JyPTafYoZbUnYSGcKihRehqs/jbYfLKWZOe595fa+A1HQwLyDSDeoAu+TQkhFc1MOIdWuWPMl0KZBUjKyR6k2MpjIAFl7OxmvubvEACrB8YMawT57i5zMwRh9CLzi8lfNQSgw/CNZydxeTXxeIXp1nuEAJhyR8yClc6IR7PbDveCb12Nut0+hMtidFUSG2SzA0xYr8kJvN+LXvx
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: pitt.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: bec564b6-97dd-4baa-0092-08d794a8e1f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 02:08:56.2193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9ef9f489-e0a0-4eeb-87cc-3a526112fd0d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ySJnNpVEObtYrdPb4Nafi87c7VpPIe0DzTyQkuZzMC4XD59RYz+sYklCS3+k43ZzNrrcUbE1T2ejSANEVA1mXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR04MB4035
Subject: [USRP-users] USRP2 help
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
From: "Manfredi, Juan J via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Manfredi, Juan J" <manfredi@pitt.edu>
Content-Type: multipart/mixed; boundary="===============2920247714502068031=="
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

--===============2920247714502068031==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_397BF7BC9816405D93AA970BA734DBE4contosocom_"

--_000_397BF7BC9816405D93AA970BA734DBE4contosocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgaGF2ZSBhIFVTUlAyIHRoYXQgSSBib3VnaHQgYXJvdW5kIDEwIHllYXJzIGFn
by4gQXQgdGhhdCB0aW1lIEkgZ290IGl0IHdvcmsgd2l0aCBhIE1hY2ludG9zaCBDb21wdXRlciBh
bmQgTWF0bGFiLg0KDQpJIGhhdmUgY29tZSBiYWNrIHRvIGV4cGVyaW1lbnRhdGlvbiAoSSB3YXMg
YXdheSBpbiBhZG1pbmlzdHJhdGlvbiBmb3IgYWJvdXQgMTAgeWVhcnMpLCBnb3R0ZW4gdGhlIFVT
UlAyIG91dCBvZiB0aGUgYm94Lg0KSSBhbSB1c2luZyAgTWF0bGFiIFIyMDE5YiBVcGRhdGUgMyBy
dW5uaW5nIG9uIGEgTWFjUHJvIHdpdGggQ2F0YWxpbmEgMTAuMTUuMg0KDQpJIGluc3RhbGxlZCB0
aGUgVVNSUCBzdXBwb3J0IHBhY2thZ2UuIEkgYW0gYWJsZSB0byBwaW5nIHRoZSByYWRpbywgYnV0
IE1hdGxhYiBkb2VzIG5vdCByZWNvZ25pemUgaXQuDQpMRURzIEQgYW5kIEYgYXJlIG9uLg0KDQpJ
IGRvbuKAmXQga25vdyB3aGF0IHRvIHRyeSBuZXh0LiBBbnkgaGVscCBvZiB3aGF0IHRvIGRvLCBv
ciB3aGVyZSB0byBsb29rLCB3b3VsZCBiZSBtdWNoIGFwcHJlY2lhdGVkLg0KDQpUaGFua3MsDQoN
Ckp1YW4uDQoNCg==

--_000_397BF7BC9816405D93AA970BA734DBE4contosocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <9F1AA8057639104D9D179F6D69CC41DC@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbWJyaWE7
DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAq
Lw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGlu
Ow0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFt
aWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE3DQoJe21zby1zdHls
ZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2Vy
aWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlw
ZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFn
ZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGlu
IDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0K
LS0+PC9zdHlsZT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2M0MxIiB2
bGluaz0iIzk1NEY3MiI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMy41cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
Q2FtYnJpYSZxdW90OyxzZXJpZjtjb2xvcjpibGFjayI+SGVsbG8sPC9zcGFuPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTEuMHB0Ij48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEzLjVwdDtmb250LWZhbWlseTomcXVvdDtD
YW1icmlhJnF1b3Q7LHNlcmlmO2NvbG9yOmJsYWNrIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEzLjVwdDtm
b250LWZhbWlseTomcXVvdDtDYW1icmlhJnF1b3Q7LHNlcmlmO2NvbG9yOmJsYWNrIj5JIGhhdmUg
YSBVU1JQMiB0aGF0IEkgYm91Z2h0IGFyb3VuZCAxMCB5ZWFycyBhZ28uIEF0IHRoYXQgdGltZSBJ
IGdvdCBpdCB3b3JrIHdpdGggYSBNYWNpbnRvc2ggQ29tcHV0ZXIgYW5kIE1hdGxhYi4mbmJzcDs8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjEzLjVwdDtmb250LWZhbWlseTomcXVvdDtDYW1icmlhJnF1b3Q7LHNlcmlmO2Nv
bG9yOmJsYWNrIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEzLjVwdDtmb250LWZhbWlseTomcXVvdDtDYW1i
cmlhJnF1b3Q7LHNlcmlmO2NvbG9yOmJsYWNrIj5JIGhhdmUgY29tZSBiYWNrIHRvIGV4cGVyaW1l
bnRhdGlvbiAoSSB3YXMgYXdheSBpbiBhZG1pbmlzdHJhdGlvbiBmb3IgYWJvdXQgMTAgeWVhcnMp
LCBnb3R0ZW4gdGhlIFVTUlAyIG91dCBvZiB0aGUgYm94LjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTMuNXB0O2ZvbnQt
ZmFtaWx5OiZxdW90O0NhbWJyaWEmcXVvdDssc2VyaWY7Y29sb3I6YmxhY2siPkkgYW0gdXNpbmcg
Jm5ic3A7TWF0bGFiIFIyMDE5YiBVcGRhdGUgMyBydW5uaW5nIG9uIGEgTWFjUHJvIHdpdGggQ2F0
YWxpbmEgMTAuMTUuMjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTMuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbWJyaWEm
cXVvdDssc2VyaWY7Y29sb3I6YmxhY2siPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTMuNXB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbWJyaWEmcXVvdDssc2VyaWY7Y29sb3I6YmxhY2siPkkgaW5zdGFsbGVkIHRo
ZSBVU1JQIHN1cHBvcnQgcGFja2FnZS4gSSBhbSBhYmxlIHRvIHBpbmcgdGhlIHJhZGlvLCBidXQg
TWF0bGFiIGRvZXMgbm90IHJlY29nbml6ZSBpdC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEzLjVwdDtmb250LWZhbWls
eTomcXVvdDtDYW1icmlhJnF1b3Q7LHNlcmlmO2NvbG9yOmJsYWNrIj5MRURzIEQgYW5kIEYgYXJl
IG9uLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTMuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbWJyaWEmcXVvdDssc2Vy
aWY7Y29sb3I6YmxhY2siPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTMuNXB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbWJyaWEmcXVvdDssc2VyaWY7Y29sb3I6YmxhY2siPkkgZG9u4oCZdCBrbm93IHdoYXQgdG8g
dHJ5IG5leHQuIEFueSBoZWxwIG9mIHdoYXQgdG8gZG8sIG9yIHdoZXJlIHRvIGxvb2ssIHdvdWxk
IGJlIG11Y2ggYXBwcmVjaWF0ZWQuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMy41cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
Q2FtYnJpYSZxdW90OyxzZXJpZjtjb2xvcjpibGFjayI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMy41cHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FtYnJpYSZxdW90OyxzZXJpZjtjb2xvcjpibGFjayI+VGhhbmtz
LDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTMuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbWJyaWEmcXVvdDssc2VyaWY7
Y29sb3I6YmxhY2siPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTMuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0Nh
bWJyaWEmcXVvdDssc2VyaWY7Y29sb3I6YmxhY2siPkp1YW4uPG86cD48L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_397BF7BC9816405D93AA970BA734DBE4contosocom_--


--===============2920247714502068031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2920247714502068031==--

