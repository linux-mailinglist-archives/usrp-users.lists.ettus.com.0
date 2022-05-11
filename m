Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5665233EF
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 15:19:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23932384810
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 09:19:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652275162; bh=xE0YI2BPxkyrggm8FrRH/c9JG50QYuAf9E2aHTTQYYA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fxsl/V++26ZFfX/nvKUSY0XOCGkeoF6YSFrlVf+XOg7feICPQjLkA1vop/NkXuIsd
	 7eK8+p664Yz3agwYCUdRFUJ/EYN6WXOjSlXuJbsDbEA44nUeR6ruvl6cHxXJ74/OZO
	 oNcX9DB3GWaD/hsPg0Wj3Aeyd15Xjlxr6yc6SjT8IL8hoKWVYNVr8Xfe394ZLg9nAW
	 XQpaZ5xOs0uEJLPGB39c4aLk5833S+vFrHPIn1UHbM2HDmpuM+ghxPQp0XlEoHxCRm
	 VHXc8+a4FhIEO3iSZGWg6knm4BmxUXGXBpq35zdMc0neaurwol/o2+R8rODPdU09P6
	 y35ZpIAvoaD7w==
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 70DBD3845B7
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 09:18:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GMCfMcSK";
	dkim-atps=neutral
Received: by mail-pg1-f174.google.com with SMTP id a19so1564902pgw.6
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 06:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=z7UnMSYhsHqDxn6erZFGJ7QWfIaUZabCPSB8HY+llL0=;
        b=GMCfMcSKxSabU1MTwGdjTVz4HNvumRULlEPndWul1s2dDBBeUQsAuNUGO29KkpNptl
         Dsn0wqpyV8rFKgs5mfwGa0TOY+Jp+ujQz7BxdarK0FY4iJMeOPD9atpSal12SXlJqS/S
         traXeA0kb/hmEvJoDjXY2dZUPwcOd0H50YOJe5gPzHYk8m6JXofTQ5wKbASkpjgXwnFG
         dPGnTKyoF0F4zzfI7Nq3Xh+fyy4EKDSYL/lsJETX0AI/IimMUPzXWOzmZHuQQVCqx+PL
         Z4/8UvgzXTC6WsClTUmzSgsSPwNQdI6G3J+as9jkSaWvP9zEb1+M1HXp8mzBIrVxJ8kT
         O4cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=z7UnMSYhsHqDxn6erZFGJ7QWfIaUZabCPSB8HY+llL0=;
        b=rtLORJuv1w599FS8EDsbIIe28Y04HGhi4cAlEoLbJTTZra9+HQTYINGHbF44avmEMq
         PRXy2ySe+DYUjkKZaQIHKAj7pnuJsc8qB6NTKJburpkUM3QLf6yyL6LbjDhZ9GB22Xg3
         YpXTmGkFDsn895XojWJtlGLfaYy/WB77/FTU+V6SCPuc2RwHYHL2QaW/+uf2kHVEfyD5
         e1RFU4hrjt9jBSOu5lBX5HXoEJs/xZvOG4Xo0/VsrRisu/P3U2E1OJdENa7grQFMr2HH
         PMWCQGyu66Ccn+Ii8sF7Pix+db53ez8IC29anCAoFxrbItdueMgIZQbs2vYjlYPUkRG7
         wq8w==
X-Gm-Message-State: AOAM5305WpRbTtcwJhvz9nVBiNut7sb60voWMEj34F+gNjV/SdIW9FHv
	uHGttFu6Y/F+mc+cupWmvKwaJjOs9MvFbpQ3sMjz5oHniO4=
X-Google-Smtp-Source: ABdhPJzXy3LOUCSd7rj9mvsIMeA8bS1qCe41XqQrWeS+KOAoBayK9G+C3saegSBiGB2e5jIv7Jn+5pRiMFJLID5a6BA=
X-Received: by 2002:a05:6a00:ad0:b0:4e1:2d96:2ab0 with SMTP id
 c16-20020a056a000ad000b004e12d962ab0mr25347835pfl.3.1652275101252; Wed, 11
 May 2022 06:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=saGc7-M7Begw@mail.gmail.com>
 <714d6b41-a910-175c-b25f-e30e6154fcb0@gmail.com>
In-Reply-To: <714d6b41-a910-175c-b25f-e30e6154fcb0@gmail.com>
From: Marcin Puchlik <puchlikmarcin@gmail.com>
Date: Wed, 11 May 2022 15:18:09 +0200
Message-ID: <CAFghhNMMweXPTLyhvG0v9c2VhRSJgCG3T3mac8EGA8cmFEnw6g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: ESQVGE6ESLXS6OTI3OCBSUPDWX24AOSI
X-Message-ID-Hash: ESQVGE6ESLXS6OTI3OCBSUPDWX24AOSI
X-MailFrom: puchlikmarcin@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why do we need 1 PPS and 10 MHz signal to synchronize
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESQVGE6ESLXS6OTI3OCBSUPDWX24AOSI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6242454911604764467=="

--===============6242454911604764467==
Content-Type: multipart/alternative; boundary="0000000000007b42fe05debc46fa"

--0000000000007b42fe05debc46fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus,
Thank you very much for the answer. Does it mean that 1 PPS signal is
optional? Can I only provide an external 10 MHz clock without 1 PPS?
*Z powa=C5=BCaniem *
*Marcin Puchlik*


=C5=9Br., 11 maj 2022 o 14:24 Marcus D. Leech <patchvonbraun@gmail.com>
napisa=C5=82(a):

> On 2022-05-11 06:17, Marcin Puchlik wrote:
>
> Hello Community,
> Like in the topic, I know that a stable 10 MHz source is needed as a cloc=
k
> signal but why do we need 1 PPS signal? How is it used by the USRP
> hardware? Can someone explain that to me?
> Thanks
> Marcin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> 1PPS is used to provide timestamp-clock synchronization across multiple
> devices, typically.  This is important when your application requires thi=
s,
> such as in MIMO or
>   multi-receiver TDOA schemes, etc.
>
> Basically, when you have multiple devices you use set_time_unknown_pps()
> or set_time_next_pps() to signal to all devices in your multi_usrp object
> that at the next
>   1PPS, to set the timestamp clock to the value given in the the API call=
.
>
> This turns out to be useful even in single devices that are "bicameral",
> such as B210 and X310, where there are (for historic and architectural
> reasons)
>   TWO timestamp clocks.  Use the 1PPS synchronization primitives causes
> the internal timestamp clocks to become synchronized.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007b42fe05debc46fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus,<div>Thank you very much for the answer. Does it me=
an that 1 PPS signal is optional? Can I only provide an external 10 MHz clo=
ck without 1 PPS?<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><b>Z powa=C5=BCaniem=C2=A0</b><div><b>Marcin Puchlik</b></div></di=
v></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">=C5=9Br., 11 maj 2022 o 14:24=C2=A0Marc=
us D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gm=
ail.com</a>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-05-11 06:17, Marcin Puchlik
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello Community,
        <div>Like in the topic, I know that a stable 10 MHz source is
          needed as a clock signal but why do we need=C2=A01 PPS signal? Ho=
w
          is it used by the USRP hardware? Can someone explain that to
          me?</div>
        <div>Thanks</div>
        <div>
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div>Marcin</div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    1PPS is used to provide timestamp-clock synchronization across
    multiple devices, typically.=C2=A0 This is important when your
    application requires this, such as in MIMO or<br>
    =C2=A0 multi-receiver TDOA schemes, etc.<br>
    <br>
    Basically, when you have multiple devices you use
    set_time_unknown_pps() or set_time_next_pps() to signal to all
    devices in your multi_usrp object=C2=A0 that at the next<br>
    =C2=A0 1PPS, to set the timestamp clock to the value given in the the A=
PI
    call.<br>
    <br>
    This turns out to be useful even in single devices that are
    &quot;bicameral&quot;, such as B210 and X310, where there are (for hist=
oric
    and architectural reasons)<br>
    =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1PPS synchronization primiti=
ves
    causes the internal timestamp clocks to become synchronized.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007b42fe05debc46fa--

--===============6242454911604764467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6242454911604764467==--
