Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E52E7AD855
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 14:57:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 561BE383F03
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 08:57:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695646637; bh=ZqqQpRsc+N2NawsewCvoMCAmtoVUfGvsFx6+8LIgE+I=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=chHJmtEdigg5WJD6GOVtEo1OnpOKcG8oMomY6eK8fk/icB7bF0IdwX5KBRY6OtAqy
	 QpJOX6/0aJvCiqHkWXcs1A+y6pXqXSvdWt2seUnKbeFXlD1WEESU32GFhZ9j9fLWjK
	 lB6z4YdIteNib380crX1Ecc9nTJ6QGOZj8P+p2qlqogvxJpgvWh389nWgxcEM/hmZL
	 5ggRyHV7fu302+Hnp/8CuDb0o102cPACqv93iO1OUmi3w8xL70xctgo8OqeDbVYfE2
	 c/ItaQMwI+wP9wfmcEC6deuCXRz9LjP76Rm7IhUUFy7Jlg2uOxkgvcA8ObtzzfEjLQ
	 CQ5tKNMJU2NMg==
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C85FA383F02
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 08:57:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kMmSWD8y";
	dkim-atps=neutral
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-31f737b8b69so5375257f8f.3
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 05:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695646632; x=1696251432; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TB0hVO2Kg+vCMo1gwc5zu5DSriHQH74omxRGk5fpbEs=;
        b=kMmSWD8y1GbIhlhttsEBXx152/k0RFtzF5J9hBUU5MUo21gcgkYye4ClqnIjqvp9r/
         NfgoM6SnUedjWep+Ghf6wMXMIXbZNkKgnB9qC7jWEY40wD3qTkPeGRdTBapZ5jCHxeJz
         kAJ2uAOAsLLJkl0GALSt2Rq5zour6SQMEZetZ4Q5lVw/+oBbhI9CVhNCUY7KdxASX4wO
         G2iTc2GlnRCrQXOYWlITzAEtLY45bowfrj7hJ4wEqeI+p60LTpRyH/sNmvuVjFFXHaQd
         JGH7X2ktkQJAMkgTiReHI8EoySoblYuX8dP7Sh1OgcFg4RuPspJuJQWeQrAYC9IDPbOT
         yR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695646632; x=1696251432;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TB0hVO2Kg+vCMo1gwc5zu5DSriHQH74omxRGk5fpbEs=;
        b=C5xUXYkW4U/ST+p+XvVOZO88hxRmz+P7AuHXlOnn0Vx3bV36Y5dSsWxZKsDcTRoG3c
         WWM95akBBjT9W8w6kSHFYQqausdk2dDlW39dM3GajsxEtMaVa55QP94SJUl+g2MS9jbG
         oc0EZLdHxl1fL3ybaNFjFcXhQFqrfbfHWkAFef9u0eJfZ5juV/U2WeGPyknnaXpin2CQ
         7NQl8VARr7xP+vwspzR1oRTusIzzs7wsJOq0hExf58Wur5uD1DJ2acOvod1ULxU2NkQ+
         mY7WPKEkQzLxiPSNAYGcqMWCcdyl0wBOSiY/dthH3u4ocRpAr8j6GS2fwWATrwCSkB/B
         QKNw==
X-Gm-Message-State: AOJu0YyHHpkVO2aCN7qLF/vv24i1IcI3Q0U+G8N1IC47z5XORHHdmf3Q
	kBY+UG+YdSjpM8YKM28H0LDu3RUm9FjiMp8DXtrlxuvc
X-Google-Smtp-Source: AGHT+IGBtcntcfUv4t1P3t+mW3V5yRWtAPqiepm+657wgCiIG7hD9jrnvrCLpHjZKVxP0APCz6PTyEmoumBRqQpRHOM=
X-Received: by 2002:a5d:526e:0:b0:31f:eed7:2fdc with SMTP id
 l14-20020a5d526e000000b0031feed72fdcmr7266701wrc.35.1695646632252; Mon, 25
 Sep 2023 05:57:12 -0700 (PDT)
MIME-Version: 1.0
From: Devin Kelly <dwwkelly@gmail.com>
Date: Mon, 25 Sep 2023 08:57:01 -0400
Message-ID: <CAANLyuawttfqk9emcKXbJR-7NXAcL5xC-pih1xyzrh4Rcjg_QQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: GYTX7ZDPKGFROBUFI7G23LCTXPP7EGPO
X-Message-ID-Hash: GYTX7ZDPKGFROBUFI7G23LCTXPP7EGPO
X-MailFrom: dwwkelly@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TX Streamer Send Time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYTX7ZDPKGFROBUFI7G23LCTXPP7EGPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6542645909357421907=="

--===============6542645909357421907==
Content-Type: multipart/alternative; boundary="0000000000002e177506062e7f71"

--0000000000002e177506062e7f71
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have an application where I=E2=80=99m sending many short bursts to a USRP=
 B210
using uhd::tx_streamer.send() (link below) and I occasionally set the PPS
time to 0 using set_time_last_pps.

Sometimes I set the PPS time to 0 when there=E2=80=99s still a burst in the=
 USRPs
queue.  When I do this the burst is transmitted much later than I want.

Is there a way to clear the queue on the USRP or UHD?  That is, if I send a
TX burst in the distant future can I cancel it before it gets transmitted?
Can I clear everything in the TX queue?

I=E2=80=99ve read on this list that calling the stream destructor will do t=
his, is
that right? I=E2=80=99ve tried this without success.

Thanks!
Devin

--0000000000002e177506062e7f71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><meta charset=3D"UTF-8"><span style=3D"color:rgb(0,0,0);f=
ont-family:UICTFontTextStyleBody;font-size:17px;font-style:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-de=
coration:none">Hello,</span><br style=3D"color:rgb(0,0,0);font-family:UICTF=
ontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;text-decoration:none"><=
span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:=
17px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;text-decoration:none"></span><br style=3D"color:rg=
b(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-style:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;text-decoration:none"><span style=3D"color:rgb(0,0,0);font-family:UICTFo=
ntTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none">I =
have an application where I=E2=80=99m sending many short bursts to a USRP B=
210 using uhd::tx_streamer.send() (link below) and I occasionally set the P=
PS time to 0 using set_time_last_pps. =C2=A0</span><br style=3D"color:rgb(0=
,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-style:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
text-decoration:none"><span style=3D"color:rgb(0,0,0);font-family:UICTFontT=
extStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;text-decoration:none"></spa=
n><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size=
:17px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"><span style=3D"color:rgb(0,=
0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-style:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;t=
ext-decoration:none">Sometimes I set the PPS time to 0 when there=E2=80=99s=
 still a burst in the USRPs queue.=C2=A0 When I do this the burst is transm=
itted much later than I want.</span><br style=3D"color:rgb(0,0,0);font-fami=
ly:UICTFontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration=
:none"><span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;fo=
nt-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D"=
color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-styl=
e:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;text-decoration:none"><span style=3D"color:rgb(0,0,0);font-famil=
y:UICTFontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:=
none">Is there a way to clear the queue on the USRP or UHD?=C2=A0 That is, =
if I send a TX burst in the distant future can I cancel it before it gets t=
ransmitted?=C2=A0 Can I clear everything in the TX queue?</span><br style=
=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-=
style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none"><span style=3D"color:rgb(0,0,0);font-f=
amily:UICTFontTextStyleBody;font-size:17px;font-style:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorat=
ion:none"></span><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyl=
eBody;font-size:17px;font-style:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;text-decoration:none"><span style=
=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-=
style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none">I=E2=80=99ve read on this list that ca=
lling the stream destructor will do this, is that right? I=E2=80=99ve tried=
 this without success.</span><br style=3D"color:rgb(0,0,0);font-family:UICT=
FontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;text-decoration:none">=
<span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size=
:17px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"></span><br style=3D"color:r=
gb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-style:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;text-decoration:none"><span style=3D"color:rgb(0,0,0);font-family:UICTF=
ontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;text-decoration:none">T=
hanks!</span><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBod=
y;font-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;text-decoration:none"><span style=3D"c=
olor:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-style=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration:none">Devin</span></div>

--0000000000002e177506062e7f71--

--===============6542645909357421907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6542645909357421907==--
