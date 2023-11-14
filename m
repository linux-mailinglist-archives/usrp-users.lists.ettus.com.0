Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8387EB701
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 20:48:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE7A3380F4F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 14:48:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699991302; bh=uk9i0HrEDyxSy7TQWU8kouEEPwCsmbEPBW8dR3MLBMw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=xbKcRjmLeYZSkN86YrvJDvj2MIgkvN+YlB+3/LrWZdAz/wA8mX4eEviqFu0vzg7n5
	 IZFQxJcdBuMRHXJrS7io6Y2tUt4zrPYDeOCKlKO1dBLhjbkG9zzvJQ0oSGbfX9w+aQ
	 kVveCDQQrRKPJqSYucSTZkkDafHjGPVLa6wQ8aBUU3q+xu614rqUEY5/MK7YGH6vke
	 Tkb1UWPZNM9ncuWNTO64iyy+P1rNKqHmW5s7xxBUXLgcQ3FH/k0q7VeZ53dfQvs/DA
	 G0v5HkAHvB6IqKdrMqjn3yiyMb/QX0EUL89+Y93cmNdLbdX0vSIKge/2o0weH0CaGt
	 zLszXf4zyKmJQ==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 75C0B380AEF
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 14:47:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TaDvjx1A";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50a938dda08so657658e87.3
        for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 11:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1699991264; x=1700596064; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zpHo9beYLmkwFp7qytXwjVPrj2lu58PC/dvDdKuQkeo=;
        b=TaDvjx1AexpZtwceDIkctQeh+6dwhWD+V6zRRZxaHIqFuuFWfAqbKXXeeISDMlGqNv
         Xru2jOeFgbaTZrEYl5Yvo20w8ccii+p/mLzpbGdj9TvuP2WuIPNp3xDPuTGLtkAyvguY
         8gFZSJskIB8VSK9kstmAdA21GqWvlcBGsMVZ9YTL1UOzO/oYgOyY4JXhIgAnhfvQI0dX
         6PpEca3v2/WhgcLA5nDmjVf1WoDhBd/B0RX721AmGp23mP8WNlt6jEQT73IEbskW74wi
         qlbnFQNmV1xyIk4Z5WcDRrszdys4PkqLAIKBh7nJmxjvby3/m5sg683Hc2y+bhov1hbh
         Z9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699991264; x=1700596064;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zpHo9beYLmkwFp7qytXwjVPrj2lu58PC/dvDdKuQkeo=;
        b=jNf3JtK3K8o3iyonWa9t5B6c/76rbK2AuzWwyFEot+mu5mCPj3IuBBCu4pGxaMxZez
         PGgOmp9GN/oDmlMvGcHon5nLd3kBWZFh/hwMCGhLq2bjcCHEVQTqwGyCVdSplRixhsb1
         SwuzED+7p0fhry5S6oECneNYkj/a9zEUQoVnsdFdf8N2dNFeEpoohPyB2AcLx/J1kuTG
         IwdvJkC5H4GKLDlogjLwD7TlCVNHCD78Ce22nBLtWWr37KRvI183NBaDBKSk2muOi0A7
         qEUJ7KbameLOCvRfJNxtd2nn4GESnd350Ucwtf0Ckv4kcHWQep8kI8PwKHQiVOWKxSbX
         aAxw==
X-Gm-Message-State: AOJu0Yz1qvF/NVBjKBoQU8T+O9YQ1YJf2y/fh2IuGgzpBB9ea8Nx9fZz
	kTuvvL5uAQTL1Z4zomrFgBv05ME1c/I1XpMdHFyhMf/90s4F4m49
X-Google-Smtp-Source: AGHT+IE4ktEKXbH8carUS3MV2kOCJbcyEn/4Cg2SC4/nEcr2YRP81cfqDj/qFAmGoZ8I9rD2uqkuuxmTW8S/lRZQYaw=
X-Received: by 2002:a05:6512:3142:b0:505:7371:ec83 with SMTP id
 s2-20020a056512314200b005057371ec83mr6896605lfi.48.1699991264373; Tue, 14 Nov
 2023 11:47:44 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=iQw@mail.gmail.com>
 <d3e4747b-49d9-49af-a00a-9f46909d3ac5@gmail.com>
In-Reply-To: <d3e4747b-49d9-49af-a00a-9f46909d3ac5@gmail.com>
Date: Tue, 14 Nov 2023 14:47:32 -0500
Message-ID: <CAB__hTR=YXeTyiJXTF0U-p4eXuVbWMgwrBH=rK3RRbB6KMzj8g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: SHQLWGPNU3S4QZENNS3PDTCJDX7LDS3V
X-Message-ID-Hash: SHQLWGPNU3S4QZENNS3PDTCJDX7LDS3V
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SHQLWGPNU3S4QZENNS3PDTCJDX7LDS3V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8704231724074378774=="

--===============8704231724074378774==
Content-Type: multipart/alternative; boundary="0000000000006fc38e060a220fff"

--0000000000006fc38e060a220fff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Slight update.  When the tune result reports the actual frequency as 450
MHz for a requested frequency of 2450 MHz, the 450 MHz represents an LO at
360 MHz and a digital IF of 90 MHz. Not sure why but that is what is
happening.  The digital IF is truly at 90 MHz. The LO is not at 360 MHz but
at the requested 2450 MHz.  Thus, when I checked for the signal yesterday,
it was not at the requested frequency only because of the digital IF. If I
set the digital IF to 0, then the signal shows up at 2450 MHz (but still
reporting that it is at 360 MHz).

On Tue, Nov 14, 2023 at 10:45=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 13/11/2023 22:29, Rob Kossler via USRP-users wrote:
>
> Hi,
> I am having an issue with successfully tuning the frequency for the Tx
> side of an X310/UBX and it appears to me that a bug was introduced in UHD
> 4.4 (I haven't checked more recent versions, but I expect that they are
> also affected).  The issue is that when you request a frequency such as
> 2450 MHz, the tune result returns with an actual frequency around 450 MHz=
,
> and there does not appear to be an RF signal at the requested frequency.
>
> I submitted an issue with Ettus' issue tracker. But, given the severity o=
f
> this issue, I wanted to check with other users to find out if anyone is
> using the X310/UBX with UHD 4.4 or above and having success with Tx
> tuning.  If so, then it seems I am wrong.  Can anyone confirm one way or
> the other?
> Thanks.
> Rob
>
> I haven't tried this myself.  There may be others in the support org. who
> can try to reproduce and I've rattled their cage.
>   If this is real (and it hasn't been fixed in subsequent releases) it's
> bad.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006fc38e060a220fff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Slight update.=C2=A0 When the tune result=C2=A0reports the=
 actual frequency as 450 MHz for a requested frequency of 2450 MHz, the 450=
 MHz represents an LO at 360 MHz and a digital IF of 90 MHz. Not sure why b=
ut that is what is happening.=C2=A0 The digital IF is truly at 90 MHz. The =
LO is not at 360 MHz but at the requested 2450 MHz.=C2=A0 Thus, when I chec=
ked for the signal yesterday, it was not at the requested frequency only be=
cause of the digital IF. If I set the digital IF to 0, then the signal show=
s up at 2450 MHz (but still reporting that it is at 360 MHz).</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 14=
, 2023 at 10:45=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 13/11/2023 22:29, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div>I am having an issue with successfully tuning the frequency
          for the Tx side of an X310/UBX and it appears to me that a bug
          was introduced in UHD 4.4 (I haven&#39;t checked more recent
          versions, but I expect that they are also affected).=C2=A0 The
          issue is that when you request a frequency such as 2450 MHz,
          the tune result returns with an=C2=A0actual frequency around 450
          MHz, and there does not appear to be an RF signal at the
          requested frequency.</div>
        <div><br>
        </div>
        <div>I submitted an issue with Ettus&#39; issue tracker. But, given
          the severity of this issue, I wanted to check with other users
          to find out if anyone is using the X310/UBX with UHD 4.4 or
          above and having success with Tx tuning.=C2=A0 If so, then it see=
ms
          I am wrong.=C2=A0 Can anyone confirm one way or the other?</div>
        <div>Thanks.</div>
        <div>Rob</div>
      </div>
    </blockquote>
    I haven&#39;t tried this myself.=C2=A0 There may be others in the suppo=
rt
    org. who can try to reproduce and I&#39;ve rattled their cage.<br>
    =C2=A0 If this is real (and it hasn&#39;t been fixed in subsequent rele=
ases)
    it&#39;s bad.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap">
</span></blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006fc38e060a220fff--

--===============8704231724074378774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8704231724074378774==--
