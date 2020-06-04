Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A90AA1ED9EA
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jun 2020 02:17:20 +0200 (CEST)
Received: from [::1] (port=33120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgdZM-0003sw-Q0; Wed, 03 Jun 2020 20:17:16 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:29643)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jgdZJ-0003oK-7c
 for usrp-users@lists.ettus.com; Wed, 03 Jun 2020 20:17:13 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1591229791; h=from:subject:to:date:message-id;
 bh=OJ9EIaX4AxI+eKM57iEFsPB2P/ftvI25SmzEM+m5aQQ=;
 b=QGRxBMIaEqJb2HJxVG63V2GlDhBeq129hJfRSIWYULv/ETvy/T0715qN9urTC7vY/KA3juDnpWT
 OeWGTxj7MhHzdYXlsIHS2+Dzbpb2Dw1ZB5f0InEDEIiYWOqmednDjD027XZ+Yo8mQdVrtegPdWgxr
 qS6+NF85RXLlWy6Xj1s=
Received: from hatteras.core.gtri.org (10.41.22.72) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 3 Jun 2020
 20:16:31 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 hatteras.core.gtri.org (2610:148:610:2916::72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Wed, 3 Jun 2020 20:16:32 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Wed, 3 Jun 2020 20:16:31 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: uhd_image_loader bricked my x310
Thread-Index: AdY6A3sFglDzfu+0TIehVt+ojVBBTw==
Date: Thu, 4 Jun 2020 00:16:31 +0000
Message-ID: <126cd20d82ba4cb6ae0eecdb95637f7f@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] uhd_image_loader bricked my x310
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
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============2624879816491121446=="
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

--===============2624879816491121446==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_126cd20d82ba4cb6ae0eecdb95637f7fgtrigatechedu_"

--_000_126cd20d82ba4cb6ae0eecdb95637f7fgtrigatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The uhd_image_loader seems to have bricked my x310!

Prior to running it, the device was connected fine but after running the sc=
ript, it loaded to 100% and said to recycle power. After recycling power, t=
he USRP will no longer connect to my computer. The LINK light does not come=
 on and the Ethernet says "unplugged".

I'm using UHD_3.15.0.0-16-ga3ece4f2 on Ubuntu 18.04 and connected to SPF+ P=
ort 0. Here is the terminal history:

nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ uhd_usrp_p=
robe --args addr=3D192.168.10.2
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-16-ga=
3ece4f2
[INFO] [X300] X300 initialization sequence...
Error: RuntimeError: Expected FPGA compatibility number 36, but got 20:
The FPGA image on your device is not compatible with this host code build.
Download the appropriate FPGA images for this version of UHD.
Please run:

"/usr/local/lib/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/local/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.10.2=
"

For more information, refer to the UHD manual:

http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ sudo uhd_i=
mages_downloader
[sudo] password for nvd:
[INFO] Using base URL: https://files.ettus.com/binaries/cache/
[INFO] Images destination: /usr/local/share/uhd/images
[INFO] Target x3xx_x310_fpga_default is up to date.
[INFO] Target x3xx_x300_fpga_default is up to date.
[INFO] Target e3xx_e310_sg1_fpga_default is up to date.
[INFO] Target e3xx_e310_sg3_fpga_default is up to date.
[INFO] Target e3xx_e320_fpga_default is up to date.
[INFO] Target n3xx_n310_fpga_default is up to date.
[INFO] Target n3xx_n300_fpga_default is up to date.
[INFO] Target n3xx_n320_fpga_default is up to date.
[INFO] Target b2xx_b200_fpga_default is up to date.
[INFO] Target b2xx_b200mini_fpga_default is up to date.
[INFO] Target b2xx_b210_fpga_default is up to date.
[INFO] Target b2xx_b205mini_fpga_default is up to date.
[INFO] Target b2xx_common_fw_default is up to date.
[INFO] Target usrp2_usrp2_fw_default is up to date.
[INFO] Target usrp2_usrp2_fpga_default is up to date.
[INFO] Target usrp2_n200_fpga_default is up to date.
[INFO] Target usrp2_n200_fw_default is up to date.
[INFO] Target usrp2_n210_fpga_default is up to date.
[INFO] Target usrp2_n210_fw_default is up to date.
[INFO] Target n230_n230_fpga_default is up to date.
[INFO] Target usrp1_usrp1_fpga_default is up to date.
[INFO] Target usrp1_b100_fpga_default is up to date.
[INFO] Target usrp1_b100_fw_default is up to date.
[INFO] Target octoclock_octoclock_fw_default is up to date.
[INFO] Target usb_common_windrv_default is up to date.
nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ "/usr/loca=
l/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.10.2"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-16-ga=
3ece4f2
Unit: USRP X310 (312CEC4, 192.168.10.2)
FPGA Image: /usr/local/share/uhd/images/usrp_x310_fpga_HG.bit
-- Initializing FPGA loading...successful.
-- Loading HG FPGA image: 100% (121/121 sectors)
-- Finalizing image load...successful.
Power-cycle the USRP X310 to use the new image.
nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ uhd_find_d=
evices
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-16-ga=
3ece4f2
No UHD Devices Found
nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ uhd_usrp_p=
robe --args addr=3D192.168.10.2
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-16-ga=
3ece4f2
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.10.2

nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ ping 192.1=
68.10.2
PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.

^C
--- 192.168.10.2 ping statistics ---
49 packets transmitted, 0 received, 100% packet loss, time 49946ms

nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/tools/scripts$ ifconfig
enp0s3: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
...



Jeff

--_000_126cd20d82ba4cb6ae0eecdb95637f7fgtrigatechedu_
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
<p class=3D"MsoNormal">The uhd_image_loader seems to have bricked my x310!<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Prior to running it, the device was connected fine b=
ut after running the script, it loaded to 100% and said to recycle power. A=
fter recycling power, the USRP will no longer connect to my computer. The L=
INK light does not come on and the
 Ethernet says &#8220;unplugged&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using UHD_3.15.0.0-16-ga3ece4f2 on Ubuntu =
18.04 and connected to SPF&#43; Port 0. Here is the terminal history:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3=
/tools/scripts$ uhd_usrp_probe --args addr=3D192.168.10.2<o:p></o:p></b></p=
>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; B=
oost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [X300] X300 initialization sequence...<o:p></=
o:p></p>
<p class=3D"MsoNormal">Error: RuntimeError: Expected FPGA compatibility num=
ber 36, but got 20:<o:p></o:p></p>
<p class=3D"MsoNormal">The FPGA image on your device is not compatible with=
 this host code build.<o:p></o:p></p>
<p class=3D"MsoNormal">Download the appropriate FPGA images for this versio=
n of UHD.<o:p></o:p></p>
<p class=3D"MsoNormal">Please run:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&quot;/usr/local/lib/uhd/utils/uhd_images_downloader=
.py&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then burn a new image to the on-board flash storage =
of your<o:p></o:p></p>
<p class=3D"MsoNormal">USRP X3xx device using the image loader utility. Use=
 this command:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&quot;/usr/local/bin/uhd_image_loader&quot; --args=
=3D&quot;type=3Dx300,addr=3D192.168.10.2&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For more information, refer to the UHD manual:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">http://files.ettus.com/manual/page_usrp_x3x0.html#x3=
x0_flash<o:p></o:p></p>
<p class=3D"MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3=
/tools/scripts$ sudo uhd_images_downloader<o:p></o:p></b></p>
<p class=3D"MsoNormal">[sudo] password for nvd: <o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Using base URL: https://files.ettus.com/binar=
ies/cache/<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Images destination: /usr/local/share/uhd/imag=
es<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target x3xx_x310_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target x3xx_x300_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target e3xx_e310_sg1_fpga_default is up to da=
te.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target e3xx_e310_sg3_fpga_default is up to da=
te.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target e3xx_e320_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target n3xx_n310_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target n3xx_n300_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target n3xx_n320_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target b2xx_b200_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target b2xx_b200mini_fpga_default is up to da=
te.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target b2xx_b210_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target b2xx_b205mini_fpga_default is up to da=
te.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target b2xx_common_fw_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp2_usrp2_fw_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp2_usrp2_fpga_default is up to date=
.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp2_n200_fpga_default is up to date.=
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp2_n200_fw_default is up to date.<o=
:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp2_n210_fpga_default is up to date.=
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp2_n210_fw_default is up to date.<o=
:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target n230_n230_fpga_default is up to date.<=
o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp1_usrp1_fpga_default is up to date=
.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp1_b100_fpga_default is up to date.=
<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usrp1_b100_fw_default is up to date.<o=
:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target octoclock_octoclock_fw_default is up t=
o date.<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] Target usb_common_windrv_default is up to dat=
e.<o:p></o:p></p>
<p class=3D"MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3=
/tools/scripts$ &quot;/usr/local/bin/uhd_image_loader&quot; --args=3D&quot;=
type=3Dx300,addr=3D192.168.10.2&quot;<o:p></o:p></b></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; B=
oost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
<p class=3D"MsoNormal">Unit: USRP X310 (312CEC4, 192.168.10.2)<o:p></o:p></=
p>
<p class=3D"MsoNormal">FPGA Image: /usr/local/share/uhd/images/usrp_x310_fp=
ga_HG.bit<o:p></o:p></p>
<p class=3D"MsoNormal">-- Initializing FPGA loading...successful.<o:p></o:p=
></p>
<p class=3D"MsoNormal">-- Loading HG FPGA image: 100% (121/121 sectors)<o:p=
></o:p></p>
<p class=3D"MsoNormal">-- Finalizing image load...successful.<o:p></o:p></p=
>
<p class=3D"MsoNormal">Power-cycle the USRP X310 to use the new image.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3=
/tools/scripts$ uhd_find_devices<o:p></o:p></b></p>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; B=
oost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
<p class=3D"MsoNormal">No UHD Devices Found<o:p></o:p></p>
<p class=3D"MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3=
/tools/scripts$ uhd_usrp_probe --args addr=3D192.168.10.2<o:p></o:p></b></p=
>
<p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; B=
oost_106501; UHD_3.15.0.0-16-ga3ece4f2<o:p></o:p></p>
<p class=3D"MsoNormal">Error: LookupError: KeyError: No devices found for -=
----&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">Device Address:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; addr: 192.168.10.2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3=
/tools/scripts$ ping 192.168.10.2<o:p></o:p></b></p>
<p class=3D"MsoNormal">PING 192.168.10.2 (192.168.10.2) 56(84) bytes of dat=
a.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">^C<o:p></o:p></p>
<p class=3D"MsoNormal">--- 192.168.10.2 ping statistics ---<o:p></o:p></p>
<p class=3D"MsoNormal">49 packets transmitted, 0 received, 100% packet loss=
, time 49946ms<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">nvd@nvd-VirtualBox:~/rfnoc/src/uhd/fpga-src/usrp3/to=
ols/scripts$ ifconfig<o:p></o:p></p>
<p class=3D"MsoNormal">enp0s3: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICA=
ST&gt;&nbsp; mtu 1500<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; inet 10.0=
.2.15&nbsp; netmask 255.255.255.0&nbsp; broadcast 10.0.2.255<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
</div>
</body>
</html>

--_000_126cd20d82ba4cb6ae0eecdb95637f7fgtrigatechedu_--


--===============2624879816491121446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2624879816491121446==--

