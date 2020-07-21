Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2D92282D7
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 16:53:53 +0200 (CEST)
Received: from [::1] (port=40548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxteR-00075u-Jy; Tue, 21 Jul 2020 10:53:51 -0400
Received: from barracuda.dynetics.com ([204.154.192.66]:51286)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <btv1==471fa51383d==Ryan.Carmichael@dynetics.com>)
 id 1jxteN-0006wr-BM
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 10:53:47 -0400
X-ASG-Debug-ID: 1595343963-10303724edf9aa30001-5wTQH4
Received: from MX5.in.dynetics.com (MX5.in.dynetics.com [10.1.15.132]) by
 barracuda.dynetics.com with ESMTP id D5DyyhdpWTQUTFXx (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO) for
 <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 10:06:03 -0500 (CDT)
X-Barracuda-Envelope-From: Ryan.Carmichael@dynetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.1.15.132
Received: from MAUI.in.dynetics.com ([169.254.1.93]) by MX5.in.dynetics.com
 ([10.1.15.132]) with mapi id 14.03.0487.000; Tue, 21 Jul 2020 09:53:04 -0500
X-Barracuda-RBL-IP: 169.254.1.93
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 with DPDK
X-ASG-Orig-Subj: X310 with DPDK
Thread-Index: AdZfbhI2uEt8SNweQcy5W0aYYt9+sA==
Date: Tue, 21 Jul 2020 14:53:04 +0000
Message-ID: <10F7328F6AD1354BA6DD787687B66B9001A97A9F6D@Maui.in.dynetics.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.249.132.118]
MIME-Version: 1.0
X-Barracuda-Connect: MX5.in.dynetics.com[10.1.15.132]
X-Barracuda-Start-Time: 1595343963
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.in.dynetics.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at dynetics.com
X-Barracuda-Scan-Msg-Size: 10746
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No,
 SCORE=0.00 using per-user scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.83357
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: [USRP-users] X310 with DPDK
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
From: "Carmichael, Ryan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
Content-Type: multipart/mixed; boundary="===============3542591102100266348=="
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

--===============3542591102100266348==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10F7328F6AD1354BA6DD787687B66B9001A97A9F6DMauiindynetic_"

--_000_10F7328F6AD1354BA6DD787687B66B9001A97A9F6DMauiindynetic_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On the DPDK page (https://files.ettus.com/manual/page_dpdk.html) the follow=
ing statement is made:

"Device discovery via DPDK is not currently implemented, so the device args=
 mgmt_addr, addr, and second_addr (if applicable) must all be specified at =
runtime. There is no mechanism for MPM's TCP/IP control traffic to flow ove=
r a link that is occupied by DPDK, so mgmt_addr must point to a link that i=
s not used for CHDR, such as N310's RJ45 port."

I've been using the X310 without DPDK with dual 10Gb SPI/SFP+ connections (=
192.168.30.2, 192.168.40.2). Once I start DPDK, ifconfig no longer shows th=
e NICs at all, which I assume is what it is supposed to be doing. My questi=
on is, what is the 'mgmt_addr' ? I've never used it before when using the X=
310. And how do I make sure the mgmt_addr isn't using a CHDR link? The X310=
 only has two RJ45s, right - and they're both being used by DPDK.

Thanks,

-          Ryan

________________________________

The information contained in this message, and any attachments, may contain=
 privileged and/or proprietary information that is intended solely for the =
person or entity to which it is addressed. Moreover, it may contain export =
restricted technical data controlled by Export Administration Regulations (=
EAR) or the International Traffic in Arms Regulations (ITAR). Any review, r=
etransmission, dissemination, or re-export to foreign or domestic entities =
by anyone other than the intended recipient in accordance with EAR and/or I=
TAR regulations is prohibited.

--_000_10F7328F6AD1354BA6DD787687B66B9001A97A9F6DMauiindynetic_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:1575505519;
	mso-list-type:hybrid;
	mso-list-template-ids:-1127837764 955294056 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1881282199;
	mso-list-type:hybrid;
	mso-list-template-ids:-344935938 1671701834 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">On the DPDK page (<a href=3D"https://files.ettus.com=
/manual/page_dpdk.html">https://files.ettus.com/manual/page_dpdk.html</a>) =
the following statement is made:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;background:white">&#8220;Device discovery =
via DPDK is not currently implemented, so the device args&nbsp;</span><code=
><span style=3D"font-size:10.5pt;color:black;background:white">mgmt_addr</s=
pan></code><span style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,sa=
ns-serif;color:black;background:white">,&nbsp;</span><code><span style=3D"f=
ont-size:10.5pt;color:black;background:white">addr</span></code><span style=
=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black;b=
ackground:white">,
 and&nbsp;</span><code><span style=3D"font-size:10.5pt;color:black;backgrou=
nd:white">second_addr</span></code><span style=3D"font-size:10.5pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black;background:white">&nbsp;(if ap=
plicable) must all be specified at runtime. There is no
 mechanism for MPM's TCP/IP control traffic to flow over a link that is occ=
upied by DPDK, so mgmt_addr must point to a link that is not used for CHDR,=
 such as N310's RJ45 port.&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;background:white"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black;background:white">I&#8217;ve been using th=
e X310 without DPDK with dual 10Gb SPI/SFP&#43; connections (192.168.30.2, =
192.168.40.2). Once I start DPDK, ifconfig no longer shows
 the NICs at all, which I assume is what it is supposed to be doing. My que=
stion is, what is the &#8216;mgmt_addr&#8217; ? I&#8217;ve never used it be=
fore when using the X310. And how do I make sure the mgmt_addr isn&#8217;t =
using a CHDR link? The X310 only has two RJ45s, right &#8211;
 and they&#8217;re both being used by DPDK.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
</span></span><![endif]>Ryan<o:p></o:p></p>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt; line-height:9pt; font-style:monospace">The infor=
mation contained in this message, and any attachments, may contain privileg=
ed and/or proprietary information that is intended solely for the person or=
 entity to which it is addressed.
 Moreover, it may contain export restricted technical data controlled by Ex=
port Administration Regulations (EAR) or the International Traffic in Arms =
Regulations (ITAR). Any review, retransmission, dissemination, or re-export=
 to foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or =
ITAR regulations is prohibited.</p>
</i>
</body>
</html>

--_000_10F7328F6AD1354BA6DD787687B66B9001A97A9F6DMauiindynetic_--


--===============3542591102100266348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3542591102100266348==--

