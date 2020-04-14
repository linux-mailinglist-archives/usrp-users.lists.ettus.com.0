Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 868381A7CD3
	for <lists+usrp-users@lfdr.de>; Tue, 14 Apr 2020 15:17:25 +0200 (CEST)
Received: from [::1] (port=53284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jOLRH-0001b0-Dz; Tue, 14 Apr 2020 09:17:19 -0400
Received: from barracuda1.dynetics.com ([204.154.192.63]:48376
 helo=barracuda.dynetics.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <btv1==3739d1cac74==Ryan.Carmichael@dynetics.com>)
 id 1jOLRD-0001X6-LB
 for usrp-users@lists.ettus.com; Tue, 14 Apr 2020 09:17:15 -0400
X-ASG-Debug-ID: 1586870413-10620d75eac2a030001-5wTQH4
Received: from MX2.in.dynetics.com (MX2.in.dynetics.com [10.1.15.131]) by
 barracuda.dynetics.com with ESMTP id lNQBvxFHqaZJx5n3 (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO) for
 <usrp-users@lists.ettus.com>; Tue, 14 Apr 2020 08:20:13 -0500 (CDT)
X-Barracuda-Envelope-From: Ryan.Carmichael@dynetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.1.15.131
Received: from MAUI.in.dynetics.com ([169.254.1.66]) by MX2.in.dynetics.com
 ([10.1.15.131]) with mapi id 14.03.0487.000; Tue, 14 Apr 2020 08:16:31 -0500
X-Barracuda-RBL-IP: 169.254.1.66
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 3.15.LTS with DPDK
X-ASG-Orig-Subj: UHD 3.15.LTS with DPDK
Thread-Index: AdYSXcoNeprUjzwCQhiRdKguvgtxUA==
Date: Tue, 14 Apr 2020 13:16:30 +0000
Message-ID: <10F7328F6AD1354BA6DD787687B66B9001A30522C8@Maui.in.dynetics.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.128.80]
MIME-Version: 1.0
X-Barracuda-Connect: MX2.in.dynetics.com[10.1.15.131]
X-Barracuda-Start-Time: 1586870413
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.in.dynetics.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at dynetics.com
X-Barracuda-Scan-Msg-Size: 11833
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No,
 SCORE=0.00 using per-user scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.81169
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: [USRP-users] UHD 3.15.LTS with DPDK
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============7040683713484244510=="
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

--===============7040683713484244510==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10F7328F6AD1354BA6DD787687B66B9001A30522C8Mauiindynetic_"

--_000_10F7328F6AD1354BA6DD787687B66B9001A30522C8Mauiindynetic_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is anyone successfully using DPDK with UHD 3.15.LTS?

The RHEL 7 repositories install DPDK 18.11, which UHD won't build with (UHD=
 3.15.LTS requires 17.11 exactly; UHD master works with DPDK 18.11 but I wa=
nt to use a LTS version). So I uninstalled the 18.11 DPDK packages and buil=
t 17.11 by hand; everything installed fine and seems to work on the DPDK en=
d.

However, building UHD 3.15.LTS fails with many errors like those below.  I'=
m using:

gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-28)

Any ideas? I might try installing and trying to build with a newer version =
of the compiler and see if that makes a difference.



In file included from /opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dp=
dk/uhd_dpdk.c:6:0:
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h: In =
function 'find_port':
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:259:=
5: error: 'for' loop initial declarations are only allowed in C99 mode
     for (unsigned int i =3D 0; i < ctx->num_ports; i++) {
     ^
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk_ctx.h:259:=
5: note: use option -std=3Dc99 or -std=3Dgnu99 to compile your code
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In func=
tion 'uhd_dpdk_port_init':
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c:122:9: w=
arning: format '%llx' expects argument of type 'long long unsigned int', bu=
t argument 5 has type 'uint64_t' [-Wformat=3D]
         RTE_LOG(WARNING, EAL, "%d: Only supports RX offloads 0x%0llx\n", p=
ort->id, dev_info.rx_offload_capa);
         ^
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c:126:9: w=
arning: format '%llx' expects argument of type 'long long unsigned int', bu=
t argument 5 has type 'uint64_t' [-Wformat=3D]
         RTE_LOG(WARNING, EAL, "%d: Only supports TX offloads 0x%0llx\n", p=
ort->id, dev_info.tx_offload_capa);
         ^
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In func=
tion 'uhd_dpdk_init':
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c:291:5: e=
rror: 'for' loop initial declarations are only allowed in C99 mode
     for (size_t i =3D 0; i < ctx->num_ports; i++) {
     ^
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c: In func=
tion 'uhd_dpdk_start':
/opt/third-party/uhd-3.15.0/host/lib/transport/uhd-dpdk/uhd_dpdk.c:314:5: e=
rror: 'for' loop initial declarations are only allowed in C99 mode
     for (int i =3D rte_get_next_lcore(-1, 1, 0);


Thanks,
Ryan

________________________________

The information contained in this message, and any attachments, may contain=
 privileged and/or proprietary information that is intended solely for the =
person or entity to which it is addressed. Moreover, it may contain export =
restricted technical data controlled by Export Administration Regulations (=
EAR) or the International Traffic in Arms Regulations (ITAR). Any review, r=
etransmission, dissemination, or re-export to foreign or domestic entities =
by anyone other than the intended recipient in accordance with EAR and/or I=
TAR regulations is prohibited.

--_000_10F7328F6AD1354BA6DD787687B66B9001A30522C8Mauiindynetic_
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
@font-face
	{font-family:"Californian FB";
	panose-1:2 7 4 3 6 8 11 3 2 4;}
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
<p class=3D"MsoNormal">Is anyone successfully using DPDK with UHD 3.15.LTS?=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The RHEL 7 repositories install DPDK 18.11, which UH=
D won&#8217;t build with (UHD 3.15.LTS requires 17.11 exactly; UHD master w=
orks with DPDK 18.11 but I want to use a LTS version). So I uninstalled the=
 18.11 DPDK packages and built 17.11 by
 hand; everything installed fine and seems to work on the DPDK end.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, building UHD 3.15.LTS fails with many error=
s like those below. &nbsp;I&#8217;m using:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-28)<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas? I might try installing and trying to buil=
d with a newer version of the compiler and see if that makes a difference.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">In file included from /opt/third-party/uhd-3.15.0=
/host/lib/transport/uhd-dpdk/uhd_dpdk.c:6:0:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk_ctx.h: In function &#8216;find_port&#8217;:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk_ctx.h:259:5: error: &#8216;for&#8217; loop initial declarat=
ions are only allowed in C99 mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp; for (unsigned int i =3D =
0; i &lt; ctx-&gt;num_ports; i&#43;&#43;) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp; ^<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk_ctx.h:259:5: note: use option -std=3Dc99 or -std=3Dgnu99 to=
 compile your code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c: In function &#8216;uhd_dpdk_port_init&#8217;:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c:122:9: warning: format &#8216;%llx&#8217; expects argumen=
t of type &#8216;long long unsigned int&#8217;, but argument 5 has type
 &#8216;uint64_t&#8217; [-Wformat=3D]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
RTE_LOG(WARNING, EAL, &quot;%d: Only supports RX offloads 0x%0llx\n&quot;, =
port-&gt;id, dev_info.rx_offload_capa);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
^<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c:126:9: warning: format &#8216;%llx&#8217; expects argumen=
t of type &#8216;long long unsigned int&#8217;, but argument 5 has type
 &#8216;uint64_t&#8217; [-Wformat=3D]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
RTE_LOG(WARNING, EAL, &quot;%d: Only supports TX offloads 0x%0llx\n&quot;, =
port-&gt;id, dev_info.tx_offload_capa);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
^<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c: In function &#8216;uhd_dpdk_init&#8217;:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c:291:5: error: &#8216;for&#8217; loop initial declarations=
 are only allowed in C99 mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp; for (size_t i =3D 0; i &=
lt; ctx-&gt;num_ports; i&#43;&#43;) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp; ^<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c: In function &#8216;uhd_dpdk_start&#8217;:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">/opt/third-party/uhd-3.15.0/host/lib/transport/uh=
d-dpdk/uhd_dpdk.c:314:5: error: &#8216;for&#8217; loop initial declarations=
 are only allowed in C99 mode<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">&nbsp;&nbsp;&nbsp;&nbsp; for (int i =3D rte_get_n=
ext_lcore(-1, 1, 0);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ca=
lifornian FB&quot;,serif">Ryan<o:p></o:p></span></p>
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

--_000_10F7328F6AD1354BA6DD787687B66B9001A30522C8Mauiindynetic_--


--===============7040683713484244510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7040683713484244510==--

