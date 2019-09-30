Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05383C25BE
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2019 19:24:55 +0200 (CEST)
Received: from [::1] (port=44338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iEzPk-00086u-QR; Mon, 30 Sep 2019 13:24:48 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:36548)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iEzPh-0007xu-6H
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 13:24:45 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 84061C6AD5
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 17:24:04 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2055.outbound.protection.outlook.com [104.47.44.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 739D3A40085;
 Mon, 30 Sep 2019 17:23:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8eIvK+wl0xfdViZSUPnFCKoLNPNenMO4n5T38bj+JDB9e8ChPV1tWEHMJrOJTNHB+FXI5PD9Q4maTJSbgXcd7funOd90sd2elwbkvhwcwfpAgTFwpr2Q0SC0Yc7j37APYDtJlzzYbktrmxFC/j0Tz8yvhsvO/cE8Z7jgJUHck+uRcbihBbqwpsF2mSM6POW5TuomSA4Em9T+ukVJ9wV4t/xc9FMf3n8NDDc/bM8j+1xhksAztE3YUp3LmgYohJODYKV5gWevi2JBB8fWiTrR5ogk0cxswu2Z6qJHtvHqHo5Tm4i4W93oJ3EbOu1sE8qeykmfaf3RvY5NHxGkXOFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9KCORtY5QujMgqeNJ6AIxQcKjNZz+9zDMRA7bbxExe8=;
 b=XWTvYthE9V0XdFhmuJPlZ7xZGa6rA7Z3FhyG9N5Wdwse9KGptBMm33RD6EIw9nmRBDF1NkrRbRZhkLOat2lIaaf4PUssKA/Fqo8HbDPLKwll3Mte/A5NlNbX66sBpiqFkkcsrfhXRZ5/viwCRkgMD5SgWqUTzhzePYobA06coIqcgxvcvlAuddapO1cIqy8khfrcH06KvTwnFxvVwszmTfh/yJBu6KGaqyuJCL2xg62HY8bfeYmNMJ+GktUjmWLfj0Z3gV9wVGXyHJ6A8dEm976zBmhyzvkpmdaBpmfr72WFIpo4BsKY3pX0w85h2OhsHgMp/faWMjGyjHcLuT0cTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9KCORtY5QujMgqeNJ6AIxQcKjNZz+9zDMRA7bbxExe8=;
 b=tt71F4yCp+yBINfkkga4Qshqyk/Ev1OMp8kryVss32ItDzifb2Eoi4AVflkYRrc4WOVE44C2SBjdslMW9S3440BlMUOeu8S2prPG/1MC9VQsyhAxzmNsHpdOA9W8pZUU38QYVR4FBqXXYyYmNRfx4JiXzGyLQBHPEV63v/tXR4s=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2353.namprd12.prod.outlook.com (52.132.10.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 17:23:43 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 17:23:43 +0000
To: Neel Pandeya <neel.pandeya@ettus.com>
Thread-Topic: [USRP-users] next pps issues with TwinRX
Thread-Index: AQHVd5+nMNpaPST0n0uDbRwbaMd+4adEVcmAgAAiI6M=
Date: Mon, 30 Sep 2019 17:23:43 +0000
Message-ID: <BL0PR12MB234012376A189C9C2EA5EFDCAF820@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340E8912EBC7072A9D3C46FAF820@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CACaXmv-DJFq2VQeZXCh-YKF-P=++xOga9o=KJ-_azwBmNFHiKA@mail.gmail.com>
In-Reply-To: <CACaXmv-DJFq2VQeZXCh-YKF-P=++xOga9o=KJ-_azwBmNFHiKA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f48a8bf0-0cd0-485f-5e94-08d745caf184
x-ms-traffictypediagnostic: BL0PR12MB2353:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB23534736538F5CF94EA28631AF820@BL0PR12MB2353.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(366004)(376002)(346002)(136003)(396003)(199004)(189003)(105004)(55016002)(6116002)(3846002)(52536014)(66446008)(66946007)(66556008)(66476007)(86362001)(33656002)(76116006)(64756008)(25786009)(19627405001)(6436002)(9686003)(53546011)(54896002)(14454004)(8676002)(102836004)(236005)(6506007)(229853002)(186003)(71190400001)(71200400001)(81166006)(26005)(966005)(508600001)(6306002)(81156014)(99286004)(606006)(76176011)(446003)(476003)(5660300002)(7696005)(66066001)(2906002)(486006)(14444005)(6246003)(6916009)(7736002)(74316002)(11346002)(316002)(256004)(8936002)(5024004)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2353;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4IsN0Uhe+e2z35mbi/Se+e0euhfZe2tKt9dhWc+aKeHyyjsrD3RCLVsdVbRZbPDxbYpwMIEJVv4AEPZ6jPwvg0zcmYTwo6BVdoiOKIhNrXRU/n4E3HX2KMF1lpjOOI0WI1PDQxCXQsxaizJfsxwDlLIVlqCfFvTjrSCU+rWSeP2YH/g3RBfq8+sImBuASg6twt9N9LBoFxMeihef6RD30TTUb1HU2iPeWqA3hvMPK8Msf6IhCvGsT5/NUDL3s9An3G43HW9cEr2sZkXIMFL1VlZ3ZB/J9D1gxHrqONBgvcmBv0is04//z07Ui4o27FZQKgmJkaGWFZgVcxzDtcsX1NjuMB0kwQtdhplZSVnQQtTmNkf3z0StmqqjfmYn4UwLOVjAsMTGKdKFcw8KwmlqDJOyqmZwryRd/nqSumDfwrYbdR0ANofRRfyKo/dGVQh/GfLacXo1W/MEbm2G4THACw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f48a8bf0-0cd0-485f-5e94-08d745caf184
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 17:23:43.2919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kyb2WZNUQ/HQy+68zrgnXanwB+Rx6hLWqONYc1YljiRRE+pLePMQepNeY/ADLvD71Q4IhWr+wXvLCChEPDV4z0mQQknnV6epSvwG/6ol7FU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2353
X-MDID: 1569864234-aJ9oYXIgMs1m
Subject: Re: [USRP-users] next pps issues with TwinRX
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0030862371616114588=="
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

--===============0030862371616114588==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234012376A189C9C2EA5EFDCAF820BL0PR12MB2340namp_"

--_000_BL0PR12MB234012376A189C9C2EA5EFDCAF820BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Neel,

I updated to: UHD_3.14.1.1-0-g0347a6d8  as well as v3.7.13.5 for GR, still =
the same issues.

It almost feels like some sort of double/float mismatch somewhere since the=
 alignment is so close to being right.

________________________________
From: Neel Pandeya <neel.pandeya@ettus.com>
Sent: Monday, September 30, 2019 11:19 AM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] next pps issues with TwinRX

Hello Jason:

We'll look into this and get back to you shortly.

If you get a chance, could you please try it with the tagged UHD 3.14.1.1 ?

Which version of GNU Radio are you using?

--Neel Pandeya



On Mon, 30 Sep 2019 at 10:10, Jason Matusiak via USRP-users <usrp-users@lis=
ts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
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

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DVzsj=
pGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo&s=3D_gOstnMMEDkfFbD1tcNsLqzHaSnMGcI=
jP7W9NVzbH6M&e=3D>

--_000_BL0PR12MB234012376A189C9C2EA5EFDCAF820BL0PR12MB2340namp_
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
Neel,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I updated to:&nbsp;UHD_3.14.1.1-0-g0347a6d8&nbsp; as well as v3.7.13.5 for =
GR, still the same issues.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It almost feels like some sort of double/float mismatch somewhere since the=
 alignment is so close to being right.</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Neel Pandeya &lt;neel=
.pandeya@ettus.com&gt;<br>
<b>Sent:</b> Monday, September 30, 2019 11:19 AM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] next pps issues with TwinRX</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Hel=
lo Jason:</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">We'=
ll look into this and get back to you shortly.<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">If =
you get a chance, could you please try it with the tagged UHD 3.14.1.1 ?</d=
iv>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Whi=
ch version of GNU Radio are you using?<br>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">--N=
eel Pandeya</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, 30 Sep 2019 at 10:10, Jason=
 Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
We are having another issues with our TwinRXs.&nbsp; A co-worker has been t=
rying to get this to work for a while, but has had no luck with the PPS tim=
ing.&nbsp; Here is the notes:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
We are running UHD_3.14.1.HEAD-12-g5f75f73f.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
The setup is a single X310 (<span style=3D"margin:0px">revision: 11</span>,=
&nbsp; revision_compat: 7) with two TwinRX boards. The device gets Ref/PPS =
from an Octoclock.</div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px">The attached script has a hard-coded IP address =
and clock rate. It works for other X310s with UBX/SBX daughter boards as we=
ll as the E320.<br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px">Good results are (note line 5 below):</span></di=
v>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px; font-size:12pt; font-family:Calibri,Arial,Helveti=
ca,sans-serif; background-color:rgb(255,255,255)">
<span style=3D"margin:0px"></span><span style=3D"margin:0px">Synchronizing =
Radios to Reference Signals<br>
</span>
<div style=3D"margin:0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin:0px">next_pps from 1569851984.633563 is 1569851985.000=
000<br>
</div>
<div style=3D"margin:0px">Setting time for radio `gr uhd usrp source`: 2019=
-09-30 09:59:45<br>
</div>
<div style=3D"margin:0px"><b>PPS alignment PASSED!: [1569851986.0, 15698519=
86]<br>
</b></div>
<div style=3D"margin:0px">All radios are Synchronized</div>
<div style=3D"margin:0px"><br>
</div>
<div style=3D"margin:0px">Bad results are:<span style=3D"margin:0px"><br>
</span></div>
<div style=3D"margin:0px"><span style=3D"margin:0px">Synchronizing Radios t=
o Reference Signals<br>
</span>
<div style=3D"margin:0px">Checking PPS synchronization<br>
</div>
<div style=3D"margin:0px">next_pps from 1569851508.136703 is 1569851509.000=
000<br>
</div>
<div style=3D"margin:0px">Setting time for radio `gr uhd usrp source`: 2019=
-09-30 09:51:49<br>
</div>
<div style=3D"margin:0px"><b>PPS alignment mismatch: [1569851509.9999995, 1=
569851509]</b></div>
<div style=3D"margin:0px"><b><br>
</b></div>
<div style=3D"margin:0px">Any thoughts of why this might be happening?</div=
>
</div>
</div>
<br>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&amp;m=3DVzsjpGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo=
&amp;s=3D_gOstnMMEDkfFbD1tcNsLqzHaSnMGcIjP7W9NVzbH6M&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB234012376A189C9C2EA5EFDCAF820BL0PR12MB2340namp_--


--===============0030862371616114588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0030862371616114588==--

