Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0F11DC3A8
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 02:35:49 +0200 (CEST)
Received: from [::1] (port=38900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbZBZ-0006Qd-V0; Wed, 20 May 2020 20:35:45 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:3550)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jbZBW-0006LO-Ix
 for usrp-users@lists.ettus.com; Wed, 20 May 2020 20:35:42 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1590021298; h=from:subject:to:date:message-id;
 bh=fkGzBOvZtoQBb0+m3WcnYoNAtAlWACNbuzi90m3P+ro=;
 b=LS6NHL/CozVCvnS7E1jr5baZjYoogeiuNydYa4QxucSD3ohTjNyU5nM4a+POqvwPiZZNApL4FMw
 zIfRvO1yxX7LX27dxK1hvvV91461N3LW1r4BlwauPVVpIMM6v403YDJpTgtn1W9JvYBmdJ6tons95
 tAXmm/Z5L4ZPIbScyzA=
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 20 May
 2020 20:34:58 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by jekyll.core.gtri.org
 (10.41.1.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 20
 May 2020 20:34:58 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Wed, 20 May 2020 20:34:58 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc build standard image x310 failing
Thread-Index: AdYvAWWJ0y+coDYlSaaz5Jt4mWvYzQ==
Date: Thu, 21 May 2020 00:34:58 +0000
Message-ID: <2f10393db6b447e9925d3da9fd110467@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] rfnoc build standard image x310 failing
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
Cc: "Prado, Ron" <Ron.Prado@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============5815226751627650440=="
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

--===============5815226751627650440==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2f10393db6b447e9925d3da9fd110467gtrigatechedu_"

--_000_2f10393db6b447e9925d3da9fd110467gtrigatechedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can someone please tell me what version of uhd and rfnoc are compatible for=
 building an image on Ubuntu 18.04?

I cannot get any of the UHD releases to properly build a standard rfnoc ima=
ge.

sudo ./uhd_image_builder.py fft ddc duc -g -t X310_RFNOC_HG -c -d X310 --fi=
ll-with-fifos

I installed vivado 2018.3 with uhd 3.15.0.0 and get the error:

ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_clk_gen/inst/CLK_OUT4 has=
 multiple drivers: radio_clk_gen/inst/clkout1_buf/O, and bus_clk_gen/inst/c=
lkout4_buf/O.
ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_reset_sync/reset_double=
_sync/synchronizer_false_path/value[9]_9 has multiple drivers: radio_reset_=
sync/reset_double_sync/synchronizer_false_path/stages[9].value_reg[9][0]/Q,=
 and ce_reset_sync/reset_double_sync/synchronizer_false_path/stages[9].valu=
e_reg[9][0]/Q.


I installed vivado 2017.4 with uhd 3.14.1.1 and get this error:

BUILDER: Releasing IP location: /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/=
x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma
Using parser configuration from: /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top=
/x300/dev_config.json
[00:00:00] Executing command: vivado -mode batch -source /home/nvd/rfnoc/sr=
c/uhd/fpga-src/usrp3/top/x300/build_x300.tcl -log build.log -journal x300.j=
ou
CRITICAL WARNING: [filemgmt 20-1440] File '/home/nvd/rfnoc/src/uhd/fpga-src=
/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit/user_design=
/rtl/clocking/mig_7series_v4_0_tempmon.v' already exists in the project as =
a part of sub-design file '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/ddr3_32bit/ddr3_32bit.xci'. Explicitly adding the=
 file outside the scope of the sub-design can lead to unintended behaviors =
and is not recommended.
[00:00:29] Current task: Initialization +++ Current Phase: Starting
[00:00:29] Current task: Initialization +++ Current Phase: Finished
[00:00:29] Executing Tcl: synth_design -top x300 -part xc7k410tffg900-2 -ve=
rilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=3D1 -verilog_define SFP=
0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_define RFNOC=3D1 -verilo=
g_define X310=3D1 -verilog_define GIT_HASH=3D32'hfbb85bdf
[00:00:29] Starting Synthesis Command
ERROR: [Synth 8-439] module 'ddr3_32bit' not found [/home/nvd/rfnoc/src/uhd=
/fpga-src/usrp3/top/x300/x300.v:1191]
ERROR: [Synth 8-285] failed synthesizing module 'x300' [/home/nvd/rfnoc/src=
/uhd/fpga-src/usrp3/top/x300/x300.v:20]
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the con=
sole or run log file for details
[00:08:36] Current task: Synthesis +++ Current Phase: Starting
[00:08:36] Current task: Synthesis +++ Current Phase: Finished
[00:08:36] Process terminated. Status: Failure


Any advice is greatly appreciated.

Thanks,

Jeff




--_000_2f10393db6b447e9925d3da9fd110467gtrigatechedu_
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
<p class=3D"MsoNormal">Can someone please tell me what version of uhd and r=
fnoc are compatible for building an image on Ubuntu 18.04?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I cannot get any of the UHD releases to properly bui=
ld a standard rfnoc image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">sudo ./uhd_image_builder.py fft ddc duc -g -t X310_R=
FNOC_HG -c -d X310 --fill-with-fifos<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I installed vivado 2018.3 with uhd 3.15.0.0 and get =
the error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net bus_cl=
k_gen/inst/CLK_OUT4 has multiple drivers: radio_clk_gen/inst/clkout1_buf/O,=
 and bus_clk_gen/inst/clkout4_buf/O.<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: [DRC MDRV-1] Multiple Driver Nets: Net radio_=
reset_sync/reset_double_sync/synchronizer_false_path/value[9]_9 has multipl=
e drivers: radio_reset_sync/reset_double_sync/synchronizer_false_path/stage=
s[9].value_reg[9][0]/Q, and ce_reset_sync/reset_double_sync/synchronizer_fa=
lse_path/stages[9].value_reg[9][0]/Q.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I installed vivado 2017.4 with uhd 3.14.1.1 and get =
this error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BUILDER: Releasing IP location: /home/nvd/rfnoc/src/=
uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/aurora_64b66b_pcs_pma=
<o:p></o:p></p>
<p class=3D"MsoNormal">Using parser configuration from: /home/nvd/rfnoc/src=
/uhd/fpga-src/usrp3/top/x300/dev_config.json<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:00] Executing command: vivado -mode batch -so=
urce /home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build_x300.tcl -log bu=
ild.log -journal x300.jou<o:p></o:p></p>
<p class=3D"MsoNormal">CRITICAL WARNING: [filemgmt 20-1440] File '/home/nvd=
/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg900-2/ddr3_32bit=
/ddr3_32bit/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v' already ex=
ists in the project as a part of sub-design
 file '/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/build-ip/xc7k410tffg=
900-2/ddr3_32bit/ddr3_32bit.xci'. Explicitly adding the file outside the sc=
ope of the sub-design can lead to unintended behaviors and is not recommend=
ed.<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:29] Current task: Initialization &#43;&#43;&#=
43; Current Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:29] Current task: Initialization &#43;&#43;&#=
43; Current Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:29] Executing Tcl: synth_design -top x300 -pa=
rt xc7k410tffg900-2 -verilog_define BUILD_1G=3D1 -verilog_define BUILD_10G=
=3D1 -verilog_define SFP0_1GBE=3D1 -verilog_define SFP1_10GBE=3D1 -verilog_=
define RFNOC=3D1 -verilog_define X310=3D1 -verilog_define
 GIT_HASH=3D32'hfbb85bdf<o:p></o:p></p>
<p class=3D"MsoNormal">[00:00:29] Starting Synthesis Command<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: [Synth 8-439] module 'ddr3_32bit' not found [=
/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:1191]<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: [Synth 8-285] failed synthesizing module 'x30=
0' [/home/nvd/rfnoc/src/uhd/fpga-src/usrp3/top/x300/x300.v:20]<o:p></o:p></=
p>
<p class=3D"MsoNormal">ERROR: [Common 17-69] Command failed: Synthesis fail=
ed - please see the console or run log file for details<o:p></o:p></p>
<p class=3D"MsoNormal">[00:08:36] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Starting<o:p></o:p></p>
<p class=3D"MsoNormal">[00:08:36] Current task: Synthesis &#43;&#43;&#43; C=
urrent Phase: Finished<o:p></o:p></p>
<p class=3D"MsoNormal">[00:08:36] Process terminated. Status: Failure<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any advice is greatly appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2f10393db6b447e9925d3da9fd110467gtrigatechedu_--


--===============5815226751627650440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5815226751627650440==--

