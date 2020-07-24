Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4278622CC49
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:39:37 +0200 (CEST)
Received: from [::1] (port=46316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz1fT-000537-OA; Fri, 24 Jul 2020 13:39:35 -0400
Received: from barracuda.dynetics.com ([204.154.192.66]:43818)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93)
 (envelope-from <btv1==474900d718c==Ryan.Carmichael@dynetics.com>)
 id 1jz1fP-0004sw-QS
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:39:31 -0400
X-ASG-Debug-ID: 1595613110-10303724ed1097320001-5wTQH4
Received: from MX2.in.dynetics.com (MX2.in.dynetics.com [10.1.15.131]) by
 barracuda.dynetics.com with ESMTP id rzHXOD1uk3tEKkyW (version=TLSv1.2
 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO);
 Fri, 24 Jul 2020 12:51:51 -0500 (CDT)
X-Barracuda-Envelope-From: Ryan.Carmichael@dynetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.1.15.131
Received: from MAUI.in.dynetics.com ([169.254.1.93]) by MX2.in.dynetics.com
 ([10.1.15.131]) with mapi id 14.03.0487.000; Fri, 24 Jul 2020 12:38:49 -0500
X-Barracuda-RBL-IP: 169.254.1.93
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Getting DPDK to work
X-ASG-Orig-Subj: RE: [USRP-users] Getting DPDK to work
Thread-Index: AdZhvzk4SpiHO518QEyacB55cX/3bgAL9uyAAAOS6AA=
Date: Fri, 24 Jul 2020 17:38:49 +0000
Message-ID: <10F7328F6AD1354BA6DD787687B66B9001A97AAAA1@Maui.in.dynetics.com>
References: <10F7328F6AD1354BA6DD787687B66B9001A97AA9C3@Maui.in.dynetics.com>
 <5F1AED7D.1000606@gmail.com>
In-Reply-To: <5F1AED7D.1000606@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.249.132.118]
MIME-Version: 1.0
X-Barracuda-Connect: MX2.in.dynetics.com[10.1.15.131]
X-Barracuda-Start-Time: 1595613111
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.in.dynetics.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at dynetics.com
X-Barracuda-Scan-Msg-Size: 13646
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No,
 SCORE=0.50 using per-user scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M, HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.83432
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.00 HTML_MESSAGE           BODY: HTML included in message
 0.50 BSF_RULE7568M          Custom Rule 7568M
Subject: Re: [USRP-users] Getting DPDK to work
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
Content-Type: multipart/mixed; boundary="===============7692069219603751019=="
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

--===============7692069219603751019==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_10F7328F6AD1354BA6DD787687B66B9001A97AAAA1Mauiindynetic_"

--_000_10F7328F6AD1354BA6DD787687B66B9001A97AAAA1Mauiindynetic_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

FYI the problem ended up being that the UHD configuration file requires an =
underscore with [use_dpdk=3D1] (instead of a dash, like everything else in =
the file uses), and also that dpdk-io-cpu=3Dx is required instead of dpdk-l=
core to initialize the adapters. Thanks for the help.

Of course now rx_samples_to_file segfaults in rte_eth_rx_queue_setup, but a=
t least it's forward movement.


-          Ryan

From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D=
. Leech via USRP-users
Sent: Friday, July 24, 2020 9:18 AM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] Re: [USRP-users] Getting DPDK to work

On 07/24/2020 09:44 AM, Carmichael, Ryan via USRP-users wrote:
I've got an X310, UHD 3.15.LTS (compiled with DPDK support), DPDK 17.11 on =
Red Hat. I feel like things are 95% of the way there, but I can't get UHD t=
o work with DPDK.

Long story short, I'm getting the error "EAL: Please set IPv4 address for p=
ort 0 before opening socket". I wonder if it's not reading my uhd conf file=
.

Before dpdk-devbind, the X310 has two IP addresses that are pingable (192.1=
68.30.2 and 40.2) from my NICs:

enp13s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 192.168.30.99  netmask 255.255.255.0  broadcast 192.168.30.255
        ether aa:bb:cc:dd:ee:01  txqueuelen 1000  (Ethernet)

enp13s0f1: flags=3D4099<UP,BROADCAST,MULTICAST>  mtu 9001
        inet 192.168.40.99  netmask 255.255.255.0  broadcast 192.168.40.255
        ether aa:bb:cc:dd:ee:02  txqueuelen 1000  (Ethernet)

After running dpdk-devbind:

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:0d:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dig=
b_uio unused=3Dvfio-pci,uio_pci_generic
0000:0d:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dig=
b_uio unused=3Dvfio-pci,uio_pci_generic

I have a configuration file:

[use-dpdk=3D1]
dpdk-mtu=3D9000
dpdk-corelist=3D0,1
dpdk-num-mbufs=3D4096
dpdk-mbuf-cache-size=3D64

[dpdk-mac=3Daa:bb:cc:dd:ee:01]
dpdk-lcore =3D 1
dpdk-ipv4 =3D 192.168.30.1/24
dpdk-num-desc=3D4096

[dpdk-mac=3Daa:bb:cd:dd:ee:02]
dpdk-lcore =3D 0
dpdk-ipv4 =3D 192.168.40.1/24

Check for syntax errors in the conf file?

I can't remember whether spaces are allowed around "=3D" in those config fi=
les or not.


________________________________

The information contained in this message, and any attachments, may contain=
 privileged and/or proprietary information that is intended solely for the =
person or entity to which it is addressed. Moreover, it may contain export =
restricted technical data controlled by Export Administration Regulations (=
EAR) or the International Traffic in Arms Regulations (ITAR). Any review, r=
etransmission, dissemination, or re-export to foreign or domestic entities =
by anyone other than the intended recipient in accordance with EAR and/or I=
TAR regulations is prohibited.

--_000_10F7328F6AD1354BA6DD787687B66B9001A97AAAA1Mauiindynetic_
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
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1741295528;
	mso-list-type:hybrid;
	mso-list-template-ids:1891637468 -471570878 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FYI the problem ended =
up being that the UHD configuration file requires an underscore with [use_d=
pdk=3D1] (instead of a dash, like everything else in the file uses), and al=
so that dpdk-io-cpu=3Dx is required instead
 of dpdk-lcore to initialize the adapters. Thanks for the help.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Of course now rx_sampl=
es_to_file segfaults in rte_eth_rx_queue_setup, but at least it&#8217;s for=
ward movement.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"color:#1F497D"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">Ryan<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> USRP-users &lt;usrp-users-bounces@lists.e=
ttus.com&gt;
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Friday, July 24, 2020 9:18 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Getting DPDK to work<o:p></o:p>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 07/24/2020 09:44 AM, Carmichael, Ryan via USRP-us=
ers wrote:<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">I&#8217;ve got an X310, UHD 3.15.LTS (compiled with =
DPDK support), DPDK 17.11 on Red Hat. I feel like things are 95% of the way=
 there, but I can&#8217;t get UHD to work with DPDK.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Long story short, I&#8217;m getting the error &#8220=
;EAL: Please set IPv4 address for port 0 before opening socket&#8221;. I wo=
nder if it&#8217;s not reading my uhd conf file.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Before dpdk-devbind, the X310 has two IP addresses t=
hat are pingable (192.168.30.2 and 40.2) from my NICs:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">enp13s0f0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULT=
ICAST&gt;&nbsp; mtu 9001<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 192.=
168.30.99&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.30.255<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether aa:=
bb:cc:dd:ee:01&nbsp; txqueuelen 1000&nbsp; (Ethernet)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">enp13s0f1: flags=3D4099&lt;UP,BROADCAST,MULTICAST&gt=
;&nbsp; mtu 9001<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 192.=
168.40.99&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.40.255<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether aa:=
bb:cc:dd:ee:02&nbsp; txqueuelen 1000&nbsp; (Ethernet)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">After running dpdk-devbind:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Network devices using DPDK-compatible driver<o:p></o=
:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">0000:0d:00.0 '82599ES 10-Gigabit SFI/SFP&#43; Networ=
k Connection 10fb' drv=3Digb_uio unused=3Dvfio-pci,uio_pci_generic<o:p></o:=
p></p>
<p class=3D"MsoNormal">0000:0d:00.1 '82599ES 10-Gigabit SFI/SFP&#43; Networ=
k Connection 10fb' drv=3Digb_uio unused=3Dvfio-pci,uio_pci_generic<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I have a configuration file:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[use-dpdk=3D1]<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-mtu=3D9000<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-corelist=3D0,1<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-num-mbufs=3D4096<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-mbuf-cache-size=3D64<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[dpdk-mac=3Daa:bb:cc:dd:ee:01]<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-lcore =3D 1<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-ipv4 =3D 192.168.30.1/24<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-num-desc=3D4096<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">[dpdk-mac=3Daa:bb:cd:dd:ee:02]<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-lcore =3D 0<o:p></o:p></p>
<p class=3D"MsoNormal">dpdk-ipv4 =3D 192.168.40.1/24<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Times New Roman&quot;,serif">Check for syntax =
errors in the conf file?<br>
<br>
I can't remember whether spaces are allowed around &quot;=3D&quot; in those=
 config files or not.<br>
<br>
<o:p></o:p></span></p>
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

--_000_10F7328F6AD1354BA6DD787687B66B9001A97AAAA1Mauiindynetic_--


--===============7692069219603751019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7692069219603751019==--

