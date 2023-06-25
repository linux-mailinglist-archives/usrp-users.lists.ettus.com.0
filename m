Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A746273D43E
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jun 2023 22:51:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 047463849AC
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jun 2023 16:50:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687726257; bh=OSuT1gB+6gurFIFAJGtbxMpiKoaFqFwFdcv6aDuI3so=;
	h=Date:To:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=rC6qb0E43Z6cWr7IsFvsctGa/C29Y/6uxb190lMK+r6CCq4pB7PJWCErZKH0Y+Mlh
	 04r7GqjSmydAuW0VZfTYrGQZMkai/PxOt8V2H5QtX60NatUOXHF9GETzQjZWH1w9xC
	 m6zC5utwxSLuUAXn07vQAnwaPCTwzv9OWQc2J1gazS2FN/6Z7VtNCzgwvjHuVFhAnf
	 5/8FJywtOZ5RlXG7HsFciZnxlY4bIPprEuwnEawKn9XrUwGPwEV7e+ZZMW8WHHH+7d
	 BsBXOepwRPObaRpH9EDsayQAhbND0ljWgAqzd+Lrzsg79wcWWL6T9oBxIASiu8ey9x
	 cqDCfPDHCkIvQ==
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 940CA381884
	for <usrp-users@lists.ettus.com>; Sun, 25 Jun 2023 16:49:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="Jfm7SYj3";
	dkim-atps=neutral
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-262f7b67da8so84417a91.0
        for <usrp-users@lists.ettus.com>; Sun, 25 Jun 2023 13:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1687726188; x=1690318188;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Dt5rZ4ZAxmg/RlwI2sWk8aHVtjFSVE3Uwn+55m/i5Zo=;
        b=Jfm7SYj3p6kd5rUHeJfKR/r4jAgoiu3yqrYH8GLyrRl+N1Wnjhs3RkIcnK7iog00NW
         ZYXlAQj6jMYornp6aG3VLm+9j8U7lIPMaMR0I952oPTXWiNTmGddzcXJlPyGLqZoUsuA
         DUHdatQDrHhoQ6pVPAV91GelaJkGUzHh7p6Ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687726188; x=1690318188;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dt5rZ4ZAxmg/RlwI2sWk8aHVtjFSVE3Uwn+55m/i5Zo=;
        b=SXFiITM/x2ORjobv+F3z9NvVzvlyrYxV2CCyHf91cRHSqt6+gO2Gh9nNnKxLsOFC89
         qYc3izyXm2jjRj+Gszn5R4jGc/dGAXarneWnY0rfOjBVh2oIy0jb6gHDhREZF5Hb3xVS
         2KkLn95iZy2O6yKUk+5jg0xKrLYq/K2ysme19M6dHSqYPOjYJYYz+dCTcPzIoDZh2Pf1
         a+hjdiXAzdyYg7+GB94i9d/ZnBuqtc8JrBigD/AKP02qb2gsXrliVdO7164lRC1JQPdF
         qHjexpQecoZ61KoffuPZ/85zf7CcyntdGHk8QwKlkgitFjiZhTI9uy0vr8mWJhL2IUy7
         2MaA==
X-Gm-Message-State: AC+VfDxd0vUeCZntBkrBsDeJDh24Q0fiY7HDsUrFUzJUZ1w0U1fA/OND
	xCuQz27QtHc1FcudF9UJRS3lb+hwb4VZvi+lY4Gch2c1tNJyajEVX2/gtQA0QWlCX83VvK2XLg3
	AqmH5hJvnZwt7uj+kJmX2z3+3MWfshA==
X-Google-Smtp-Source: ACHHUZ44M7qsVyh6HpSILRQlpTQy5EIezP/FIGmC+CXroy7L1rhaBb/Z0S3R1U0aTq/DaPmdrv2xyMo6jwDCr2d2U8U=
X-Received: by 2002:a17:90a:590e:b0:262:a6f7:1946 with SMTP id
 k14-20020a17090a590e00b00262a6f71946mr4627108pji.9.1687726188255; Sun, 25 Jun
 2023 13:49:48 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 26 Jun 2023 02:19:37 +0530
Message-ID: <CA+QP_P=kMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=fxOJQ@mail.gmail.com>
To: support@ettus.com, usrp-users@lists.ettus.com, discuss-gnuradio@gnu.org
Message-ID-Hash: 66LV35BG7YUG6QLWHAQRPXEV3WFYP2K4
X-Message-ID-Hash: 66LV35BG7YUG6QLWHAQRPXEV3WFYP2K4
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Karunya Choppara <kchoppar@mathworks.com>, Marcus D Leech <patchvonbraun@gmail.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Help Regarding Transmitting Gain of USRP N-200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/66LV35BG7YUG6QLWHAQRPXEV3WFYP2K4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============3521356279457481822=="

--===============3521356279457481822==
Content-Type: multipart/alternative; boundary="000000000000ee5add05fefa5f07"

--000000000000ee5add05fefa5f07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Respected sir,
I am using N-200 USRP for transmitting a signal. While transmitting, I have
changed the Gain value in the SDRu transmitting block, but my signal
strength at the receiver remains the same. I also stop and restart the code
but the change in gain does not affect the received signal. I have tried
the changing gain via both available options i.e., input port and dialog,
but it seems to have no effect on the receiver. The signal strength at the
receiver remains the same. I have tried 30 dB(Maximum gain) to 0 dB
(minimum gain) in both cases received SNR is the same (i.e.,15 dB). I am
using a wireless connection in line-of-sight, with minimum Tx gain at least
a few drops in SNR should be observed. I have also tried -50dB (just
checking) but no effect in the SNR is observed. The same thing I have tried
using B210 as Tx, Rx signal strength does change in this case. However,
while using N-200, no effect of changing the gain value is observed. Someho=
w
 gain value is fixed in N-200 while using the MATLAB SDRu block. Can you
PLEASE HELP ME!!! IT IS VERY, VERY IMPORTANT.

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--000000000000ee5add05fefa5f07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Respected sir,<div><span style=3D"background-color:rgb(250=
,250,250);color:rgb(0,0,0);font-size:14px">I am using N-200 USRP for transm=
itting a signal. While transmitting,=C2=A0</span>I have<span style=3D"backg=
round-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px"> </span>chang=
ed<span style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-si=
ze:14px"> the Gain value </span>in the SDRu<span style=3D"background-color:=
rgb(250,250,250);color:rgb(0,0,0);font-size:14px"> transmitting block, but =
my signal strength at the receiver </span>remains<span style=3D"background-=
color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">=C2=A0the same. I a=
lso stop and restart the code but the change in gain does not affect the re=
ceived signal. I have tried the changing gain via both available options i.=
e., input port and dialog, but it </span>seems to have no effect<span style=
=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px"> on =
the receiver. The signal strength at the receiver </span>remains<span style=
=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">=C2=
=A0the same. I have tried 30 dB(Maximum gain) to 0 dB (minimum gain) in bot=
h cases received SNR </span>is the same<span style=3D"background-color:rgb(=
250,250,250);color:rgb(0,0,0);font-size:14px"> (i.e.,15 dB). I am using a w=
ireless connection in line-of-sight, with minimum Tx gain at </span>least a=
 few<span style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-=
size:14px"> </span>drops<span style=3D"background-color:rgb(250,250,250);co=
lor:rgb(0,0,0);font-size:14px"> in SNR should be observed. I have also trie=
d -50dB (just checking) but </span>no<span style=3D"background-color:rgb(25=
0,250,250);color:rgb(0,0,0);font-size:14px"> effect in the SNR is observed.=
 The same thing </span>I have<span style=3D"background-color:rgb(250,250,25=
0);color:rgb(0,0,0);font-size:14px"> tried using B210 as Tx, Rx signal stre=
ngth does change in this case. However, while using N-200,=C2=A0</span>no<s=
pan style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:1=
4px"> effect of changing the gain value is observed. Somehow</span>=C2=A0ga=
in<span style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-si=
ze:14px"> value is fixed in N-200 while </span>using the MATLAB<span style=
=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px"> SDR=
u block. Can you PLEASE HELP ME!!! IT IS VERY, VERY IMPORTANT.</span><br></=
div><div><div><br></div><span class=3D"gmail_signature_prefix">-- </span><b=
r><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100=
,100);font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b=
 style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-=
size:small"><span style=3D"font-family:&quot;times new roman&quot;,serif">T=
hanks and Regards</span></b><b><br></b></div><div style=3D"color:rgb(100,10=
0,100);font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><=
b>Arhum Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department,=
 IIT Ropar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpad=
ding=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px=
;width:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)=
"><p style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D"t=
el:+91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif" =
target=3D"_blank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(6=
9,102,142);display:inline-block">|</span>=C2=A0arhum.19eez0005<span style=
=3D"display:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=
=3D"color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrp=
r.ac.in</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;col=
or:rgb(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Comm=
unication Research Lab, J.C.Bose Building</span></td></tr></tbody></table><=
/div></div></div></div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--000000000000ee5add05fefa5f07--

--===============3521356279457481822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3521356279457481822==--
