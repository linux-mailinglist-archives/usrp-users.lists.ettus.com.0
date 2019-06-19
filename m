Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C97744BE35
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 18:30:29 +0200 (CEST)
Received: from [::1] (port=41116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hddTd-0003Xo-Ub; Wed, 19 Jun 2019 12:30:25 -0400
Received: from otransport-30.outbound.emailsrv.net ([3.209.239.254]:57738)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1hddTZ-0003Py-9H
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 12:30:21 -0400
Received: from ogate-1.outbound.emailservice.io (ip-10-4-3-253.ec2.internal
 [10.4.3.253])
 by otransport-30.outbound.emailsrv.net (Postfix) with ESMTPS id AE9EA616F1
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 16:29:40 +0000 (UTC)
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2052.outbound.protection.outlook.com [104.47.49.52])
 by ogate-1.outbound.emailservice.io (Postfix) with ESMTPS id 2DF1DA246C
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 16:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GMVng5gGCDDlO9iQMc/JuLcC6GBbL39rYXES9jA0nWw=;
 b=Z1bUxthryzeC4Kl6to04bAE+NmKyY5h9ukQJvKFSy0HXZIUi5chefCHcC85/VyP9TONlwDldTWbAx3RIpWKV0nvzNBF0MYFH6PJz+stHn4w9u2uB04zqnon0mo0jjb+01vK4wCoGAwIIU0CBLgtOsxAy/5BbzrNJF/ndWnKp+hc=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0PR12MB2546.namprd12.prod.outlook.com (52.132.11.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Wed, 19 Jun 2019 16:29:38 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 16:29:38 +0000
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: E320 with larger SD card
Thread-Index: AQHVJrwXtVhqj8KwE0ewAOiKvLySvw==
Date: Wed, 19 Jun 2019 16:29:38 +0000
Message-ID: <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9c1b6a0-f15c-4fa9-de71-08d6f4d352ce
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2546; 
x-ms-traffictypediagnostic: BL0PR12MB2546:
x-microsoft-antispam-prvs: <BL0PR12MB254662B2EA4EEA8B1DE4EC70AFE50@BL0PR12MB2546.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(376002)(346002)(136003)(39830400003)(199004)(189003)(68736007)(14454004)(52536014)(8676002)(256004)(55016002)(316002)(74316002)(7736002)(33656002)(9686003)(54896002)(53936002)(66556008)(66946007)(66476007)(8936002)(64756008)(81156014)(66446008)(5660300002)(73956011)(76116006)(19627405001)(86362001)(508600001)(6116002)(3846002)(2906002)(6606003)(66066001)(6916009)(81166006)(99286004)(7696005)(186003)(102836004)(6506007)(26005)(486006)(25786009)(6436002)(476003)(71200400001)(71190400001)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2546;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VVNUpjniSbUELyp1ImsUpP9avG+sTUWz8I411LRcqz2gkN9q6FYnfX9J9XKBRUkZMXfJrHngOlsdg65Pw791Bacg/wn9JOwRWZUPGxeETHlBr8TEXrHfVDNryAn6R1CzjRC2MjTpUHQfTC3ed6WgbInAUyWHcLdTFWU64Y1DF58gSwT8zXTWFM+iohPTbcMfpeuC3WHl47lphIpVWKUrmk4yALTUF5o9udpO/imBlqEEidTX2MFEWrl8RiWXYoX9GPhpzD+AABMIViwmPpoyhPTADClKHMcrlgTlEdiI1jb0fX9m8skUHYQ8LLEYVtUIxDQ1K50J9jWmz5Gp3QO+j/pM2/b94qnew77GzpA/B9KswhO6XFX/z5yNfV+Hu2i/0P1R+zuYqB7eot3S1h5yZOC8qUAXTYHez1oxVNE5bek=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c1b6a0-f15c-4fa9-de71-08d6f4d352ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 16:29:38.2640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2546
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-dm3nam05lp2052.outbound.protection.outlook.com|104.47.49.52|NAM05-DM3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.49.52, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-8136-c
X-Mailprotector-ID: adf5952a-44d0-4829-bee8-30cd8d4192d1
Subject: [USRP-users] E320 with larger SD card
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
Content-Type: multipart/mixed; boundary="===============0021659933913008684=="
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

--===============0021659933913008684==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50BL0PR12MB2340namp_"

--_000_BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.  I loaded up the card, and then extended the data partition to=
 use up the rest of the free space (about 100GB).  But then it doesn't boot=
.


I am wondering if the change to a partition size screwed up something in a =
config file somewhere.  Is there a way to fix this without rebuilding a doc=
ker image?  I am using the UHD 3.14.0.0. that has the smaller data partitio=
n (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/pyt=
hon packages, so I need to use the older image).


Thanks.

--_000_BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I wanted to use a larger SD card =
than the one that as supplied, but I am having issues.&nbsp; I loaded up th=
e card, and then extended the data partition to use up the rest of the free=
 space (about 100GB).&nbsp; But then it doesn't
 boot.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I am wondering if the change to a=
 partition size screwed up something in a config file somewhere.&nbsp; Is t=
here a way to fix this without rebuilding a docker image?&nbsp; I am using =
the UHD 3.14.0.0. that has the smaller data
 partition (UHD 3.14.1.0 has a larger data partition, but doesn't include a=
ny GR/python packages<span style=3D"font-family: Calibri, Helvetica, sans-s=
erif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;,=
 NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Em=
ojiSymbols; font-size: 16px;">,
 so I need to use the older image</span>).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks.</p>
</div>
</body>
</html>

--_000_BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50BL0PR12MB2340namp_--


--===============0021659933913008684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0021659933913008684==--

