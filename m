Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 886C1D7F20
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 20:37:34 +0200 (CEST)
Received: from [::1] (port=38656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKRhM-00082s-8E; Tue, 15 Oct 2019 14:37:32 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:22026)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <daniel.lundberg@gtri.gatech.edu>)
 id 1iKRhJ-0007sh-5K
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 14:37:29 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1571164608; h=from:subject:to:date:message-id;
 bh=BUc44Jg4mYls1ENct/9/5XtJy2MuRSeImn5AjzOufgA=;
 b=NO5RT392AU2BbOMlvPwX5Kqpx0yaSXZB5X03c9VBd8Ziz6Bf9bCoehCO07QsWlg754TWc82+569
 GGGC8rAGqk2d8jpi/XkQcw8SUJQ1EbbY4AV9UgLu0ZYojlxt2p4/JDQe68w5G4nyMMF04p92y9VHJ
 ms6VGQI41hb5fCjUYoI=
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Tue, 15 Oct
 2019 14:36:48 -0400
Received: from kiawah.core.gtri.org (10.41.31.71) by jekyll.core.gtri.org
 (10.41.1.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 15
 Oct 2019 14:36:48 -0400
Received: from kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f]) by
 kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f%15]) with mapi id
 15.01.1713.004; Tue, 15 Oct 2019 14:36:48 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: DPDK setup with N320
Thread-Index: AdWDh1hAXa1+0kMVTJaIURvdpyCjSw==
Date: Tue, 15 Oct 2019 18:36:48 +0000
Message-ID: <fb478c7a807248fbbdb4ae7a8803ce62@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] DPDK setup with N320
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
From: "Lundberg, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============4663482141531472713=="
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

--===============4663482141531472713==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fb478c7a807248fbbdb4ae7a8803ce62gtrigatechedu_"

--_000_fb478c7a807248fbbdb4ae7a8803ce62gtrigatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

My end goal is to use Gnuradio with an N320 to support 250 MS/s streaming. =
 I am posting to the USRP users list first, because I think that's the curr=
ent area of the problem.  I suspect I have a permissions or uhd.conf issue,=
 but the documentation on how to set this up correctly is lacking.

I can stream to the N320 in the "normal" way (without DPDK) via gnuradio at=
 rates of 125 MS/s in each direction, so I know that all of the hardware an=
d regular uhd and/or gnuradio setup is working.

I have gone through and tried to set up DPDK to work with the N320 and the =
Ettus connectivity kit (2X SFP+) following this: https://files.ettus.com/ma=
nual/page_dpdk.html
I can successfully bind the spf+ ports to the vfio-pci using the dpdk-devbi=
nd.py script.  If I check with dpdk-devbind.py -status after this they show=
 up as assigned to the DPDK driver.

I updated /etc/uhd/uhd.conf as suggested, including the mac addresses, cpu =
assignment, etc..., but I don't think UHD is finding it correctly.  When I =
try to call uhd (via /usr/local/lib/uhd/examples/benchmark_rate) with a use=
_dpdk=3D1 argument, I get a number of errors, including:

[INFO] [MPM.PeriphManager.UDP] No CHDR interfaces found!
[INFO] [MPM.PeriphManager.UDP] No CHDR interfaces found!
[ERROR] [MPMD] No viable transport path found!
[ERROR] [MPMD] Failure during block enumeration: RuntimeError: No viable tr=
ansport path found!
...
...
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

I've tried running benchmark_rate as a regular user and via sudo, as well a=
s via gnuradio as a regular user.  My gnuradio and UHD were installed from =
source.  Same issues with all approaches.  I see a very similar thread here=
 in the 3.14.0.0 release notes and it doesn't look like these issues were r=
esolved within that thread:
http://ettus.80997.x6.nabble.com/USRP-users-UHD-Announcing-3-14-0-0-Release=
-Candidate-1-td11840.html

Can someone from Ettus chime in?  Do I need to be running UHD and/or gnurad=
io as root, as implied in that thread?  If this requires installing things =
in a manner different from your published "Getting started with the N320 gu=
ide..." can you please help me understand the steps needed to get DPDK work=
ing with an N320?

I am running Ubuntu 18.03.4, UHD is 3.14.0 (specifically UHD_3.14.0.HEAD-0-=
gf6cacec8).

Thank you,

DL


--_000_fb478c7a807248fbbdb4ae7a8803ce62gtrigatechedu_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">My end goal is to use Gnuradio with an N320 to suppo=
rt 250 MS/s streaming.&nbsp; I am posting to the USRP users list first, bec=
ause I think that&#8217;s the current area of the problem.&nbsp; I suspect =
I have a permissions or uhd.conf issue, but the documentation
 on how to set this up correctly is lacking.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can stream to the N320 in the &#8220;normal&#8221;=
 way (without DPDK) via gnuradio at rates of 125 MS/s in each direction, so=
 I know that all of the hardware and regular uhd and/or gnuradio setup is w=
orking.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">I have gone through and tried to set up DPDK to work=
 with the N320 and the Ettus connectivity kit (2X SFP&#43;) following this:
<a href=3D"https://files.ettus.com/manual/page_dpdk.html">https://files.ett=
us.com/manual/page_dpdk.html</a><o:p></o:p></p>
<p class=3D"MsoNormal">I can successfully bind the spf&#43; ports to the vf=
io-pci using the dpdk-devbind.py script.&nbsp; If I check with dpdk-devbind=
.py &#8211;status after this they show up as assigned to the DPDK driver.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I updated /etc/uhd/uhd.conf as suggested, including =
the mac addresses, cpu assignment, etc&#8230;, but I don&#8217;t think UHD =
is finding it correctly.&nbsp; When I try to call uhd (via /usr/local/lib/u=
hd/examples/benchmark_rate) with a use_dpdk=3D1 argument,
 I get a number of errors, including:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager.UDP] No CHDR interfaces fo=
und!<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager.UDP] No CHDR interfaces fo=
und!<o:p></o:p></p>
<p class=3D"MsoNormal">[ERROR] [MPMD] No viable transport path found!<o:p><=
/o:p></p>
<p class=3D"MsoNormal">[ERROR] [MPMD] Failure during block enumeration: Run=
timeError: No viable transport path found!<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">Error: RuntimeError: Failed to run enumerate_rfnoc_b=
locks()<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tried running benchmark_rate as a regular=
 user and via sudo, as well as via gnuradio as a regular user.&nbsp; My gnu=
radio and UHD were installed from source.&nbsp; Same issues with all approa=
ches.&nbsp; I see a very similar thread here in the 3.14.0.0
 release notes and it doesn&#8217;t look like these issues were resolved wi=
thin that thread:<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://ettus.80997.x6.nabble.com/USRP-use=
rs-UHD-Announcing-3-14-0-0-Release-Candidate-1-td11840.html">http://ettus.8=
0997.x6.nabble.com/USRP-users-UHD-Announcing-3-14-0-0-Release-Candidate-1-t=
d11840.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone from Ettus chime in?&nbsp; Do I need to =
be running UHD and/or gnuradio as root, as implied in that thread?&nbsp; If=
 this requires installing things in a manner different from your published =
&#8220;Getting started with the N320 guide&#8230;&#8221; can you
 please help me understand the steps needed to get DPDK working with an N32=
0?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am running Ubuntu 18.03.4, UHD is 3.14.0 (specific=
ally UHD_3.14.0.HEAD-0-gf6cacec8).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DL<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_fb478c7a807248fbbdb4ae7a8803ce62gtrigatechedu_--


--===============4663482141531472713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4663482141531472713==--

