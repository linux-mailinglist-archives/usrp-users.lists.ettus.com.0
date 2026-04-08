Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFF0Dpdc1mmNEggAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 08 Apr 2026 15:48:07 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4896D3BD2CB
	for <lists+usrp-users@lfdr.de>; Wed, 08 Apr 2026 15:48:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBF8F38650D
	for <lists+usrp-users@lfdr.de>; Wed,  8 Apr 2026 09:48:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775656084; bh=EoI7yjR5WenECnLRiuu94dSmdlM/uDpIgkrXioirQi0=;
	h=To:Date:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ZERdJo/u+pQhWdoom9ijxID4iAm49vtXSLUf0C2hgr9m2DTtDadSEXf8C1yuUEoQi
	 KInobZwSztYyxirkiSNfmAcYNkbLmAKnEfSfNVHjlA7kX81USYHFX6RpbZ5DVLtHyY
	 7hW1NcO6Yi2BUxelnStMLoMw6/yB5d6cScaktmOzjIP5ClMa+03IUkAYi6MlklvCmc
	 FsOWX/OqDoiPRJg+SlJoN5bfHsGFCJKVeTc5L/1pnltIPQUxxPymja9Z2IfwZOrtvr
	 hxJQB3R1EOrXBnLOJPPjHNCvAqATDHULR+YXzV80WpD4NPvphrKa4eg3WvPNdMLM+l
	 vSy+NIgIMVAdA==
Received: from a11-131.smtp-out.amazonses.com (a11-131.smtp-out.amazonses.com [54.240.11.131])
	by mm2.emwd.com (Postfix) with ESMTPS id 78908386503
	for <usrp-users@lists.ettus.com>; Wed,  8 Apr 2026 09:47:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vesperix.com header.i=@vesperix.com header.b="RyVLh2Ww";
	dkim=pass (1024-bit key; unprotected) header.d=amazonses.com header.i=@amazonses.com header.b="UtQehS25";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ljyopo7yi7ux6moa7ionkqaa5xw27m3z; d=vesperix.com; t=1775656025;
	h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
	bh=odF2PjH+qeDzldU7Jfcn4Pcq4cobYOglcVsDPSRO6wc=;
	b=RyVLh2WwEVhNjWZ4MHgXO0lKHoc/KpqC6apXlwgQAFPalxrSM8mSN7dKhD87m7ZP
	vop0eJIuKtmTq7pM649RWGtR8nCi+hBtpjlr0dTcY0eCyDcVKrh+uURSk+v613jEK57
	oDCHVuh+vyXNZVGQMWzlhsFy3A7R/bM2cDGNc1WE6mmDmkM1IsWgfPEAU7FstkBmLka
	pH35QU1DxM4cmWtKxGm7xGwHPJXZzCxwIewkjFRqXwJ3p2UOnlLFwAQN/3UAyk0icyF
	G+xdXbbfw7xRu93hQyJDLxGPgB/dk0/lTjyE4aCqKUADMdWggCo5sqP81X94EHgFP6Y
	CYGjfVwKFQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=224i4yxa5dv7c2xz3womw6peuasteono; d=amazonses.com; t=1775656025;
	h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
	bh=odF2PjH+qeDzldU7Jfcn4Pcq4cobYOglcVsDPSRO6wc=;
	b=UtQehS25OOY10iiGnHLgJbrOKTNQ0/9sMkTupl+FrYROuVil8qm4kqkaWYFzBjkh
	ujqrzk8ZE6V5ecITP1YcJADuIzatbZfnUAI8qYlrPHLsMltDYlztVcVyXUdImA0xOS1
	/fpmEw/L8qYNIclPEhF/xsnzufjDFVVTL2jkhmRU=
To: 
	=?UTF-8?Q?usrp-users=40lists=2Eettus=2Ecom?= <usrp-users@lists.ettus.com>
Date: Wed, 8 Apr 2026 13:47:04 +0000
Mime-Version: 1.0
References: <mail.bb7c0fed-7c8e-4098-991f-501490c95c59@storage.wm.amazon.com>
 <mail.bb7c0fed-7c8e-4098-991f-501490c95c59@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdzHXH4rQGia/T9ySN6D+mifvMVrAw==
Thread-Topic: E310 Update Issue
X-Wm-Sent-Timestamp: 1775656023
Message-ID: <0100019d6d58baa7-4c4077d4-6be1-49d9-a339-32daac5455f4-000000@email.amazonses.com>
Feedback-ID: ::1.us-east-1.LF00NED762KFuBsfzrtoqw+Brn/qlF9OYdxWukAhsl8=:AmazonSES
X-SES-Outgoing: 2026.04.08-54.240.11.131
Message-ID-Hash: IZRLH275Z5RIUFHG2KO5VGND544CZLM6
X-Message-ID-Hash: IZRLH275Z5RIUFHG2KO5VGND544CZLM6
X-MailFrom: 0100019d6d58baa7-4c4077d4-6be1-49d9-a339-32daac5455f4-000000@mail.vesperix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 Update Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IZRLH275Z5RIUFHG2KO5VGND544CZLM6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tom Wallace via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Tom_Wallace?= <tom.wallace@vesperix.com>
Content-Type: multipart/mixed; boundary="===============2738048134271928978=="
X-Spamd-Result: default: False [2.40 / 15.00];
	REPLYTO_EXCESS_QP(1.20)[];
	TO_EXCESS_QP(1.20)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DKIM_MIXED(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	HAS_X_PRIO_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[tom.wallace@vesperix.com];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[vesperix.com:s=ljyopo7yi7ux6moa7ionkqaa5xw27m3z,amazonses.com:s=224i4yxa5dv7c2xz3womw6peuasteono];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,vesperix.com:-,amazonses.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 4896D3BD2CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--===============2738048134271928978==
Content-Type: multipart/alternative;
 boundary="=_nNBR1f5iEfGsohJpFRJ++xxupDzTgmZFN3uJUUKM8WpFVaLi"

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--=_nNBR1f5iEfGsohJpFRJ++xxupDzTgmZFN3uJUUKM8WpFVaLi
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have a couple of E310s (the early speed grade 1 models) that have been =
on the shelf for a long while, and I=E2=80=99m trying to check them out. =
They boot properly with current sg1 card images, but any attempt to updat=
e the firmware fails. Here=E2=80=99s example output from the auto-update =
that occurs immediately after boot using the 3.15.0 SD image:

=C2=A0
[=C2=A0 =C2=A031.931863] fpga_manager fpga0: writing e310_sg1_idle.bin to=
 Xilinx Zynq FPGA Manager
[=C2=A0 =C2=A032.105915] OF: overlay: WARNING: memory leak will occur if =
overlay removed, property: /fpga-full/firmware-name
[=C2=A0 =C2=A032.136579] OF: overlay: WARNING: memory leak will occur if =
overlay removed, property: /__symbols__/devctrl
[=C2=A0 =C2=A032.149637] OF: overlay: WARNING: memory leak will occur if =
overlay removed, property: /__symbols__/charger
[=C2=A0 =C2=A032.181045] OF: overlay: WARNING: memory leak will occur if =
overlay removed, property: /__symbols__/battery
[=C2=A0 =C2=A032.701432] e31x-pmu fpga-full:pmu: Unsupported firmware ver=
sion 0.0
[=C2=A0 =C2=A032.718069] e31x-pmu: probe of fpga-full:pmu failed with err=
or -524


I see the same error with 4.6.0, and when running uhd_image_loader =E2=80=
=93args type=3De3xx on both 3.15.0 and 4.6.0 (there are additional compla=
ints from MPM.PeriphManager on 4.6.0).

=C2=A0
This occurs on both systems with identical symptoms. Is this a known issu=
e with upgrading older E310s, and if so, is there a solution=3F

=C2=A0
---

=C2=A0 Tom Wallace=20

=C2=A0

--=_nNBR1f5iEfGsohJpFRJ++xxupDzTgmZFN3uJUUKM8WpFVaLi
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-mi=
crosoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:wo=
rd" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D=
"http://www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type c=
ontent=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D=
"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0in;
=09font-size:12.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-ligatures:standardcontextual;}
span.EmailStyle17
=09{mso-style-type:personal-compose;
=09font-family:"Calibri",sans-serif;
=09color:windowtext;}
=2EMsoChpDefault
=09{mso-style-type:export-only;}
@page WordSection1
=09{size:8.5in 11.0in;
=09margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3D"#0563=
C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div class=3DWordSec=
tion1><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>I have a coup=
le of E310s (the early speed grade 1 models) that have been on the shelf =
for a long while, and I&#8217;m trying to check them out. They boot prope=
rly with current sg1 card images, but any attempt to update the firmware =
fails. Here&#8217;s example output from the auto-update that occurs immed=
iately after boot using the 3.15.0 SD image:<o:p></o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></=
p><p style=3D'margin:0in'><span style=3D'font-family:"Arial",sans-serif'>=
[&nbsp; &nbsp;31.931863] fpga_manager fpga0: writing e310_sg1_idle.bin to=
 Xilinx Zynq FPGA Manager<br>[&nbsp; &nbsp;32.105915] OF: overlay: WARNIN=
G: memory leak will occur if overlay removed, property: /fpga-full/firmwa=
re-name<br>[&nbsp; &nbsp;32.136579] OF: overlay: WARNING: memory leak wil=
l occur if overlay removed, property: /__symbols__/devctrl<br>[&nbsp; &nb=
sp;32.149637] OF: overlay: WARNING: memory leak will occur if overlay rem=
oved, property: /__symbols__/charger<br>[&nbsp; &nbsp;32.181045] OF: over=
lay: WARNING: memory leak will occur if overlay removed, property: /__sym=
bols__/battery<br>[&nbsp; &nbsp;32.701432] e31x-pmu fpga-full:pmu: Unsupp=
orted firmware version 0.0<br>[&nbsp; &nbsp;32.718069] e31x-pmu: probe of=
 fpga-full:pmu failed with error -524<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-family:"Arial",sans-serif'><br></span><span st=
yle=3D'font-size:11.0pt'>I see the same error with 4.6.0, and when runnin=
g uhd_image_loader &#8211;args type=3De3xx on both 3.15.0 and 4.6.0 (ther=
e are additional complaints from MPM.PeriphManager on 4.6.0).<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>=
This occurs on both systems with identical symptoms. Is this a known issu=
e with upgrading older E310s, and if so, is there a solution=3F<o:p></o:p=
></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&n=
bsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt=
'>---<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt'>&nbsp; Tom Wallace <o:p></o:p></span></p><p class=3DMsoNormal><o:=
p>&nbsp;</o:p></p></div></body></html>
--=_nNBR1f5iEfGsohJpFRJ++xxupDzTgmZFN3uJUUKM8WpFVaLi--

--===============2738048134271928978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2738048134271928978==--
