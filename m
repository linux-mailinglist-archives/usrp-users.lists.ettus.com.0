Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A9EC23F8
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2019 17:10:25 +0200 (CEST)
Received: from [::1] (port=45494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iExJc-0002bV-OT; Mon, 30 Sep 2019 11:10:20 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:46462)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iExJY-0002WJ-NF
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 11:10:16 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 E6C73C5DE1
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 15:09:35 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2056.outbound.protection.outlook.com [104.47.33.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 91E3D700072
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 15:09:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=moifCIQBfB1gTdJV2u9jTwQ/Rm05xkG9hKncEHBROsWYXfzRKxEIUDInzlNvqRdiT/hFVrHR5l9WAmNOdVF1wjy0xf+K2WYh8jEGs19MNBywV+4cOqgvsP3IxHT9gFM7d1sEJKL3Gosa3tw66UNGFZ+P0Bajrx+fm4Q+HSZ/S5WyGn89F/ITFQIwob9KRi9MhYBMzk6qbEgt2UdoBCqLtyopxXT0KEoOJwnW6BYDZl798XHFCPTCHomUtI2JIlkwMicVmlqK+uCbW51VXH3oKs0p8RprqZPZ/aR4GolLfrKelz3T/rT+DuSf/3FPY5KsF2Mzfq1O8pYt5B8cq2G3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1dmTxp+dSFliwt66gesC1tIEBjH3Tby/BKod1Ou/Df8=;
 b=RAaeUkCQ/7dgYm5NVCK8Sia8Zrm8eBCdPAtIJsn94RA/w6qZ0bR8hSY+yygYRyC7LPqmgeKzZx6PHo0ZFFkCvxoVqDdxI7r8cLW78STMuy8cdR5Lpbdz7xFBA9UJpk8EoJWsd584bpG+NwOAeGtBc9P5FX0C7gq2M6K6Vbv7A+RbZp/1wSjMyu4drpWL2Imou/WCyGHBWeei64CNHZ2NzFewZHaDYJ9cqtmbuU6MBSaQl9oDzSH/NI2jY4SDs+tgsdTcY6wUcmZVGGwZrmKKz2Q2j5A5ZEnzK7q6V8raeLlk1YB2EJe84QuPs0ohzKrM21GJVgbC27yxPsauBSHJQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1dmTxp+dSFliwt66gesC1tIEBjH3Tby/BKod1Ou/Df8=;
 b=V9drGrLKbEQDZ3vEXT/BU5grB7y/iornQwhbNjUZbFxCnMVvkFrPuzV0goO47DYgVhytY3XPC/FGyw/Lk9o/osoRUMxqOxFCJeihWX3jxNDfZmoNSYoKezlxqH/zRCAPQpJ73q37kY5wttw3plv7idbU/x0pUj4Cl6AAn0/gBS4=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2546.namprd12.prod.outlook.com (52.132.28.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 15:09:22 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 15:09:22 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: next pps issues with TwinRX
Thread-Index: AQHVd5+nMNpaPST0n0uDbRwbaMd+4Q==
Date: Mon, 30 Sep 2019 15:09:22 +0000
Message-ID: <BL0PR12MB2340E8912EBC7072A9D3C46FAF820@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f7edd63-93f3-4c51-f339-08d745b82d13
x-ms-traffictypediagnostic: BL0PR12MB2546:
x-microsoft-antispam-prvs: <BL0PR12MB2546BF9DCD120EE3FAEECE85AF820@BL0PR12MB2546.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(39830400003)(396003)(376002)(189003)(199004)(186003)(6506007)(66616009)(316002)(66556008)(26005)(66476007)(55016002)(64756008)(476003)(76116006)(486006)(25786009)(105004)(102836004)(19627405001)(66066001)(66446008)(6436002)(5024004)(6916009)(5660300002)(99936001)(256004)(7736002)(74316002)(71190400001)(71200400001)(52536014)(66946007)(86362001)(33656002)(54896002)(9686003)(8936002)(14454004)(81166006)(81156014)(3846002)(6116002)(8676002)(508600001)(2906002)(99286004)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2546;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nyoypaqUh3uEQhB0HsW7m9QtZNVAc/HkaojIu/VwBaHAYR4183f+aNtXZJLURdtKIJmq+UlMtOz53nSEc1wbrqb9+7TV/Ivs/7dgJc0kcCroNUJ4xEVGdnbfzj15tw827U8jIC2TtmK2rGdzsQmpQx3nqUW/u97Z8JhAoCRBKFdXNs/mrYYGAcmq0XHSrkr7yhHgqOawfjK0KGBpU2sl5Lhl4Xh5N/0z3KsDalRcKb/EN9jXRT7nkSyCoacoRhO4VmAtT0Y58qsYcZvf1cLmCcBt3BAjj1OXEVHiFiGZoi12yVe6jbfQ8zEwfrrhOwvAro43WKTmq+dO6Z4YH/Qr6E0Ox4rsMM2gbh9E2YdQJDaigwOxsecHLRccv1sKywDaDrU/L0OlbnSxO8oY7/HfOFtYQgmBgG5efiuZTMKpqbI=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_004_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_"
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f7edd63-93f3-4c51-f339-08d745b82d13
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 15:09:22.6936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FJ3s4mGNcLsVZJApkOeSMoPA7xTFxa6Hb1NUp9U4M8kzvMIab5siZmS51H8MOU5t9gxyr9x4L+Oe7tmtea0tdE1v82vzYCAx6nBBfYLaHf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2546
X-MDID: 1569856165-sdljpW_Zkbp9
Subject: [USRP-users] next pps issues with TwinRX
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
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

--_004_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_"

--_000_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We are having another issues with our TwinRXs.  A co-worker has been trying=
 to get this to work for a while, but has had no luck with the PPS timing. =
 Here is the notes:

We are running UHD_3.14.1.HEAD-12-g5f75f73f.

The setup is a single X310 (revision: 11,  revision_compat: 7) with two Twi=
nRX boards. The device gets Ref/PPS from an Octoclock.

The attached script has a hard-coded IP address and clock rate. It works fo=
r other X310s with UBX/SBX daughter boards as well as the E320.

Good results are (note line 5 below):

Synchronizing Radios to Reference Signals
Checking PPS synchronization
next_pps from 1569851984.633563 is 1569851985.000000
Setting time for radio `gr uhd usrp source`: 2019-09-30 09:59:45
PPS alignment PASSED!: [1569851986.0, 1569851986]
All radios are Synchronized

Bad results are:
Synchronizing Radios to Reference Signals
Checking PPS synchronization
next_pps from 1569851508.136703 is 1569851509.000000
Setting time for radio `gr uhd usrp source`: 2019-09-30 09:51:49
PPS alignment mismatch: [1569851509.9999995, 1569851509]

Any thoughts of why this might be happening?


--_000_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We are having another issues with our TwinRXs.&nbsp; A co-worker has been t=
rying to get this to work for a while, but has had no luck with the PPS tim=
ing.&nbsp; Here is the notes:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
We are running UHD_3.14.1.HEAD-12-g5f75f73f.</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
The setup is a single X310 (<span style=3D"margin: 0px">revision: 11</span>=
,&nbsp; revision_compat: 7) with two TwinRX boards. The device gets Ref/PPS=
 from an Octoclock.</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"><br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px">The attached script has a hard-coded IP address=
 and clock rate. It works for other X310s with UBX/SBX daughter boards as w=
ell as the E320.<br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"><br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px">Good results are (note line 5 below):</span></d=
iv>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"><br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"></span><span style=3D"margin: 0px">Synchronizin=
g Radios to Reference Signals<br>
</span>
<div style=3D"margin: 0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin: 0px">next_pps from 1569851984.633563 is 1569851985.00=
0000<br>
</div>
<div style=3D"margin: 0px">Setting time for radio `gr uhd usrp source`: 201=
9-09-30 09:59:45<br>
</div>
<div style=3D"margin: 0px"><b>PPS alignment PASSED!: [1569851986.0, 1569851=
986]<br>
</b></div>
<div style=3D"margin: 0px">All radios are Synchronized</div>
<div style=3D"margin: 0px"><br>
</div>
<div style=3D"margin: 0px">Bad results are:<span style=3D"margin: 0px"><br>
</span></div>
<div style=3D"margin: 0px"><span style=3D"margin: 0px">Synchronizing Radios=
 to Reference Signals<br>
</span>
<div style=3D"margin: 0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin: 0px">next_pps from 1569851508.136703 is 1569851509.00=
0000<br>
</div>
<div style=3D"margin: 0px">Setting time for radio `gr uhd usrp source`: 201=
9-09-30 09:51:49<br>
</div>
<div style=3D"margin: 0px"><b>PPS alignment mismatch: [1569851509.9999995, =
1569851509]</b></div>
<div style=3D"margin: 0px"><b><br>
</b></div>
<div style=3D"margin: 0px">Any thoughts of why this might be happening?</di=
v>
</div>
</div>
<br>
</div>
</body>
</html>

--_000_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_--

--_004_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_
Content-Type: text/x-python; name="syncTest.py"
Content-Description: syncTest.py
Content-Disposition: attachment; filename="syncTest.py"; size=2734;
	creation-date="Mon, 30 Sep 2019 15:09:01 GMT";
	modification-date="Mon, 30 Sep 2019 15:09:01 GMT"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9lbnYgcHl0aG9uMgpmcm9tIGdudXJhZGlvIGltcG9ydCB1aGQKaW1wb3J0IHRp
bWUKaW1wb3J0IHN5cwppbXBvcnQgbWF0aApmcm9tIGRhdGV0aW1lIGltcG9ydCBkYXRldGltZQoK
TUFYX0FUVEVNUFRTID0gNQpBRERSID0gJzE5Mi4xNjguMTAuMicKQ0xLUkFURSA9IDIwMGU2Cgoj
IG1ha2Ugc3VyZSB3ZSBzdGFydCB0aGUgdGltZSByZXNldCBpdGVyYXRpb25zIG9uIHRoZSBQUFMg
RWRnZQpkZWYgZ2V0X3Bwc19lZGdlKHVzcnApOgogICAgbGFzdF9wcHNfdGltZSA9IHVzcnAuZ2V0
X3RpbWVfbGFzdF9wcHMoKQogICAgd2hpbGUgbGFzdF9wcHNfdGltZSA9PSB1c3JwLmdldF90aW1l
X2xhc3RfcHBzKCk6CiAgICAgICAgcGFzcwoKIyMjIyBTVEFSVCAjIyMjIwp0cnk6CiAgICB1c3Jw
ID0gdWhkLnVzcnBfc291cmNlKCdhZGRyPScgKyBBRERSLAogICAgICAgICB1aGQuc3RyZWFtX2Fy
Z3MoY3B1X2Zvcm1hdD0nc2MxNicsIAogICAgICAgICBjaGFubmVscz1yYW5nZSgxKSkpCmV4Y2Vw
dCBFeGNlcHRpb24gYXMgZToKICAgIHByaW50IHN0cihlKQogICAgc3lzLmV4aXQoKQoKIyBnZXQg
ZXh0ZXJuYWwgY2xvY2sKdHJ5OgogICAgdXNycC5zZXRfY2xvY2tfc291cmNlKCdleHRlcm5hbCcs
IDApCmV4Y2VwdCBSdW50aW1lRXJyb3I6CiAgICBwcmludCAiUmFkaW8gIiArIEFERFIgKyAiIGlz
IG5vdCBzZWVpbmcgMTAgTUh6IGNsb2NrIgogICAgc3lzLmV4aXQoKQoKIyBjb25maWd1cmUgdGhl
IHVzcnAKdXNycC5zZXRfY2xvY2tfcmF0ZShDTEtSQVRFLCB1aGQuQUxMX01CT0FSRFMpCgojIGNo
ZWNrIGxvY2sgdG8gMTAgTUh6IHJlZmVyZW5jZSBzaWduYWwKcHJpbnQgIlN5bmNocm9uaXppbmcg
UmFkaW9zIHRvIFJlZmVyZW5jZSBTaWduYWxzIgphdHRlbXB0cyA9IDAKcmVmX2xvY2tlZCA9IFsi
bm90X3F1ZXJpZWRfeWV0Il0Kd2hpbGUgcmVmX2xvY2tlZCAhPSBbIiBsb2NrZWQiXToKICAgIHJl
Zl9sb2NrZWRbMF0gPSBzdHIodXNycC5nZXRfbWJvYXJkX3NlbnNvcigicmVmX2xvY2tlZCIsIDAp
KS5zcGxpdCgnOicpWy0xXQogICAgYXR0ZW1wdHMgKz0gMQogICAgaWYgYXR0ZW1wdHMgPj0gTUFY
X0FUVEVNUFRTOgogICAgICAgIHByaW50ICdVbmFibGUgdG8gYWNoaWV2ZSByZWYgbG9jay4gRXhp
dGluZy4uLicKICAgICAgICBzeXMuZXhpdCgpCgojIGNoZWNrIFBQUyBzeW5jaHJvbml6YXRpb24K
cHJpbnQgIkNoZWNraW5nIFBQUyBzeW5jaHJvbml6YXRpb24iCnBhc3NlZF90ZXN0ID0gRmFsc2UK
YXR0ZW1wdHMgPSAwCndoaWxlIG5vdCBwYXNzZWRfdGVzdDoKCiAgICAjIHJlLWFsaWduIGFsbCBy
YWRpb3MKICAgIGdldF9wcHNfZWRnZSh1c3JwKQoKICAgICMgZ2V0IGZhciBhd2F5IGZyb20gdGhl
ICJ0b3Agb2YgYSBzZWNvbmQiIHNvIGFsbCBjbG9jayBzb3VyY2VzIHdpbGwgYmUgb24gdGhlIHNh
bWUgZnVsbCBzZWNvbmQKICAgIHRpbWUuc2xlZXAoLjQpCgogICAgdGltZV9yZWFsID0gdGltZS50
aW1lKCkgICMgc3lzdGVtIHRpbWUgc2hvdWxkIGJlIHN5bmNlZCB3aXRoIEdQUyB0aW1lCgogICAg
I1JvdW5kIHVwIHRvIHRoZSBuZXh0IHdob2xlIHNlY29uZAogICAgbmV4dF9wcHMgPSBtYXRoLmNl
aWwodGltZV9yZWFsKQogICAgcHJpbnQgJ25leHRfcHBzIGZyb20gJWYgaXMgJWYnICUgKHRpbWVf
cmVhbCwgbmV4dF9wcHMpCgogICAgIyBzZXRfdGltZV9uZXh0X3BwcyBpcyBub24tYmxvY2tpbmcs
IHNvIHNldCBhbGwgcmFkaW9zIGltbWVkaWF0ZWx5IGFmdGVyIGZpbmRpbmcgYW4gZWRnZQogICAg
cHJpbnQgJ1NldHRpbmcgdGltZSBmb3IgcmFkaW8gYHt9YDoge30nLmZvcm1hdCgKICAgICAgICB1
c3JwLm5hbWUoKSwgZGF0ZXRpbWUuZnJvbXRpbWVzdGFtcChuZXh0X3BwcykpCiAgICB1c3JwLnNl
dF90aW1lX25leHRfcHBzKHVoZC50aW1lX3NwZWNfdChuZXh0X3BwcykpCgogICAgIyBzbGVlcCB0
aHJvdWdoIG9uZSBwcHMgZWRnZSBzbyB0aW1lIGlzIHNldCBjb3JyZWN0bHkgb24gYWxsIFVTUlBz
CiAgICB0aW1lLnNsZWVwKDEpCgogICAgIyBjaGVjayBpZiB0aGUgcHBzIGlzIGNvcnJlY3QgZm9y
IGFsbCByYWRpb3MKICAgIGdldF9wcHNfZWRnZSh1c3JwKQoKICAgICMgZ2V0IHBwcyBmb3IgZWFj
aCByYWRpbwogICAgbGFzdF9wcHMgPSBbXQogICAgbGFzdF9wcHMuYXBwZW5kKHVzcnAuZ2V0X3Rp
bWVfbGFzdF9wcHMoKS5nZXRfcmVhbF9zZWNzKCkpCiAgICBsYXN0X3Bwcy5hcHBlbmQoaW50KHRp
bWUudGltZSgpKSkKCiAgICAjIGNvbXBhcmUgcHBzIGZvciBlYWNoIHJhZGlvCiAgICBpZiBsYXN0
X3BwcyBhbmQgbGFzdF9wcHMuY291bnQobGFzdF9wcHNbMF0pICE9IGxlbihsYXN0X3Bwcyk6CiAg
ICAgICAgcHJpbnQgIlBQUyBhbGlnbm1lbnQgbWlzbWF0Y2g6IHt9Ii5mb3JtYXQobGFzdF9wcHMp
CiAgICAgICAgcGFzc2VkX3Rlc3QgPSBGYWxzZQogICAgZWxzZToKICAgICAgICBwcmludCAiUFBT
IGFsaWdubWVudCBQQVNTRUQhOiB7fSIuZm9ybWF0KGxhc3RfcHBzKQogICAgICAgIHBhc3NlZF90
ZXN0ID0gVHJ1ZQoKICAgIGF0dGVtcHRzICs9IDEKICAgIGlmIGF0dGVtcHRzID49IE1BWF9BVFRF
TVBUUzoKICAgICAgICBwcmludCAnRmFpbGVkIHRvIHN5bmNocm9uaXplIHJhZGlvcyBhZnRlciAl
ZCBhdHRlbXB0cycgJSBNQVhfQVRURU1QVFMKICAgICAgICBwcmludCAnRXhpdGluZy4uLicKICAg
ICAgICBzeXMuZXhpdCgpCgpwcmludCAiQWxsIHJhZGlvcyBhcmUgU3luY2hyb25pemVkIgoKCg==

--_004_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_004_BL0PR12MB2340E8912EBC7072A9D3C46FAF820BL0PR12MB2340namp_--

