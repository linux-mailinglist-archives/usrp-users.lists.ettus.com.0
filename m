Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C768A747026
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 13:50:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0EBC383AD3
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 07:50:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688471425; bh=0Y8Unm7AzGX5wlaOHvFxUgbhKVVFD8pGo91uqJjU7nk=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SUesIUNiOAv6aHK8iKjX9VYpOV/kwPTZvZw4LaiH86zR3UtVahOdhybLtA5QhSKX/
	 YffpAWNBSQ11ZPA1kydTz2My3CyFbS56XNLPTszE/aou229DMp2AGuCnKTNG8FcBt0
	 zfC3vFQo5NUhTnWZxIvCi5QNRdb/pwnxxEPhCXBlMKCIIrC/rjntBiPfgLlQAYaijg
	 pPbTRi83HkoahxIM5B8Bd8Qp4YDudSKVfvHwjjuU8Uao95cE+/k0YB+paHDlfltLkT
	 2/fGV+rocugW976SsoIGgDCpvaZdWkcb+wmmyij7qtk3zoMuoVAAdyEHxxczA2j4Je
	 tEnv6sPjszn7A==
Received: from mx-relay61-hz1.antispameurope.com (mx-relay61-hz1.antispameurope.com [94.100.132.231])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A73F3817FB
	for <usrp-users@lists.ettus.com>; Tue,  4 Jul 2023 07:49:30 -0400 (EDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by mx-relay61-hz1.antispameurope.com;
 Tue, 04 Jul 2023 13:49:28 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.171.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 7154FC004A
	for <usrp-users@lists.ettus.com>; Tue,  4 Jul 2023 13:49:23 +0200 (CEST)
Received: from mail05.iis.fhg.de (2001:638:a0a:1111::215) by mail05.iis.fhg.de
 (2001:638:a0a:1111::215) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 4 Jul 2023
 13:49:23 +0200
Received: from mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec]) by
 mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec%6]) with mapi id 15.02.0986.042;
 Tue, 4 Jul 2023 13:49:23 +0200
From: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC Image Builder: two problems with Vitis HLS
Thread-Index: AdmubSmuyZOi7niFS8+KRqqzENbw6A==
Date: Tue, 4 Jul 2023 11:49:23 +0000
Message-ID: <a8347b099c6c4bd3b6426f878b2827f9@iis.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.96.171.210]
MIME-Version: 1.0
X-cloud-security-sender: luca.bachmaier@iis.fraunhofer.de
X-cloud-security-recipient: usrp-users@lists.ettus.com
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay61-hz1.antispameurope.com with BA13C106960B
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1, IP=153.96.172.4
X-cloud-security-Digest: 50bba03f8106c0dc57df67f28f389804
X-cloud-security: scantime:1.816
Message-ID-Hash: BPMSDZEUVH6P6SZ64B7L36Q3MKUQ6QVA
X-Message-ID-Hash: BPMSDZEUVH6P6SZ64B7L36Q3MKUQ6QVA
X-MailFrom: prvs=05420a140c=luca.bachmaier@iis.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Image Builder: two problems with Vitis HLS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BPMSDZEUVH6P6SZ64B7L36Q3MKUQ6QVA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5410966477642118466=="

--===============5410966477642118466==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_a8347b099c6c4bd3b6426f878b2827f9iisfraunhoferde_"

--_000_a8347b099c6c4bd3b6426f878b2827f9iisfraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm currently stuck with creating a custom RFNoC bitfile with rfnoc_image_b=
uilder. I'm building the image for a USRP N310 and the software I'm using i=
s the following:
     - Debian 12
     - Python 3.11.2
     - UHD 4.3.0.0
     - Vivado 2021.1 (installed with the additional patch)

The command I use to build the image is (I created the file n310_rfnoc_fosp=
hor.yml myself):
     rfnoc_image_builder -F ~/uhd/fpga -y ~/core_yml/n310_rfnoc_fosphor.yml=
 -t N310_XG


After an unsuccessful build, the image builder gets stuck with HLS:
     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
     BUILDER: Building HLS IP addsub_hls
     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
     BUILDER: Staging HLS IP in build directory...
     Waiting for concurrent IP build to finish... (1800s [Ctrl-C to proceed=
])

I was wondering if there was a way to skip the concurrent IP build, using C=
trl-C only causes the entire rfnoc_image_builder to exit unsuccessfully wit=
h:
     make: *** [Makefile:90: N3X0_IP] Interrupt


Waiting for the timeout after 1800 seconds throws the following error that =
I do not understand at all:
     source /tools/Xilinx/Vitis_HLS/2021.1/scripts/vitis_hls/hls.tcl -notra=
ce
     can't read "zny": no such variable
          while executing
     "0Nyy-&ur-r$$!$-9-)n$ v t-n q- !$zny-%vz'yn&v! -v s!$zn&v! -zr%%ntr%-n=
$r-v -&uv%-svyr-"
          (file "/tools/Xilinx/Vitis_HLS/2021.1/common/scripts/error_messag=
e.tcl" line 2)
           invoked from within


Additional info: before that, I had to upgrade two IP cores provided by UHD=
 in Vivado manually because rfnoc_image_builder threw the error:
     CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the=
 following file is locked:
     /home/fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1=
to2/hb47_1to2.xci


I would be happy to hear any help or pointers to how I could solve this pro=
blem.


Thank you and regards
Luca Bachmaier


--_000_a8347b099c6c4bd3b6426f878b2827f9iisfraunhoferde_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I'm currently stuck with creati=
ng a custom RFNoC bitfile with rfnoc_image_builder. I'm building the image =
for a USRP N310 and the software I'm using is the following:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; - Debi=
an 12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; - Pyth=
on 3.11.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; - UHD =
4.3.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; - Viva=
do 2021.1 (installed with the additional patch)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The command I use to build the =
image is (I created the file n310_rfnoc_fosphor.yml myself):<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; rfnoc_=
image_builder -F ~/uhd/fpga -y ~/core_yml/n310_rfnoc_fosphor.yml -t N310_XG=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After an unsuccessful build, th=
e image builder gets stuck with HLS:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; BUILDE=
R: Building HLS IP addsub_hls<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; BUILDE=
R: Staging HLS IP in build directory...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; Waitin=
g for concurrent IP build to finish... (1800s [Ctrl-C to proceed])<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I was wondering if there was a =
way to skip the concurrent IP build, using Ctrl-C only causes the entire rf=
noc_image_builder to exit unsuccessfully with:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; make: =
*** [Makefile:90: N3X0_IP] Interrupt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Waiting for the timeout after 1=
800 seconds throws the following error that I do not understand at all:<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; source=
 /tools/Xilinx/Vitis_HLS/2021.1/scripts/vitis_hls/hls.tcl -notrace<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; can't =
read &quot;zny&quot;: no such variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </span>while executing<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; &quot;0Nyy-&amp;ur-r$$!$-9-=
)n$ v t-n q- !$zny-%vz'yn&amp;v! -v s!$zn&amp;v! -zr%%ntr%-n$r-v -&amp;uv%-=
svyr-&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; <span lang=3D"EN-US">(file &quot;/tools/Xilinx/Vitis_HLS/2021.1/common/s=
cripts/error_message.tcl&quot; line 2)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; invoked from within<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Additional info: before that, I=
 had to upgrade two IP cores provided by UHD in Vivado manually because rfn=
oc_image_builder threw the error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; CRITIC=
AL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the following =
file is locked:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp; /home/=
fobp/sdr/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1t=
o2.xci<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would be happy to hear any he=
lp or pointers to how I could solve this problem.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Thank you and regards<o:p></o:p></p>
<p class=3D"MsoNormal">Luca Bachmaier<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_a8347b099c6c4bd3b6426f878b2827f9iisfraunhoferde_--

--===============5410966477642118466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5410966477642118466==--
