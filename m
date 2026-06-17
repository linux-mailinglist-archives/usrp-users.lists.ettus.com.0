Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EiKpHaJzMmq30AUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 12:14:58 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A33769859E
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 12:14:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=h1VzBilW;
	dkim=fail ("body hash did not verify") header.d=hhi.fraunhofer.de header.s=s1 header.b=NnzanFxU;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=hhi.fraunhofer.de (policy=none)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27E2A3850D0
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 06:14:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781691296; bh=NW7Lr47kpphbODiffu8gD1dpyr6ElWnFo6v590RQkpg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=h1VzBilW9CFKe5S+ZD5xKo2C1pG4A+g0OOdrQJMXoMmJ0ko1f5ki57v+oSeTGna2L
	 uRL7yyM+kcE2ZkTNtN3+iowxpWbpzPT9HvxKC3dOYDPMHf2J/GEtSVjEXyeaH+CqFi
	 ++xiwIu0Q/HBsO7+2XWU7cfEHGWkamMa1QrX9jX8bHbW1MMXfak2xV8Ntu94e5abuS
	 5JPpcZv2wc6ahUsaL0PtD5AjkZJfeeJrkLHunq3RbtfPoJ73l/wIIpJjMq+rr+uWmw
	 wQIApo4WH/KNiyT/X7SNW3irLtcnagVb+OyOtnVDE4fHzyHZozkWlO4rfm2GW1Af1G
	 JM2Iovo9m/ppw==
Received: from mx01.hhi.fraunhofer.de (mx01.HHI.FRAUNHOFER.DE [193.174.67.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 51068384A40
	for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2026 06:14:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=hhi.fraunhofer.de; i=@hhi.fraunhofer.de; q=dns/txt;
  s=s1; t=1781691274; x=1813227274;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=jDzxCKdZE0GVgOiEWP97e1k6Ch26vxJSnbwKtHpvA+k=;
  b=NnzanFxUgIlms0E3aUY4EeEzNGfqyweodQ431dwHdYIVMmDu3kS0Xgj0
   0pOHWmzIZ1mY0kV1P7VMmBQPp05wRj+lWIUIlRZRqRPRzP+bg6gpJqC/z
   QC++yYa1/k7P/NIMsPqAELufrVDhNt3Mw8NsygsRg3jfJ5MoJSxRIrz3E
   5qHopa8kCng4rZ3u57gyvEyTskPIGnOALW3jTmjyR/ap8rG+DUfLb6ers
   897z96Re2+MJf5XNvP6R927kAW3p83+fzedPLy8ZKas/BYVUQWLsKjsWE
   qm6MMrDCufg+RE/oq55wNKpnyxK2pzjc7izI2whxgN78HMTJYGtVEIikE
   A==;
X-CSE-ConnectionGUID: P6nJGYXWQcSs6DICuSo/Xg==
X-CSE-MsgGUID: s4awyA9aSWu0STFXJ8eNAg==
X-IronPort-AV: E=Sophos;i="6.24,209,1774306800";
   d="scan'208,217";a="9450014"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO mx.fe.hhi.de) ([172.16.0.104])
  by mx01.hhi.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 12:14:32 +0200
Received: from mxsrv3.fe.hhi.de (fdea:e0ae:2f75:0:859b:1ee2:31f7:cd7b) by
 mxsrv1.fe.hhi.de (fdea:e0ae:2f75:0:41fd:7c9d:a728:4e1c) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.43; Wed, 17 Jun 2026 12:14:20 +0200
Received: from mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9]) by
 mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9%5]) with mapi id 15.02.2562.043;
 Wed, 17 Jun 2026 12:14:07 +0200
From: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
To: Eugene Grayver <eugene.grayver@aero.org>, usrp-users
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 timed commands for tuning
Thread-Index: AQHc/dJSf1XYYsD3fE2cmts9JLCUw7ZCg44w
Date: Wed, 17 Jun 2026 10:14:07 +0000
Message-ID: <e390a651499a4b30a308130124c50226@hhi.fraunhofer.de>
References: <SJ0PR09MB912603E936D78C167ABC8C14ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912603E936D78C167ABC8C14ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: 2DBWOGBXKOEL2O56V2TEYNNL3SV5GOG5
X-Message-ID-Hash: 2DBWOGBXKOEL2O56V2TEYNNL3SV5GOG5
X-MailFrom: prvs=621e18f77=dennis.jurk@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 timed commands for tuning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2DBWOGBXKOEL2O56V2TEYNNL3SV5GOG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4330630069444298263=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[hhi.fraunhofer.de : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:eugene.grayver@aero.org,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[hhi.fraunhofer.de:s=s1];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dennis.jurk@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis.jurk@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,hhi.fraunhofer.de:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hhi.fraunhofer.de:mid,hhi.fraunhofer.de:from_mime,aero.org:email,lists.ettus.com:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A33769859E

--===============4330630069444298263==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_e390a651499a4b30a308130124c50226hhifraunhoferde_"

--_000_e390a651499a4b30a308130124c50226hhifraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Eugene,

timed commands are supported on the X440. Set the command time with set_com=
mand_time and then send the commands (set_rx_freq or set_tx_freq for freq t=
uning).

Best regards
Dennis Jurk

Von: Eugene Grayver <eugene.grayver@aero.org>
Gesendet: Dienstag, 16. Juni 2026 22:56
An: usrp-users <usrp-users@lists.ettus.com>
Betreff: [USRP-users] X440 timed commands for tuning

Why are timed commands (specifically freq tuning) not supported on the X440=
?  The RFSoC definitely allows using FPGA (PL) logic to trigger cross-tile =
configurations.

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_e390a651499a4b30a308130124c50226hhifraunhoferde_
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
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">Hello Eugene,<br>
<br>
timed commands are supported on the X440. Set the command time with set_com=
mand_time and then send the commands (set_rx_freq or set_tx_freq for freq t=
uning).<br>
<br>
Best regards<br>
Dennis Jurk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">Von:</span></b><span style=3D"font-size:11.0pt;f=
ont-family:&quot;Calibri&quot;,sans-serif"> Eugene Grayver &lt;eugene.grayv=
er@aero.org&gt;
<br>
<b>Gesendet:</b> Dienstag, 16. Juni 2026 22:56<br>
<b>An:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Betreff:</b> [USRP-users] X440 timed commands for tuning<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Why are timed commands (=
specifically freq tuning) not supported on the X440?&nbsp; The RFSoC defini=
tely allows using FPGA (PL) logic to trigger cross-tile configurations.<o:p=
></o:p></span></p>
</div>
<div id=3D"Signature">
<div>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Eugene Grayver, Ph.D.<o:=
p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Principal Engineer<o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">310-336-1274<o:p></o:p><=
/span></p>
</div>
</div>
</div>
</body>
</html>

--_000_e390a651499a4b30a308130124c50226hhifraunhoferde_--

--===============4330630069444298263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4330630069444298263==--
