Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E0B4D9F88
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 17:01:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A857384DB2
	for <lists+usrp-users@lfdr.de>; Tue, 15 Mar 2022 12:01:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=airbus.com header.i=@airbus.com header.b="in+i1GYC";
	dkim-atps=neutral
Received: from mo7.myeers.net (mo7.myeers.net [87.190.7.228])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B4AC384407
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 12:00:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=airbus.com; i=@airbus.com; l=21448; q=dns/txt;
  s=eers-ng2048; t=1647360009; x=1678896009;
  h=from:to:subject:date:message-id:mime-version;
  bh=QsA4pLi1fY72F1TWKMmmDsTsn5KvNjojaEorMoW/EAQ=;
  b=in+i1GYC46Qn9sRt7YfX6cmt6RNtP7ssKTZOVodUmUJ4f5CFYW3A4XTr
   EIF2ySL0WAF5H8A+gR1i0cHLmWvQhXUbOpLkfYLWpzzzWKduv0llNu+lw
   Y+gWv43l3hx56SXPKfZv4sShc221VWrK9oE1kSQCLKFp5uE3p5qCSlwXH
   5KECAUNqK+//gYhT2gm9AgZL0VOFMydJj2ZUURytdg+xKiHQVqv8jCC9U
   jrbxw0nfTMMsSl2r5TrmleRtGbv05syi9Ldr0Qbpi6uQApFXxDbA3N0H5
   o8QYjDdCIHYlcDwkGivNqZ9Zyg7u2vXooUB48aBaznJXKn9zVFRzaSv3m
   Q==;
IronPort-SDR: m+qz0RGhNgaBS+JlLjDnhbzPt0MJojzhNN7OhvLkIGfKJcl6t1OH823u5jPcEAZMFyAzcw0Lvx
 l0mIY+bKR2jw==
X-IronPort-AV: E=Sophos;i="5.90,184,1643670000";
   d="scan'208,217";a="234155743"
Received: from ec2-44-225-67-30.us-west-2.compute.amazonaws.com (HELO DE0-44HUB-P01.central.mail.corp) ([44.225.67.30])
  by de0-03iro-p05-out.myeers.net with ESMTP/TLS/ECDHE-RSA-AES256-SHA384; 15 Mar 2022 17:00:05 +0100
Received: from esa2e.demail.de.airbusds.corp (10.67.144.34) by
 DE0-44HUB-P01.central.mail.corp (44.225.67.34) with Microsoft SMTP Server id
 15.0.1497.28; Tue, 15 Mar 2022 16:59:57 +0100
X-ADDIV-1: 1
IronPort-Data: A9a23:x4UBZqAMa3PxlhVW/7jhw5YqxClBgxIJ4kV8jS/XYbTApGlz0jNSy
 WIbXT2DPa3YZDb1f4h+O4njoE8GsJLcz9YwTANkpHpgcSlH+JHPbTi7wuccHM8zwunrFh8PA
 xA2M4GYRCwMZiaA4E/raNANlFEkvU2ybuKU5NXsZ2YgHWeIdA970Ug5w7Vg39Yz6TSEK1jlV
 e3a8pS31GCNi2Yc3lI8s8pvfzs24ZweEBtB1rAPTagjUG32zhH5P7pGTU2FFEYUd6EPdgKMq
 0Yv+5nilo/R109F5tqNzO6nIhVSKlLYFVDmZnF+A8BOjvXez8A/+v5TCRYSVatYoy6Nlu8h1
 ctJiaDqSxUZEeqPs/YmXyANRkmSPYUekFPGCX22sMjV1FXPeHaqwukG4EMeZNVeo74tRzsXs
 6dGQNwORkjra+aexbumUOh+h8NlN9XmMooZuzdt3S3UF/AvRbjKQr/A+MQe1zA17ixLNayEP
 ZRHNms/BPjGSxBqfX0cJ6g6pcGxiX78YTgFtH7Ev4NitgA/yyQ0itABKuH9Z8eQXYBIhUuCv
 UrC/n/lGVcXKMCC0nyO9XfEuwPUtXqjHttKTvvir7gx3jV/21AuNfHfbnPjydHRt6J0c4sEd
 CT4JgJGQXAOyXGW
IronPort-HdrOrdr: A9a23:aRNQUagCNnvYse6oww/o7y1YiHBQXjMji2hC6mlwRA09TyXBrb
 HLoB1p726StN9xYgBepTnuAtjjfZqxz/FICOoqTMmftWvdyQ6VxehZhOOIrlHd8kbFl9K1oJ
 0QEJSWf+eRMbEVt6jHyTj9M/Ib+p2n2IeEwcHw4DNBbTpHQZxB0CsRMGym+wZNNW977NICZe
 Ohz/sCmh7lUU5SSuCfb0N1LtQriee77K4PO3M9dmUaACrit0LT1Fa7fiLooyv3HV50sMsfzV
 Q=
X-IronPort-AV: E=Sophos;i="5.90,184,1643670000";
   d="scan'208,217";a="22266798"
Received: from unknown (HELO mail.space.it) ([10.102.21.36])
  by esa2e.demail.de.airbusds.corp with ESMTP; 15 Mar 2022 16:59:36 +0100
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 8BC99370355
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 16:54:47 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.67.144.34:25
Received: from SPROMMAIL02.spengtes.space (unknown [10.102.17.16])
	by mail.space.it (Postfix) with ESMTP id E6BCD370355
	for <usrp-users@lists.ettus.com>; Tue, 15 Mar 2022 16:54:46 +0100 (CET)
Received: from SPROMMAIL03.spengtes.space ([::1]) by
 SPROMMAIL02.spengtes.space ([10.102.17.16]) with mapi id 14.03.0513.000; Tue,
 15 Mar 2022 17:00:21 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: request for ettus x310 build error
Thread-Index: Adg4hcOn7grkziFdSImU42IAcPHdLQ==
Date: Tue, 15 Mar 2022 16:00:21 +0000
Message-ID: <E1188D158AA7A048AF99B6A05DA3D629DFE93510@SPROMMAIL03.spengtes.space>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-24900.000
x-tm-as-result: No--28.215600-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-SNTS-SMTP: B2C119647CF8F3C91FEB944CB303AA2B67436F49E39656879F06FE64561D20D52000:8
X-GM-Security: forwarded
Message-ID-Hash: 3PLXTQVQB6CIVTEESBNB5UPM3676JKUA
X-Message-ID-Hash: 3PLXTQVQB6CIVTEESBNB5UPM3676JKUA
X-MailFrom: maurizio.stefani.external@airbus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] request for ettus x310 build error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3PLXTQVQB6CIVTEESBNB5UPM3676JKUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "STEFANI, Maurizio (External) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Content-Type: multipart/mixed; boundary="===============4895390270775968072=="

--===============4895390270775968072==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E1188D158AA7A048AF99B6A05DA3D629DFE93510SPROMMAIL03spen_"

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE93510SPROMMAIL03spen_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

HI,
we have an ETTUS X310, I need to re-build and load the original FPGA,
I loaded from repository the relevant file
The files are in:
/vhd/uhd-master/uhd-master/fpga/usrp3/top/x300
When I run make:
maurizio.stefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$<mailto=
:maurizio.stefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$> make
make -f Makefile.x300.inc bin NAME=3DX300_HG ARCH=3Dkintex7 PART_ID=3Dxc7k3=
25t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1  X300=
=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D"BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=
=3D1 SFP1_10GBE=3D1  X300=3D1" DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_i=
mage_core.v DEFAULT_EDGE_FILE=3D/home/maurizio.stefani/prove/uhd/uhd-master=
/fpga/usrp3/top/x300/x300_static_router.hex
make[1]: Entering directory '/home/maurizio.stefani/prove/uhd/uhd-master/fp=
ga/usrp3/top/x300'
BUILDER: Checking tools...
* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
* Python 3.8.10
* Vivado v2019.2 (64-bit)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP ten_gig_eth_pcs_pma
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /home/maurizio.stefani/prove/uhd/uhd-master=
/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma
BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source /home/maurizio.ste=
fani/prove/uhd/uhd-master/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log=
 ten_gig_eth_pcs_pma.log -nojournal
WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp=
3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pm=
a.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/u=
srp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs=
_pma.xci
[00:00:21] Current task: Initialization +++ Current Phase: Starting
[00:00:22] Current task: Initialization +++ Current Phase: Finished
[00:00:22] Executing Tcl: synth_design -top ten_gig_eth_pcs_pma -part xc7k3=
25tffg900-2 -mode out_of_context
[00:00:22] Starting Synthesis Command
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'ten_gig_eth_pcs_pma' is locked:
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/ma=
urizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/ma=
urizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/ma=
urizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/ma=
urizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/home/ma=
urizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tff=
g900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xml'
ERROR: [Vivado 12-398] No designs are open
ERROR: [Common 17-69] Command failed: * IP definition '10G Ethernet PCS/PMA=
 (10GBASE-R/KR) (6.0)' for IP 'ten_gig_eth_pcs_pma' (customized with softwa=
re release 2019.1) has a different revision in the IP Catalog.
[00:00:24] Current task: Synthesis +++ Current Phase: Starting
[00:00:24] Current task: Synthesis +++ Current Phase: Finished
[00:00:24] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           3
Critical Warnings:  7
Errors:             9

BUILDER: Releasing IP location: /home/maurizio.stefani/prove/uhd/uhd-master=
/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma
make[1]: *** [/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x3=
00/ip/ten_gig_eth_pcs_pma/Makefile.inc:41: /home/maurizio.stefani/prove/uhd=
/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_p=
ma/ten_gig_eth_pcs_pma.xci.out] Error 1
make[1]: Leaving directory '/home/maurizio.stefani/prove/uhd/uhd-master/fpg=
a/usrp3/top/x300'
make: *** [Makefile:90: X300_HG] Error 2

Could you help us to understand the problem
Thank you
Maurizio Stefani

The information in this e-mail is confidential. The contents may not be dis=
closed or used by anyone other than the addressee. Access to this e-mail by=
 anyone else is unauthorised.
If you are not the intended recipient, please notify Airbus immediately and=
 delete this e-mail.
Airbus cannot accept any responsibility for the accuracy or completeness of=
 this e-mail as it has been sent over public networks. If you have any conc=
erns over the content of this message or its Accuracy or Integrity, please =
contact Airbus immediately.
All outgoing e-mails from Airbus are checked using regularly updated virus =
scanning software but you should take whatever measures you deem to be appr=
opriate to ensure that this message and any attachments are virus free.

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE93510SPROMMAIL03spen_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 2.0cm 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"IT" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">we have an ETTUS X310, I need t=
o re-build and load the original FPGA,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I loaded from repository the re=
levant file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The files are in:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/vhd/uhd-master/uhd-master/fpga=
/usrp3/top/x300<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I run <b><i>make</i></b>:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><a href=3D"mailto:maurizio.s=
tefani@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$">maurizio.stefan=
i@ubuntux:~/prove/uhd/uhd-master/fpga/usrp3/top/x300$</a> make<o:p></o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make -f Makefile.x300.inc bi=
n NAME=3DX300_HG ARCH=3Dkintex7 PART_ID=3Dxc7k325t/ffg900/-2 BUILD_1G=3D1 B=
UILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1&nbsp; X300=3D1 TOP_MODULE=3Dx300 =
EXTRA_DEFS=3D&quot;BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1&=
nbsp;
 X300=3D1&quot; DEFAULT_RFNOC_IMAGE_CORE_FILE=3Dx300_rfnoc_image_core.v DEF=
AULT_EDGE_FILE=3D/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top=
/x300/x300_static_router.hex<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: Entering directory =
'/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300'<o:p></o:p=
></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Checking tools...<o=
:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* GNU bash, version 5.0.17(1=
)-release (x86_64-pc-linux-gnu)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* Python 3.8.10<o:p></o:p></=
span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">* Vivado v2019.2 (64-bit)<o:=
p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:=
p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Building IP ten_gig=
_eth_pcs_pma<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:=
p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Staging IP in build=
 directory...<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Reserving IP locati=
on: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-i=
p/xc7k325tffg900-2/ten_gig_eth_pcs_pma<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Retargeting IP to p=
art kintex7/xc7k325t/ffg900/-2...<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Building IP...<o:p>=
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:00] Executing command=
: vivado -mode batch -source /home/maurizio.stefani/prove/uhd/uhd-master/fp=
ga/usrp3/tools/scripts/viv_generate_ip.tcl -log ten_gig_eth_pcs_pma.log -no=
journal<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [IP_Flow 19-2162] I=
P 'ten_gig_eth_pcs_pma' is locked:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [filemgmt =
20-1366] Unable to reset target(s) for the following file is locked: /home/=
maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k325t=
ffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci<o:p></o:p></span></i><=
/p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [filemgmt =
20-1365] Unable to generate target(s) for the following file is locked: /ho=
me/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-ip/xc7k3=
25tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci<o:p></o:p></span></=
i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:21] Current task: Ini=
tialization &#43;&#43;&#43; Current Phase: Starting<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Current task: Ini=
tialization &#43;&#43;&#43; Current Phase: Finished<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Executing Tcl: sy=
nth_design -top ten_gig_eth_pcs_pma -part xc7k325tffg900-2 -mode out_of_con=
text<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:22] Starting Synthesi=
s Command<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [Vivado_Tcl 4-391] =
The following IPs are missing output products for Synthesis target. These o=
utput products could be required for synthesis, please generate the output =
products using the generate_target or
 synth_ip command before running synth_design.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: [IP_Flow 19-2162] I=
P 'ten_gig_eth_pcs_pma' is locked:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Designutils 20-414] =
HRTInvokeSpec : No Verilog or VHDL sources specified<o:p></o:p></span></i><=
/p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-53] User E=
xception: No open design. Please open an elaborated, synthesized or impleme=
nted design before executing this command.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd=
-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/t=
en_gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd=
-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/t=
en_gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd=
-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/t=
en_gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd=
-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/t=
en_gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">CRITICAL WARNING: [IP_Flow 1=
9-4739] Writing uncustomized BOM file '/home/maurizio.stefani/prove/uhd/uhd=
-master/fpga/usrp3/top/x300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/t=
en_gig_eth_pcs_pma.xml'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Vivado 12-398] No de=
signs are open<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">ERROR: [Common 17-69] Comman=
d failed: * IP definition '10G Ethernet PCS/PMA (10GBASE-R/KR) (6.0)' for I=
P 'ten_gig_eth_pcs_pma' (customized with software release 2019.1) has a dif=
ferent revision in the IP Catalog.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Current task: Syn=
thesis &#43;&#43;&#43; Current Phase: Starting<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Current task: Syn=
thesis &#43;&#43;&#43; Current Phase: Finished<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">[00:00:24] Process terminate=
d. Status: Failure<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:=
p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Warnings:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Critical Warnings:&nbsp; 7<o=
:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Errors:&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9<o:p></o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">BUILDER: Releasing IP locati=
on: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/build-i=
p/xc7k325tffg900-2/ten_gig_eth_pcs_pma<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: *** [/home/maurizio=
.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Ma=
kefile.inc:41: /home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x=
300/build-ip/xc7k325tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.o=
ut]
 Error 1<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make[1]: Leaving directory '=
/home/maurizio.stefani/prove/uhd/uhd-master/fpga/usrp3/top/x300'<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">make: *** [Makefile:90: X300=
_HG] Error 2<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help us to understand=
 the problem<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<font style=3D"font-size: 9px;">The information in this e-mail is confident=
ial. The contents may not be disclosed or used by anyone other than the add=
ressee. Access to this e-mail by anyone else is unauthorised.<br>If you are=
 not the intended recipient, please notify Airbus immediately and delete th=
is e-mail.<br>Airbus cannot accept any responsibility for the accuracy or c=
ompleteness of this e-mail as it has been sent over public networks. If you=
 have any concerns over the content of this message or its Accuracy or Inte=
grity, please contact Airbus immediately.<br>All outgoing e-mails from Airb=
us are checked using regularly updated virus scanning software but you shou=
ld take whatever measures you deem to be appropriate to ensure that this me=
ssage and any attachments are virus free.</font></body>
</html>

--_000_E1188D158AA7A048AF99B6A05DA3D629DFE93510SPROMMAIL03spen_--

--===============4895390270775968072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4895390270775968072==--
