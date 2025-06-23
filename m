Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B338BAE3663
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 08:58:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCCAC3852A4
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 02:58:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750661906; bh=bIVH8AcE0UwnLUR/sweTus7WokaXfQE8xjlH2SitCaE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=S0Ih4ZaJU2ut9uoMDz5uMZsWudJBigmd4syhT8WoSMLp1Q0j3NpUhYEE+SiaEqbQc
	 Xmy1pGg7RqiRlvHpkabYAtsVCgYQDeo9nftwmdn2Laf3a2MTgsS7BViQfQ3gBiJHyO
	 yns15wq8XTwqJ/IlTlorox7LvU9eAH7DRxEzRpFofFfZ0UeUiSglxs5J+nccXy/elr
	 f9lxzbOm7pqJyHxy5SF7beQ2rPb6DY6ra13pdwB1BxqNoi/NA4hjAGesrSEqTE2bVq
	 XFyC4XPAoWyVtjq6Rw4pD2hLUsaMOQVEBAi++rdYw4u4B39i356Lo5kEIdFpEYZTXO
	 ATM0EzPFSLXdQ==
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CB263842B1
	for <USRP-users@lists.ettus.com>; Mon, 23 Jun 2025 02:57:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Nro6c5Nr";
	dkim-atps=neutral
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-87640a9e237so129067939f.2
        for <USRP-users@lists.ettus.com>; Sun, 22 Jun 2025 23:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750661847; x=1751266647; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=abtU6kej2HS5jsaqoTjzJcCVSMw1YcBwZ6mZz0Au9sc=;
        b=Nro6c5Nr5aGrnpvVxKUGCb9oglJPukiKA4hJr5WZKTf/5S5sipn8XLnlZmeOXYCxBJ
         STTTMVSwjCBU/wLynp2hdpILFg7bBFqEUHgYokMe4vlpFqnP8a/rv3fV3DKe1RQynzhb
         7cVfct7eohp7l687xcRsKClpwy6La0GIB/ZyuRMaeBNwas9vN0kfB6uZXUPjzbkaN3BT
         OHtI0fGw9CY0RIs6ezcyZvafBcZM/fnltFCGhQSA5cUJtZWc3C3shvxlRJv8+a1ZA5HZ
         mmkU+VpOv67Nf2Pob4NNsyaySjv/ASD85SoGsGOW/W9fKQLorpNE4rAAw4bHw9pUDhoL
         w8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750661847; x=1751266647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abtU6kej2HS5jsaqoTjzJcCVSMw1YcBwZ6mZz0Au9sc=;
        b=up6dL++7KX5h9iFjIUm0QgEH7bM9Lv+6rzy3j472R3XE4gbhazFVbHEQ/B8fAX+BLv
         LHgd3IlkPkh5lP3+aEuSEBVEpxcQXJtrjvhJjxtTxkp6etBnlBmJVq8uHO+K8p2bfctZ
         +U1qdxGg3CxOJugo6pe/Y/IBE063oyJ79tKCVpHppQ+MjYGHMpuBTSfYqYuXLMOAKBpQ
         FWvtNYBqmieg12eUXnvcqfy6RzbTat4cLRQn6b/oMpEOcUzkfSv8vWfAxk8Srj4qJraP
         GqmdNssGACa9p8CL/LHNPLXTsKHtrK/FKAiGjvRbEluGKlOGDAsaKvhXkAAH8mmdnN8e
         8xBg==
X-Gm-Message-State: AOJu0YxS05Jc2Y2f2fep2wWNRsvCzb9haTKELSuTXugC+0MA+Ndnfon2
	r/ttTJ0cNPAzAY9UVVmN25OhQjbLLaoLg/kRhkgWlQklzjsqRO7HkWYp71IG0n993SSWGAN8057
	ZLV8y0SEK1xMOYolJiVOV8TzEjgeBXxRP8g==
X-Gm-Gg: ASbGncsXlSx5D9WNN6Vo+jilnguolbWify7mHZEqFq8gnbsnNunAAJGYg2UvZDKq6o9
	+xRp6Ho/rWoVS+y4RToxNLdhGactwVBzczgBuRVFrGca4x5st4/pkIJusmtL8nyCQGvGGHUTOnT
	Esirdpvq+iYeSnzynRZySIlf47DX1LFebUv9giGrE=
X-Google-Smtp-Source: AGHT+IE3naGxOxkLf8cz3S15iXoZ1IUQT6Tc4WAL+EqnKhJT0MiI7784uI9GRbT2iFfJDk94HwGHk6nYVJ5anbGPI10=
X-Received: by 2002:a05:6602:3415:b0:875:b8b7:7864 with SMTP id
 ca18e2360f4ac-8762cf399bfmr1321380139f.6.1750661847269; Sun, 22 Jun 2025
 23:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <AGwAdwCIJCGWY-5d8h2Pdqo9.1.1750658251070.Hmail.220220790@seu.edu.cn>
In-Reply-To: <AGwAdwCIJCGWY-5d8h2Pdqo9.1.1750658251070.Hmail.220220790@seu.edu.cn>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Mon, 23 Jun 2025 09:57:15 +0300
X-Gm-Features: AX0GCFu2KMham7dOW1XDjZGhZ7WS6myuBty-vWzKHqreo4t95w5TWNTaWfsKfRk
Message-ID: <CAAxXO2FM86H6Apa6E7WzQqrROx2+uhc_V2DSiM1wA-Fbvp2T_Q@mail.gmail.com>
To: =?UTF-8?B?5ZGo5pm65paH?= <zhiwen_zhou@seu.edu.cn>
Message-ID-Hash: ZMYQNFWTGHJ3MT3VWYXO2WGJZBIG3APR
X-Message-ID-Hash: ZMYQNFWTGHJ3MT3VWYXO2WGJZBIG3APR
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZMYQNFWTGHJ3MT3VWYXO2WGJZBIG3APR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8667468613637330059=="

--===============8667468613637330059==
Content-Type: multipart/alternative; boundary="000000000000874632063837b9b5"

--000000000000874632063837b9b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zhou,

Is this a general RFNOC rx streamer problem? Do you get similar errors when
you receive other data?
If it is just with Fosphor, my guess is that you don't feed it at least
1024 complex samples.
It works with FFT, so that any less than 1024 samples will make it unhappy:=
(

HTH
Nikos

On Mon, Jun 23, 2025 at 8:58=E2=80=AFAM =E5=91=A8=E6=99=BA=E6=96=87 <zhiwen=
_zhou@seu.edu.cn> wrote:

> Hi,
> I am trying to get RFNOC Fosphor working on an X310. I am able to build a
> FPGA image containing the fosphor module, but it does not work with the
> GNU Radio fosphor example. Error message shows: rfnoc rx streamer
> :warning: Received fractional vector! Expect signal fagmentation.
> I am using the lastest UHD with the latest GNURadio. I am using the XG
> image with two 10G ports connected. MTU is set to 9000.
> Is there anything wrong with my configurations?
> Please find attached my yml file for the FPGA image as well as the grc
> file for GNURadio.
>
> Thanks,
> Zhouzhiwen
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000874632063837b9b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
Zhou,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div=
><div class=3D"gmail_default" style=3D"font-size:small">Is this a general R=
FNOC rx streamer problem? Do you get similar errors when you receive other =
data?</div><div class=3D"gmail_default" style=3D"font-size:small">If it is =
just with Fosphor, my guess is that you don&#39;t feed it at least 1024 com=
plex samples.</div><div class=3D"gmail_default" style=3D"font-size:small">I=
t works with FFT, so that any less than 1024 samples will make it unhappy:(=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">HTH</div><div class=3D"g=
mail_default" style=3D"font-size:small">Nikos</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Jun 23, 2025 at 8:58=E2=80=AFAM =E5=91=A8=E6=99=BA=E6=96=87 &lt;<a hr=
ef=3D"mailto:zhiwen_zhou@seu.edu.cn">zhiwen_zhou@seu.edu.cn</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"li=
ne-height:1.5;font-size:14px;color:rgba(38,42,51,0.9);font-family:&quot;Sou=
rce Han Sans&quot;">
<div style=3D"font-family:&quot;Source Han Sans&quot;;font-size:14px;line-h=
eight:1.5;color:rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255=
);font-family:&quot;Source Han Sans&quot;">Hi,</span></div><div style=3D"fo=
nt-family:&quot;Source Han Sans&quot;;font-size:14px;line-height:1.5;color:=
rgb(0,0,0)"><span style=3D"font-family:&quot;Source Han Sans&quot;"><span i=
d=3D"m_4863480376007925240mce_1_start" style=3D"overflow:hidden;line-height=
:0px"></span>I am trying to get RFNOC Fosphor working on an X310. I am able=
 to build a FPGA image containing the fosphor <span id=3D"m_486348037600792=
5240mce_5_start" style=3D"overflow:hidden;line-height:0px"></span>module, b=
ut it does not work with the GNU Radio=C2=A0<span style=3D"font-family:&quo=
t;Source Han Sans&quot;">fosphor example. Error message shows: <span style=
=3D"color:rgba(0,0,0,0.85);font-family:Helvetica-Neue,Helvetica,Arial,sans-=
serif;font-size:14px;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;word-spacing:0px;white-space:pre-wrap;te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline">rfnoc rx streamer :warning: Received fractional vector! Expect si=
gnal fagmentation.<br></span><span id=3D"m_4863480376007925240mce_7_start" =
style=3D"overflow:hidden;line-height:0px"></span><span style=3D"font-family=
:&quot;Source Han Sans&quot;"><span style=3D"font-family:&quot;Source Han S=
ans&quot;">I am using the lastest UHD with the latest GNURadio. </span></sp=
an>I am using the XG image with two 10G ports connected. MTU is set to 9000=
.<br>Is there anything wrong with my configurations?=C2=A0<br>Please find a=
ttached my yml file for the FPGA image as well as the grc file for GNURadio=
.<br><br></span></span></div><div style=3D"font-family:&quot;Source Han San=
s&quot;;font-size:14px;line-height:1.5;color:rgb(0,0,0)"><span style=3D"fon=
t-family:&quot;Source Han Sans&quot;"><span style=3D"font-family:&quot;Sour=
ce Han Sans&quot;">Thanks,</span></span></div><div style=3D"font-family:&qu=
ot;Source Han Sans&quot;;font-size:14px;line-height:1.5;color:rgb(0,0,0)"><=
span style=3D"font-family:&quot;Source Han Sans&quot;"><span style=3D"font-=
family:&quot;Source Han Sans&quot;">Zhouzhiwen</span></span></div><div>
<br></div>
<br></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000874632063837b9b5--

--===============8667468613637330059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8667468613637330059==--
