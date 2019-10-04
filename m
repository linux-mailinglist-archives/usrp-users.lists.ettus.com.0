Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F210CCC1E1
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2019 19:40:46 +0200 (CEST)
Received: from [::1] (port=41902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iGRZN-0007GB-Pu; Fri, 04 Oct 2019 13:40:45 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:55376)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iGRZK-00075W-Ga
 for usrp-users@lists.ettus.com; Fri, 04 Oct 2019 13:40:42 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 F4088C5D69
 for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2019 17:40:01 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2053.outbound.protection.outlook.com [104.47.42.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id B2192A40058;
 Fri,  4 Oct 2019 17:39:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LqAszRKVt/g4/ysK6ZoGYl4hF4FAedLFYwUd/9n42WB+5Lwz4AyEB/4Luh0CcB008afhUJzftZF2EmkDQAkeU9o92tTGogN4WlloYnwl7ddcg/JUc2h9VdJvGV3eGUXeEcrrC4REbR2O8XMl3d+yQA1RhP2ZaJsOrae0BpWS0orPtQfzmseOWobA7PFalUOX+Elc8NZ8sUOcr+XnBcad4xMFyK6BsvwOS2r3k763bplCcTc7tfQjGD2/qlRUbzcbLIQrMz0NhuQGjf74W61UTGCVP2hpqiGVYRPKyCqCWgeQ5rj74N9fzTcp0uGF+NQjkqxSqrjM0sRszbiRPLuXAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BsUU/7pQa7Py3AwVUsVi2hXB8OGHgwyosxD72ReY4OI=;
 b=djHdcQ3m00C++mOvanIlarbdQ/u4Ewu/0pbB2HfQL5Ab+9r99lohZNdoOyo11KxwdA7v4FlYIunBJd3mE9kIFEEWxZ/fdufoHG8VTWfjlhRmue53gYvlWewwbCA+Qa34B2anQrmgmN9EPywRs0f4vwBVKODTOlXhKIbucnUvTBli9uEl/JC2PYEq2jxEDMaJbe9BpYJ7ANbvUt7OGBuZBO2WizxQIz6zaNRn9VMW8H9G8fYsMbBQewnEdMq93P+HRO7Zu+lyhfm/THd0haoULo74YqsIVJ+LJfsrRAG1mn/eUZX2rtLmSwlQR8V9n2bd9Ta98a5pyRorkay/rGoRlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BsUU/7pQa7Py3AwVUsVi2hXB8OGHgwyosxD72ReY4OI=;
 b=PA8uzUbMCbG/lLqtcMLCDIzIdwUraZuvKi8ou+lCN9ggwy1WTmoooft1qbBEm3C1dikzcP292G57j8cks1sEVQRF5L5iNAtN/qcypCW7hPcyqFTpxm2gCTDFpWtATSRuRIzcDQJ36DbYyy/BsD1p79IG29BQEooavYVX9e3kn0A=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0SPR01MB0013.namprd12.prod.outlook.com (52.132.26.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Fri, 4 Oct 2019 17:39:49 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.023; Fri, 4 Oct 2019
 17:39:49 +0000
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Thread-Topic: usrp probe and find commands
Thread-Index: AQHVeteU0A98AhWslUKY/Ax1lUtsf6dKum8o//+++wCAAEYQBA==
Date: Fri, 4 Oct 2019 17:39:49 +0000
Message-ID: <BL0PR12MB23401B78BB6DEEEE96F48FC3AF9E0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <A97E90B7-48D8-425C-A071-25D24FEF2DB1@contoso.com>
 <BL0PR12MB2340444D469284F01C5F57E8AF9E0@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <E1C5CAEF-63A7-43DE-93E3-5E94955C65AD@iubelttechnologies.com>
In-Reply-To: <E1C5CAEF-63A7-43DE-93E3-5E94955C65AD@iubelttechnologies.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6eb0955-01e4-4c29-7392-08d748f1db16
x-ms-traffictypediagnostic: BL0SPR01MB0013:
x-microsoft-antispam-prvs: <BL0SPR01MB0013E582240EDA4489DFDB6FAF9E0@BL0SPR01MB0013.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 018093A9B5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(39830400003)(396003)(376002)(346002)(189003)(199004)(51914003)(105004)(316002)(4326008)(8936002)(86362001)(81166006)(81156014)(66066001)(25786009)(11346002)(446003)(486006)(229853002)(476003)(54896002)(55016002)(9686003)(33656002)(8676002)(6916009)(6246003)(19627405001)(14454004)(508600001)(74316002)(186003)(7736002)(6436002)(6506007)(76176011)(102836004)(6116002)(53546011)(7696005)(3846002)(99286004)(71200400001)(71190400001)(5660300002)(26005)(256004)(64756008)(2906002)(66556008)(52536014)(66476007)(66446008)(66946007)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0SPR01MB0013;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Qs8i4rT0nX/MBiF7+/b6Dn8RO0P/oHMmGwRRUhAwO54qQedSpIbu7clB3OCB2V9dcrBYHhF1BFxbaCoPvCzIsNSB1+UOZnYSS3zhsznYAA124V+YsFPhTNcCeTKytTgVA+BtNUW3LtpARqjDNcBi2S3GNNyLH+gMZt3GlpVnhhTD7J6pQIervk3B3uQp+f+AQjYMFluOmEuMhkAGr8n+9gYU7B64gY7K3hFy6/2uDkim8+aHg/Ta6l5dM2l7n7EfRqRoKG7rrVb5w44O023lIMGVM6czgZtt1VnNYsvDZzSCdQ+dIKtYbsyhxGTZgO5KJHWEfoSrcF18nw+lee6+xN/PHOYjU0Z5L47ZbVdwXzkA+MNBsJc3gd2+zTFpSNqnNMbOaz/cnfRxz6rU2Yy0PLZgfPPUlmLGGmGPxpiSG4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6eb0955-01e4-4c29-7392-08d748f1db16
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2019 17:39:49.4595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o3SHhv3ueVSgHrw4Lxz7Rt8bju9Y882XHQeRhpnFr0laWFSl2Xmm01eQzcFkYJYTZBQImVV4ruFILebEiP7uquB3Zr3Hs3m7KJj6QxRPUvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0SPR01MB0013
X-MDID: 1570210791-CUIhgtGjjlmh
Subject: Re: [USRP-users] usrp probe and find commands
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5382287553079977695=="
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

--===============5382287553079977695==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB23401B78BB6DEEEE96F48FC3AF9E0BL0PR12MB2340namp_"

--_000_BL0PR12MB23401B78BB6DEEEE96F48FC3AF9E0BL0PR12MB2340namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Not sure.  I checked my notes and the firewall was the issue I had when I w=
as forced to use the IP address.  All your network configurations look good=
?

________________________________
From: Mark Koenig <mark.koenig@iubelttechnologies.com>
Sent: Friday, October 4, 2019 1:28 PM
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: usrp probe and find commands


Firewall is inactive.



Could it be something with the iptables?





From: Jason Matusiak <jason@gardettoengineering.com>
Date: Friday, October 4, 2019 at 1:26 PM
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Mark Koenig =
<mark.koenig@iubelttechnologies.com>
Subject: Re: usrp probe and find commands



Is your firewall blocking the port that UHD needs?  I feel like I had a ser=
ial problem in the past and that was the issue.



________________________________

From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Mark Koe=
nig via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, October 4, 2019 1:17 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] usrp probe and find commands



Does anyone have any idea why I can only probe my radio if I include the ad=
dress string?



Uhd_usrp_probe --> yields no results



Uhd_usrp_probe =96args =93addr=3D192.168.10.2=94 --> find the radio and yie=
lds results





Also, the uhd_find_devices command does not return anything.



Thanks for the quick feedback.



Mark

--_000_BL0PR12MB23401B78BB6DEEEE96F48FC3AF9E0BL0PR12MB2340namp_
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
Not sure.&nbsp; I checked my notes and the firewall was the issue I had whe=
n I was forced to use the IP address.&nbsp; All your network configurations=
 look good?</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Mark Koenig &lt;mark.=
koenig@iubelttechnologies.com&gt;<br>
<b>Sent:</b> Friday, October 4, 2019 1:28 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Subject:</b> Re: usrp probe and find commands</font>
<div>&nbsp;</div>
</div>
<div lang=3D"EN-US" style=3D"background-color:white">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
Firewall is inactive.&nbsp; </p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
Could it be something with the iptables?</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
&nbsp;</p>
<div style=3D"border:none; border-top:solid #B5C4DF 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
<b><span style=3D"font-size:12.0pt; color:black">From: </span></b><span sty=
le=3D"font-size:12.0pt; color:black">Jason Matusiak &lt;jason@gardettoengin=
eering.com&gt;<br>
<b>Date: </b>Friday, October 4, 2019 at 1:26 PM<br>
<b>To: </b>&quot;usrp-users@lists.ettus.com&quot; &lt;usrp-users@lists.ettu=
s.com&gt;, Mark Koenig &lt;mark.koenig@iubelttechnologies.com&gt;<br>
<b>Subject: </b>Re: usrp probe and find commands</span></p>
</div>
<div>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
<span style=3D"font-size:12.0pt; color:black">Is your firewall blocking the=
 port that UHD needs?&nbsp; I feel like I had a serial problem in the past =
and that was the issue.</span></p>
</div>
<div id=3D"x_Signature">
<div>
<div>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
<span style=3D"font-size:12.0pt; color:black">&nbsp;</span></p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"margin: 0in 0in 0.0001=
pt; font-size: 11pt; font-family: Calibri, sans-serif;text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
<b><span style=3D"color:black">From:</span></b><span style=3D"color:black">=
 USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt; on behalf of Mark Ko=
enig via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, October 4, 2019 1:17 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] usrp probe and find commands</span> </p>
<div>
<p class=3D"x_MsoNormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt=
; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;">
&nbsp;</p>
</div>
</div>
<div>
<div>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
Does anyone have any idea why I can only probe my radio if I include the ad=
dress string?
<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
&nbsp;<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
Uhd_usrp_probe <span style=3D"font-family:Wingdings">=E0</span> yields no r=
esults<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
&nbsp;<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
Uhd_usrp_probe =96args =93addr=3D192.168.10.2=94 <span style=3D"font-family=
:Wingdings">=E0</span> find the radio and yields results<span style=3D"font=
-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
&nbsp;<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
&nbsp;<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
Also, the uhd_find_devices command does not return anything.<span style=3D"=
font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
&nbsp;<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
Thanks for the quick feedback.<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
&nbsp;<span style=3D"font-size:12.0pt"></span></p>
<p class=3D"x_xmsonormal" style=3D"margin: 0in 0in 0.0001pt; font-size: 11p=
t; font-family: Calibri, sans-serif;margin: 0in 0in 0.0001pt; font-size: 11=
pt; font-family: Calibri, sans-serif;background:white">
Mark<span style=3D"font-size:12.0pt"></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB23401B78BB6DEEEE96F48FC3AF9E0BL0PR12MB2340namp_--


--===============5382287553079977695==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5382287553079977695==--

