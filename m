Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B172240040
	for <lists+usrp-users@lfdr.de>; Mon, 10 Aug 2020 00:12:08 +0200 (CEST)
Received: from [::1] (port=58080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k4tXx-0001kD-4Q; Sun, 09 Aug 2020 18:12:05 -0400
Received: from smtp01asnl.sandia.gov ([198.102.153.114]:41681)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <sccarey@sandia.gov>) id 1k4tXs-0001Va-29
 for usrp-users@lists.ettus.com; Sun, 09 Aug 2020 18:12:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=sandia.gov; i=@sandia.gov; q=dns/txt; s=snl;
 t=1597011120; x=1628547120;
 h=from:to:subject:date:message-id:mime-version;
 bh=oA9NJrMeg89h/KVFJzlLY2DTaZ/ts8Yb3/vqqRAfT/I=;
 b=O2jW9cSBqLXdNDt0Imy/k+Cc5nZ2k9be5Tm03hpv68p+p0OvH6aX5l7G
 pFqd9CssR2XtmY33RUh2Jc/RMSgq8v/2phRoXUJ2voycr6OwF84CDxyFN
 TnDecEK6gH42L/kNCb7fg8BFqa5imjO+HCFKZII4lywSbjSEyWglRPjkZ
 FXw02MXzk2Lh143qp/aPIdICtmz9aRv15aS1/9Ig9SFrvQHCRoiaa9U4Y
 mgqAU3wHnSe4leNxcFK3y+gBV1uoan8SCLztM4AF+lIBF0SBIvErxI+OV
 zAAf2Np7UfH4FMgSUBFJncmJ3kY2xNrLGKyNoXotRSsJvGm+OBb28cqNm g==;
IronPort-SDR: ruIBdRnMrM9IQ3xZ2Jhu59KybYPZoFtjhwF7pbqK7pwnrgndxpd890Cz4O3k95LM5G07wl2sPS
 A+698HIlFCnw==
X-IronPort-MID: 265731416
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="265731416"
X-IronPort-AV: E=Sophos;i="5.75,455,1589263200"; 
 d="scan'208,217";a="265731416"
Received: from dp12snllx.sandia.gov (HELO Sandia_DLP) ([134.253.181.224])
 by smtp01asnl.sandia.gov with ESMTP; 09 Aug 2020 16:11:18 -0600
Received: from dp12snllx.sandia.gov (dp12snllx.sandia.gov [127.0.0.1])
 by dp12snllx.sandia.gov (Service) with ESMTP id 9E17D20DFFC6
 for <usrp-users@lists.ettus.com>; Sun,  9 Aug 2020 16:11:18 -0600 (MDT)
Received: from mail.sandia.gov (unknown [134.253.103.168])
 by dp12snllx.sandia.gov (Service) with ESMTPS id 8E47E20E1A04
 for <usrp-users@lists.ettus.com>; Sun,  9 Aug 2020 16:11:18 -0600 (MDT)
X-CrossPremisesHeadersFilteredBySendConnector: ES03AMSNLNT.srn.sandia.gov
Received: from ES05AMSNLNT.srn.sandia.gov (134.253.103.165) by
 ES03AMSNLNT.srn.sandia.gov (134.253.103.163) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Sun, 9 Aug 2020 16:11:17 -0600
Received: from ES05AMSNLNT.srn.sandia.gov ([134.253.103.181]) by
 ES05AMSNLNT.srn.sandia.gov ([134.253.103.181]) with mapi id 15.00.1497.006;
 Sun, 9 Aug 2020 16:11:17 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: gr-ettus / GNU Radio 3.8
Thread-Index: AdZulmsZfL0NVyolRwCa+Z4szd6iBg==
Date: Sun, 9 Aug 2020 22:11:16 +0000
Message-ID: <24ea3a0f1617438687b7ae32d37d5e66@ES05AMSNLNT.srn.sandia.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL1NhbmRpYSBOYXRpb25hbCBMYWJvcmF0b3JpZXMiLCJpZCI6ImFkMjUwYWM0LWQwMjYtNDNkMy04NmFkLTc1NDhlNjk5NGY4YyIsInByb3BzIjpbeyJuIjoiRU1BSUwiLCJ2YWxzIjpbeyJ2YWx1ZSI6Ik5vIn1dfSx7Im4iOiJDTEFTU0lGSUNBVElPTiIsInZhbHMiOltdfSx7Im4iOiJFWEVNUFRJT04iLCJ2YWxzIjpbXX0seyJuIjoiRVhQT1JUIiwidmFscyI6W119LHsibiI6IlJFVklFV0lORyIsInZhbHMiOltdfSx7Im4iOiJSZXZEYXRlIiwidmFscyI6W119LHsibiI6IkdVSURBTkNFIiwidmFscyI6W119LHsibiI6IkNEQVRFIiwidmFscyI6W119LHsibiI6IkNOdW0iLCJ2YWxzIjpbXX0seyJuIjoiQVRUQUNITUVOVCIsInZhbHMiOlt7InZhbHVlIjoiTm8ifV19LHsibiI6IkFUVEFDSE1FTlRUWVBFIiwidmFscyI6W119LHsibiI6IkFUVEFDSE1FTlRPVU9FWCIsInZhbHMiOltdfSx7Im4iOiJBVFRBQ0hNRU5URVhQT1JUUyIsInZhbHMiOltdfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE4LjQuMTg0My4xMjMiLCJUcnVzdGVkTGFiZWxIYXNoIjoiclhrV1NCUEFPQnFvdjRPT1JzM3p6RjMxaE42TU5cL3FaNVM2MUNNUk1jQ0NPbzQ4ZWNSN2UwazhtN0czcjNnQ1AifQ==
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [134.253.113.226]
MIME-Version: 1.0
X-OrganizationHeadersPreserved: ES03AMSNLNT.srn.sandia.gov
Subject: [USRP-users] gr-ettus / GNU Radio 3.8
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
From: "Carey, Samuel Craig via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Carey, Samuel Craig" <sccarey@sandia.gov>
Content-Type: multipart/mixed; boundary="===============8244372283505167105=="
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

--===============8244372283505167105==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_24ea3a0f1617438687b7ae32d37d5e66ES05AMSNLNTsrnsandiagov_"

--_000_24ea3a0f1617438687b7ae32d37d5e66ES05AMSNLNTsrnsandiagov_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Howdy,

I see there's a gr-ettus maint-3.8 branch for adding GNU Radio 3.8 support,=
 which seems to be finished as of this commit:
https://github.com/EttusResearch/gr-ettus/commit/b69260655e974786ea6e611bd9=
1ab578b13ec72a

Is this branch good to go?
Are there any known drawbacks?
Will I theoretically be able to use this in the context of rfnoc/e310 cross=
-compiling, etc.?

I ask because there are a couple open issue about 3.8 without any replies (=
#37, #46), so I'm wary of investing time if it's not ready.

Thanks,
Sam

--_000_24ea3a0f1617438687b7ae32d37d5e66ES05AMSNLNTsrnsandiagov_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Howdy,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I see there&#8217;s a gr-ettus maint-3.8 branch for =
adding GNU Radio 3.8 support, which seems to be finished as of this commit:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/gr-ettus=
/commit/b69260655e974786ea6e611bd91ab578b13ec72a">https://github.com/EttusR=
esearch/gr-ettus/commit/b69260655e974786ea6e611bd91ab578b13ec72a</a><o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this branch good to go? <o:p></o:p></p>
<p class=3D"MsoNormal">Are there any known drawbacks?<o:p></o:p></p>
<p class=3D"MsoNormal">Will I theoretically be able to use this in the cont=
ext of rfnoc/e310 cross-compiling, etc.?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I ask because there are a couple open issue about 3.=
8 without any replies (#37, #46), so I&#8217;m wary of investing time if it=
&#8217;s not ready.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Sam<i><span style=3D"font-family:&quot;Courier New&q=
uot;"><o:p></o:p></span></i></p>
</div>
</body>
</html>

--_000_24ea3a0f1617438687b7ae32d37d5e66ES05AMSNLNTsrnsandiagov_--


--===============8244372283505167105==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8244372283505167105==--

