Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGIPEYKn1ml9GwgAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 08 Apr 2026 21:07:46 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A93C2736
	for <lists+usrp-users@lfdr.de>; Wed, 08 Apr 2026 21:07:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24BF4385F58
	for <lists+usrp-users@lfdr.de>; Wed,  8 Apr 2026 15:07:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775675264; bh=EjlkdQtMjA+6EnIXGpsPMI8t/dU7ewhMCJi80F7E0tw=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t2/0xX2dwauoV9pX75j6LCUtrP0KfZq31F3KbrVxqN9xlWyXzsYts548Xsv7K81m9
	 VBURsVoeAA6sfM6Egr8P8GCwUeIvNmB+SmWOVhXX0vRy8n21zxoh91sxUKIGjDnlMJ
	 knUn9UZEh5OuVP+nq7N/CWh+0VcatmuHo/YTKSyEAakL88Tn3URtXOxCJ5pc50PQgU
	 3ZAz4TnUyeZDZgdq+IA4K6AWPiyLS1QhXb0xbE0MUVhDjSOVE1igwnT8qqYo3NtqCo
	 fFXT5TpjnRKiMAPoRukEbPtX9Nfljy5Q+Gi3/V5wMr/K/hHDuK8UXy3XIb3H7g/jT1
	 KKOozYOcrWeyA==
Received: from emailsecure.uni-linz.ac.at (emailsecure.uni-linz.ac.at [140.78.3.66])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CA89385D96
	for <usrp-users@lists.ettus.com>; Wed,  8 Apr 2026 15:06:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=jku.at header.i=@jku.at header.b="BLnY6EmN";
	dkim-atps=neutral
Received: from DanielsDesktop (heim-040-62.jkh.uni-linz.ac.at [193.171.40.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by emailsecure.uni-linz.ac.at (Postfix) with ESMTPSA id 4frXbs52hNz4vyy
	for <usrp-users@lists.ettus.com>; Wed,  8 Apr 2026 21:06:33 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=jku.at; s=202311-arc; t=1775675193; cv=none;
	b=iLj6uAoPEd3ADlC1DC3VzRTdB8xGmCNOoDjGrQb2FReVQ1IXHO0kHqy+adteKVscO04KrgSrXmH88J9NWaZwaKmMp0auYSFWHQaA33PggPQNHrYKpgE0sHL4EgL62drkQawaNSZEgs3e12RABLEUigBGQZ8t/tCbcQLaLX/2roX9d7lq/8n+ybg6WOxTc/Uo7PENNWnUN7Lg3XQY0gllQdUU2C5kyuADUHkujnPcnJraoG8ftqKPf3n2q7ax4rmzoCK4EodDq9IOOKDU5zJe8waQoTpHaDTecWqHylY07nKfCg3F7gpOz+KPM/DAL1OVbuqnfoe4kwo2+05aS7S7qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; d=jku.at; s=202311-arc;
	t=1775675193; c=relaxed/simple;
	bh=TYwvtMRxkKb9+oJjZIWV1HP1WT6j+HVkopBKSuM/FQM=;
	h=DKIM-Signature:From:To:Subject:Date:Message-ID:MIME-Version; b=I6zGY5s98zoPosjJXK8XkWSeHgA/tBdMXE/bJMr82fwJGFzdKbxmVSINmDARW5UoNHrBS2Jfob5Lp2JJEsJGI1+c9h41VMSt6pczqOlaBF7iSRRRJf4tde5haokKAjJx6+6fgN14ZUKEWcfi2ya2KzFxNRxytIc8EM4syjJ3A6McJM8WzOmonwAi24a54jlmY1izB8Ww0DK8QvdFXTiQy2XZdh89crU2kUfPn7b/vMvWAVsWOAfvPegncVfyZOUVWyO5YvKj85JQOu/zxM7fyQVNwOlCc5rcraozq67Rn0ooSfr4nstoRjchv6JssjCF4uehMrIVFJhqeD6eXUhlgA==
ARC-Authentication-Results: i=1; emailsecure.uni-linz.ac.at
DKIM-Filter: OpenDKIM Filter v2.11.0 emailsecure.uni-linz.ac.at 4frXbs52hNz4vyy
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jku.at;
	s=202312-dkim-jkuat; t=1775675193;
	bh=KrykhVlQ/IEsGLdrvDu48jc59kyLTmIbjw54UJ8Quh0=;
	h=From:To:Subject:Date:From;
	b=BLnY6EmN64ZwZLVPyJjiXByXeXH150xyYpvllw+g5s5ZeXLmn4avI59s7zbrgCyny
	 m8Gzl49EfkCc1ngGF6a6X8DjZmXiERqdX9o84pfZNZ1IjIl2Vkd5IlPrfL35JX39TK
	 IDAaxNXBwx9FWuZy5Kftk3ebpUBfqm1wJnVmrAyLmNtmKAjlDUq1F/Hx7vjrMtEIIU
	 AFNKJFDfYXDxiY5R8GisWtEsOSWPNH6YUgG9O5C2VXCnO3cXWX95gYNp78UVjp+g4M
	 dcapgPL6sBYXorZr+7MSu4Uns3kQP/YUw0oszg9qEjA9jKq1KlgevUD6T41vdcwX8B
	 bCTNTMYcYR42Q==
From: <daniel.baumgartner_1@jku.at>
To: <usrp-users@lists.ettus.com>
Date: Wed, 8 Apr 2026 21:06:32 +0200
Message-ID: <003701dcc78a$d01f51c0$705df540$@jku.at>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdzHid4GcWLJjb8gRE6Q1vUqZlh+gw==
Content-Language: de-at
Message-ID-Hash: B4IYXP6GS2TPVX7U24RX7J5GFKJ4GQSB
X-Message-ID-Hash: B4IYXP6GS2TPVX7U24RX7J5GFKJ4GQSB
X-MailFrom: daniel.baumgartner_1@jku.at
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440: Bypassing R2C conversion for analog I/Q capture
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4IYXP6GS2TPVX7U24RX7J5GFKJ4GQSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1683355109936930311=="
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:jku.at:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jku.at : No valid SPF, DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[jku.at:s=202312-dkim-jkuat];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.baumgartner_1@jku.at,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,jku.at:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 661A93C2736
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multipart message in MIME format.

--===============1683355109936930311==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0038_01DCC79B.93A86FE0"
Content-Language: de-at

This is a multipart message in MIME format.

------=_NextPart_000_0038_01DCC79B.93A86FE0
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hi everyone,

 

I am working with a radar frontend that outputs a downconverted IF signal as
separate analog I and Q streams, I want to capture both using a USRP X440.

The challenge is that the X440 expects real signals at its physical ports.
Internally, each channel performs a real-to-complex (R2C) conversion by
sampling the real input and digitally mixing it using an NCO.

My initial approach was to connect the analog I signal to CH0 and the analog
Q signal to CH1. I planned to create a custom RFNoC OOT block that simply
stitches them together: It would take the real part of the CH0 stream to
form the I component of the output, and the real part of the CH1 stream to
form the Q component.

For this simple routing logic to work, the NCO frequency must be set to 0
Hz. However, UHD restricts the NCO frequency to a minimum of 1 MHz, so this
approach fails. While I don't mind the spectral shift caused by a >1 MHz
NCO, the complex mixing would force my RFNoC block to perform additional
arithmetic (addition and subtraction for each sample) to untangle the
signals, rather than just passively routing them.

 

So, I have some questions:

*	Can I set the minimum frequency of the NCO to 0Hz (here
<https://github.com/EttusResearch/uhd/blob/dd41a0801f185264cd0af1fb8a3ab1306
db310b2/host/lib/include/uhdlib/usrp/dboard/fbx/fbx_constants.hpp#L34> ) and
recompile UHD and expect it to work?
*	In the commit history I have seen you are working on a sub-channels
feature (here: 5165c21
<https://github.com/EttusResearch/uhd/commit/5165c21740cbba0d134921fb0ff8f8c
2a7958a1a> , 5bd1cf3
<https://github.com/EttusResearch/uhd/commit/5bd1cf34595e545cf0d490fec31e5ee
8ea4fe4a5> , 5eaff4e
<https://github.com/EttusResearch/uhd/commit/5eaff4efc1e96c45aac861393592a35
8e834e35f> ) which would solve all my needs. Is this feature ready? If yes,
how can I use it?

 

 

Best regards and thanks in advance!

Daniel Baumgartner


------=_NextPart_000_0038_01DCC79B.93A86FE0
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:377168513;
	mso-list-type:hybrid;
	mso-list-template-ids:-866884852 201785345 201785347 201785349 =
201785345 201785347 201785349 201785345 201785347 201785349;}
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
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE-AT =
link=3D"#467886" vlink=3D"#96607D" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US>Hi =
everyone,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>I am working with a radar frontend that outputs a =
downconverted IF signal as separate analog I and Q streams, I want to =
capture both using a USRP X440.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>The challenge is that the X440 =
expects real signals at its physical ports. Internally, each channel =
performs a real-to-complex (R2C) conversion by sampling the real input =
and digitally mixing it using an NCO.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>My initial approach was to connect =
the analog I signal to CH0 and the analog Q signal to CH1. I planned to =
create a custom RFNoC OOT block that simply stitches them together: It =
would take the real part of the CH0 stream to form the I component of =
the output, and the real part of the CH1 stream to form the Q =
component.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>For this simple routing logic to work, the NCO frequency =
must be set to 0 Hz. However, UHD restricts the NCO frequency to a =
minimum of 1 MHz, so this approach fails. While I don't mind the =
spectral shift caused by a &gt;1 MHz NCO, the complex mixing would force =
my RFNoC block to perform additional arithmetic (addition and =
subtraction for each sample) to untangle the signals, rather than just =
passively routing them.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>So, I have some questions:<o:p></o:p></span></p><ul =
style=3D'margin-top:0cm' type=3Ddisc><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo1'><span lang=3DEN-US>Can =
I set the minimum frequency of the NCO to 0Hz (<a =
href=3D"https://github.com/EttusResearch/uhd/blob/dd41a0801f185264cd0af1f=
b8a3ab1306db310b2/host/lib/include/uhdlib/usrp/dboard/fbx/fbx_constants.h=
pp#L34">here</a>) and recompile UHD and expect it to =
work?<o:p></o:p></span></li><li class=3DMsoListParagraph =
style=3D'margin-left:0cm;mso-list:l0 level1 lfo1'><span lang=3DEN-US>In =
the commit history I have seen you are working on a sub-channels feature =
(here: <a =
href=3D"https://github.com/EttusResearch/uhd/commit/5165c21740cbba0d13492=
1fb0ff8f8c2a7958a1a">5165c21</a>, <a =
href=3D"https://github.com/EttusResearch/uhd/commit/5bd1cf34595e545cf0d49=
0fec31e5ee8ea4fe4a5">5bd1cf3</a>, <a =
href=3D"https://github.com/EttusResearch/uhd/commit/5eaff4efc1e96c45aac86=
1393592a358e834e35f">5eaff4e</a>) which would solve all my needs. Is =
this feature ready? If yes, how can I use =
it?<o:p></o:p></span></li></ul><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards and thanks in advance!<o:p></o:p></span></p><p =
class=3DMsoNormal>Daniel Baumgartner<o:p></o:p></p></div></body></html>
------=_NextPart_000_0038_01DCC79B.93A86FE0--

--===============1683355109936930311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1683355109936930311==--
