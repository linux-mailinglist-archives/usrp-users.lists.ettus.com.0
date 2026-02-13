Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHxFNHdqj2l5QwEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 13 Feb 2026 19:16:23 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E256B138DD6
	for <lists+usrp-users@lfdr.de>; Fri, 13 Feb 2026 19:16:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BCA438659E
	for <lists+usrp-users@lfdr.de>; Fri, 13 Feb 2026 13:16:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771006581; bh=e8Ry/9sOLxYMxdKXIowQ7nIw+Z+etIf9t1QV1AJjJ7U=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yTe1g1HmRAfTE9uWbFnl4yetn19ASW0/cj//9Vuc3hYZatJfr1poSt2AuaLSybLd8
	 ZkqWBwX45KIB7zzxY/xTywK62F20vznKSvl+pjL6viFSi/odWJRlb43SKDO20OcNSO
	 BpjLJvAKe7tFd1XAB58GbDr9GwKKiTYazJkeTl9oH82kqYXriYZfPZqb6aDNi6Raf5
	 U59N2R0zbVJr4szOEKqGt0XcZFEAq6ENWAj4NgzYkLncBQQ0ukiu2y5ZGZU7f1pefY
	 oAsK8p5WQ3H5CBcg/e7fGG3oqX8YSwQrlSyMiru6kLf1B0eExMqYSFEvAHzE0RCOLG
	 tZSY07TyTKJtg==
Received: from mx01.hhi.fraunhofer.de (mx01.HHI.FRAUNHOFER.DE [193.174.67.54])
	by mm2.emwd.com (Postfix) with ESMTPS id CB21C38659D
	for <usrp-users@lists.ettus.com>; Fri, 13 Feb 2026 13:15:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="gR6y+Igj";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=hhi.fraunhofer.de; i=@hhi.fraunhofer.de; q=dns/txt;
  s=s1; t=1771006557; x=1802542557;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=dmp97mbx72Bx/pAnXvYfjlVumVpBKUGdVirnisiT0hk=;
  b=gR6y+IgjsV6TwIeinlKJVqFMW9HnCGlD9rBsgxvzzqKOn/NZiMIqWWi+
   ttcauqGr6d7n/TtQaULYzHWyv3cVn/HrQEyg6NF/A6vf+TPGvF/ghAnhN
   QvfSCL06XpK+L3yP1v+lyfph5vGTxlvLnULNHHOiuwuC546Uc9Xk52vS3
   dSegkkOu0QVq3TGy05sNgsyG525w6zSxladzwUZe7Ir0hNizADBBuvUNF
   adNyzn9T28UwLQhXR0Gw6UGvaXWPAErcXEkXRTJFsxB5GuETaLZLkywhj
   eaaRhRrDPGGymRE7JMD17nsxJpIPfzcRgZqL4dr7LjRDxasciz3TBPj6X
   Q==;
X-CSE-ConnectionGUID: ObsPZaMfTEKlVaU61wwnjg==
X-CSE-MsgGUID: spApGiQjRiO1kRlgz8iV7g==
X-IronPort-AV: E=Sophos;i="6.21,289,1763420400";
   d="scan'208,217";a="674191"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO mx.fe.hhi.de) ([172.16.0.107])
  by mx01.hhi.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2026 19:15:55 +0100
Received: from mxsrv1.fe.hhi.de (fdea:e0ae:2f75:0:41fd:7c9d:a728:4e1c) by
 mxsrv4.fe.hhi.de (fdea:e0ae:2f75:0:4c0b:10d1:240f:bf3c) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.37; Fri, 13 Feb 2026 19:15:51 +0100
Received: from mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc]) by
 mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc%2]) with mapi id 15.02.2562.035;
 Fri, 13 Feb 2026 19:15:50 +0100
From: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: IF Filter Selection in X410/UHD
Thread-Index: AdydEdIQKq/YY0kuS1WD10uiZnQ0RA==
Date: Fri, 13 Feb 2026 18:15:50 +0000
Message-ID: <482168ea89824f6aaf24bbc89e04608b@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: W67AOMX4UBJHRKBQENGFMN7I6QJQE6OT
X-Message-ID-Hash: W67AOMX4UBJHRKBQENGFMN7I6QJQE6OT
X-MailFrom: prvs=497ab2625=altug.kaya@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] IF Filter Selection in X410/UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W67AOMX4UBJHRKBQENGFMN7I6QJQE6OT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8229372405912844840=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[hhi.fraunhofer.de : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[hhi.fraunhofer.de:s=s1];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[altug.kaya@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,hhi.fraunhofer.de:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,fraunhofer.de:url,fraunhofer.de:email,ettus.com:email]
X-Rspamd-Queue-Id: E256B138DD6
X-Rspamd-Action: no action

--===============8229372405912844840==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_482168ea89824f6aaf24bbc89e04608bhhifraunhoferde_"

--_000_482168ea89824f6aaf24bbc89e04608bhhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear USRP Mailing List Members,

We have been experimenting with the X410 for same time to support dual-band=
 reception, specifically at 3.7 GHz and 6.8 GHz. After several observations=
*, it is still not clear how X410/UHD decides which filter to use in the IF=
1 and IF2 stages. We have the following questions:



  1.  Can we force the X410 to use a specific IF1 and/or IF2 filter stage? =
Essentially, can we program the states of Sw5, Sw6, Sw7, and Sw8?
  2.  How can we ensure that IF1_3 or IF1_4 is used for 6.8 GHz RF?
  3.  Where and how can we check the magnitude responses of RF, IF1, and IF=
2 filters?
  4.  How can we ensure that, after each initialization, the X410 selects t=
he same filter combination at RF, IF1, and IF2 stages for the same input fr=
equency but different Rx Reference Power settings?

Please do not hesitate to contact me if anything is unclear or if further c=
larification is needed.

Best regards,
Altug Kaya
Research Associate

Wireless Communications and Networks
altug.kaya@hhi.fraunhofer.de<mailto:altug.kaya@hhi.fraunhofer.de>
Tel +49 30 31002-680

Fraunhofer Institute for Telecommunications
Heinrich Hertz Institute, HHI
Einsteinufer 37, 10587 Berlin, Germany
www.hhi.fraunhofer.de<http://www.hhi.fraunhofer.de>

*P.S.1: I attached some of our observations in detail below:
Observation#1

  *   Freq1: 3.7 GHz and Freq2: 6.8 GHz
  *   LO1 was automatically bypassed. LO2 was manually set to ~5.5 GHz
     *   Thus, Freq1 was downconverted to IF2 of ~1.8 GHz. UHD automaticall=
y selected the IF2_2 branch.
     *   Thus, Freq2 was downconverted to IF2 of ~1070 MHz. UHD automatical=
ly selected the IF2_1 branch.
Observation#2

  *   Freq1: 3.7 GHz and Freq2: 6.8 GHz
  *   LO1 was automatically bypassed. LO2 of Ch1 was set to ~5.17 GHz and L=
O2 of Ch2 was set to ~5.33 GHz manually.
  *   Thus, both RFs were downconverted to same IF2 of ~1.47 GHz.
     *   However, the signals passed through different filters at IF2 stage=
, even though their IF2 were the same.

P.S.2: There is a typo on ZBX Daughterboard webpage. IF1 range of the ADC s=
hould be written in units of GHz.

--_000_482168ea89824f6aaf24bbc89e04608bhhifraunhoferde_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{font-family:Aptos;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:219024076;
	mso-list-type:hybrid;
	mso-list-template-ids:1727583590 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:722824430;
	mso-list-type:hybrid;
	mso-list-template-ids:1509569426 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:1207639832;
	mso-list-type:hybrid;
	mso-list-template-ids:-1665606726 67698689 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3
	{mso-list-id:1579051403;
	mso-list-type:hybrid;
	mso-list-template-ids:-1650570760 67698689 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l3:level9
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
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have been experimenting with the X410 for same ti=
me to support dual-band
<b><u>reception</u></b>, specifically at 3.7 GHz and 6.8 GHz. After several=
 observations*, it is still not clear how X410/UHD decides which filter to =
use in the IF1 and IF2 stages. We have the following questions:<o:p></o:p><=
/p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 =
lfo4">Can we force the X410 to use a specific IF1 and/or IF2 filter stage? =
Essentially, can we program the states of Sw5, Sw6, Sw7, and Sw8?<o:p></o:p=
></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l1 l=
evel1 lfo4">How can we ensure that IF1_3 or IF1_4 is used for 6.8 GHz RF?<o=
:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-l=
ist:l1 level1 lfo4">Where and how can we check the magnitude responses of R=
F, IF1, and IF2 filters?<o:p></o:p></li><li class=3D"MsoListParagraph" styl=
e=3D"margin-left:0cm;mso-list:l1 level1 lfo4">How can we ensure that, after=
 each initialization, the X410 selects the same filter combination at RF, I=
F1, and IF2 stages for the same input frequency but different Rx Reference =
Power
 settings?<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please do not hesitate to contact me if anything is =
unclear or if further clarification is needed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug Kaya<o:p></o:p></p>
<p class=3D"MsoNormal">Research Associate<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Wireless Communications and Networks<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"mailto:altug.kaya@hhi.fraunhofer.de"><spa=
n style=3D"color:#0563C1">altug.kaya@hhi.fraunhofer.de</span></a><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Tel &#43;49 30 31002-680<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:9.0pt;font-fami=
ly:&quot;Segoe UI&quot;,sans-serif;color:black"><br>
</span><span lang=3D"DE">Fraunhofer Institute for Telecommunications<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Heinrich Hertz Institute, HHI<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE">Einsteinufer 37, 10587 Berlin, Ger=
many<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.hhi.fraunhofer.de"><span style=
=3D"color:#0563C1">www.hhi.fraunhofer.de</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">*P.S.1: I attached some of our observations in detai=
l below:<o:p></o:p></p>
<p class=3D"MsoNormal"><u>Observation#1<o:p></o:p></u></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l2 level1 =
lfo1">Freq1: 3.7 GHz and Freq2: 6.8 GHz<o:p></o:p></li><li class=3D"MsoList=
Paragraph" style=3D"margin-left:0cm;mso-list:l2 level1 lfo1">LO1 was
<b>automatically</b> bypassed. LO2 was <b>manually</b> set to ~5.5 GHz<o:p>=
</o:p>
<ul style=3D"margin-top:0cm" type=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l2 level2 =
lfo1">Thus, Freq1 was downconverted to IF2 of ~1.8 GHz. UHD
<b>automatically</b> selected the IF2_2 branch<b>.</b><o:p></o:p></li><li c=
lass=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l2 level2 lfo1"=
>Thus, Freq2 was downconverted to IF2 of ~1070 MHz. UHD
<b>automatically</b> selected the IF2_1 branch.<o:p></o:p></li></ul>
</li></ul>
<p class=3D"MsoNormal"><u>Observation#2<o:p></o:p></u></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l3 level1 =
lfo2">Freq1: 3.7 GHz and Freq2: 6.8 GHz<o:p></o:p></li><li class=3D"MsoList=
Paragraph" style=3D"margin-left:0cm;mso-list:l3 level1 lfo2">LO1 was automa=
tically bypassed. LO2 of Ch1 was set to ~5.17 GHz and LO2 of Ch2 was set to=
 ~5.33 GHz
<b>manually.</b><o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"mar=
gin-left:0cm;mso-list:l3 level1 lfo2">Thus, both RFs were downconverted to =
same IF2 of ~1.47 GHz.<o:p></o:p>
<ul style=3D"margin-top:0cm" type=3D"circle">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l3 level2 =
lfo2">However, the signals passed through
<b>different</b> filters at IF2 stage, even though their IF2 were the same.=
 <o:p>
</o:p></li></ul>
</li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">P.S.2: There is a typo on ZBX Daughterboard webpage.=
 IF1 range of the ADC should be written in units of GHz.<o:p></o:p></p>
</div>
</body>
</html>

--_000_482168ea89824f6aaf24bbc89e04608bhhifraunhoferde_--

--===============8229372405912844840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8229372405912844840==--
