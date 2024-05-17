Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F4B8C8C29
	for <lists+usrp-users@lfdr.de>; Fri, 17 May 2024 20:13:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8FD1385562
	for <lists+usrp-users@lfdr.de>; Fri, 17 May 2024 14:13:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715969619; bh=ywX/RNmov6en9QNkHJZwcf0vbtmjeQm1E9x1ZRG517Y=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yuDxnBaf2xFnZ5pS9H3Sw9dJf0rZ4GCHUzFx7pNMGG1dgxdgrCx0F7+vDsj8eY6g6
	 QEMIe+ZPqBhvuVhXLV5gGVTD7GOJtEuRIPcj3ieKC1/W+zseCvaD491+IiD8pph27t
	 0kibt/871o/EBdv10Ou5MOfaPKuybr887vZKlUFjgO//a2UJi94UF+tVxehMXfLQJJ
	 2xpmDr38lbXwvjgUEs/ryAgMfGLZewN/tMQ47iWBtYqkiDGFTItAHIhDcJzK9x6lrP
	 UVcApXImwsNMKvBnxj4A6Tu9SmDzxZrtBRZX8n5185wIbSQOZxcKWM0Gr/o84IwyTR
	 2VyYgFk+EN4Gw==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 0498F385329
	for <usrp-users@lists.ettus.com>; Fri, 17 May 2024 14:12:54 -0400 (EDT)
Received: from 172.16.0.106 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Fri, 17 May 2024 18:12:53 GMT
Received: from mxsrv1.fe.hhi.de (172.16.0.104) by mxsrv3.fe.hhi.de
 (172.16.0.106) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 17 May
 2024 20:12:51 +0200
Received: from mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc]) by
 mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc%2]) with mapi id 15.02.1544.011;
 Fri, 17 May 2024 20:12:50 +0200
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Building UHD From Source With Enabled DPDK
Thread-Index: AdqohT6hoPca9WugStSh9TmuPX3USw==
Date: Fri, 17 May 2024 18:12:50 +0000
Message-ID: <0a7f729d226c41f6a8c95d8077852ea1@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: VTTMDPTSP6XBR3KZNZ5PIC5TBS46ZL6D
X-Message-ID-Hash: VTTMDPTSP6XBR3KZNZ5PIC5TBS46ZL6D
X-MailFrom: altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building UHD From Source With Enabled DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VTTMDPTSP6XBR3KZNZ5PIC5TBS46ZL6D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4613220433962724905=="

--===============4613220433962724905==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0a7f729d226c41f6a8c95d8077852ea1hhifraunhoferde_"

--_000_0a7f729d226c41f6a8c95d8077852ea1hhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear USRP Users Mailing List Members,

I am following the guide called "Getting Started with DPDK and UHD - Ettus =
Knowledge Base<https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Enabl=
e_hugepages>" in order to run applications on USRP X440 with DPDK. As it is=
 recommended, I installed DPDK via the system-provided installer: sudo apt =
install dpdk dpdk-dev . After the verification with dpdk-proc-info -v, the =
RTE Version is shown as 'DPDK 21.11.6'

Then, I cloned the UHD v4.6.0.0 to my home directory in order to build UHD =
from source. However, when I run the cmake ../ command the DPDK was listed =
under the "UHD disabled components" and there were no errors. Nevertheless,=
 there were some messages related with DPDK:

CMake Warning (dev) at /usr/share/cmake-3.22/Modules/FindPackageHandleStand=
ardArgs.cmake:477 (message):
'find_package()' specify a version range but the module DPDK does not
support this capability. Only the lower endpoint of the range will be
used.
     Call Stack (most recent call first):
           cmake/Modules/FindDPDK.cmake:86 (find_package_hangle_standard_ar=
gs)
           lib/CMakeLists.txt:63 (find_package)
      This warning is for project developers. Use -Wno-dev to suppress it.

-- Could NOT find DPDK: Found unsuitable version ".", but required is at le=
ast "18.11" (found /usr/include/dpdk;/usr/include/x86_64-linux-gnu/dpdk)

I checked uhd/host/lib/FindDPDK.cmake and edited the line 63 from find_pack=
age(DPDK 18.11...21.11) to find_package(DPDK 21.11.6). Then the warning mes=
sages disappeared in the output of cmake ../ and only the message below rem=
ains:

-- Could NOT find DPDK: Found unsuitable version ".", but required is at le=
ast "21.11.6" (found /usr/include/dpdk;/usr/include/x86_64-linux-gnu/dpdk)

I also tried to edit usr/include/dpdk/rte_version.h and /usr/include/x86_64=
-linux-gnu/dpdk/rte_config.h in order to get around of the version "." mess=
age. However, I failed.

What should I do to see the DPDK under "UHD enabled components" after writi=
ng the build files with cmake ../   ?

Best Regards,
Altug KAYA

P.S. Please find the specifications of my workstation down below:

  *   OS: Ubuntu 22.04.4 LTS (with Linux 5.15.0-107 kernel)
  *   MBO: ASUS Pro WS WRX90E-SAGE SE
  *   CPU: AMD Ryzen Threadripper PRO 7975WX
  *   RAM: 8x32GB RDIMM Samsung DDR5-4800
  *   SSD:2TB Samsung 990 Pro PCIe Gen4
  *   Network Card: Mellanox MCX516A-CDAT ConnectX-5 Ex (PCIe 4.0 x16)



--_000_0a7f729d226c41f6a8c95d8077852ea1hhifraunhoferde_
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:692997934;
	mso-list-type:hybrid;
	mso-list-template-ids:-1355643554 -64568722 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1
	{mso-list-id:812525110;
	mso-list-type:hybrid;
	mso-list-template-ids:-263671940 -665152160 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:858356646;
	mso-list-type:hybrid;
	mso-list-template-ids:-1054982410 67698689 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3
	{mso-list-id:1122262405;
	mso-list-type:hybrid;
	mso-list-template-ids:105413138 1344591384 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1969628987;
	mso-list-type:hybrid;
	mso-list-template-ids:1342451944 -49914524 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l4:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
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
<p class=3D"MsoNormal">Dear USRP Users Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am following the guide called &#8220;<a href=3D"ht=
tps://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Enable_hugepages">Gett=
ing Started with DPDK and UHD - Ettus Knowledge Base</a>&#8221; in order to=
 run applications on USRP X440 with DPDK. As it
 is recommended, I installed DPDK via the system-provided installer: <span =
style=3D"font-family:&quot;Courier New&quot;">
sudo apt install dpdk dpdk-dev</span> . After the verification with <span s=
tyle=3D"font-family:&quot;Courier New&quot;">
dpdk-proc-info -v</span>, the RTE Version is shown as &#8216;DPDK 21.11.6&#=
8217;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Then, I cloned the UHD v4.6.0.0 to my home directory=
 in order to build UHD from source. However, when I run the
<span style=3D"font-family:&quot;Courier New&quot;">cmake ../ </span>comman=
d the DPDK was listed under the &#8220;UHD disabled components&#8221; and t=
here were no errors. Nevertheless, there were some messages related with DP=
DK:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-famil=
y:&quot;Courier New&quot;">CMake Warning (dev) at /usr/share/cmake-3.22/Mod=
ules/FindPackageHandleStandardArgs.cmake:477 (message):<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;">&#8216;find_package()&#8217; specify a version =
range but the module DPDK does not
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;">support this capability. Only the lower endpoin=
t of the range will be
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:1.0in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;">used.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp;&nbsp; Call Stack (most recent call first):<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmake/Modules/=
FindDPDK.cmake:86 (find_package_hangle_standard_args)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lib/CMakeLists=
.txt:63 (find_package)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This warning is for project developers. Use =
-Wno-dev to suppress it.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-famil=
y:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-famil=
y:&quot;Courier New&quot;">-- Could NOT find DPDK: Found unsuitable version=
 &#8220;.&#8221;, but required is at least &#8220;18.11&#8221; (found /usr/=
include/dpdk;/usr/include/x86_64-linux-gnu/dpdk)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I checked uhd/host/lib/FindDPDK.cmake and edited the=
 line 63 from
<span style=3D"font-family:&quot;Courier New&quot;">find_package(DPDK 18.11=
&#8230;21.11)</span> to <span style=3D"font-family:&quot;Courier New&quot;"=
>
find_package(DPDK 21.11.6)</span>. Then the warning messages disappeared in=
 the output of
<span style=3D"font-family:&quot;Courier New&quot;">cmake ../</span> and on=
ly the message below remains:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-famil=
y:&quot;Courier New&quot;">-- Could NOT find DPDK: Found unsuitable version=
 &#8220;.&#8221;, but required is at least &#8220;21.11.6&#8221; (found /us=
r/include/dpdk;/usr/include/x86_64-linux-gnu/dpdk)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-famil=
y:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I also tried to edit usr/include/dpdk/rte_version.h =
and /usr/include/x86_64-linux-gnu/dpdk/rte_config.h in order to get around =
of the
<span style=3D"font-family:&quot;Courier New&quot;">version &#8220;.&#8221;=
</span> message. However, I failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What should I do to see the DPDK under &#8220;UHD en=
abled components&#8221; after writing the build files with
<span style=3D"font-family:&quot;Courier New&quot;">cmake ../</span>&nbsp;&=
nbsp; ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">P.S. Please find the specifications of my workstatio=
n down below:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo1">OS: Ubuntu 22.04.4 LTS (with Linux 5.15.0-107 kernel)<o:p></o:p></li>=
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l2 level1 =
lfo1">MBO: ASUS Pro WS WRX90E-SAGE SE<o:p></o:p></li><li class=3D"MsoListPa=
ragraph" style=3D"margin-left:0in;mso-list:l2 level1 lfo1">CPU: AMD Ryzen T=
hreadripper PRO 7975WX<o:p></o:p></li><li class=3D"MsoListParagraph" style=
=3D"margin-left:0in;mso-list:l2 level1 lfo1"><span lang=3D"DE">RAM: 8x32GB =
RDIMM Samsung DDR5-4800<o:p></o:p></span></li><li class=3D"MsoListParagraph=
" style=3D"margin-left:0in;mso-list:l2 level1 lfo1"><span lang=3D"DE">SSD:2=
TB Samsung 990 Pro PCIe Gen4<o:p></o:p></span></li><li class=3D"MsoListPara=
graph" style=3D"margin-left:0in;mso-list:l2 level1 lfo1">Network Card: Mell=
anox MCX516A-CDAT ConnectX-5 Ex (PCIe 4.0 x16)<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0a7f729d226c41f6a8c95d8077852ea1hhifraunhoferde_--

--===============4613220433962724905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4613220433962724905==--
