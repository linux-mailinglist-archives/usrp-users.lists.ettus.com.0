Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECA47177D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 13:53:49 +0200 (CEST)
Received: from [::1] (port=60964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hptMZ-0000IE-8T; Tue, 23 Jul 2019 07:53:47 -0400
Received: from mail-eopbgr680098.outbound.protection.outlook.com
 ([40.107.68.98]:63107 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <leong3@purdue.edu>) id 1hptMV-0000Br-Qq
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 07:53:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFIObvUbcOgpmUlJPL9B6TxwFLFBKr6ovOvsWSwAesoXU1b/DsK7HoSXvO20PYqHxsYT//Gq0QZL4W6k5feS/+G7oTO0etXq8+PVIaz4diuQkNq5qxY892ZgHHnt44ct+6BEL+UDF/9rWIeeaBviKMQ0B6zaTa4HtJiEKmgsDssc7+KHhokR6kUl4avgTRZr+I+JFx6fMsQEE48AssylgBMqelgkzSH0LPaR8zDpvZnN1wLT01AqPMjOpS29xLtOrP9dtdaJ9pE3SDPmp9mMNbj90A7KllJYcFsPlGtDZc3K1j1K8AQz8SB3DrKrdS3/weZfXFyhPW2FAjrcncVmxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uVHlyTd5e8IovQba4UqGVT0WE8w/gQmLn+DsMOrSLJk=;
 b=GodOqq9T8DnXWEnDQoYSFQnXcCaWKkGRd1aOA21SVSgYJubBDmUo5Qn3jskEXqqMyFukOr5V7/6IsX96/NZ8CoitcFYZcR91356ZD7rcSHqQuUDq8XkCTtTcz3HxjoN5y7T0zJAV0C72LEsl3KvK4faCHPUKKWHLD+p9HCKuRvAaVZ7yixbDNBH/6vRgXvG0vYnAC6hi2gaOu/kcZmdfHqkx+J2LewzKFWyMT7xL2lVw4AAJ1OB419aaIxmtgH0s+PxQ2ElUQOQKJKuLZobEm3WHgYJ8Sv+pzRNIRHu+paYekwWrrmHRn8u3+/jf2ROR/noBahai2OK3rfJVNiALJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=purdue.edu;dmarc=pass action=none
 header.from=purdue.edu;dkim=pass header.d=purdue.edu;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purdue0.onmicrosoft.com; s=selector1-purdue0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uVHlyTd5e8IovQba4UqGVT0WE8w/gQmLn+DsMOrSLJk=;
 b=kEcGHykmudre8N0CSmhP2/8av/ztFWuxs5gbUkwtvPfrzAs8pW3D7tmTbnD0sftYW4dKY06pO2daMiBsEnQADn/3scXqRC0aNwa/4H18KpOeNSeg/fFQueBtI2aH3++TqvfXXtGDqt3WXkoqfP9bzBe3CICuwiWbUtJ/8HtDwh8=
Received: from CY4PR2201MB1431.namprd22.prod.outlook.com (10.171.240.157) by
 CY4PR2201MB1704.namprd22.prod.outlook.com (10.165.90.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 11:52:58 +0000
Received: from CY4PR2201MB1431.namprd22.prod.outlook.com
 ([fe80::ec92:5285:efd0:756f]) by CY4PR2201MB1431.namprd22.prod.outlook.com
 ([fe80::ec92:5285:efd0:756f%5]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 11:52:58 +0000
To: EJ Kreinar <ejkreinar@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC OOT Issues
Thread-Index: AQHVQM4nTNKdAbL/BUWGQwpU9/mh+abXWsIAgAABFFeAABCkgIAAqMlS
Date: Tue, 23 Jul 2019 11:52:57 +0000
Message-ID: <CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70@CY4PR2201MB1431.namprd22.prod.outlook.com>
References: <CY4PR2201MB143165C90E3A0F9BA29FDAAEFFC40@CY4PR2201MB1431.namprd22.prod.outlook.com>
 <CADRnH20GMjTFwnvvuT9k-f1hN=GeVCFZtCFHBYZeLPUMLvRDmA@mail.gmail.com>
 <CY4PR2201MB1431968AB2E2046733F7320FFFC70@CY4PR2201MB1431.namprd22.prod.outlook.com>,
 <CADRnH20CoY_+KQfffwdZMUo0==LyYpyymNcED1-=VZg9kEOM7A@mail.gmail.com>
In-Reply-To: <CADRnH20CoY_+KQfffwdZMUo0==LyYpyymNcED1-=VZg9kEOM7A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leong3@purdue.edu; 
x-originating-ip: [129.55.200.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55fc22cb-fde7-404a-cb20-08d70f644e42
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:CY4PR2201MB1704; 
x-ms-traffictypediagnostic: CY4PR2201MB1704:
x-microsoft-antispam-prvs: <CY4PR2201MB170462374DEA758AB5B8C48AFFC70@CY4PR2201MB1704.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(39860400002)(346002)(396003)(52314003)(189003)(199004)(7736002)(52536014)(3846002)(8936002)(66556008)(66946007)(66446008)(64756008)(66476007)(7116003)(8676002)(66576008)(3480700005)(6116002)(76116006)(91956017)(256004)(5024004)(14444005)(81166006)(5660300002)(86362001)(76176011)(88552002)(66066001)(19627405001)(6246003)(71190400001)(71200400001)(7696005)(99286004)(74316002)(446003)(102836004)(476003)(25786009)(68736007)(2906002)(9686003)(55016002)(53936002)(236005)(478600001)(75432002)(6506007)(54896002)(26005)(229853002)(53546011)(14454004)(110136005)(2501003)(11346002)(316002)(786003)(33656002)(6436002)(186003)(486006)(81156014)(99936001)(6606003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR2201MB1704;
 H:CY4PR2201MB1431.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: purdue.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qrlOJtv8b3jLds8ZczETdXH8QyzeKfkLyIglCptPPPTuib7E8bhhC5EZW9/YUbr7M6BjCGCNdBRK4xQBPv5MCvqKiTW8FaMpjV4APwtl4PlUFi4yGM0nTCa90gX+xkt3xr/zolkrQ8uquLEI+A/SytjZawKVglb0XcbdlQ7tGV7Q0ccFvve1mtnQR2ghh6hYhw+Zg5tkHnlDHOlWiJjRyXOnO/u3JemmJF8I6SR4h3i6ma6b7mRpmPhPCfke8weU9By0HCKiorT9djF4Loa3yJSccJzYS7tVykHWjEqi/bOWOcscx71qVAlTlFCnvbSfc83SvL9hEmpqQrPqVZAtIBosOYQS54a1fCUvsuGOTaE+X0c/BwF0MSbpqybLKoS7bIJZ6YQjrSvdJxJ3OEqVJ/Lv/GMUwuQT7Pd52AyPbcs=
Content-Type: multipart/mixed;
 boundary="_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_"
MIME-Version: 1.0
X-OriginatorOrg: purdue.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 55fc22cb-fde7-404a-cb20-08d70f644e42
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 11:52:57.8362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4130bd39-7c53-419c-b1e5-8758d6d63f21
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leong3@purdue.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR2201MB1704
Subject: Re: [USRP-users] RFNoC OOT Issues
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
From: Kirsten S Leong via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kirsten S Leong <leong3@purdue.edu>
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

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: multipart/alternative;
	boundary="_000_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_"

--_000_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've attached the makefiles of the IPs and the other subdirectories in the =
rfnoc folder.


Thanks,

Kirsten

________________________________
From: EJ Kreinar <ejkreinar@gmail.com>
Sent: Monday, July 22, 2019 6:36:27 PM
To: Kirsten S Leong <leong3@purdue.edu>
Subject: Re: RFNoC OOT Issues

Okay sounds good.

Rfnoc devel branch should be fine, but it's now getting a bit old. The most=
 updated guidance I would recommend is to use one of their tagged branches,=
 say v3.13.x.x or v3.14.x.x. The software needs a cmake compile flag "-DENA=
BLE_RFNOC 1" but that's a bit downstream...

The most likely scenario here is that the makefiles for building the IP are=
n't quite right. Can you copy or attach the makefiles from the ip folder an=
d subdirectories?

Also, building the IP inside the fpga folder is intended behavior-- it's al=
l generated to retarget each part you build for.

EJ

On Mon, Jul 22, 2019, 9:19 PM Kirsten S Leong <leong3@purdue.edu<mailto:leo=
ng3@purdue.edu>> wrote:
Yes, I emailed the mailing list. I'll shift over there once I have access t=
o my work email.

I pulled from the rfnoc-devel branch and the data width converter is in the=
 ip folder of my OOT module.

Thanks,
Kirsten
________________________________
From: EJ Kreinar <ejkreinar@gmail.com<mailto:ejkreinar@gmail.com>>
Sent: Monday, July 22, 2019 5:33:02 PM
To: Kirsten S Leong <leong3@purdue.edu<mailto:leong3@purdue.edu>>
Subject: Re: RFNoC OOT Issues

Hi Kirsten,

Not sure what you mean by the usrp users site? You should be able to just e=
mail the mailing list at usrp-users@lists.ettus.com<mailto:usrp-users@lists=
.ettus.com>

Anyway, first what version of uhd-fpga are you using?

Also, is this ip from your OOT module?

Feel free to send to the usrp-users mailing list too if you'd like to chat =
there.

Best regards,
Ej



On Mon, Jul 22, 2019, 4:52 PM Kirsten S Leong <leong3@purdue.edu<mailto:leo=
ng3@purdue.edu>> wrote:

Hello,


I first submitted a post to the USRP-users site but it hasn't been accepted=
 for a week. It's my first time building an RFNoC image and was running int=
o issues on my custom OOT block which uses Xilinx IPs and a data width conv=
erter. I modeled the Makefiles after the ones in your example repository bu=
t I get the error:


make[1]:***No rule to make target '/home/kleong/projects/fpga/usrp3/top/x30=
0/build-ip/xc7k410tffg900-2/axis_dwidth_converter_32to64/axis_dwidth_conver=
ter_32to64.xci', needed by 'bin'. Stop.

make[1]: Leaving directory '/home/kleong/projects/fpga/usrp3/top/x300'

Makefile:119: recipe for target 'X310_RFNOC_HG' failed

make: *** [X310_RFNOC_HG] Error 2


This occurs when I run the command ./uhd_image_builder.py fmdemod -t X310_R=
FNOC_HG -d X310 -I /home/kleong/projects/rfnoc-fmdemod/rfnoc/ --fill-with-f=
ifos


The block can be successfully simulated, but I'm not sure why make file is =
looking for the IPs in the fpga repository.


Thanks,

Kirsten


--_000_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">I've attached the makefiles of t=
he IPs and the other subdirectories in the rfnoc folder.
<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0; margin-bottom:0">Kirsten<br>
</p>
</div>
<hr style=3D"display:inline-block; width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> EJ Kreinar &lt;ejkr=
einar@gmail.com&gt;<br>
<b>Sent:</b> Monday, July 22, 2019 6:36:27 PM<br>
<b>To:</b> Kirsten S Leong &lt;leong3@purdue.edu&gt;<br>
<b>Subject:</b> Re: RFNoC OOT Issues</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Okay sounds good.&nbsp;
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Rfnoc devel branch should be fine, but it's now getting a=
 bit old. The most updated guidance I would recommend is to use one of thei=
r tagged branches, say v3.13.x.x or v3.14.x.x. The software needs a cmake c=
ompile flag &quot;-DENABLE_RFNOC 1&quot; but
 that's a bit downstream...</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">The most likely scenario here is that the makefiles for b=
uilding the IP aren't quite right. Can you copy or attach the makefiles fro=
m the ip folder and subdirectories?</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Also, building the IP inside the fpga folder is intended =
behavior-- it's all generated to retarget each part you build for.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">EJ</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Jul 22, 2019, 9:19 PM Kirst=
en S Leong &lt;<a href=3D"mailto:leong3@purdue.edu" id=3D"LPlnk886708" clas=
s=3D"OWAAutoLink" previewremoved=3D"true">leong3@purdue.edu</a>&gt; wrote:<=
br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_-5039304668561236165divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, =
sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;Seg=
oe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Andro=
id Emoji&quot;, EmojiSymbols;">
Yes, I emailed the mailing list. I'll shift over there once I have access t=
o&nbsp;my work email.&nbsp;
<div><br>
</div>
<div>I pulled from the rfnoc-devel branch and&nbsp;the data width converter=
 is in the ip folder of my OOT module.&nbsp;</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Kirsten</div>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-5039304668561236165divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:=
</b> EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" target=3D"_blank=
" rel=3D"noreferrer" id=3D"LPlnk816094" class=3D"OWAAutoLink" previewremove=
d=3D"true">ejkreinar@gmail.com</a>&gt;<br>
<b>Sent:</b> Monday, July 22, 2019 5:33:02 PM<br>
<b>To:</b> Kirsten S Leong &lt;<a href=3D"mailto:leong3@purdue.edu" target=
=3D"_blank" rel=3D"noreferrer" id=3D"LPlnk729933" class=3D"OWAAutoLink" pre=
viewremoved=3D"true">leong3@purdue.edu</a>&gt;<br>
<b>Subject:</b> Re: RFNoC OOT Issues</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"auto">Hi Kirsten,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Not sure what you mean by the usrp users site? You should=
 be able to just email the mailing list at
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer" id=3D"LPlnk577680" class=3D"OWAAutoLink" previewremoved=3D"true">
usrp-users@lists.ettus.com</a></div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Anyway, first what version of uhd-fpga are you using?</di=
v>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Also, is this ip from your OOT module?<br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Feel free to send to the usrp-users mailing list too if y=
ou'd like to chat there.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Best regards,</div>
<div dir=3D"auto">Ej</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
</div>
<br>
<div class=3D"x_m_-5039304668561236165x_gmail_quote">
<div dir=3D"ltr" class=3D"x_m_-5039304668561236165x_gmail_attr">On Mon, Jul=
 22, 2019, 4:52 PM Kirsten S Leong &lt;<a href=3D"mailto:leong3@purdue.edu"=
 rel=3D"noreferrer noreferrer" target=3D"_blank" id=3D"LPlnk938211" class=
=3D"OWAAutoLink" previewremoved=3D"true">leong3@purdue.edu</a>&gt;
 wrote:<br>
</div>
<blockquote class=3D"x_m_-5039304668561236165x_gmail_quote" style=3D"margin=
:0 0 0 .8ex; border-left:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_-5039304668561236165x_m_-4053458726004473758m_13385255503478=
97157divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; color: rgb=
(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quo=
t;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmo=
ji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0">Hello, <br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I first submitted a post to the =
USRP-users site but it hasn't been accepted for a week. It's my first time =
building an RFNoC image and was running into issues on my custom OOT block =
which uses Xilinx IPs and a data width
 converter. I modeled the Makefiles after the ones in your example reposito=
ry but I get the error:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">make[1]:***No rule to make targe=
t '/home/kleong/projects/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axis=
_dwidth_converter_32to64/axis_dwidth_converter_32to64.xci', needed by 'bin'=
. Stop.</p>
<p style=3D"margin-top:0; margin-bottom:0">make[1]: Leaving directory '/hom=
e/kleong/projects/fpga/usrp3/top/x300'</p>
<p style=3D"margin-top:0; margin-bottom:0">Makefile:119: recipe for target =
'X310_RFNOC_HG' failed</p>
<p style=3D"margin-top:0; margin-bottom:0">make: *** [X310_RFNOC_HG] Error =
2</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">This occurs when I run the comma=
nd ./uhd_image_builder.py fmdemod -t X310_RFNOC_HG -d X310 -I /home/kleong/=
projects/rfnoc-fmdemod/rfnoc/ --fill-with-fifos</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">The block can be successfully si=
mulated, but I'm not sure why make file is looking for the IPs in the fpga =
repository.
<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0; margin-bottom:0">Kirsten<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_--

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name="Makefile.inc"
Content-Description: Makefile.inc
Content-Disposition: attachment; filename="Makefile.inc"; size=656;
	creation-date="Tue, 23 Jul 2019 11:47:13 GMT";
	modification-date="Tue, 23 Jul 2019 11:47:13 GMT"
Content-Transfer-Encoding: base64

IyAKIyBDb3B5cmlnaHQgMjAxNyBFSiBLcmVpbmFyCiMgCgppbmNsdWRlICQoVE9PTFNfRElSKS9t
YWtlL3Zpdl9pcF9idWlsZGVyLm1hawoKTElCX0lQX0RXSURUSF9DT05WRVJURVJfT09UX1NSQ1Mg
PSAkKElQX0JVSUxEX0RJUikvYXhpc19kd2lkdGhfY29udmVydGVyXzMydG82NC9heGlzX2R3aWR0
aF9jb252ZXJ0ZXJfMzJ0bzY0LnhjaQoKTElCX0lQX0RXSURUSF9DT05WRVJURVJfT09UX09VVFMg
PSAkKGFkZHByZWZpeCAkKElQX0JVSUxEX0RJUikvYXhpc19kd2lkdGhfY29udmVydGVyXzMydG82
NC8sIFwKYXhpc19kd2lkdGhfY29udmVydGVyXzMydG82NC54Y2kub3V0IFwKc3ludGgvYXhpc19k
d2lkdGhfY29udmVydGVyXzMydG82NC52aGQgXAopIAoKJChMSUJfSVBfRFdJRFRIX0NPTlZFUlRF
Ul9PT1RfU1JDUykgJChMSUJfSVBfRFdJRFRIX0NPTlZFUlRFUl9PT1RfT1VUUykgOiAkKFJGTk9D
X09PVEVYQU1QTEVfRElSKS9pcC9heGlzX2R3aWR0aF9jb252ZXJ0ZXJfMzJ0bzY0L2F4aXNfZHdp
ZHRoX2NvbnZlcnRlcl8zMnRvNjQueGNpCgkkKGNhbGwgQlVJTERfVklWQURPX0lQLGF4aXNfZHdp
ZHRoX2NvbnZlcnRlcl8zMnRvNjQsJChBUkNIKSwkKFBBUlRfSUQpLCQoUkZOT0NfT09URVhBTVBM
RV9ESVIpL2lwLCQoSVBfQlVJTERfRElSKSwwKQo=

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name=":ip:float_to_fixed:Makefile.inc"
Content-Description: :ip:float_to_fixed:Makefile.inc
Content-Disposition: attachment; filename=":ip:float_to_fixed:Makefile.inc";
	size=520; creation-date="Tue, 23 Jul 2019 11:48:38 GMT";
	modification-date="Tue, 23 Jul 2019 11:48:38 GMT"
Content-Transfer-Encoding: base64

IyAKIyBDb3B5cmlnaHQgMjAxNyBFSiBLcmVpbmFyCiMgCgppbmNsdWRlICQoVE9PTFNfRElSKS9t
YWtlL3Zpdl9pcF9idWlsZGVyLm1hawoKTElCX0lQX0ZMT0FUX1RPX0ZJWEVEX1NSQ1MgPSAkKElQ
X0JVSUxEX0RJUikvZmxvYXRfdG9fZml4ZWQvZmxvYXRfdG9fZml4ZWQueGNpCgpMSUJfSVBfRkxP
QVRfVE9fRklYRURfT1VUUyA9ICQoYWRkcHJlZml4ICQoSVBfQlVJTERfRElSKS9mbG9hdF90b19m
aXhlZC8sIFwKZmxvYXRfdG9fZml4ZWQueGNpLm91dCBcCnN5bnRoL2Zsb2F0X3RvX2ZpeGVkLnZo
ZCBcCikgCgokKExJQl9JUF9GTE9BVF9UT19GSVhFRF9TUkNTKSAkKExJQl9JUF9GTE9BVF9UT19G
SVhFRF9PVVRTKSA6ICQoUkZOT0NfT09URVhBTVBMRV9ESVIpL2lwL2Zsb2F0X3RvX2ZpeGVkL2Zs
b2F0X3RvX2ZpeGVkLnhjaQoJJChjYWxsIEJVSUxEX1ZJVkFET19JUCxmbG9hdF90b19maXhlZCwk
KEFSQ0gpLCQoUEFSVF9JRCksJChSRk5PQ19PT1RFWEFNUExFX0RJUikvaXAsJChJUF9CVUlMRF9E
SVIpLDApCg==

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name=":ip:mult_gen_0:Makefile.inc"
Content-Description: :ip:mult_gen_0:Makefile.inc
Content-Disposition: attachment; filename=":ip:mult_gen_0:Makefile.inc";
	size=472; creation-date="Tue, 23 Jul 2019 11:48:40 GMT";
	modification-date="Tue, 23 Jul 2019 11:48:40 GMT"
Content-Transfer-Encoding: base64

IyAKIyBDb3B5cmlnaHQgMjAxNyBFSiBLcmVpbmFyCiMgCgppbmNsdWRlICQoVE9PTFNfRElSKS9t
YWtlL3Zpdl9pcF9idWlsZGVyLm1hawoKTElCX0lQX01VTFRfR0VOXzBfU1JDUyA9ICQoSVBfQlVJ
TERfRElSKS9tdWx0X2dlbl8wL211bHRfZ2VuXzAueGNpCgpMSUJfSVBfTVVMVF9HRU5fMF9PVVRT
ID0gJChhZGRwcmVmaXggJChJUF9CVUlMRF9ESVIpL211bHRfZ2VuXzAvLCBcCm11bHRfZ2VuXzAu
eGNpLm91dCBcCnN5bnRoL211bHRfZ2VuXzAudmhkIFwKKSAKCiQoTElCX0lQX01VTFRfR0VOXzBf
U1JDUykgJChMSUJfSVBfTVVMVF9HRU5fMF9PVVRTKSA6ICQoUkZOT0NfT09URVhBTVBMRV9ESVIp
L2lwL211bHRfZ2VuXzAvbXVsdF9nZW5fMC54Y2kKCSQoY2FsbCBCVUlMRF9WSVZBRE9fSVAsbXVs
dF9nZW5fMCwkKEFSQ0gpLCQoUEFSVF9JRCksJChSRk5PQ19PT1RFWEFNUExFX0RJUikvaXAsJChJ
UF9CVUlMRF9ESVIpLDApCg==

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name=":ip:fixed_to_float:Makefile.inc"
Content-Description: :ip:fixed_to_float:Makefile.inc
Content-Disposition: attachment; filename=":ip:fixed_to_float:Makefile.inc";
	size=520; creation-date="Tue, 23 Jul 2019 11:48:43 GMT";
	modification-date="Tue, 23 Jul 2019 11:48:43 GMT"
Content-Transfer-Encoding: base64

IyAKIyBDb3B5cmlnaHQgMjAxNyBFSiBLcmVpbmFyCiMgCgppbmNsdWRlICQoVE9PTFNfRElSKS9t
YWtlL3Zpdl9pcF9idWlsZGVyLm1hawoKTElCX0lQX0ZJWEVEX1RPX0ZMT0FUX1NSQ1MgPSAkKElQ
X0JVSUxEX0RJUikvZml4ZWRfdG9fZmxvYXQvZml4ZWRfdG9fZmxvYXQueGNpCgpMSUJfSVBfRklY
RURfVE9fRkxPQVRfT1VUUyA9ICQoYWRkcHJlZml4ICQoSVBfQlVJTERfRElSKS9maXhlZF90b19m
bG9hdC8sIFwKZml4ZWRfdG9fZmxvYXQueGNpLm91dCBcCnN5bnRoL2ZpeGVkX3RvX2Zsb2F0LnZo
ZCBcCikgCgokKExJQl9JUF9GSVhFRF9UT19GTE9BVF9TUkNTKSAkKExJQl9JUF9GSVhFRF9UT19G
TE9BVF9PVVRTKSA6ICQoUkZOT0NfT09URVhBTVBMRV9ESVIpL2lwL2ZpeGVkX3RvX2Zsb2F0L2Zp
eGVkX3RvX2Zsb2F0LnhjaQoJJChjYWxsIEJVSUxEX1ZJVkFET19JUCxmaXhlZF90b19mbG9hdCwk
KEFSQ0gpLCQoUEFSVF9JRCksJChSRk5PQ19PT1RFWEFNUExFX0RJUikvaXAsJChJUF9CVUlMRF9E
SVIpLDApCg==

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name=":ip:div_gen_0:Makefile.inc"
Content-Description: :ip:div_gen_0:Makefile.inc
Content-Disposition: attachment; filename=":ip:div_gen_0:Makefile.inc";
	size=460; creation-date="Tue, 23 Jul 2019 11:48:53 GMT";
	modification-date="Tue, 23 Jul 2019 11:48:53 GMT"
Content-Transfer-Encoding: base64

IyAKIyBDb3B5cmlnaHQgMjAxNyBFSiBLcmVpbmFyCiMgCgppbmNsdWRlICQoVE9PTFNfRElSKS9t
YWtlL3Zpdl9pcF9idWlsZGVyLm1hawoKTElCX0lQX0RJVl9HRU5fMF9TUkNTID0gJChJUF9CVUlM
RF9ESVIpL2Rpdl9nZW5fMC9kaXZfZ2VuXzAueGNpCgpMSUJfSVBfRElWX0dFTl8wX09VVFMgPSAk
KGFkZHByZWZpeCAkKElQX0JVSUxEX0RJUikvZGl2X2dlbl8wLywgXApkaXZfZ2VuXzAueGNpLm91
dCBcCnN5bnRoL2Rpdl9nZW5fMC52aGQgXAopIAoKJChMSUJfSVBfRElWX0dFTl8wX1NSQ1MpICQo
TElCX0lQX0RJVl9HRU5fMF9PVVRTKSA6ICQoUkZOT0NfT09URVhBTVBMRV9ESVIpL2lwL2Rpdl9n
ZW5fMC9kaXZfZ2VuXzAueGNpCgkkKGNhbGwgQlVJTERfVklWQURPX0lQLGRpdl9nZW5fMCwkKEFS
Q0gpLCQoUEFSVF9JRCksJChSRk5PQ19PT1RFWEFNUExFX0RJUikvaXAsJChJUF9CVUlMRF9ESVIp
LDApCg==

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream;
	name="tetbenches:noc_block_fmdemod_tb:Makefile"
Content-Description: tetbenches:noc_block_fmdemod_tb:Makefile
Content-Disposition: attachment;
	filename="tetbenches:noc_block_fmdemod_tb:Makefile"; size=3211;
	creation-date="Tue, 23 Jul 2019 11:49:35 GMT";
	modification-date="Tue, 23 Jul 2019 11:49:35 GMT"
Content-Transfer-Encoding: base64

IyAKIyBDb3B5cmlnaHQgMjAxOSA8K1lPVSBPUiBZT1VSIENPTVBBTlkrPi4KIyAKIyBUaGlzIGlz
IGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKIyBp
dCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGFzIHB1
Ymxpc2hlZCBieQojIHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb247IGVpdGhlciB2ZXJzaW9u
IDMsIG9yIChhdCB5b3VyIG9wdGlvbikKIyBhbnkgbGF0ZXIgdmVyc2lvbi4KIyAKIyBUaGlzIHNv
ZnR3YXJlIGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWws
CiMgYnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2Fy
cmFudHkgb2YKIyBNRVJDSEFOVEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBV
UlBPU0UuICBTZWUgdGhlCiMgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0
YWlscy4KIyAKIyBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgR2Vu
ZXJhbCBQdWJsaWMgTGljZW5zZQojIGFsb25nIHdpdGggdGhpcyBzb2Z0d2FyZTsgc2VlIHRoZSBm
aWxlIENPUFlJTkcuICBJZiBub3QsIHdyaXRlIHRvCiMgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRh
dGlvbiwgSW5jLiwgNTEgRnJhbmtsaW4gU3RyZWV0LAojIEJvc3RvbiwgTUEgMDIxMTAtMTMwMSwg
VVNBLgojIAoKIy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KIyBUb3Atb2YtTWFrZWZpbGUKIy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KIyBEZWZpbmUgQkFTRV9ESVIgdG8gcG9pbnQgdG8gdGhlICJ0b3AiIGRp
cgpCQVNFX0RJUiA9ICQoYWJzcGF0aCAkKEZQR0FfVE9QX0RJUikvdXNycDMvdG9wKQojIEluY2x1
ZGUgdml2X3NpbV9wcmVhbXBsZSBhZnRlciBkZWZpbmluZyBCQVNFX0RJUgppbmNsdWRlICQoQkFT
RV9ESVIpLy4uL3Rvb2xzL21ha2Uvdml2X3NpbV9wcmVhbWJsZS5tYWsKaW5jbHVkZSAkKEJBU0Vf
RElSKS8uLi90b29scy9tYWtlL3Zpdl9pcF9idWlsZGVyLm1hawoKI0FSQ0ggPSB6eW5xCiNQQVJU
X0lEID0geGM3ejAyMC9jbGc0ODQvLTEKCiMtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiMgSVAgU3BlY2lmaWMKIy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KI0lmIHNpbXVsYXRpb24gY29udGFpbnMgSVAsIGRl
ZmludGUgdGhlIElQX0RJUiBhbmQgcG9pbnQKI2l0IHRvIHRoZSBiYXNlIGxldmVsIElQIGRpcmVj
dG9yeQpSRk5PQ19PT1RFWEFNUExFX0RJUiA9ICQoYWJzcGF0aCAuLi8uLi8pCgojSW5jbHVkZSBt
YWtlZmlsZXMgYW5kIHNvdXJjZXMgZm9yIGFsbCBJUCBjb21wb25lbnRzCiMgKmFmdGVyKiBkZWZp
bmluZyB0aGUgTElCX0lQX0RJUgppbmNsdWRlICQoUkZOT0NfT09URVhBTVBMRV9ESVIpL2lwL2F4
aXNfZHdpZHRoX2NvbnZlcnRlcl8zMnRvNjQvTWFrZWZpbGUuaW5jCiNpbmNsdWRlICQoUkZOT0Nf
T09URVhBTVBMRV9ESVIpL2lwL2Zsb2F0aW5nX3BvaW50X211bHQvTWFrZWZpbGUuaW5jCiNpbmNs
dWRlICQoUkZOT0NfT09URVhBTVBMRV9ESVIpL2lwL2Zsb2F0aW5nX3BvaW50X2FkZHN1Yi9NYWtl
ZmlsZS5pbmMKI2luY2x1ZGUgJChSRk5PQ19PT1RFWEFNUExFX0RJUikvaXAvZmxvYXRpbmdfcG9p
bnRfZGl2X29vdC9NYWtlZmlsZS5pbmMKaW5jbHVkZSAkKFJGTk9DX09PVEVYQU1QTEVfRElSKS9p
cC9maXhlZF90b19mbG9hdC9NYWtlZmlsZS5pbmMKaW5jbHVkZSAkKFJGTk9DX09PVEVYQU1QTEVf
RElSKS9pcC9mbG9hdF90b19maXhlZC9NYWtlZmlsZS5pbmMKaW5jbHVkZSAkKFJGTk9DX09PVEVY
QU1QTEVfRElSKS9pcC9kaXZfZ2VuXzAvTWFrZWZpbGUuaW5jCmluY2x1ZGUgJChSRk5PQ19PT1RF
WEFNUExFX0RJUikvaXAvbXVsdF9nZW5fMC9NYWtlZmlsZS5pbmMKCkRFU0lHTl9TUkNTICs9ICQo
YWJzcGF0aCAkKExJQl9JUF9GTE9BVF9UT19GSVhFRF9TUkNTKSkKREVTSUdOX1NSQ1MgKz0gJChh
YnNwYXRoICQoTElCX0lQX0ZJWEVEX1RPX0ZMT0FUX1NSQ1MpKQpERVNJR05fU1JDUyArPSAkKGFi
c3BhdGggJChMSUJfSVBfRFdJRFRIX0NPTlZFUlRFUl9PT1RfU1JDUykpCiNERVNJR05fU1JDUyAr
PSAkKGFic3BhdGggJChMSUJfSVBfRkxPQVRJTkdfUE9JTlRfTVVMVF9TUkNTKSkKI0RFU0lHTl9T
UkNTICs9ICQoYWJzcGF0aCAkKExJQl9JUF9GTE9BVElOR19QT0lOVF9ESVZfT09UX1NSQ1MpKQoj
REVTSUdOX1NSQ1MgKz0gJChhYnNwYXRoICQoTElCX0lQX0ZMT0FUSU5HX1BPSU5UX0FERFNVQl9T
UkNTKSkKREVTSUdOX1NSQ1MgKz0gJChhYnNwYXRoICQoTElCX0lQX0RJVl9HRU5fMF9TUkNTKSkK
REVTSUdOX1NSQ1MgKz0gJChhYnNwYXRoICQoTElCX0lQX01VTFRfR0VOXzBfU1JDUykpCgojLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIFRlc3RiZW5j
aCBTcGVjaWZpYwojLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQojIERlZmluZSBvbmx5IG9uZSB0b3BsZXZlbCBtb2R1bGUKU0lNX1RPUCA9IG5vY19ibG9j
a19mbWRlbW9kX3RiCgojIEFkZCB0ZXN0IGJlbmNoLCB1c2VyIGRlc2lnbiB1bmRlciB0ZXN0LCBh
bmQKIyBhZGRpdGlvbmFsIHVzZXIgY3JlYXRlZCBmaWxlcwpTSU1fU1JDUyA9IFwKJChhYnNwYXRo
IG5vY19ibG9ja19mbWRlbW9kX3RiLnN2KSBcCiQoYWJzcGF0aCAuLi8uLi9mcGdhLXNyYy9ub2Nf
YmxvY2tfZm1kZW1vZC52KQoKTU9ERUxTSU1fVVNFUl9ETyA9CgojLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIEJvdHRvbS1vZi1NYWtlZmlsZQojLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIEluY2x1ZGUg
YWxsIHNpbXVsYXRvciBzcGVjaWZpYyBtYWtlZmlsZXMgaGVyZQojIEVhY2ggc2hvdWxkIGRlZmlu
ZSBhIHVuaXF1ZSB0YXJnZXQgdG8gc2ltdWxhdGUKIyBlLmcuIHhzaW0sIHZzaW0sIGV0YyBhbmQg
YSBjb21tb24gImNsZWFuIiB0YXJnZXQKaW5jbHVkZSAkKEJBU0VfRElSKS8uLi90b29scy9tYWtl
L3Zpdl9zaW11bGF0b3IubWFrCg==

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name=":fpga-src:Makefile.inc"
Content-Description: :fpga-src:Makefile.inc
Content-Disposition: attachment; filename=":fpga-src:Makefile.inc"; size=87;
	creation-date="Tue, 23 Jul 2019 11:49:58 GMT";
	modification-date="Tue, 23 Jul 2019 11:49:58 GMT"
Content-Transfer-Encoding: base64

UkZOT0NfU1JDUyArPSAkKGFkZHByZWZpeCAkKFJGTk9DX09PVEVYQU1QTEVfRElSKS9mcGdhLXNy
Yy8sIFwKbm9jX2Jsb2NrX2ZtZGVtb2QudiBcCikK

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name="Makefile.inc"
Content-Description: Makefile.inc
Content-Disposition: attachment; filename="Makefile.inc"; size=264;
	creation-date="Tue, 23 Jul 2019 11:50:36 GMT";
	modification-date="Tue, 23 Jul 2019 11:50:36 GMT"
Content-Transfer-Encoding: base64

IyBTcGVjaWZ5IGFsbCByZWxldmFudCBNYWtlZmlsZXMgdG8gaW5jbHVkZQoKUkZOT0NfT09URVhB
TVBMRV9ESVIgOj0gJChPT1RfRElSKQppbmNsdWRlICQoYWJzcGF0aCAkKFJGTk9DX09PVEVYQU1Q
TEVfRElSKS9mcGdhLXNyYy9NYWtlZmlsZS5pbmMpCmluY2x1ZGUgJChhYnNwYXRoICQoUkZOT0Nf
T09URVhBTVBMRV9ESVIpL2hscy9NYWtlZmlsZS5pbmMpCmluY2x1ZGUgJChhYnNwYXRoICQoUkZO
T0NfT09URVhBTVBMRV9ESVIpL2lwL01ha2VmaWxlLmluYykK

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: application/octet-stream; name=":fpga-src:Makefile.srcs"
Content-Description: :fpga-src:Makefile.srcs
Content-Disposition: attachment; filename=":fpga-src:Makefile.srcs"; size=53;
	creation-date="Tue, 23 Jul 2019 11:51:16 GMT";
	modification-date="Tue, 23 Jul 2019 11:51:16 GMT"
Content-Transfer-Encoding: base64

JChhZGRwcmVmaXggU09VUkNFU19QQVRILCBcCm5vY19ibG9ja19mbWRlbW9kLnYgCikgXAo=

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_012_CY4PR2201MB1431BCA8DAEB8C580E0FE93EFFC70CY4PR2201MB1431_--

