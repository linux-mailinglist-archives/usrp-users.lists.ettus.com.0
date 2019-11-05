Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BD2EFD91
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2019 13:45:59 +0100 (CET)
Received: from [::1] (port=58286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRyDZ-000884-0B; Tue, 05 Nov 2019 07:45:53 -0500
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:54164)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iRyDV-00083n-CI
 for USRP-users@lists.ettus.com; Tue, 05 Nov 2019 07:45:49 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 A745AC34DD
 for <USRP-users@lists.ettus.com>; Tue,  5 Nov 2019 12:45:08 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2053.outbound.protection.outlook.com [104.47.46.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us4.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 60C6280065; 
 Tue,  5 Nov 2019 12:44:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QKdo+Oij7BSqoHbnx9iqcKOw5/JDDWB7KZ5yv7RBcXc5ZpL/OpBWonaxJFvjytVkvjftK8KbFLFGmW8eaNPedBOTjdfsANQ1es3U9fig9defmSIzaNcPqCga8fvcpiJd5Ino6/GoHlWE/z0fWyFQARDmJFpxP89jbmeqURm4U0oHvZ6G9HuDNxR8D6vFyATdcrfHdZYFuHw8+hSwd2SBBnXfX9D5SBx1844sBc3/VOoK3oHGeK2CQeNTxLK6qjZ2bP8KyH879f6Nt75PHYDmV/+GL64FgoxE4jxwkptTm/OKdtoXApkIz9jtYyp4HvMHZS9fVCaSIjtWWGWVfu7asw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c8NDIxBDESbfNh4tU48qUYpayOc04A1ys0lnWztX4Dc=;
 b=Vt9ztNR3r2KyEXcn0ojLTAWGQBzSeEwCvFop5mQg7vryTOhj2TrV3C5FM5RYq1/tGdGD/K/WVwmlhgj3z65hLIvI/HdUPOWvsY/ZNJJO6w79qZXg+hz+4OCTJT7a20dA1zGJBfadluGA+QNZrcx9tJ/YxmsgdDVZ0EKk+ffxwz53c4op+t6ycmr4fk/aSB3jKIaek1WA9h4PZ1lQpfTJeNUKXt39DldoeUSgPvzz7dOXbJClIREz8cSETwj5wM2vCd7tbDHIwagIpfI7vroqZ0eRSoZHcZGoAB13K5vOsw4zCt+YEmOw954lmrw+rHnvKn8OmYCLzhZuJOw/xkEQRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c8NDIxBDESbfNh4tU48qUYpayOc04A1ys0lnWztX4Dc=;
 b=IM9uXMZAbXaCMgH05t9vi6TP1vrHiqPNQr8yRbRaiBjrQESs0I368XY6v8Dd9UsFW268FpLGW0DK/CW0p8TBnhWhZUD4VcY/jEajoJ1vJYIPglDFP0Tx9Dcf+ctATy5hkbdE+PKMzBaiUDXUuKL0ztnGgqda37Gpvg87KZFWppA=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2529.namprd12.prod.outlook.com (52.132.11.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 5 Nov 2019 12:44:51 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::34cc:615e:b7d0:13ab]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::34cc:615e:b7d0:13ab%3]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 12:44:51 +0000
To: Philip Balister <philip@balister.org>, "zcao@c3commsystems.com"
 <zcao@c3commsystems.com>
Thread-Topic: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310
Thread-Index: AQHVkymx4QXtzg1ImUanu/PNBoDjIad7ZVcAgAAQP4CAARDyvg==
Date: Tue, 5 Nov 2019 12:44:51 +0000
Message-ID: <BL0PR12MB2340E9C7CEE9EBE99C14EA67AF7E0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <F8807E43-2706-48BD-84BC-3C53C4EE65CB@c3commsystems.com>
 <b21ca1df-ce39-ee8e-70c7-9a89726ff11e@balister.org>,
 <86BC5E7F-802A-4100-AC71-72CB42A42DE8@c3commsystems.com>
In-Reply-To: <86BC5E7F-802A-4100-AC71-72CB42A42DE8@c3commsystems.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [2601:14f:0:9440:457a:c604:3d26:1caa]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0282b286-fccb-4a9b-bbdd-08d761edf357
x-ms-traffictypediagnostic: BL0PR12MB2529:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB252903F1D052DBEF9AD7C010AF7E0@BL0PR12MB2529.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(136003)(376002)(366004)(39830400003)(52544003)(51914003)(199004)(189003)(33656002)(66476007)(110136005)(66556008)(66446008)(66946007)(64756008)(966005)(2501003)(76116006)(4326008)(316002)(6246003)(76176011)(606006)(2906002)(6506007)(229853002)(53546011)(102836004)(9686003)(8676002)(55016002)(236005)(6306002)(5660300002)(54896002)(52536014)(6116002)(7696005)(14454004)(6436002)(19627405001)(186003)(256004)(105004)(46003)(476003)(86362001)(446003)(11346002)(486006)(508600001)(25786009)(81156014)(74316002)(81166006)(7736002)(8936002)(71190400001)(71200400001)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2529;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kLO+qGDVypxfYzk5YoS4MHiqAk4dvfMjeGq+x6gW6NIaHZqKfQV8A9omNbbdLR8hAqf+Yti01grC+1W9IWGDuJUUaTEIBClUXd21CmNlttmyPryZOrBcUxrcb1sqW8P6xrRXa7Gbk18jULNU5A2H1GMBIg0rA1QzmevZRlmxBitsfkNmAZY4s+VxYYfmWL0eB5aO5F2y9XNMZDT/gM05P5PfbIzlkuqpdE/zWtYDpSLLAFA/NCB+2UmMH76umQZmiSwCdrsGHU0M/2aFJ80SUkmDQS2MKxfo3zouKmCEBiI25DWQxXX2Rxk09KrfnWwf/3T/yWrPWLCx95m7OiEr9kpHZlBuJwfLvnI9i/3F3o+70Acwt7hmzabjM0CXmbVWqoFVejIEq8eOYpe5hlS0jLmZBC940YuLiy1n4cngKaJOnd4OraVMmrJefNl877bhupGMayXl6BjOYtbxV44G2qfJ8coBhuHZ2r8vaCwF1cI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0282b286-fccb-4a9b-bbdd-08d761edf357
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 12:44:51.2152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dNnScFvRf81ksjHCBAyUteVA60m2pYCBjrbAzxs08IqeYC0lUxfTzpkmmegDM+UzPf7aO03ze5UXu85fm44YBp8qcOo7CpJBwNxgQd2pa/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2529
X-MDID: 1572957898-qMHCPxokQyKa
Subject: Re: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310
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
Cc: USRP-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6175516403883341386=="
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

--===============6175516403883341386==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340E9C7CEE9EBE99C14EA67AF7E0BL0PR12MB2340namp_"

--_000_BL0PR12MB2340E9C7CEE9EBE99C14EA67AF7E0BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Zhongren,

I am not sure that this will help you, but one of the things that I did whe=
n working with the E31x was to install everything to ~/localhost and leave =
the default stuff alone.  I then created a setup_env.sh for those new files=
 (similar to what pybombs does), and run that before I using my custom stuf=
f.

This allows the default stuff to stay there in case I want to test with it =
again.  It also keeps all of my stuff in a single folder that I can then bl=
ow away if I want.

Good luck!

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of zcao--- =
via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, November 4, 2019 3:25 PM
To: Philip Balister <philip@balister.org>
Cc: USRP-users <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310

Philip,

Thanks for the response. That=92s what we did to get through the issue.

But is it what we supposed to do, i.e., edit these UHD provided python scri=
pts manually?

Thanks,
Zhongren

On Nov 4, 2019, at 2:27 PM, Philip Balister <philip@balister.org<mailto:phi=
lip@balister.org>> wrote:

On 11/4/19 5:04 PM, zcao--- via USRP-users wrote:
Hi,

We are trying to run UHD examples on E310. The process we took are as the f=
ollowing.

1. Flash a fresh SDcard using the dev image located at http://files.ettus.c=
om/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/<https://urldefense.proofpoint=
.com/v2/url?u=3Dhttp-3A__files.ettus.com_e3xx-5Fimages_e3xx-2Drelease-2D4_e=
ttus-2De3xx-2Dsg3_&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfii=
MM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DBqKFEhCjIyH_Wt0BKhMu=
J7WuKNliqtjAQnzUTDZl0uE&s=3D41C6cQDFwbYWuSCMDK9Be4hZSEYzwS5dapTh9xXRs2U&e=
=3D> <http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/<htt=
ps://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__files.ettus.com_e3xx-5Fi=
mages_e3xx-2Drelease-2D4_ettus-2De3xx-2Dsg3_&d=3DDwMFaQ&c=3DeuGZstcaTDllvim=
EN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG=
8&m=3DBqKFEhCjIyH_Wt0BKhMuJ7WuKNliqtjAQnzUTDZl0uE&s=3D41C6cQDFwbYWuSCMDK9Be=
4hZSEYzwS5dapTh9xXRs2U&e=3D>>

2. Cross-compile UHD source code on a development machine and install the b=
uild on to the E310 device using sshfs. Note that this is a different from =
what is proposed in AN-311. We installed UHD 3.14 onto the device directly.

3. Running /usr/bin/uhd_find_devices, we got the following output, looks no=
rmal.

[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.1-0-g03=
47a6d8
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
   serial: 31819A1
   name:
   node: /dev/axi_fpga
   product: E3XX SG3
   type: e3x0


However, we ran into the following problems, which seem to be related.

1. We cannot run /usr/bin/uhd_usrp_probe, because of the FPGA compatibility=
. Specifically, the error messages are

Error: RuntimeError: Expected FPGA compatibility number 255.x, but got 14.0=
:
The FPGA build is not compatible with the host code build.
Please run:

"/usr/lib/uhd/utils/uhd_images_downloader.py"


2. But running the above python script gives us the following error message=
s.

-sh: /usr/lib/uhd/utils/uhd_images_downloader.py: /usr/local/oecore-x86_64/=
sysroots/x86_64-oesdk-linux/usr/bin/python2: bad interpreter: No such file =
or directory/

Look at the script /usr/lib/uhd/utils/uhd_images_downloader.py and edit
the #!/bin/fo/bar/python to something reasonable.

Philip



Note that the python script is looking for the SDK, which should be on the =
development machine, instead of the device itself.

Would really appreciate it if anyone knows how to handle above issues in E3=
10 device itself?

Thanks,
Arnold



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


Arnold Z. Cao, Ph.D.

C-3 Comm Systems, LLC
3100 Clarendon Blvd., Suite 200
Arlington, VA 22201
Phone: (703) 829-0588
Email : zcao@c3commsystems.com<mailto:zcao@c3commsystems.com>


--_000_BL0PR12MB2340E9C7CEE9EBE99C14EA67AF7E0BL0PR12MB2340namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important">Zhongren,</sp=
an><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important">I am not sure
 that this will help you, but one of the things that I did when working wit=
h the E31x was to install everything to ~/localhost and leave the default s=
tuff alone.&nbsp; I then created a setup_env.sh for those new files (simila=
r to what pybombs does), and run that
 before I using my custom stuff.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important">This allows
 the default stuff to stay there in case I want to test with it again.&nbsp=
; It also keeps all of my stuff in a single folder that I can then blow awa=
y if I want.&nbsp;&nbsp;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(50, 49, 48); font-family: &quot;Segoe UI&quot;, &=
quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;, -apple-syste=
m, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; back=
ground-color: rgb(255, 255, 255); display: inline !important">Good luck!</s=
pan></div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of zcao--- via USRP-users &lt;us=
rp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, November 4, 2019 3:25 PM<br>
<b>To:</b> Philip Balister &lt;philip@balister.org&gt;<br>
<b>Cc:</b> USRP-users &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Problems when Running UHD_3.14.1 Examples =
on E310</font>
<div>&nbsp;</div>
</div>
<div class=3D"" style=3D"word-wrap:break-word; line-break:after-white-space=
">Philip,
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Thanks for the response. That=92s what we did to get throug=
h the issue.&nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">But is it what we supposed to do, i.e., edit these UHD prov=
ided python scripts manually?</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Thanks,</div>
<div class=3D"">Zhongren<br class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Nov 4, 2019, at 2:27 PM, Philip Balister &lt;<a href=3D"=
mailto:philip@balister.org" class=3D"">philip@balister.org</a>&gt; wrote:</=
div>
<br class=3D"x_Apple-interchange-newline">
<div class=3D"">
<div class=3D"">On 11/4/19 5:04 PM, zcao--- via USRP-users wrote:<br class=
=3D"">
<blockquote type=3D"cite" class=3D"">Hi, <br class=3D"">
<br class=3D"">
We are trying to run UHD examples on E310. The process we took are as the f=
ollowing.<br class=3D"">
<br class=3D"">
1. Flash a fresh SDcard using the dev image located at <a href=3D"https://u=
rldefense.proofpoint.com/v2/url?u=3Dhttp-3A__files.ettus.com_e3xx-5Fimages_=
e3xx-2Drelease-2D4_ettus-2De3xx-2Dsg3_&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllv=
imEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexf=
icV9DG8&amp;m=3DBqKFEhCjIyH_Wt0BKhMuJ7WuKNliqtjAQnzUTDZl0uE&amp;s=3D41C6cQD=
FwbYWuSCMDK9Be4hZSEYzwS5dapTh9xXRs2U&amp;e=3D" class=3D"">
http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/</a> &lt;<=
a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__files.ettus=
.com_e3xx-5Fimages_e3xx-2Drelease-2D4_ettus-2De3xx-2Dsg3_&amp;d=3DDwMFaQ&am=
p;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4m=
r51mTMqpeO4RbBBLexficV9DG8&amp;m=3DBqKFEhCjIyH_Wt0BKhMuJ7WuKNliqtjAQnzUTDZl=
0uE&amp;s=3D41C6cQDFwbYWuSCMDK9Be4hZSEYzwS5dapTh9xXRs2U&amp;e=3D" class=3D"=
">http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/</a>&gt;=
<br class=3D"">
<br class=3D"">
2. Cross-compile UHD source code on a development machine and install the b=
uild on to the E310 device using sshfs. Note that this is a different from =
what is proposed in AN-311. We installed UHD 3.14 onto the device directly.=
<br class=3D"">
<br class=3D"">
3. Running /usr/bin/uhd_find_devices, we got the following output, looks no=
rmal.<br class=3D"">
<br class=3D"">
[INFO] [UHD] linux; GNU C&#43;&#43; version 4.9.2; Boost_105700; UHD_3.14.1=
.1-0-g0347a6d8<br class=3D"">
--------------------------------------------------<br class=3D"">
-- UHD Device 0<br class=3D"">
--------------------------------------------------<br class=3D"">
Device Address:<br class=3D"">
&nbsp;&nbsp;&nbsp;serial: 31819A1<br class=3D"">
&nbsp;&nbsp;&nbsp;name: <br class=3D"">
&nbsp;&nbsp;&nbsp;node: /dev/axi_fpga<br class=3D"">
&nbsp;&nbsp;&nbsp;product: E3XX SG3<br class=3D"">
&nbsp;&nbsp;&nbsp;type: e3x0<br class=3D"">
<br class=3D"">
<br class=3D"">
However, we ran into the following problems, which seem to be related.<br c=
lass=3D"">
<br class=3D"">
1. We cannot run /usr/bin/uhd_usrp_probe, because of the FPGA compatibility=
. Specifically, the error messages are<br class=3D"">
<br class=3D"">
Error: RuntimeError: Expected FPGA compatibility number 255.x, but got 14.0=
:<br class=3D"">
The FPGA build is not compatible with the host code build.<br class=3D"">
Please run:<br class=3D"">
<br class=3D"">
&quot;/usr/lib/uhd/utils/uhd_images_downloader.py&quot;<br class=3D"">
<br class=3D"">
<br class=3D"">
2. But running the above python script gives us the following error message=
s.<br class=3D"">
<br class=3D"">
-sh: /usr/lib/uhd/utils/uhd_images_downloader.py: /usr/local/oecore-x86_64/=
sysroots/x86_64-oesdk-linux/usr/bin/python2: bad interpreter: No such file =
or directory/<br class=3D"">
</blockquote>
<br class=3D"">
Look at the script /usr/lib/uhd/utils/uhd_images_downloader.py and edit<br =
class=3D"">
the #!/bin/fo/bar/python to something reasonable.<br class=3D"">
<br class=3D"">
Philip<br class=3D"">
<br class=3D"">
<blockquote type=3D"cite" class=3D""><br class=3D"">
<br class=3D"">
Note that the python script is looking for the SDK, which should be on the =
development machine, instead of the device itself.<br class=3D"">
<br class=3D"">
Would really appreciate it if anyone knows how to handle above issues in E3=
10 device itself?<br class=3D"">
<br class=3D"">
Thanks,<br class=3D"">
Arnold<br class=3D"">
<br class=3D"">
<br class=3D"">
<br class=3D"">
_______________________________________________<br class=3D"">
USRP-users mailing list<br class=3D"">
<a href=3D"mailto:USRP-users@lists.ettus.com" class=3D"">USRP-users@lists.e=
ttus.com</a><br class=3D"">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<br class=
=3D"">
<br class=3D"">
</blockquote>
</div>
</div>
</blockquote>
</div>
<br class=3D"">
<div class=3D"">
<div class=3D"" style=3D"color:rgb(0,0,0); letter-spacing:normal; text-alig=
n:start; text-indent:0px; text-transform:none; white-space:normal; word-spa=
cing:0px; word-wrap:break-word; line-break:after-white-space">
<div class=3D"" style=3D"color:rgb(0,0,0); letter-spacing:normal; text-alig=
n:start; text-indent:0px; text-transform:none; white-space:normal; word-spa=
cing:0px; word-wrap:break-word; line-break:after-white-space">
<div class=3D"" style=3D"color:rgb(0,0,0); letter-spacing:normal; text-alig=
n:start; text-indent:0px; text-transform:none; white-space:normal; word-spa=
cing:0px; word-wrap:break-word; line-break:after-white-space">
<div class=3D"" style=3D"color:rgb(0,0,0); letter-spacing:normal; text-alig=
n:start; text-indent:0px; text-transform:none; white-space:normal; word-spa=
cing:0px; word-wrap:break-word; line-break:after-white-space">
<div class=3D"">Arnold Z. Cao, Ph.D.</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D""><b class=3D"">C-3 Comm Systems, LLC</b></div>
<div class=3D"">3100 Clarendon Blvd., Suite 200</div>
<div class=3D"">Arlington, VA 22201</div>
<div class=3D"">Phone: (703) 829-0588</div>
<div class=3D"">Email :<span class=3D"x_Apple-converted-space">&nbsp;</span=
><a href=3D"mailto:zcao@c3commsystems.com" class=3D"">zcao@c3commsystems.co=
m</a></div>
</div>
</div>
</div>
</div>
</div>
<br class=3D"">
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340E9C7CEE9EBE99C14EA67AF7E0BL0PR12MB2340namp_--


--===============6175516403883341386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6175516403883341386==--

