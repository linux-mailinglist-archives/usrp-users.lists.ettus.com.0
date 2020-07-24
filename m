Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCD722CF4A
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 22:15:03 +0200 (CEST)
Received: from [::1] (port=47410 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz45t-0007FH-Jo; Fri, 24 Jul 2020 16:15:01 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:37673)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jz45o-00075a-Uj
 for USRP-users@lists.ettus.com; Fri, 24 Jul 2020 16:14:56 -0400
Received: by mail-qt1-f170.google.com with SMTP id d27so7802871qtg.4
 for <USRP-users@lists.ettus.com>; Fri, 24 Jul 2020 13:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=AtAfmtKojauYyX3mqv9EiWYnLBqrQ6NYKx2NNj/Dp/k=;
 b=rEBlJw0zdn0mYpefsyoTAJu+gXn1MVWXNc49Z7ANR8nEN77WpX14K17bJdhqgaFOzk
 JgA9uwe8WVC49hahBwOymt92/EWg8850tDsjPgYEOSipG+lzYPc05O4YYmsbcaTTWC21
 DZ45YwMBuBZ0I1X/LK/hLnu7qx0+d+gN+rLgt8H7ZU51GBSo6yPa9psBgE83il/I8z7g
 cCJ0XrAcUUIGrbClPqMjiqo87/ImUERzc30wDbLi0aWzBeNhg38wFubXt2ZoNgv0qQat
 kKZzLgGUnoelElqAdEwm5YRbwSLs1SusJyPtImq/sjfk/ZW/p3xuNejNh+1rTkDnCd/0
 QA7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=AtAfmtKojauYyX3mqv9EiWYnLBqrQ6NYKx2NNj/Dp/k=;
 b=Gi6k0D4IimQbCx064s9ECs/GNovcd8nLW8QP/Ndi3Va35Po8cSYEkyXDormwpEk0Mz
 HINsGHwK1yzzqJZVTvbFLrxyxtEqQmXW6FpSeohr86a+FILNmyZPWVrKCmDayRRjpBzx
 /6i+wIVLbBJsGv/ZvORsQ8JHiJ/HfbX8ssClen3CYuCv3ldh9k+m4N7h3MCIAem7f7R6
 fuaBdM//gUtE2w/i1g6LMzBW6jJsPzS06aWnkOfEfMLg3DlrxVIEP+nNNCvGz0rafbxi
 6Kjun2d5B/c0prkPxnJdDpUhKn/LLUr6joL2KP9u8qiERD3aELNlfzPPugn3FJIKSfon
 EROQ==
X-Gm-Message-State: AOAM5318Czt+0FjSXBKhVZMMC9dFRky/T/pMlUeP6FLnuY9Uhxf5osMv
 JwxNGaC4R209eok2IcBa/IdO/tWQah0=
X-Google-Smtp-Source: ABdhPJx4MtKBsKG0VHHeGUTUUVgshp3Iy1yK51od0mZGUBxRya80xTqZGIAzGxZExUCwTXBTH/ybmA==
X-Received: by 2002:ac8:430b:: with SMTP id z11mr11079691qtm.73.1595621656101; 
 Fri, 24 Jul 2020 13:14:16 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id c9sm5296234qkm.44.2020.07.24.13.14.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 13:14:15 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 24 Jul 2020 16:14:15 -0400
Message-Id: <0098FB9E-6D0D-4566-8B9A-029320172435@gmail.com>
References: <10F7328F6AD1354BA6DD787687B66B9001A97AAB18@Maui.in.dynetics.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <10F7328F6AD1354BA6DD787687B66B9001A97AAB18@Maui.in.dynetics.com>
To: "Carmichael, Ryan" <Ryan.Carmichael@dynetics.com>
X-Mailer: iPhone Mail (17F80)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4912619493100302296=="
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


--===============4912619493100302296==
Content-Type: multipart/alternative; boundary=Apple-Mail-CAC9E6DC-0AA9-4108-91AB-2254BC7C6F86
Content-Transfer-Encoding: 7bit


--Apple-Mail-CAC9E6DC-0AA9-4108-91AB-2254BC7C6F86
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You=E2=80=99re running that as root, correct?

Sent from my iPhone

> On Jul 24, 2020, at 4:10 PM, Carmichael, Ryan <Ryan.Carmichael@dynetics.co=
m> wrote:
>=20
> =EF=BB=BF
> So now I=E2=80=99m so close to working with DPDK, seemingly. Every time I f=
ix one thing there=E2=80=99s another.
> =20
> ./rx_samples_to_file --args=3D"use_dpdk=3D1,addr=3D192.168.30.2,addr2=3D19=
2.168.40.2" --duration 0.01
> =20
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [2/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D0000000000=
0)
> [INFO] [2/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [2/DmaFIFO_0] BIST passed (Throughput: 1302 MB/s)
> .
> .
> .
> [INFO] [2/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> INFO] [2/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> terminate called after throwing an instance of 'uhd::io_error'
>   what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no respon=
se packet - AssertionError: bool(buff)
>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wi=
th uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long=
 unsigned int]
>   at /home/ryan/gitlab/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
> =20
> =20
> Just searching online it seemed like most people recommended reflashing th=
e fpga, which I did. No change.
> =20
> =20
> From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Carmich=
ael, Ryan via USRP-users
> Sent: Friday, July 24, 2020 12:39 PM
> To: usrp-users@lists.ettus.com
> Subject: [EXTERNAL] Re: [USRP-users] Getting DPDK to work
> =20
> FYI the problem ended up being that the UHD configuration file requires an=
 underscore with [use_dpdk=3D1] (instead of a dash, like everything else in t=
he file uses), and also that dpdk-io-cpu=3Dx is required instead of dpdk-lco=
re to initialize the adapters. Thanks for the help.
> =20
> Of course now rx_samples_to_file segfaults in rte_eth_rx_queue_setup, but a=
t least it=E2=80=99s forward movement.
> =20
> -          Ryan
> =20
> From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D=
. Leech via USRP-users
> Sent: Friday, July 24, 2020 9:18 AM
> To: usrp-users@lists.ettus.com
> Subject: [EXTERNAL] Re: [USRP-users] Getting DPDK to work
> =20
> On 07/24/2020 09:44 AM, Carmichael, Ryan via USRP-users wrote:
> I=E2=80=99ve got an X310, UHD 3.15.LTS (compiled with DPDK support), DPDK 1=
7.11 on Red Hat. I feel like things are 95% of the way there, but I can=E2=80=
=99t get UHD to work with DPDK.
> =20
> Long story short, I=E2=80=99m getting the error =E2=80=9CEAL: Please set I=
Pv4 address for port 0 before opening socket=E2=80=9D. I wonder if it=E2=80=99=
s not reading my uhd conf file.
> =20
> Before dpdk-devbind, the X310 has two IP addresses that are pingable (192.=
168.30.2 and 40.2) from my NICs:
> =20
> enp13s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
>         inet 192.168.30.99  netmask 255.255.255.0  broadcast 192.168.30.25=
5
>         ether aa:bb:cc:dd:ee:01  txqueuelen 1000  (Ethernet)
> =20
> enp13s0f1: flags=3D4099<UP,BROADCAST,MULTICAST>  mtu 9001
>         inet 192.168.40.99  netmask 255.255.255.0  broadcast 192.168.40.25=
5
>         ether aa:bb:cc:dd:ee:02  txqueuelen 1000  (Ethernet)
> =20
> After running dpdk-devbind:
> =20
> Network devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:0d:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Di=
gb_uio unused=3Dvfio-pci,uio_pci_generic
> 0000:0d:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Di=
gb_uio unused=3Dvfio-pci,uio_pci_generic
> =20
> I have a configuration file:
> =20
> [use-dpdk=3D1]
> dpdk-mtu=3D9000
> dpdk-corelist=3D0,1
> dpdk-num-mbufs=3D4096
> dpdk-mbuf-cache-size=3D64
> =20
> [dpdk-mac=3Daa:bb:cc:dd:ee:01]
> dpdk-lcore =3D 1
> dpdk-ipv4 =3D 192.168.30.1/24
> dpdk-num-desc=3D4096
> =20
> [dpdk-mac=3Daa:bb:cd:dd:ee:02]
> dpdk-lcore =3D 0
> dpdk-ipv4 =3D 192.168.40.1/24
> =20
> Check for syntax errors in the conf file?
>=20
> I can't remember whether spaces are allowed around "=3D" in those config f=
iles or not.
>=20
>=20
> The information contained in this message, and any attachments, may contai=
n privileged and/or proprietary information that is intended solely for the p=
erson or entity to which it is addressed. Moreover, it may contain export re=
stricted technical data controlled by Export Administration Regulations (EAR=
) or the International Traffic in Arms Regulations (ITAR). Any review, retra=
nsmission, dissemination, or re-export to foreign or domestic entities by an=
yone other than the intended recipient in accordance with EAR and/or ITAR re=
gulations is prohibited.
>=20

--Apple-Mail-CAC9E6DC-0AA9-4108-91AB-2254BC7C6F86
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You=E2=80=99re running that as root, correc=
t?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bl=
ockquote type=3D"cite">On Jul 24, 2020, at 4:10 PM, Carmichael, Ryan &lt;Rya=
n.Carmichael@dynetics.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle24
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
	mso-list-template-ids:1891637468 -471570878 67698691 67698693 67698=
689 67698691 67698693 67698689 67698691 67698693;}
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


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">So now I=E2=80=99m so c=
lose to working with DPDK, seemingly. Every time I fix one thing there=E2=80=
=99s another.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">./rx_samples_to_file --=
args=3D"use_dpdk=3D1,addr=3D192.168.30.2,addr2=3D192.168.40.2" --duration 0.=
01<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Maximum f=
rame size: 8000 bytes.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Maximum f=
rame size: 8000 bytes.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Maximum f=
rame size: 8000 bytes.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Radio 1x c=
lock: 200 MHz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Radio 1x c=
lock: 200 MHz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [X300] Radio 1x c=
lock: 200 MHz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [2/DmaFIFO_0] In=
itializing block control (NOC ID: 0xF1F0D00000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [2/DmaFIFO_0] BI=
ST passed (Throughput: 1311 MB/s)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [2/DmaFIFO_0] BI=
ST passed (Throughput: 1302 MB/s)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">.<o:p></o:p></span></p>=

<p class=3D"MsoNormal"><span style=3D"color:#1F497D">.<o:p></o:p></span></p>=

<p class=3D"MsoNormal"><span style=3D"color:#1F497D">.<o:p></o:p></span></p>=

<p class=3D"MsoNormal"><span style=3D"color:#1F497D">[INFO] [2/DUC_0] Initia=
lizing block control (NOC ID: 0xD0C0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">INFO] [2/DUC_1] Initial=
izing block control (NOC ID: 0xD0C0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">terminate called after t=
hrowing an instance of 'uhd::io_error'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; what():&nbsp; En=
vironmentError: IOError: Block ctrl (CE_00_Port_30) no response packet - Ass=
ertionError: bool(buff)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; in uint64_t ctrl=
_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with uhd::endian=
ness_t _endianness =3D (uhd::endianness_t)0; uint64_t =3D long unsigned int]=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; at /home/ryan/gi=
tlab/uhd/host/lib/rfnoc/ctrl_iface.cpp:151<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Just searching online i=
t seemed like most people recommended reflashing the fpga, which I did. No c=
hange.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b><=
span style=3D"color:windowtext"> USRP-users &lt;usrp-users-bounces@lists.ett=
us.com&gt;
<b>On Behalf Of </b>Carmichael, Ryan via USRP-users<br>
<b>Sent:</b> Friday, July 24, 2020 12:39 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Getting DPDK to work<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">FYI the problem ended u=
p being that the UHD configuration file requires an underscore with [use_dpd=
k=3D1] (instead of a dash, like everything else in the file uses), and also t=
hat dpdk-io-cpu=3Dx is required instead
 of dpdk-lcore to initialize the adapters. Thanks for the help.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Of course now rx_sample=
s_to_file segfaults in rte_eth_rx_queue_setup, but at least it=E2=80=99s for=
ward movement.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.25in;text-indent:-.25in;=
mso-list:l0 level1 lfo2">
<!--[if !supportLists]--><span style=3D"color:#1F497D"><span style=3D"mso-li=
st:Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><!--[endif]--><span style=3D"color:#1F497D">Ryan<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></span=
></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b><=
span style=3D"color:windowtext"> USRP-users &lt;<a href=3D"mailto:usrp-users=
-bounces@lists.ettus.com">usrp-users-bounces@lists.ettus.com</a>&gt;
<b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
<b>Sent:</b> Friday, July 24, 2020 9:18 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Getting DPDK to work<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 07/24/2020 09:44 AM, Carmichael, Ryan via USRP-use=
rs wrote:<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">I=E2=80=99ve got an X310, UHD 3.15.LTS (compiled with=
 DPDK support), DPDK 17.11 on Red Hat. I feel like things are 95% of the way=
 there, but I can=E2=80=99t get UHD to work with DPDK.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Long story short, I=E2=80=99m getting the error =E2=80=
=9CEAL: Please set IPv4 address for port 0 before opening socket=E2=80=9D. I=
 wonder if it=E2=80=99s not reading my uhd conf file.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Before dpdk-devbind, the X310 has two IP addresses th=
at are pingable (192.168.30.2 and 40.2) from my NICs:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">enp13s0f0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTI=
CAST&gt;&nbsp; mtu 9001<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 192.1=
68.30.99&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.30.255<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether aa:b=
b:cc:dd:ee:01&nbsp; txqueuelen 1000&nbsp; (Ethernet)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">enp13s0f1: flags=3D4099&lt;UP,BROADCAST,MULTICAST&gt;=
&nbsp; mtu 9001<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 192.1=
68.40.99&nbsp; netmask 255.255.255.0&nbsp; broadcast 192.168.40.255<o:p></o:=
p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ether aa:b=
b:cc:dd:ee:02&nbsp; txqueuelen 1000&nbsp; (Ethernet)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">After running dpdk-devbind:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Network devices using DPDK-compatible driver<o:p></o:=
p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></p>
<p class=3D"MsoNormal">0000:0d:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Con=
nection 10fb' drv=3Digb_uio unused=3Dvfio-pci,uio_pci_generic<o:p></o:p></p>=

<p class=3D"MsoNormal">0000:0d:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Con=
nection 10fb' drv=3Digb_uio unused=3Dvfio-pci,uio_pci_generic<o:p></o:p></p>=

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
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Tim=
es New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-si=
ze:12.0pt;font-family:&quot;Times New Roman&quot;,serif">Check for syntax er=
rors in the conf file?<br>
<br>
I can't remember whether spaces are allowed around "=3D" in those config fil=
es or not.<o:p></o:p></span></p>
</div>
<i><br>
<hr>
<p style=3D"font-size:8pt; line-height:9pt; font-style:monospace">The inform=
ation contained in this message, and any attachments, may contain privileged=
 and/or proprietary information that is intended solely for the person or en=
tity to which it is addressed.
 Moreover, it may contain export restricted technical data controlled by Exp=
ort Administration Regulations (EAR) or the International Traffic in Arms Re=
gulations (ITAR). Any review, retransmission, dissemination, or re-export to=
 foreign or domestic entities
 by anyone other than the intended recipient in accordance with EAR and/or I=
TAR regulations is prohibited.</p>
</i>


</div></blockquote></body></html>=

--Apple-Mail-CAC9E6DC-0AA9-4108-91AB-2254BC7C6F86--


--===============4912619493100302296==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4912619493100302296==--

