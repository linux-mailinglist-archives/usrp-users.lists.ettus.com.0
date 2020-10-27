Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 557EC29ACFD
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 14:17:21 +0100 (CET)
Received: from [::1] (port=50846 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXOqj-0006YC-EJ; Tue, 27 Oct 2020 09:17:17 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:35156)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kXOqf-0006Ot-3n
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 09:17:13 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 A8C6B10B903
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 13:16:32 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.21])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 9BF7980091
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 13:16:22 +0000 (UTC)
Received: from us1-mdac16-3.at1.mdlocal (unknown [10.110.51.62])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 9AB06200A7
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 13:16:22 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.49.105])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2F75B2E0064
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 13:16:22 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 02F2A9C0074
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 13:16:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVn1+W+wERM7SUiCPqy3TPiGoe7GpCgVOfOOX/Yyw92xR9AUUG0rhTqIC+hLSrjOaS2/DQOop+oz7McLstgudGHrAkV2k/9KwVgPyZUMGf+QQUMBXQMjOkPMrUCUkq5B2qurK23dEGhkpkNbbR3MXMg7yWVCrQgFnZ1NPqul6uTa89s5og5pfrC7k1dYCdDKX1l7ZR39r1fYoqqkuxuol1AjBRpPjT70hMWbfe5py1RnbpZ4qi+d6GVHznmCV6WDTWlxJEbAw1l3xU8ksHnySaafbYFvE0Q0zczHgQ5BpzUz3spxlerhvsKHjVR0GabJVJK/V8dQZ1VJkU3st1eCRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BpaGPrqzS0XSNShjhR+aT6MXuYML6/JG/8usYIxVujw=;
 b=KaDZ5+ioyA0ZE0LwT644AzHS74l9QY+XqkhueuA0pw0BEABG7VPuBdI3eV7rruFziYYMioFbknyUURww009wXtoPsTHucdX5lEG9OMuZi7U6S1cKIP0PYVTZJ9eUQtztGOHcbmDbxqnuqNnzYDTUTc53q0PvwwFjcd1M/Ami1Z1TOK29OHUS84PEFQYGFYiLu0d95pP5xjS3dNtGf8nnOG+TajEtCzZ1gmsescgupPZV/Tg2BWP0utSc5gJLtdaBXR/JOXMs4vVhSGxAxEzUuagw2kS10FT4ug/2bIot/7iW4TpttZKxmDHUXXUL40VV+/SZ2CEGRFoVwtBP+n5PgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BpaGPrqzS0XSNShjhR+aT6MXuYML6/JG/8usYIxVujw=;
 b=FHhh/zW/F3UGSyKPqJcMx684HABjb0BlGeAOP8V4jT7iCINhRVgONZ7/SVGa2xYUdAgHBOThwlDLx7C6zIdi7vWmiox3yiMXgDmSW5eutr5EJ99ACYbmvhtlW3FZqLpZfN3tJEgGqSJRs4vjyBt2RUblbyUpzhKdx22TCWV78Sw=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3102.namprd12.prod.outlook.com (2603:10b6:208:c6::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.22; Tue, 27 Oct
 2020 13:16:18 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::1134:9197:c49:fa0f]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::1134:9197:c49:fa0f%5]) with mapi id 15.20.3477.028; Tue, 27 Oct 2020
 13:16:18 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 Autoboot
Thread-Index: AQHWrGLfErTVJwHTykSOCUCfRqOJrA==
Date: Tue, 27 Oct 2020 13:16:18 +0000
Message-ID: <MN2PR12MB3312A7830750D47A990F15F7B8160@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91f116b9-a2cb-4109-0431-08d87a7a7dac
x-ms-traffictypediagnostic: MN2PR12MB3102:
x-microsoft-antispam-prvs: <MN2PR12MB310275B18399F4C066241AD9B8160@MN2PR12MB3102.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VaqlutGX4esSafEgsFCkzvdoAtzcExOUiSmaw240/QDLefrn51XuQFg5lVYuBZSfPMyF26kDlpkG+31UpZXnIeMsl6DTqNWtPZnTsoiEkOD+aRf3HuIoIYQJH0brucYOS7/uxx1DNoIllwRQuSfv1puPlFYi+AAd44+gWVNz0r9ixE1FlgaaEProBS/XbFCW+hZkmx9FTGbNYSTzWfy+/M5i0Rg7CWG6Nyj0LFzqi9r9nCQn6MCkW/W8lVMalPOvwtCM6wE3V2OvoeuS5erxpMV8C9ncD/ftOjvHUoM5OfYK57bScoXt1bTKJvd1D349/SjQ0gcqoDuaWjzq8hKAOiUx9sWr53+T2Lbf/kc2SvWteR6RuNCJx+XJdam0aonC4afJLH/KpoJT78JEEugd5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(346002)(39830400003)(396003)(64756008)(478600001)(166002)(8676002)(66476007)(66446008)(6506007)(76116006)(86362001)(66556008)(8936002)(6916009)(316002)(2906002)(186003)(4744005)(26005)(66946007)(52536014)(5660300002)(9686003)(55016002)(7696005)(7116003)(33656002)(19627405001)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WS8RQJHxKLv7/Ny7q1nlrSZFkeECYMxIoDHMFEZe7nynnkVbHJSlQZqDtWB3OAM839MkQSwveW8ZgGJVFALf+v28rk1dtyF9rbSv9PYOhY6DUmywYONzSTm48Cx5tFJwz4TD4V/rpwjEMoSmMsKJrHjbWr9/amH9OdqbkaaueBW+L4PjD73vRRWJurGaXuar8S5bp0vHJtANE5jMBGs91XPOAsDsq8Rvyd4Q6FxDAdCKi2YwSBddA5H8uOiJvVCqvaWeaGJdMuaf/A+10AE1Jo0TfT9msr8nQuoTVgCWkPZKPKTsj3cGSQ3Dy455VyCGP4kGFTWavPNdD55JYo1mx69cIgy2zSRSVjjKjOWICAbnAbbPCL3dCakXC9WoL7q+ZTIJQPENXQL5vrGTyD7YPSjUgYGahTDJOCCXDuDi3q46Um+XT5RRYxWvYhTZbvev5MKp3i3VJGhCvW9ze8p4ORf1KqCeYxjArTIIRoPBIBTrE9OW2otTy9zbm/qep6EUJK0uQnjk3YEUspktfPYArIBEryRnJJ+8jQFv6EskpfMpLodmL8N0F4eLlG+162cxkhaqwYm0qXBtB7j9/aEy77JW710xArXO2bkL0EvB5IxNRuoy4TGU6sQqahyOGQSlSebUjWR12y98kFvirTqYkA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91f116b9-a2cb-4109-0431-08d87a7a7dac
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2020 13:16:18.4240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vuJPZCov64yB72bD8Nu6OlG71GyOQwOJnXxZcIfRWFguU2dr4h8xaFB/05+LQO88CMYMlyVD2tzzfhPckXK2pXjzsnRVEUSwwCK7zKVXCfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3102
X-MDID: 1603804582-THA-Nkko4Xnm
X-PPE-DISP: 1603804582;THA-Nkko4Xnm
Subject: [USRP-users] E320 Autoboot
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
From: Jim Palladino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Palladino <jim@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============5007260331506400784=="
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

--===============5007260331506400784==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312A7830750D47A990F15F7B8160MN2PR12MB3312namp_"

--_000_MN2PR12MB3312A7830750D47A990F15F7B8160MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have an E320 that I'm trying to get to auto-boot when power is applied (s=
o the button doesn't need pushed). I followed instructions here (https://kb=
.ettus.com/E320_Getting_Started_Guide#Enable_Auto_Booting) to set the autob=
oot flag, but it isn't working (not automatically booting when power is app=
lied). Per the above-mentioned webpage, I sent a request to support@ettus.c=
om for instructions to update the E320 RO and RW firmware. It's been about =
a week and I haven't heard anything back, so I'm wondering if anyone here k=
nows how to update the firmware.

Thanks,
Jim




--_000_MN2PR12MB3312A7830750D47A990F15F7B8160MN2PR12MB3312namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"margin:0px;font-size:12pt">I have an E320 that I'm trying to =
get to auto-boot when power is applied (so the button doesn't need pushed).=
 I followed instructions here&nbsp;<span style=3D"font-size: 12pt;">(</span=
><a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Enable_Auto_Boo=
ting" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplica=
ble" style=3D"font-size: 12pt;">https://kb.ettus.com/E320_Getting_Started_G=
uide#Enable_Auto_Booting</a><span style=3D"font-size: 12pt;">)
 to set the autoboot flag, but it isn't working (not automatically booting =
when power is applied). Per the above-mentioned webpage, I sent a request t=
o support@ettus.com for instructions to update the E320 RO and RW firmware.=
 It's been about a week and I haven't
 heard anything back, so I'm wondering if anyone here knows how to update t=
he firmware.</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size: 12pt;"><=
br>
</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size: 12pt;">T=
hanks,</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size: 12pt;">J=
im</span></div>
<div style=3D"margin:0px;font-size:12pt"><span style=3D"font-size: 12pt;"><=
br>
</span></div>
<div style=3D"margin:0px;font-size:12pt"><br style=3D"font-size:16px;backgr=
ound-color:rgb(255, 255, 255)">
</div>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB3312A7830750D47A990F15F7B8160MN2PR12MB3312namp_--


--===============5007260331506400784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5007260331506400784==--

