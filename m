Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD4E773ABB
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 16:30:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CF82384A1D
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 10:30:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691505031; bh=ZJ6MH11JTlHlzHbKKXzt1JDy6anl57bdb470KQXRlDQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RJqT2hnuVgNvR0TOddLvEBG8flUWQJ5Ma6VM0OfWzuchpNV2sXWqxMD+/62i8FdWQ
	 MOQ/X/hLtbizqB1IS/tW8XXLMv85t01ig6aUEhSdjX+8vor2HF26NmcdQvmPwQ318y
	 TLpxoBNsELyJ4jG36lzkMFlPt8xbTSPDvuwEGw5HDF22/qzyroVZuYGQImR7vn7YIb
	 hSSSnIFVGeSkIjZiEZyNMSeIB7yd3kRsgs9wyeesuH3mAmZ3m+wQPQLQtkZSrt+pay
	 cwBfu+h06WJ+8vMgCin1HudHp3t4vI6RaMGQaDHUndS4rJaKGRna6n+8ECkEzLuN3Y
	 X5Ho9rXAJ8Viw==
Received: from mx-relay89-hz1.antispameurope.com (mx-relay89-hz1.antispameurope.com [94.100.132.89])
	by mm2.emwd.com (Postfix) with ESMTPS id BDD08383FB4
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 10:30:14 -0400 (EDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by mx-relay89-hz1.antispameurope.com;
 Tue, 08 Aug 2023 16:30:12 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.171.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 1A4A6C004A
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 16:30:00 +0200 (CEST)
Received: from mail05.iis.fhg.de (2001:638:a0a:1111::215) by mail06.iis.fhg.de
 (2001:638:a0a:1111::216) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Tue, 8 Aug 2023
 16:29:59 +0200
Received: from mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec]) by
 mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec%6]) with mapi id 15.02.0986.042;
 Tue, 8 Aug 2023 16:29:59 +0200
From: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: N310 uhd_image_loader: two errors
Thread-Index: AdnKBM1IcTir1m1FTuWyrIlVf79uAA==
Date: Tue, 8 Aug 2023 14:29:59 +0000
Message-ID: <44131bcc179c44f8975efeb8097fb30c@iis.fraunhofer.de>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay89-hz1.antispameurope.com with 7376F1240107
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1, IP=153.96.172.4
X-cloud-security-Digest: 18e4ad24a0f9efb2d4e0b4eed490d156
X-cloud-security: scantime:2.635
Message-ID-Hash: YPXRTLBM6RITOV3G3YELJE5DBDL3KLJH
X-Message-ID-Hash: YPXRTLBM6RITOV3G3YELJE5DBDL3KLJH
X-MailFrom: prvs=0577bb9075=luca.bachmaier@iis.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 uhd_image_loader: two errors
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPXRTLBM6RITOV3G3YELJE5DBDL3KLJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0184018102435160352=="

--===============0184018102435160352==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_44131bcc179c44f8975efeb8097fb30ciisfraunhoferde_"

--_000_44131bcc179c44f8975efeb8097fb30ciisfraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm currently building an image for the USRP N310 and while using uhd_image=
_loader I ran into the following error (see below for entire output):
             [INFO] [MPM.PeriphManager] Installing component `dts'
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task lo=
op will now exit, things may not work.rpc::timeout: Timeout of 10000ms whil=
e calling RPC function 'get_log_buf'

After this happened, the RJ45 connection with the USRP seems to have stoppe=
d working. Running uhd_usrp_find_devices can't find any devices. However I =
can still log in to the USRP over the Console JTAG interface through screen=
. When calling "ip a" on my host device and the USRP the Ethernet interface=
s seem to be down, even after rebooting the USRP.

When I tried executing uhd_image_loader again I received this error:
             [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a =
single device.

Unfortunately I wasn't able to find a lot of information about these errors=
 online or in this mailing list. I'd be happy to hear any input about both =
of these errors.

Thank you and regards
Luca


Full ouput:
$ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2" --fpga-path ./b=
uild/usrp_n310_fpga_XG.bit
[INFO] [UHD] linux; GNU C++ version 12.2.0; Boost_107400; UHD_4.3.0.0+ds1-5
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31E9FA6,name=3Dni-n3xx-31E9=
FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Installing component `fpga'
[INFO] [MPM.PeriphManager] Installing component `dts'
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task lo=
op will now exit, things may not work.rpc::timeout: Timeout of 10000ms whil=
e calling RPC function 'get_log_buf'
[ERROR] [UHD] Exception caught in safe-call.
  in ~mpmd_mboard_impl
 at ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320
dump_logs(); _claimer_task.reset(); if (not rpc->request_with_token<bool>("=
unclaim")) { uhd::_log::log(uhd::log::warning, "./host/lib/usrp/mpmd/mpmd_m=
board_impl.cpp", 322, "MPMD", std::this_thread::get_id()) << "Failure to ac=
k unclaim!";; } -> rpc::timeout: Timeout of 10000ms while calling RPC funct=
ion 'get_log_buf'
Error: rpc::timeout: Timeout of 120000ms while calling RPC function 'update=
_component'

--_000_44131bcc179c44f8975efeb8097fb30ciisfraunhoferde_
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
	font-family:"Calibri",sans-serif;
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m currently building an=
 image for the USRP N310 and while using uhd_image_loader I ran into the fo=
llowing error (see below for entire output):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [INFO] [MPM.PeriphManager] Instal=
ling component `dts'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[E=
RROR] [UHD] An unexpected exception was caught in a task loop.The task loop=
 will now exit, things may not work.rpc::timeout: Timeout of 10000ms while =
calling RPC function 'get_log_buf'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After this happened, the RJ45 c=
onnection with the USRP seems to have stopped working. Running uhd_usrp_fin=
d_devices can&#8217;t find any devices. However I can still log in to the U=
SRP over the Console JTAG interface through
 screen. When calling &#8220;ip a&#8221; on my host device and the USRP the=
 Ethernet interfaces seem to be down, even after rebooting the USRP.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I tried executing uhd_imag=
e_loader again I received this error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ERROR] [MPMD IMAGE LOADER] mpmd_=
image_loader only supports a single device.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Unfortunately I wasn&#8217;t ab=
le to find a lot of information about these errors online or in this mailin=
g list. I&#8217;d be happy to hear any input about both of these errors.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and regards<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Full ouput:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ uhd_image_loader --args &quot=
;type=3Dn3xx,addr=3D192.168.10.2&quot; --fpga-path ./build/usrp_n310_fpga_X=
G.bit<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C&#43;&=
#43; version 12.2.0; Boost_107400; UHD_4.3.0.0&#43;ds1-5<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD] Initializing 1 de=
vice(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=
=3Dn310,serial=3D31E9FA6,name=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,s=
kip_init=3D1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD] Claimed device wi=
thout full initialization.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD IMAGE LOADER] Star=
ting update. This may take a while.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPM.PeriphManager] Inst=
alling component `fpga'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPM.PeriphManager] Inst=
alling component `dts'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [UHD] An unexpected exc=
eption was caught in a task loop.The task loop will now exit, things may no=
t work.rpc::timeout: Timeout of 10000ms while calling RPC function 'get_log=
_buf'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [UHD] Exception caught =
in safe-call.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; in ~mpmd_mboard_impl<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;at ./host/lib/usrp/mpmd/m=
pmd_mboard_impl.cpp:320<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">dump_logs(); _claimer_task.rese=
t(); if (not rpc-&gt;request_with_token&lt;bool&gt;(&quot;unclaim&quot;)) {=
 uhd::_log::log(uhd::log::warning, &quot;./host/lib/usrp/mpmd/mpmd_mboard_i=
mpl.cpp&quot;, 322, &quot;MPMD&quot;, std::this_thread::get_id()) &lt;&lt; =
&quot;Failure
 to ack unclaim!&quot;;; } -&gt; rpc::timeout: Timeout of 10000ms while cal=
ling RPC function 'get_log_buf'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: rpc::timeout: Timeout of=
 120000ms while calling RPC function 'update_component'<o:p></o:p></span></=
p>
</div>
</body>
</html>

--_000_44131bcc179c44f8975efeb8097fb30ciisfraunhoferde_--

--===============0184018102435160352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0184018102435160352==--
