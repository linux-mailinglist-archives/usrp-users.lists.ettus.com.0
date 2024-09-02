Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E8A9687DA
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2024 14:48:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D731385203
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2024 08:48:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1725281338; bh=ZW/w+dEzODQoqmxih13+RZJQnTtjn1d6uQY2us5RTJ0=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ecllLz2ltFS+9ZSU1gcfACQwxadZgr5qaGiBkvzQfK2Ru7wIbCpEJPCQ2V5rDIuWV
	 mAemDoiNjAOSrIXID21m8j5ElsmSuhpkUBOKAV9fZGGz5ZlkWK3+rDoih1qf5DS5Nx
	 FJw6GZ95F4QK8k3wXFmFoSwyLJfVL262pbUmoRLVhi/LzuWRMjN6nSHMyH74ueX/UE
	 3QSXoVEDPE0LDbkNREYKmB5ByfvjObyy779QSAJM20gGHt0JxO9GbVvq62G9vea5d1
	 z2g+Y9U8/dodY4/V1VMdKR1sdRLWPRzc9fxxPH4ooyr26Sh1lWwrV62T9UJx71kfLu
	 JCMyNjbw+X95A==
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 40FA83810E9
	for <usrp-users@lists.ettus.com>; Mon,  2 Sep 2024 08:48:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="S++muWJ2";
	dkim-atps=neutral
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2f3eabcd293so47530891fa.2
        for <usrp-users@lists.ettus.com>; Mon, 02 Sep 2024 05:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1725281312; x=1725886112; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nq8WCpIhyApPq2LLRhEWu77uwspxRsSkEdV54+jCfQQ=;
        b=S++muWJ2jvXRyMMx2shfyFxwasjRrQfV7ZYRScOhxONHX70QHTe8qqbe6xv0qicWNl
         Rs1GbMmLJVKg8XiY4og9YeqJKVI8oj8RUyD3WCizHEJa9dFHHdIC+4D2nPR8eo6ZLk+j
         4wHY8eZYmcojwr7MsAvVk2s+XAxRa6a4G28kyoGpwDiD2PSoLIGAjw6QT/opnx3wnMIP
         o2Z3SZPNL8vv7p+pGm7Obismdm2j6V3kzwoVrht120zw0b6h/D7TvPJhe6MS883XcTim
         aPb9RrJ3+fpvDfPx3SNz5cjfIe2DQQ30Ox4mynkgdYUizbqPKmgG13+ImKCkTKXn8xMp
         R8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725281312; x=1725886112;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nq8WCpIhyApPq2LLRhEWu77uwspxRsSkEdV54+jCfQQ=;
        b=FHSXQ1FrBaFgVGeY8iavBJ+sf4dPzHsfymebqKFR+9Vm25vxY6CaqQYzvj/jjmW6ct
         f/4duNkwRt9IpwbEUkAU4AIqQ6LPvb9yTOM1akQeO8v0UkSsbqMS/F6EM33Aj2FvxWob
         dxbJ6nYNtDQzTKgnOS6Vk+rwlu8Ie8yQLE3FsTEtsvJNhcEr3sdTX55C3S51+GtGYoNG
         UWxxO78xQIV2klIAfxyGIdJx2xzf+uyeFlgNQJAjyIVSQOffJmd6Zv7avuYnTxSG6SxT
         aQO3ZRq68jVpdkBF6TtTd4kqdecdBHDzoZdsmy6/gzzPkiObeIQyfl2h0te2Y9UZXPa9
         ILtQ==
X-Gm-Message-State: AOJu0Yxqt2zbJ0a6D2gXCaYGY5fItCiemAf4kVOFiPMGpZTSZeQzZxle
	s3knyLYTp2mqhNNza9QDe7FcIT/jHmxmCjbV7RRWJCNBk0VE1W9x4VG29nRYb/ClzOputtJ2j55
	0FX3EGYsZQf3SlgtqrHF4oWMui9iNrYjCTfc7o1Ry1m9zwFNcgzw=
X-Google-Smtp-Source: AGHT+IFYCBrTzwweS5Itj22ZWuQbrcNvcmX5zuwyMGnxnCwcv5UysK101oyfqSVM4CmxBtDr782GXLfhwpXeGUSfbq8=
X-Received: by 2002:a05:6512:3e0d:b0:52c:f2e0:db23 with SMTP id
 2adb3069b0e04-53546ba07ffmr6829516e87.40.1725281311582; Mon, 02 Sep 2024
 05:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
 <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com> <CAB__hTTO=N08nac2wwg9H4X6X1KWufAr+8jm5xXjd0QXnsiLow@mail.gmail.com>
 <ZzKYZGhnR2PvIUOunRGDW3GffGey_JjDV2v-c_tCLY9R66l3Yt-R4dt-wV9uzw5PYEbIEYAPGndZjkFQCRw_cRP-j8MUC7jxZ7-2ak2MNto=@protonmail.com>
 <CAFOi1A5TNE5M4xWD9dRCpNoj2RV08Soxpkphp7Lyrp7azq5P-Q@mail.gmail.com> <Q_NqcWhbOF3BQUKsVckNn9edxSwIdd8tSBYk3lM6S_UYwLQIVuLncqarHw0DLZK6BQUuY40HIJNvhxfbwQQykR8vpHWaXWGeysgoqQcIlcc=@protonmail.com>
In-Reply-To: <Q_NqcWhbOF3BQUKsVckNn9edxSwIdd8tSBYk3lM6S_UYwLQIVuLncqarHw0DLZK6BQUuY40HIJNvhxfbwQQykR8vpHWaXWGeysgoqQcIlcc=@protonmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 2 Sep 2024 14:48:20 +0200
Message-ID: <CAFOi1A6fyJLLw9ugFicXFpcmEfSNa+gLbztG53_b6H3zHdwXQg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PAE3LDN7AUT5TB2KCLSGAZ76S2C3IF5S
X-Message-ID-Hash: PAE3LDN7AUT5TB2KCLSGAZ76S2C3IF5S
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PAE3LDN7AUT5TB2KCLSGAZ76S2C3IF5S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8395433823215004372=="

--===============8395433823215004372==
Content-Type: multipart/alternative; boundary="000000000000b715550621225bd2"

--000000000000b715550621225bd2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2024 at 11:34=E2=80=AFAM Olo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Thank you for your response and for confirming the general approach to th=
e
> configuration. I have a couple more questions related to RFNoC,
> particularly about buffer size in SEP (Stream Endpoints) and IP address
> settings.
> 1. Buffer Size in SEP:
>
> I=E2=80=99m having some difficulty understanding the correct setting for =
buffer
> size in SEP. I=E2=80=99ve found conflicting information:
> On page: https://kb.ettus.com/RFNoC_Frequently_Asked_Questions
> it says: "Set to 0 if you* don't need to send data* to that SEP."
>
> Meanwhile, this other page:
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
> states: "Alternatively, if we know that a particular SEP *only sends data=
*
> from the USRP to the computer, then we won't need the ingress data buffer
> and we can set buff-size to 0, thus saving FPGA resources."
>

They're both correct! The difference is where you're sending from. In
general, when we say "send", we mean sending data to the device from the
host. In your second quote, note the additional qualifier: "sends data from
the USRP to the computer", which we generally think of as "receive".

Since you're not intending to do any kind of TX, and you don't even have
separate endpoints for sub-sections of your DSP, you could further drop the
buffer sizes you currently have at  non-zero. The only thing that gains you
though is a potential increase of build success when running Vivado, and
you can re-use the BRAMs for other things (which in your design is probably
not relevant).

> 2. IP Address Configuration:
>
> I initially set up the X310 with the HG image and configured the IP
> address to something like 192.168.50.2. Later, I switched to the XG image=
,
> which uses the default IPs of ...30.2 and ...40.2. When I load my custom
> image, will the IP addresses remain consistent? I'm concerned about
> "bricking" the device, especially after reading issues like this one:
> https://github.com/EttusResearch/uhd/issues/550 .  I want to make sure I
> avoid any potential pitfalls.
>
The IP addresses are stored in a separate EEPROM and do not get affected
when you re-flash. The only exception is that the HG and the XG images use
different IP numbers, as laid out in our manual (meaning that when you
switch from HG to XG, you should expect a different IP number on SFP0, but
in both cases, the actual number should be whatever it was that you wrote
into the device).


--M

--000000000000b715550621225bd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2024 at 11:34=E2=80=
=AFAM Olo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-s=
ize:14px"><p>Thank you for your response and for confirming the general app=
roach to the configuration. I have a couple more questions related to RFNoC=
, particularly about buffer size in SEP (Stream Endpoints) and IP address s=
ettings.</p><h3>1. Buffer Size in SEP:</h3><p>I=E2=80=99m having some diffi=
culty understanding the correct setting for buffer size in SEP. I=E2=80=99v=
e found conflicting information:</p>On page:=C2=A0<a rel=3D"noreferrer nofo=
llow noopener" href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Question=
s" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions<=
/a><br>it says: &quot;Set to 0 if you<b><u> don&#39;t need to send data</u>=
</b> to that SEP.&quot;<br><br>Meanwhile, this other page:=C2=A0<a rel=3D"n=
oreferrer nofollow noopener" href=3D"https://kb.ettus.com/Getting_Started_w=
ith_RFNoC_in_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Getting_Starte=
d_with_RFNoC_in_UHD_4.0</a><br>states: &quot;Alternatively, if we know that=
 a particular SEP <b><u>only sends data</u></b> from the USRP to the comput=
er, then we won&#39;t need the ingress data buffer and we can set buff-size=
 to 0, thus saving FPGA resources.&quot;<br></div></blockquote><div><br></d=
iv><div>They&#39;re both correct! The difference is where you&#39;re sendin=
g from. In general, when we say &quot;send&quot;, we mean sending data to t=
he device from the host. In your second quote, note the additional qualifie=
r: &quot;sends data from the USRP to the computer&quot;, which we generally=
 think of as &quot;receive&quot;.</div><div><br></div><div>Since you&#39;re=
 not intending to do any kind of TX, and you don&#39;t even have separate e=
ndpoints for sub-sections of your DSP, you could further drop the buffer si=
zes you currently have at=C2=A0 non-zero. The only thing that gains you tho=
ugh is a potential increase of build success when running Vivado, and you c=
an re-use the BRAMs for other things (which in your design is probably not =
relevant).<br></div><div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<span><h3>2. IP Address Configuration:</h3><p>I initially set up the X310 w=
ith the HG image and configured the IP address to something like 192.168.50=
.2. Later, I switched to the XG image, which uses the default IPs of ...30.=
2 and ...40.2. When I load my custom image, will the IP addresses remain co=
nsistent? I&#39;m concerned about &quot;bricking&quot; the device, especial=
ly after reading issues like this one:=C2=A0<span><a rel=3D"noreferrer nofo=
llow noopener" href=3D"https://github.com/EttusResearch/uhd/issues/550" tar=
get=3D"_blank">https://github.com/EttusResearch/uhd/issues/550</a>=C2=A0.=
=C2=A0 I want to make sure I avoid any potential pitfalls.</span></p></span=
></blockquote><span><p><span>The IP addresses are stored in a separate EEPR=
OM and do not get affected when you re-flash. The only exception is that th=
e HG and the XG images use different IP numbers, as laid out in our manual =
(meaning that when you switch from HG to XG, you should expect a different =
IP number on SFP0, but in both cases, the actual number should be whatever =
it was that you wrote into the device).<br></span></p><p><span><br></span><=
/p><p><span>--M<br></span></p></span></div></div></div>

--000000000000b715550621225bd2--

--===============8395433823215004372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8395433823215004372==--
