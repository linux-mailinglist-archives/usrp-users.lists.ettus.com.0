Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DD37E6C9B
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 15:46:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C61AB38503F
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 09:46:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699541217; bh=94ZBhCyA8v0TlTZucitlVByFhphyEVxefi1xRIEesK8=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=T20O6HjfPWYReO1W3n5Kg19J0OSq9aRu4reJjqF8oAM6af6E7JbuLtpL6s+Fq+GfX
	 gysO9uVzAbzLUfESVXKTIgS//UxgagfMAyRo12IuHZf9EgxMrOt8pk2dqC4IfQThPD
	 e64/gDFlvNfMBg5g0lYZFYgFgfUCW0mm/vcAbQiCtLS+LxvNGk249fwcy4UCKX3zAN
	 1F+0R/u0VL1LCoVrd/jLUX5aP3hsn6dVW6K6aSjikPX762YTBXYH49CXFpI3xuyv42
	 RSedEUjfwsEH0CAFYo9qdEcGizlWNMZhyvkKEcyrjdMQXJ9tv+zF7TbfWwx11t0vje
	 dn0jCiPJMsA8A==
Received: from USMLB1RNPMX02POUT.l3harris.com (usmlb1rnpmx02pout.l3harris.com [192.52.235.39])
	by mm2.emwd.com (Postfix) with ESMTPS id 09E10385198
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 09:46:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=l3harris.com header.i=@l3harris.com header.b="Zc5iuyoy";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=l3harris.com; i=@l3harris.com; q=dns/txt; s=mail;
  t=1699541178; x=1731077178;
  h=from:to:subject:date:message-id:mime-version;
  bh=vw1NWSAETd0KioOq5NcYmkpP4BzTtFI8RujodRtpPs0=;
  b=Zc5iuyoywDLpbWdKkdBoNx6FBTwPGeahqxASymiJ160XLoUspKMljdB5
   IV8l9mfn9700JWBersdWl1PENsFeP5e+ShpXX1Uas/DM06Oj7cpE5d2Jx
   28iUUl1OYQWTBhMVbx4ZOw9DZIAsDzDY6X29LWb98c5ZWhc6PzVZiOzAW
   A9jwOtF0H7VVkURhQxLbtdAyMzCgqdxC/zNXc2wpLUE/OTKG/DyjFB+us
   bE9BEhARkD/KxwfauCVtduW0gIFL88rdQmS41wuYJUME0NjgpFEqcXxIH
   dV+jwZ6vg+hs7FnqKDlUQc13/D2chPyV1kVbt4mhyIjBEXfh8qtlt3Tgd
   A==;
IronPort-SDR: DxztQs0cIlZDudLP+4joklAE77D3lB34OA9Hf1WslfeBqm1Qy88Tgh3tk4jOJ/+wNKy5j6xa+N
 KWHqBv4GBi/S40auQpM4yNjQpAu4HkxApvDqFsNJN+2WyfXhbcWejXbDrnUvisidw6If2WG/Tu
 0caqxQGR1LAIwk5iXFXYLjCcXxxoJjL/S3agqZSSX3OCCqiMcIaV4u1LyURZdHKfuMDKULIDyk
 2PzV/C+XABPMVdc+1EvHUMBn28YdZgNHtLIUlvU8/iAU4Sj18xrjQ/Vdb6+U+bZ3OicOYAI3j/
 6wf7/qA8bBCsTVie757FAAY7
X-IronPort-AV: E=Sophos;i="6.03,289,1694736000";
   d="scan'208,217";a="117083540"
Received: from unknown (HELO USMLB1RNPRT01POUT.l3harris.com) ([10.64.225.3])
  by USMLB1RNPMX02POUT.l3harris.com with ESMTP; 09 Nov 2023 14:46:17 +0000
X-filenames: 
X-filesizes: None
X-filetypes: 
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,289,1694736000";
   d="scan'208,217";a="160303468"
Received: from win-p1001189.rootforest.com (HELO mail.l3t.com) ([10.95.128.15])
  by USMLB1RNPRT01POUT.l3harris.com with ESMTP; 09 Nov 2023 14:45:58 +0000
Received: from WIN-P1001190.rootforest.com (10.95.128.16) by
 WIN-P1001189.rootforest.com (10.95.128.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.20; Thu, 9 Nov 2023 14:45:58 +0000
Received: from WIN-P1001190.rootforest.com ([fe80::2d95:977c:a951:823]) by
 WIN-P1001190.rootforest.com ([fe80::2d95:977c:a951:823%8]) with mapi id
 15.02.1118.020; Thu, 9 Nov 2023 14:45:58 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Ettus Transmit Sample Streaming
Thread-Index: AdoTGy4xaW3XthWTR82HnfeJ9i8nUw==
Date: Thu, 9 Nov 2023 14:45:57 +0000
Message-ID: <657abf57860f42a89ed48d996d60af45@L3Harris.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.232.2]
MIME-Version: 1.0
Message-ID-Hash: EIW4JIKKUX27YGJV4F6WEEW7YOJSQMXM
X-Message-ID-Hash: EIW4JIKKUX27YGJV4F6WEEW7YOJSQMXM
X-MailFrom: prvs=670c2a63e=matthew.swannick@l3harris.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus Transmit Sample Streaming
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EIW4JIKKUX27YGJV4F6WEEW7YOJSQMXM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Swannick, Matthew (FP) - IC via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Swannick, Matthew (FP) - IC" <matthew.swannick@L3Harris.com>
Content-Type: multipart/mixed; boundary="===============8411052508765428473=="

--===============8411052508765428473==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_657abf57860f42a89ed48d996d60af45L3Harriscom_"

--_000_657abf57860f42a89ed48d996d60af45L3Harriscom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,
I have previously sent the same message via e-mail so please discard one of=
 the messages.
I am performing testing of transmit streaming using Ettus SDRs and encounte=
ring underruns, which I would like to eliminate.
I believe the problem is related to the rate at which samples are being rea=
d from the storage or host OS scheduling (rather than configuration of the =
Ettus itself), but was wondering whether you may still have some suggestion=
s please.
I am doing the following:

*         5 * Ettus B205mini SDRs are connected to a Linux based host compu=
ter via 5 independent USB 3.0 connections.

*         The host is simultaneously streaming samples to each of the 5 SDR=
s.

*         The samples are being streamed from 5 different sample files, one=
 file for each SDR.

*         The sample files are stored on a fast SSD on the host.

*         The SDRs are transmitting at different sample rates (between 20MH=
z and 55MHz).

*         The code being run by the host is based on the Ettus example prog=
ram - tx_samples_from_file.cpp, but has been enhanced to run 5 separate tra=
nsmit streamers simultaneously.
The problem:

*         For debug purposes the streaming code running on the host measure=
s the time taken to read each buffer of samples from the SSD.

*         Some of the times taken to perform a read can be quite high - a f=
ew 1000us. This causes the underruns.

*         The average time to read a buffer is much smaller than this - jus=
t a few us. So the vast majority of reads are fast enough and do not underr=
un.

*         There is a large variety in the buffer read times - I would like =
the buffer read times to be consistent, which should eliminate the underrun=
s.

*         The measurements show that the SSD/USB/host CPU, etc, are fundame=
ntally fast enough, but some individual reads of the sample buffer can be s=
low.

*         I believe I can fix this in software via a queuing system to coun=
ter the variations in read times, but would prefer to find a root cause and=
 if possible fix the source of the high read times.
I was wondering whether Ettus could have encountered this sort of thing bef=
ore and whether there are any suggestions please?
Hopefully the description makes sense, please let me know if any further in=
formation would be useful.
Many thanks
Matthew Swannick


 =


CONFIDENTIALITY NOTICE: This email and any attachments are for the sole use=
 of the intended recipient and may contain material that is proprietary, co=
nfidential, privileged or otherwise legally protected or restricted under a=
pplicable laws. Any review, disclosure, distributing or other use without e=
xpressed permission of the sender is strictly prohibited. If you are not th=
e intended recipient, please contact the sender and delete all copies witho=
ut reading, printing, or saving.



L3Harris Technologies UK Limited is a private company registered in England=
 with the company number 11111631 whose registered office is at 100 New Bri=
dge Street, London, United Kingdom, EC4V 6JA.



For information on our Privacy & Cookie Policies, please visit our website:=
 https://www.l3harris.com/en-gb/privacy-policy

--_000_657abf57860f42a89ed48d996d60af45L3Harriscom_
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
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:105%;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:36.0pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpFirst, li.MsoListParagraphCxSpFirst, div.MsoListParag=
raphCxSpFirst
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpMiddle, li.MsoListParagraphCxSpMiddle, div.MsoListPar=
agraphCxSpMiddle
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraphCxSpLast, li.MsoListParagraphCxSpLast, div.MsoListParagra=
phCxSpLast
	{mso-style-priority:34;
	mso-style-type:export-only;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:36.0pt;
	mso-add-space:auto;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:290332640;
	mso-list-type:hybrid;
	mso-list-template-ids:1035485176 134807553 134807555 134807557 134807553 1=
34807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1210653508;
	mso-list-type:hybrid;
	mso-list-template-ids:-1927544224 134807553 134807555 134807557 134807553 =
134807555 134807557 134807553 134807555 134807557;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I have previously sent the same message via e-mail s=
o please discard one of the messages.<o:p></o:p></p>
<p class=3D"MsoNormal">I am performing testing of transmit streaming using =
Ettus SDRs and encountering underruns, which I would like to eliminate.
<o:p></o:p></p>
<p class=3D"MsoNormal">I believe the problem is related to the rate at whic=
h samples are being read from the storage or host OS scheduling (rather tha=
n configuration of the Ettus itself), but was wondering whether you may sti=
ll have some suggestions please.<o:p></o:p></p>
<p class=3D"MsoNormal">I am doing the following:&nbsp; <o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpFirst" style=3D"text-indent:-18.0pt;mso-lis=
t:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>5 * Ettus B205mini SDRs are connected to a L=
inux based host computer via 5 independent USB 3.0 connections.
<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The host is simultaneously streaming samples=
 to each of the 5 SDRs.
<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The samples are being streamed from 5 differ=
ent sample files, one file for each SDR.<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The sample files are stored on a fast SSD on=
 the host.<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The SDRs are transmitting at different sampl=
e rates (between 20MHz and 55MHz).<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpLast" style=3D"text-indent:-18.0pt;mso-list=
:l0 level1 lfo1">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The code being run by the host is based on t=
he Ettus example program - tx_samples_from_file.cpp, but has been enhanced =
to run 5 separate transmit streamers simultaneously.<o:p></o:p></p>
<p class=3D"MsoNormal">The problem:<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpFirst" style=3D"text-indent:-18.0pt;mso-lis=
t:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>For debug purposes the streaming code runnin=
g on the host measures the time taken to read each buffer of samples from t=
he SSD.<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>Some of the times taken to perform a read ca=
n be quite high &#8211; a few 1000us. This causes the underruns.<o:p></o:p>=
</p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The average time to read a buffer is much sm=
aller than this - just a few us. So the vast majority of reads are fast eno=
ugh and do not underrun.<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>There is a large variety in the buffer read =
times - I would like the buffer read times to be consistent, which should e=
liminate the underruns.<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpMiddle" style=3D"text-indent:-18.0pt;mso-li=
st:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>The measurements show that the SSD/USB/host =
CPU, etc, are fundamentally fast enough, but some individual reads of the s=
ample buffer can be slow.<o:p></o:p></p>
<p class=3D"MsoListParagraphCxSpLast" style=3D"text-indent:-18.0pt;mso-list=
:l1 level1 lfo2">
<![if !supportLists]><span style=3D"font-family:Symbol"><span style=3D"mso-=
list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times New Roman&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]>I believe I can fix this in software via a q=
ueuing system to counter the variations in read times, but would prefer to =
find a root cause and if possible fix the source of the high read times.<o:=
p></o:p></p>
<p class=3D"MsoNormal">I was wondering whether Ettus could have encountered=
 this sort of thing before and whether there are any suggestions please?<o:=
p></o:p></p>
<p class=3D"MsoNormal">Hopefully the description makes sense, please let me=
 know if any further information would be useful.<o:p></o:p></p>
<p class=3D"MsoNormal">Many thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Matthew Swannick&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br><span>&nbsp;</span><div>CONFIDENTIALITY NOTICE: This email and any atta=
chments are for the sole use of the intended recipient and may contain mate=
rial that is proprietary, confidential, privileged or otherwise legally pro=
tected or restricted under applicable laws. Any review, disclosure, distrib=
uting or other use without expressed permission of the sender is strictly p=
rohibited. If you are not the intended recipient, please contact the sender=
 and delete all copies without reading, printing, or saving.<div><br><div>L=
3Harris Technologies UK Limited is a private company registered in England =
with the company number 11111631 whose registered office is at 100 New Brid=
ge Street, London, United Kingdom, EC4V 6JA.<div><br><div>For information o=
n our Privacy &amp; Cookie Policies, please visit our website: https://www.=
l3harris.com/en-gb/privacy-policy</body>
</html>

--_000_657abf57860f42a89ed48d996d60af45L3Harriscom_--

--===============8411052508765428473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8411052508765428473==--
