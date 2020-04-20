Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C76D1B1468
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 20:24:04 +0200 (CEST)
Received: from [::1] (port=34036 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQb5O-0001li-Pu; Mon, 20 Apr 2020 14:24:02 -0400
Received: from mxcp02out.l3harris.com ([166.20.196.24]:19783)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=3720f0ab8=Dan.Harris@l3harris.com>)
 id 1jQb5L-0001Ro-3B
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 14:23:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=l3harris.com; i=@l3harris.com; q=dns/txt; s=mail;
 t=1587407039; x=1618943039;
 h=from:to:subject:date:message-id:mime-version;
 bh=IziSnNDA+zCW3Os68Ioc9uTx4mH7ad9sxjooI619KmI=;
 b=TtqzHpTYNMMAdvXhLN+RkbQYtZe89ClwhvdeT8E4ieHOSTd6L6zkTD/V
 YaF4OTrqPGdCkXT+mCqjwZxzsk3BF84QC4OTnkFFdKVwQ47J6AbVWBtFE
 M6IAH7YVd1o1rEoxpodhAlQQ+eoQf0VAjbvnYaR2e3MnX/FvVM4DJXVP5
 RhIVn2By8/MdXga9LXCnAoL/pnTbMWiaxYgkBVY/VRBtlLh4kFJrAu+/i
 GcbWuh+hD+G5qG8tl/5guIJl9tnQzLoENEiNHalLA0Sf3CgAvNU6cX2ff
 5uaoFBeyetNvC7lzx20BOQeImCV292jH6CqarNjLK2+mNyJFC8qXVdzD7 w==;
Received: from unknown (HELO mlbxsmtp03.harris.com) ([192.52.234.95])
 by mxcp02out.l3harris.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 20 Apr 2020 18:23:18 +0000
X-AuditID: c034ea5e-97bff70000000a9b-f5-5e9de895b2bb
Received: from MLBXCH13.cs.myharris.net ( [10.64.224.131])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by mlbxsmtp03.harris.com (mail) with SMTP id D1.32.02715.598ED9E5;
 Mon, 20 Apr 2020 14:23:17 -0400 (EDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Cygwin build of E310_SG3
Thread-Index: AdYXPSd+rSWSqZqBRcuOdOf2k6nLjw==
Date: Mon, 20 Apr 2020 18:23:16 +0000
Message-ID: <eb1fa60c44c4410a814e83a4fdf45df9@MLBXCH12.cs.myharris.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL1Byb2Zlc3Npb25hbFNhbXBsZSIsImlkIjoiN2IyYWZhZGQtNWExYS00MWI1LTllMjItMjM5NTg1ZWE4Y2Y4IiwicHJvcHMiOlt7Im4iOiJDTEFTU0lGSUNBVElPTiIsInZhbHMiOlt7InZhbHVlIjoiR2VuZXJhbCJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxOC44LjE5MTAuMTQwIiwiVHJ1c3RlZExhYmVsSGFzaCI6InRJWjlvdXcxSlNnN2NOcDBIY05kTm1HbVpnUWE5Q2lGamkzTFpSSXhZNmtubmttd3FuM3l0bElFMkNwOFF3UnAifQ==
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.64.224.66]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCLMWRmVeSWpSXmKPExsXC5fCgWXfqi7lxBj+P6llc6JzD7sDoMXHl
 IeYAxigum5TUnMyy1CJ9uwSujNWLLjMX3FnCWLH3dGQD47GpjF2MnBwSAiYSO5dPZ+li5OIQ
 Euhnkrj/fTKQw8HBJqArMemJB0iNiICtxJ9ZC5lBbGEBRYnD3fdZIOJqEhdm/WGFsPUkpkw5
 zQRiswioSixfdwmsnlfAXaKtcz47iM0oICbx/dQasBpmAXGJW0/mM0HcICCxZM95ZghbVOLl
 43+sIPdICJxllvi67TYbRMJAYuvSfWC3SQgoSDxakQsxJ1fi4p3nbBC7BCVOznzCMoFRaBaS
 FbOQlM1CUgYR15FYsPsTG4StLbFs4WtmGPvMgcdMyOILGNlXMYrm5iRVFOeWFBgY62UkFhVl
 Fusl5+duYgTGxAGTV3E7GFe/sj/EyMTBeIhRgoNZSYQ3xWZunBBvSmJlVWpRfnxRaU5q8SFG
 aQ4WJXHemLtAKYH0xJLU7NTUgtQimCwTB6dUA6PljelrLzn+v7jY443EmyXMu18ferJHMmfb
 lic3Az799ux21np7qv6N64aV85/8z96673ZouXHaF4ba/dGXzz2MebSu896mtrPFR1IkTXkF
 osJ9l5XLeD/S2+4hfDHINrBymsFd/mdXTJQ9Z/RlR67n4mvduSxyWfGSvc9ailfP77j08amo
 7fVkJZbijERDLeai4kQA/sbq4ncCAAA=
Subject: [USRP-users] Cygwin build of E310_SG3
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
From: "Harris, Dan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Harris, Dan" <Dan.Harris@L3Harris.com>
Content-Type: multipart/mixed; boundary="===============6583258015192160448=="
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

--===============6583258015192160448==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_eb1fa60c44c4410a814e83a4fdf45df9MLBXCH12csmyharrisnet_"

--_000_eb1fa60c44c4410a814e83a4fdf45df9MLBXCH12csmyharrisnet_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


Is the windows Cygwin build of the E310_SG3 target being maintained?

I have been following the build instructions and have Vivado 2019.1 install=
ed.  It is failing in multiple points in the generation of the IP.  I had t=
o correct some paths that should have been windows-ized but did not seem to=
 be in tools/make/viv_hls_ip_builder.mak.

I can build at least one of the components (IP fifo_short_2clk), so I am so=
mewhat confident that Vivado is installed correctly, and that my 'source se=
tupenv.sh' was done properly.

However now I am getting this error which is just impenetrable (this is wit=
h a clean git pull, not the changes I reference above):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP mig_7series_0 - zynq xc7z020/clg484/-3
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /cygdrive/c/Users/user/Documents/e310/usrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/mig_7series_0
BUILDER: Retargeting IP to part zynq/xc7z020/clg484/-3...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source C:/Users/user/Docu=
ments/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log mig_7=
series_0.log -nojournal
[00:00:47] Current task: Initialization +++ Current Phase: Starting
[00:00:48] Current task: Initialization +++ Current Phase: Finished
[00:00:48] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Warnings:           0
Critical Warnings:  0
Errors:             0

BUILDER: Releasing IP location: /cygdrive/c/Users/user/Documents/e310/usrp/=
uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/mig_7series_0
make[1]: *** [/cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top=
/e31x/ip/mig_7series_0/Makefile.inc:32: /cygdrive/c/Users/user/Documents/e3=
10/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/mig_7series_0/mig_=
7series_0.xci] Error 1
make[1]: Leaving directory '/cygdrive/c/Users/user/Documents/e310/usrp/uhd/=
fpga/usrp3/top/e31x'
make: *** [Makefile:71: E310_SG3] Error 2


build-ip/xc7z020clg484-3/ mig_7series_0.log is not helpful:

#-----------------------------------------------------------
# Vivado v2019.1 (64-bit)
# SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
# IP Build 2548770 on Fri May 24 18:01:18 MDT 2019
# Start of session at: Mon Apr 20 19:14:06 2020
# Process ID: 181720
# Current directory: C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e=
31x/build-ip/xc7z020clg484-3
# Command line: vivado.exe -mode batch -source C:/Users/user/Documents/e310=
/usrp/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log mig_7series_0.l=
og -nojournal
# Log file: C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build=
-ip/xc7z020clg484-3/mig_7series_0.log
# Journal file:
#-----------------------------------------------------------
source C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_g=
enerate_ip.tcl
# set xci_file         $::env(XCI_FILE)               ;
# set part_name        $::env(PART_NAME)              ;
# set gen_example_proj $::env(GEN_EXAMPLE)            ;
# set synth_ip         $::env(SYNTH_IP)               ;
# set ip_name [file rootname [file tail $xci_file]]   ;
# file delete -force "$xci_file.out"
# create_project -part $part_name -in_memory -ip
# set_property target_simulator XSim [current_project]
# add_files -norecurse -force $xci_file
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository 'C:/Xilinx/Vivado/2019.=
1/data/ip'.


There appears to be an error file and a core file:
$ cat hs_err_pid181720.log
#
# An unexpected error has occurred (EXCEPTION_ACCESS_VIOLATION)
#
Stack:
no stack trace available, please use hs_err_<pid>.dmp instead.


Is this build maintained enough to use? Because of my limited setup at home=
, I really don't want to spin up a new server or VM for this, but if it is =
required then I guess I will.

Thanks,
Dan Harris

  =


CONFIDENTIALITY NOTICE: This email and any attachments are for the sole use=
 of the intended recipient and may contain material that is proprietary, co=
nfidential, privileged or otherwise legally protected or restricted under a=
pplicable government laws. Any review, disclosure, distributing or other us=
e without expressed permission of the sender is strictly prohibited. If you=
 are not the intended recipient, please contact the sender and delete all c=
opies without reading, printing, or saving.


--_000_eb1fa60c44c4410a814e83a4fdf45df9MLBXCH12csmyharrisnet_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is the windows Cygwin build of the E310_SG3 target b=
eing maintained?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have been following the build instructions and hav=
e Vivado 2019.1 installed.&nbsp; It is failing in multiple points in the ge=
neration of the IP. &nbsp;I had to correct some paths that should have been=
 windows-ized but did not seem to be in tools/make/viv_hls_ip_builder.mak.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none">I can build at least o=
ne of the components (<span style=3D"font-size:9.0pt;font-family:&quot;Luci=
da Console&quot;">IP fifo_short_2clk</span>), so I am somewhat confident th=
at Vivado is installed correctly, and that my &#8216;source
 setupenv.sh&#8217; was done properly.<span style=3D"font-size:9.0pt;font-f=
amily:&quot;Lucida Console&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However now I am getting this error which is just im=
penetrable (this is with a clean git pull, not the changes I reference abov=
e):<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILDER: Building IP mig_7=
series_0 - zynq xc7z020/clg484/-3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILDER: Staging IP in bui=
ld directory...<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILDER: Reserving IP loca=
tion: /cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/mig_7series_0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILDER: Retargeting IP to=
 part zynq/xc7z020/clg484/-3...<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILDER: Building IP...<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#6060FF">[00:00:00] E=
xecuting command: vivado -mode batch -source C:/Users/user/Documents/e310/u=
srp/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
 -log mig_7series_0.log -nojournal<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">[00:00:47] Current task: I=
nitialization &#43;&#43;&#43; Current Phase: Starting<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">[00:00:48] Current task: I=
nitialization &#43;&#43;&#43; Current Phase: Finished<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#FF4040">[00:00:48] P=
rocess terminated. Status: Failure<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#FF4040"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Warnings:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Critical Warnings:&nbsp; 0=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Errors:&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILDER: Releasing IP loca=
tion: /cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/bu=
ild-ip/xc7z020clg484-3/mig_7series_0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">make[1]: *** [/cygdrive/c/=
Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/ip/mig_7series_0/Mak=
efile.inc:32: /cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top=
/e31x/build-ip/xc7z020clg484-3/mig_7series_0/mig_7series_0.xci]
 Error 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">make[1]: Leaving directory=
 '/cygdrive/c/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x'<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">make: *** [Makefile:71: E3=
10_SG3] Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
ida Console&quot;">build-ip/xc7z020clg484-3/ mig_7series_0.log is not helpf=
ul:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
ida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">#-------------------------=
----------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Vivado v2019.1 (64-bit)<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># SW Build 2552052 on Fri =
May 24 14:49:42 MDT 2019<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># IP Build 2548770 on Fri =
May 24 18:01:18 MDT 2019<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Start of session at: Mon=
 Apr 20 19:14:06 2020<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Process ID: 181720<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Current directory: C:/Us=
ers/user/Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484=
-3<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Command line: vivado.exe=
 -mode batch -source C:/Users/user/Documents/e310/usrp/uhd/fpga/usrp3/tools=
/scripts/viv_generate_ip.tcl -log mig_7series_0.log
 -nojournal<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Log file: C:/Users/user/=
Documents/e310/usrp/uhd/fpga/usrp3/top/e31x/build-ip/xc7z020clg484-3/mig_7s=
eries_0.log<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># Journal file:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">#-------------------------=
----------------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">source C:/Users/user/Docum=
ents/e310/usrp/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># set xci_file&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $::env(XCI_FILE)&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># set part_name&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $::env(PART_NAME)&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># set gen_example_proj $::=
env(GEN_EXAMPLE)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; ;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># set synth_ip&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;$::env(SYNTH_IP)&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># set ip_name [file rootna=
me [file tail $xci_file]]&nbsp;&nbsp; ;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># file delete -force &quot=
;$xci_file.out&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># create_project -part $pa=
rt_name -in_memory -ip<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># set_property target_simu=
lator XSim [current_project]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># add_files -norecurse -fo=
rce $xci_file<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">INFO: [IP_Flow 19-234] Ref=
reshing IP repositories<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">INFO: [IP_Flow 19-1704] No=
 user IP repositories specified<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">INFO: [IP_Flow 19-2313] Lo=
aded Vivado IP repository 'C:/Xilinx/Vivado/2019.1/data/ip'.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
ida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
ida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">There appears to be an error file and a core file: <=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">$ cat hs_err_pid181720.log=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">#<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"># An unexpected error has =
occurred (EXCEPTION_ACCESS_VIOLATION)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">#<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Stack:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">no stack trace available, =
please use hs_err_&lt;pid&gt;.dmp instead.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this build maintained enough to use? Because of m=
y limited setup at home, I really don&#8217;t want to spin up a new server =
or VM for this, but if it is required then I guess I will.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Dan Harris<o:p></o:p></p>
</div>
<span><span><br>&nbsp;</span>&nbsp;</span><br>
<DIV><span style=3D"FONT-FAMILY: Times New Roman"><span style=3D"FONT-SIZE:=
 14px">CONFIDENTIALITY NOTICE: This email and any attachments are for the s=
ole use of the intended recipient and may contain material that is propriet=
ary, confidential, privileged or otherwise legally protected or restricted =
under applicable government laws. Any review, disclosure, distributing or o=
ther use without expressed permission of the sender is strictly prohibited.=
 If you are not the intended recipient, please contact the sender and delet=
e all copies without reading, printing, or saving.</span></span>
<DIV style=3D'FONT-SIZE: 14px; FONT-FAMILY: "Times New Roman"'><br></DIV></=
DIV></body>
</html>

--_000_eb1fa60c44c4410a814e83a4fdf45df9MLBXCH12csmyharrisnet_--



--===============6583258015192160448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6583258015192160448==--


