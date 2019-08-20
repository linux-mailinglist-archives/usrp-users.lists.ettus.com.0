Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E26A196850
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 20:09:54 +0200 (CEST)
Received: from [::1] (port=56594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i08Zt-0008Rj-82; Tue, 20 Aug 2019 14:09:53 -0400
Received: from mail-eopbgr820103.outbound.protection.outlook.com
 ([40.107.82.103]:22816 helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1i08Zp-0008Kg-8M
 for usrp-users@lists.ettus.com; Tue, 20 Aug 2019 14:09:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIEt25JE/9wGMKFJv8Rqt4bFfyOLO8NZTmfNo7l5+a6dNA6TrzREiXNxk1lIDcSF0aCo97wNAbMc1jH1yTVDU1DgqotpisH8ezYOrdMFzvU/d3p9+gESRMXoAN/CRrKnT6N8JFWFwZMBUzJRBQ6OF5RKhAjdnAoZBTcV5QvfvbBss9cLYjm6P0cZEh+QNNUcYvz9e98GjC77KkxgygxPxWOpTlsSB8LDW4U+QvRCYMajk0xMdA85DhgM8IxAq30lvERpDPRZGuqTXZTwKU6+4djOo7iiryRpdhQqlXAeh7GybW9+mJzk7nEH3eGO+s53cOWAtvWuvBkDTIak6N4t4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q8b2QlThG7DG6X8J01rV9dTnkYzJrA8siAq3nB7n/dk=;
 b=i1SDOi/5COtQqI+rYD5wTzQpKjoktt1+2Nhl45blvqZy8qaQUGzTIVRZRonayJ1LcGX//CaN5zK6/NmWaJR8eB3HTOPZergKsNFvorqcfvL3iqLOahqkiyImNwxrOpo/ufyKXkFoCp+Jg2JCfK71OfiDisPeiWrCZIoVZ0kVWlXOmTggaHcCOwrLIUjUiJPt7QQNmCf+2ukxSKyvEJVnhWUJwzbLeseJ0JW4MWeiuIe57ZWjUxT1qZARVFr/fDLNOE73KKmTEJq1HefEOAw8ix++jcz3oGDmd37H7/9yt43SLJZCJducQ5ITA4SNe10yRGQ/d6qtuG1U6qkusPUL4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=psu.edu; dmarc=pass action=none header.from=psu.edu; dkim=pass
 header.d=psu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector2-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q8b2QlThG7DG6X8J01rV9dTnkYzJrA8siAq3nB7n/dk=;
 b=Bv3hCyMCS0Bz+HfKK7Ha1x0GBYTEAod8r6CgXu0OkuIOrbX37erxyiI5hgtvzCWO+1Atal9r+NTNwoEdkbsvouGGFoqkpxWO79Hr62yH7OA9ZuKf9WGaxKfu9RGPiYJRWSLJYRG6dEDgzcuzVPzv+JOWLVqxeBzu4rQ55GcSHE8=
Received: from BL0PR02MB3716.namprd02.prod.outlook.com (52.132.28.144) by
 BL0PR02MB5537.namprd02.prod.outlook.com (20.177.242.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 18:09:06 +0000
Received: from BL0PR02MB3716.namprd02.prod.outlook.com
 ([fe80::554d:6bd6:af97:38c9]) by BL0PR02MB3716.namprd02.prod.outlook.com
 ([fe80::554d:6bd6:af97:38c9%5]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 18:09:06 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: A Question about Synchronization
Thread-Index: AQHVV4FrMDBV58qmyEGjW5o5SIwvAg==
Date: Tue, 20 Aug 2019 18:09:06 +0000
Message-ID: <BL0PR02MB3716F0B244D891333FE1A648AAAB0@BL0PR02MB3716.namprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18201351-c767-4f23-39aa-08d725997de1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BL0PR02MB5537; 
x-ms-traffictypediagnostic: BL0PR02MB5537:
x-microsoft-antispam-prvs: <BL0PR02MB5537C7FFDCAD032826FAB1C9AAAB0@BL0PR02MB5537.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(53754006)(102836004)(81156014)(3846002)(8676002)(81166006)(6916009)(8936002)(33656002)(14444005)(478600001)(3480700005)(75432002)(256004)(7696005)(66066001)(26005)(71200400001)(71190400001)(52536014)(105004)(5660300002)(2501003)(186003)(4744005)(19627405001)(86362001)(53936002)(99286004)(9686003)(88552002)(66446008)(5640700003)(64756008)(66556008)(66476007)(76116006)(74316002)(66946007)(2906002)(54896002)(316002)(786003)(6116002)(476003)(6436002)(7736002)(6506007)(25786009)(486006)(2351001)(55016002)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR02MB5537;
 H:BL0PR02MB3716.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LXoXIsKbMnwp/wBDBmo91K94QzQ9QSSpgy8i57dIPWaE0jWeUPJAXd6GscWI5W3On+ETpTFWORIN+j32hETvnihK/DptlARjMHvcJw5OCOfZtpHZWkHJ6iNnIqgMPV0R5Q/01Nv4lbvTQltKlV3+IqficZ1NWW+DnzyN/v8c3nsX4yJIymghxeWPSVlgUqCH4N5QuGGbiT22ZRbd5EM3Mpr9DZKJZQsi3RupGzHE+ZFRr9LPzHkhoe5hZjGB2sQGnEcLsadLabnXicXsdMHu51UnRB0hQn1PBtBBUfL4K29keCPnDmgOy1A7PT1E0fnhDaLvmLwhiali0wkrzM1Muh8tL3rhYnJyRiLiT4uLm/gvXQTCifYZK3kh82S1V1Q2+LzSwfqJOAv8ndhBlEETId+TDCYeDzDj4qXp3GxXzF8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 18201351-c767-4f23-39aa-08d725997de1
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 18:09:06.7161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OrFWnGRE8kAx7GLjm2W4fsZRT7vAltXEudclNtfqHJAIgFDlWSML1hU+5iYZlsoY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5537
Subject: [USRP-users] A Question about Synchronization
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
Content-Type: multipart/mixed; boundary="===============2637315257585572238=="
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

--===============2637315257585572238==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BL0PR02MB3716F0B244D891333FE1A648AAAB0BL0PR02MB3716namp_"

--_000_BL0PR02MB3716F0B244D891333FE1A648AAAB0BL0PR02MB3716namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJJ20gdHJ5aW5nIHRvIHN5bmNocm9uaXplIDIgVVNSUCBOMjEwIGRldmljZXMg
dXNpbmcgdGhlIE9jdG9DbG9jay1HIENEQS0yOTkwIGFzIGV4dGVybmFsIDEwTUh6IHJlZmVyZW5j
ZSBhbmQgUFBTIHNvdXJjZXMuIEl0IGlzIHNhaWQgdGhhdCBJIG5lZWQgdG8gc2V0IHVwIHR3byBj
b25maWd1cmF0aW9uczoNCg0KdXNycC0+c2V0X2Nsb2NrX3NvdXJjZSgiZXh0ZXJuYWwiKTsNCnVz
cnAtPnNldF90aW1lX3NvdXJjZSgiZXh0ZXJuYWwiKTsNCg0KV2hpY2ggZmlsZSBpbiB3aGljaCBw
YXRoIHNob3VsZCBJIG1vZGlmeSBpbiBvcmRlciB0byBhcHBseSB0aGVzZSBjb25maWd1cmF0aW9u
cz8gVGhhbmtzIGEgbG90IQ0KDQpCZXN0IHJlZ2FyZHMsDQpGZW5neWFuZyBKaWFuZw0K

--_000_BL0PR02MB3716F0B244D891333FE1A648AAAB0BL0PR02MB3716namp_
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
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm trying to synchronize 2 USRP N210 devices using the&nbsp;OctoClock-G CD=
A-2990 as external 10MHz reference and PPS sources. It is said that I need =
to set up two configurations:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"font-size: 13px; line-height: 1; font-family: monospace, fixe=
d; min-height: 13px; text-indent: -53px; padding-left: 53px; margin: 0px; t=
ransition-property: background-color, box-shadow; transition-duration: 0.5s=
">
usrp-&gt;set_clock_source(<span style=3D"color: rgb(0, 32, 128)">&quot;exte=
rnal&quot;</span>);</div>
<div style=3D"font-size: 13px; line-height: 1; font-family: monospace, fixe=
d; min-height: 13px; text-indent: -53px; padding-left: 53px; margin: 0px; t=
ransition-property: background-color, box-shadow; transition-duration: 0.5s=
">
usrp-&gt;set_time_source(<span style=3D"color: rgb(0, 32, 128)">&quot;exter=
nal&quot;</span>);</div>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Which file in which path should I modify in order to apply these configurat=
ions? Thanks a lot!</div>
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
</body>
</html>

--_000_BL0PR02MB3716F0B244D891333FE1A648AAAB0BL0PR02MB3716namp_--


--===============2637315257585572238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2637315257585572238==--

