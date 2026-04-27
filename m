Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEceA9OM72l5CwEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 18:20:35 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8CB4763F4
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 18:20:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFA2038A818
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 12:20:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777306832; bh=cL8UY7cOApIYwYxgMgjxCUFkmpP6FPN8B3lCZK+w9ug=;
	h=From:To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SczB5qmfxgobqEsA9ZlofV2Hf4vrk7qi3mv37Jzwdy+emzsrMnNevR534NEbQE7oG
	 YkLwQdt0HYiH74FuzDB3q/2/0D+iSswbGsPIdroXOLxwwan4CMS9h0sXK3+rTTNAIs
	 9unBBZpeJdZlAjJGeZyQ+jRCy36ZSAX+4jJx5T4RIWM4eRuEgqkwiue5sziqbXnxIX
	 O4/HEG+behTG51vTRJIP3kgKeHn3IawdLF01xRN2AeBA2OGfIUEBpP+EkXOjMexpWr
	 qM5E6859vNoZdgsed5m/SddIcctcjh0obllVnojKnAl+pOM5r+ES1XodJohwr/K3Sg
	 y1WZVUQ1MFnaA==
Received: from mx02.hhi.fraunhofer.de (mx02.HHI.FRAUNHOFER.DE [193.174.67.55])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CCA038A7B8
	for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2026 12:19:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="ao9qLJN6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=hhi.fraunhofer.de; i=@hhi.fraunhofer.de; q=dns/txt;
  s=s1; t=1777306763; x=1808842763;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=uaDrjeLsc1hpbJfAb7+kgHrQ8TSy5GPRSWfYYiHqk/g=;
  b=ao9qLJN6wXkNYIVTYPVn5m+JSnssmp8LT0JLqtEIr1hbrm+n2w1S2MO1
   kNl+oe7LriES6O7L1OTUHQXuB/e3jOFnJGYDlDXf6OGRuDoIU4jKun1yT
   LLjZ3WSeX8um6UdNF3hwaqxZM4P21Q1vITSDjDLdslIybVPL55sJMNmFu
   QFMbjHwUbb15jvUCaEleMAebzuEElY3iURH5YrIvo5UY1dq1Ic2fA5rx9
   Y1Tbniq3RJU+dF/hX3L7ePsAPZKulGLmSfqOMWjygi/1TsLoJzMhgb8Td
   eMQuDNnS1pC7ogl0ZxCWxSKcedPCu3rSSnzXLlhtOlXZCcv4QiKCnGOpm
   A==;
X-CSE-ConnectionGUID: ENgqX3tCSoapqmoUKmMNjA==
X-CSE-MsgGUID: 9VjlFPGTQGiWtzExbREAbw==
X-IronPort-AV: E=Sophos;i="6.23,202,1770591600";
   d="scan'208,217";a="933828"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO mx.fe.hhi.de) ([172.16.0.104])
  by mx02.hhi.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 18:19:21 +0200
Received: from mxsrv3.fe.hhi.de (fdea:e0ae:2f75:0:859b:1ee2:31f7:cd7b) by
 mxsrv1.fe.hhi.de (fdea:e0ae:2f75:0:41fd:7c9d:a728:4e1c) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.37; Mon, 27 Apr 2026 18:19:13 +0200
Received: from mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9]) by
 mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9%5]) with mapi id 15.02.2562.037;
 Mon, 27 Apr 2026 18:19:07 +0200
From: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 Triggering LabView
Thread-Index: AdzWYYohSGxJL+p1RZidu+2wL1yL0A==
Date: Mon, 27 Apr 2026 16:19:07 +0000
Message-ID: <a1c47b3c5e0342dab3a48ca1427d44ce@hhi.fraunhofer.de>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: OQPHPNXYR56WBRULFOAO5TRPKN5CNKW6
X-Message-ID-Hash: OQPHPNXYR56WBRULFOAO5TRPKN5CNKW6
X-MailFrom: prvs=570078262=dennis.jurk@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>, "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 Triggering LabView
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OQPHPNXYR56WBRULFOAO5TRPKN5CNKW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7554081242105177016=="
X-Rspamd-Queue-Id: 7B8CB4763F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[hhi.fraunhofer.de : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[hhi.fraunhofer.de:s=s1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,hhi.fraunhofer.de:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis.jurk@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,hhi.fraunhofer.de:mid]

--===============7554081242105177016==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_a1c47b3c5e0342dab3a48ca1427d44cehhifraunhoferde_"

--_000_a1c47b3c5e0342dab3a48ca1427d44cehhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on trigger.

How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.

Thank you in advance!

Best regards
Dennis Jurk

--_000_a1c47b3c5e0342dab3a48ca1427d44cehhifraunhoferde_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
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
<body lang=3D"DE" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone,<br>
<br>
I would like to use the TRIG IN functionality of the X410 to start the rece=
iving of data on trigger.<br>
<br>
How do I implement this/modify the Reference FPGA image to achieve this? I =
would love to get some guidance regarding this issue.<br>
<br>
Thank you in advance!<br>
<br>
Best regards<br>
Dennis Jurk<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_a1c47b3c5e0342dab3a48ca1427d44cehhifraunhoferde_--

--===============7554081242105177016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7554081242105177016==--
