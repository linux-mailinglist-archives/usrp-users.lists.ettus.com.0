Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3645F7B40E8
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 16:33:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17E21385514
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 10:33:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696084418; bh=32gGHre4EDe0n+tHQK2sVtNf5S3oV8rzAE8890fsn0U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZSIwmz841j411K02BWxu0TWToNlyLtYw2Rg0fjT6qJJoxI3xcbnG+aT073oi58iyg
	 WMLaf91tAA/IW2KP951dnkV569yUlyLi4F1rjSahDMpjyJGWTbeJSdFSl5cwixWFmq
	 2ulYQGBMDXAZJNzLWx3zEoKMXwGThsE4zkaB9KadGD1LYIQDyBf6/9NGszxlrCu8f7
	 f2Bsj3P2dVYJB6kHBDb+2NSdYE7oQg0RNtUx2RlFiJRMeu8OhultgrPUH4qoAQUU4K
	 7WkLROBXYedBbEplMUX/QiOPB7cmJNR+0j59A+ExAIYaK/2cfbWOJ96a3VSuPrKkWr
	 pUp/tzm7UFJcw==
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 8ECCA3852FB
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 10:33:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dfqg6QtJ";
	dkim-atps=neutral
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-323168869daso12184023f8f.2
        for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 07:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696084401; x=1696689201; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VF02RvBuvqYx/J55ud+e7e6cdSFN1F317KwZoJyok+Y=;
        b=dfqg6QtJsbnIGdAWsaCNmlmAahhmcIQxugUlXikDpOJ7eE7/lc8yFaMAHOjfeDhMPS
         M0inWMJyccZrMHabx9CoZ2gWOExGSol+pGE5adEvOkShuJTwbm+SgCfuVk8ugVzCIhkI
         B4klRBi3cIU+ROM0xi3SgHQoa7v09K8Ant4GuYndUFqhd/jwd+u2HVW1dYK3NWtc3CaT
         7fsotEL0n7GWS8fBc0RN0Isml1o6qvE4UURSwYdswADu0JXxKpQqWoMV/wfJadwBDygm
         9r/F6TgpGXqarOfJh+UsYPqAFYg6jQzVASIMxbcLMU3LXHbIy4tKPC7EM3BrHkqlB2ZQ
         2HyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696084401; x=1696689201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VF02RvBuvqYx/J55ud+e7e6cdSFN1F317KwZoJyok+Y=;
        b=axSf06QopaPL+LhEig74x60CoCLLsnjaOi5OlLWtwvyEpD2Hr7BVK8oFPp34SmC7cn
         95A3Dqj/wRDpxNBDglXinFneBOXpAfT9w+3cAwQYld6Cr6/duV8sewu6hyYaHSD6m0Yq
         IX4JNN0o9NjFDsH9pORnpwFr4D+NF7Hhdz0P6sW9UAEyc6p9YSL0ILBCJIiH0HJ+7817
         dVALxRiVh9VmlfXNBpfzYIa4HjhR7Ag9dUJx6mY1bFE/fgpGsAobYyBE4CD2S4A5iDb2
         Xk4Bb+/BJfXkBc5x+D20dh8Z9s7OgXv7C7ClOckQ+MrSNno4SQxa+UMH0QgUiPvk56ih
         1A5A==
X-Gm-Message-State: AOJu0Yy5araPZ/St3/JviKPVYuPzHO0Iv5wOnwJCbWDNRWzza3/85kU8
	ZPH0lDVOoeINH/KpE/LOPGkMdLH6xW4YBadZaTNQnRfvXNo=
X-Google-Smtp-Source: AGHT+IHYDv8knsER9fkWOi3bq8OnU2onrKlEpUdb2mhZQbdAOi6etk5c3ta2Rs4CUQMZARgVR/IZJ2qbJPTO7+2kLRo=
X-Received: by 2002:a5d:6604:0:b0:314:3a4b:6cc6 with SMTP id
 n4-20020a5d6604000000b003143a4b6cc6mr6072035wru.53.1696084400893; Sat, 30 Sep
 2023 07:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuZ1vMXzQ5APUzvX4OBsc042d+-1WAn2BEpaGxSrSQO3Mw@mail.gmail.com>
 <ab880db7-6a66-16ba-65f4-2bed82ec7318@gmail.com>
In-Reply-To: <ab880db7-6a66-16ba-65f4-2bed82ec7318@gmail.com>
From: Devin Kelly <dwwkelly@gmail.com>
Date: Sat, 30 Sep 2023 10:33:09 -0400
Message-ID: <CAANLyubyYcO56Vjc4Ym0SuX734tNFA-zCDJ-AruGoE1TJRGVbA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: MDPWUO3AUALORCFAYFQHNSF6NCI7K7VR
X-Message-ID-Hash: MDPWUO3AUALORCFAYFQHNSF6NCI7K7VR
X-MailFrom: dwwkelly@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210/B205 TX Distortion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MDPWUO3AUALORCFAYFQHNSF6NCI7K7VR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8352134202819662830=="

--===============8352134202819662830==
Content-Type: multipart/related; boundary="00000000000039b8bf0606946c4e"

--00000000000039b8bf0606946c4e
Content-Type: multipart/alternative; boundary="00000000000039b8be0606946c4d"

--00000000000039b8be0606946c4d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus,

I think I forgot to attach the second screen cap (see below).

Is it possible to just leave the TX chain on?  I'm sending many pulses
rapidly so it doesn't make sense to turn it on and off so much.

Devin

[image: image.png]

On Fri, Sep 29, 2023 at 6:43=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 29/09/2023 17:14, Devin Kelly wrote:
>
> All,
>
>
>
> I=E2=80=99ve noticed some odd behavior when transmitting bursts on a B210=
 and
> B205mini.  When scheduling my bursts there=E2=80=99s a big =E2=80=9Cblip=
=E2=80=9D before my desired
> signal.  I eventually started looking at tx_bursts.cpp and was able to
> re-create the =E2=80=9Cblip=E2=80=9Dusing this command:
>
>
>
> ./tx_bursts --repeat --rep-delay 0.01 --gain 50 --dilv
>
>
>
> Though pretty much every command had the =E2=80=9Cblip.=E2=80=9D  I=E2=80=
=99ve attached some
> oscilloscope screen caps below.  My desired signal starts around 977 ns.
> This is with UHD 4.4 and the =E2=80=9Cblip=E2=80=9D happens on every burs=
t (the second
> screep cap shows this but it=E2=80=99s hard to see).
>
>
>
> I=E2=80=99ve also noticed that the blip magnitude stays the same and if I=
 increase
> the gain where the rest of the signal increases or decreases.
>
>
>
> How do I make this go away??  I=E2=80=99ve tried pre-pending 0s to my sig=
nal and
> fiddling with pretty much every MultiUSRP setter.
>
>
>
> Thanks!
>
> Devin
>
> I can't really see details in the plot you attached, but my guess is that
> this is just the turn-on transient of the RF power amplifier
>   chain.   Not sure there's much you can do to get rid of it if you're
> sending TX bursts, since the TX hardware has to be turned
>   on/off between bursts.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000039b8be0606946c4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus,<div><br></div><div>I think I forgot to attach the =
second screen cap (see below).</div><div><br></div><div>Is it possible to j=
ust leave the TX chain=C2=A0on?=C2=A0 I&#39;m sending many pulses rapidly s=
o it doesn&#39;t make sense to turn it on and off so much.</div><div><br></=
div><div>Devin</div><div><br></div><div><img src=3D"cid:ii_ln64rs5c0" alt=
=3D"image.png" width=3D"562" height=3D"182"><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 29, 2023=
 at 6:43=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 29/09/2023 17:14, Devin Kelly wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <p class=3D"MsoNormal">All,</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I=E2=80=99ve noticed some odd behavior when
          transmitting bursts on a B210 and B205mini.=C2=A0 When scheduling
          my bursts there=E2=80=99s a big =E2=80=9Cblip=E2=80=9D before my =
desired signal.=C2=A0 I
          eventually started looking at tx_bursts.cpp and was able to
          re-create the =E2=80=9Cblip=E2=80=9Dusing this command:</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal" style=3D"margin-left:0.5in">./tx_bursts
          --repeat --rep-delay 0.01 --gain 50 --dilv</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Though pretty much every command had the
          =E2=80=9Cblip.=E2=80=9D=C2=A0 I=E2=80=99ve attached some oscillos=
cope screen caps below.=C2=A0
          My desired signal starts around 977 ns.=C2=A0 This is with UHD 4.=
4
          and the =E2=80=9Cblip=E2=80=9D happens on every burst (the second=
 screep cap
          shows this but it=E2=80=99s hard to see).</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I=E2=80=99ve also noticed that the blip magn=
itude
          stays the same and if I increase the gain where the rest of
          the signal increases or decreases.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">How do I make this go away??=C2=A0 I=E2=80=
=99ve tried
          pre-pending 0s to my signal and fiddling with pretty much
          every MultiUSRP setter.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Thanks!</p>
        <p class=3D"MsoNormal">Devin</p>
        <br>
      </div>
    </blockquote>
    I can&#39;t really see details in the plot you attached, but my guess i=
s
    that this is just the turn-on transient of the RF power amplifier<br>
    =C2=A0 chain.=C2=A0=C2=A0 Not sure there&#39;s much you can do to get r=
id of it if
    you&#39;re sending TX bursts, since the TX hardware has to be turned<br=
>
    =C2=A0 on/off between bursts.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000039b8be0606946c4d--

--00000000000039b8bf0606946c4e
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_ln64rs5c0>
X-Attachment-Id: ii_ln64rs5c0

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
Z9+qCrNeYxT9ObgQMlZ21dSYQ0qnzn+n5Xy3L+FNV+z8q9wbz91xqzx1xw4rUnN3zds71O7fX/3E
zj96WT4q+d4Hdmf21t/f8d68aOsffutxd81rN/LOgC7M3WzzwjuluUdeLFTTfeamxoaTbmcAOt53
y+oMSh56IzjkLtSju3fv6+NCvXTHbv2X0q5Ua/NEs+J2YQfaBFt9OWQjbXnfPvrssaWmHFK6+JM7
W88aPsruea2rJHIXvMsL9/XCuwGUb8mv3tcd337317/fXRB3lPtR8Mdi7QTbRQ5xoMU6DTNWT/Co
e0+9dGANlEQJh1jUCEmcOr+nHfDuFUqvi17itffuVp8S+dz7ci+8M6SSok5lbayr79n7lZ33DuVo
lvijdcAQh9XznNFToBHHHeoAII5B/la5T33xzofv2fn1dqX8r32tcHAwY0cTbpdwiEXtQbf/1WiD
OeFj7z398rHVUxLb09altDml2RgLdy98mYwUx7b15Jn9D37qEd9O55+1ZeZF7/lu9slRr7+tygOP
fnNvp7Ws6Jy4LcM+fCoE2rv2XE8bBQ5dA/3UXY9u2DK3KZxuV3Wr3MeubbcnjkMYpJsNlYSP34yu
OW+CJDa95nmbjvvFP8+u40JIXEBU+ROLD/+fyOjU973kuPs+945YZI75jvnv5DeDdi9y4PPtpYkO
nZ86uzl977bbwnC3bj/vuXt3XR+LUu6Yf/IT33o8G7HFzhU9V9DcCExe6Pzqe958xGdefc9SGHdu
Xnjh3GOffvU1P4rlV5+35atXXbo/FrU80h2tRJZ2zFhuqgHpCSx377wuti6c3TwVT+TY4/5plpRi
Pw3i0B5y6b8X77zyjPvedfMP2pW33/ZIOuW8S5SV8dLtL9/09zs/cke7Jvs3+qtuyzBRhGyOuNN6
t1/6suM3xHPcsOm0n0oN4XD6T216+rtf7ppjTXINJSEX/CNp7yVpIc70aLacxL5ussJ9P+6uzEp6
PXP3OHXoll0SKRztvFa7dQ+H7hHEIerU6svBZ7B8ArKBN0QShSm3WQ+fGhXq6yyJPPuk22HOcsHb
PnWeuZL9b9kp6Kgnd7itop2won339Q+xd3Zd35bno2Sn2fKq2052PPO8qpW50k5Y0b6T533boNpB
3fa/PtSegpTKgsJqnzvc5n3LzL3uPi298/Vm6HwPtp4fMjMmvjeKQz4v7jTHWWoXtv/N6xQfzWNz
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
--00000000000039b8bf0606946c4e--

--===============8352134202819662830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8352134202819662830==--
