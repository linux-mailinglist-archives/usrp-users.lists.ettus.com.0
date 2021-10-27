Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B22EB43D2D3
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 22:30:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 602D838441A
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 16:30:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GOrIl90G";
	dkim-atps=neutral
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 1919838440C
	for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 16:29:56 -0400 (EDT)
Received: by mail-ot1-f45.google.com with SMTP id x16-20020a9d7050000000b00553d5d169f7so3677760otj.6
        for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 13:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NnKXEJGsWREpIiaNw0kUOjcCMVw+iJlq51BMLPTpEHQ=;
        b=GOrIl90GmEqPj8NqhRE/uQHOrahP43Ugldz1Jvt3nRHV8Fe4NlKz917WkaVHflzwGc
         LudBtBEyBEgMwOyLpRV7mf1lRm31WVCM3F2NatkgiqAwfC9IvibTKKyQbZ9pqchlQXUW
         MPQj11uy3r44eNryA6DRFkB+4Wti0pmxm7aYyHd2JdWqHOFe5+aFy6Q3PlK3lOnvbwOr
         82Qitg33WtM9lR2PRVhYmal5m//lW6LSmj2YrXtEaIhO4SnlZH27bCK5pBwI+xff/L0w
         cUJEDA0MDbXN3lZnaXGU3xdYX4HYlfhnnzbjiflDDI5CNvljcFxTh12FTvVATVGKf9f5
         Preg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NnKXEJGsWREpIiaNw0kUOjcCMVw+iJlq51BMLPTpEHQ=;
        b=D++wUXQ5ulzadUlIdxkvE2a2ytL6s0DV0+kDA4z9QDamsSgCkK9Bt8OezYetvAvnaO
         ZlQuQW/+Z9SLayDItKaxu8X0Y+VKQ8W4qGJ65qB+LDvF67zUYP7ngogJHZ34FYYEER4o
         ckVULWoswRiLc91kAvcac0xRpG9vbZE5a06B9Yiy6Jh3y4TZaD5rLQV1r4OkIq6iVaMu
         4xH2XijiJtkiiZgfsk9AOOm2smikm93fFx9JP0u8gPAehWHO5lM3KNNlRYpwpXA7NIFV
         tZE9GN64wNHvrmT6Zzap98RBUXRaoo85t680n+brngzXwuq/kQ3AKQtUnGMUVboFNa2b
         uDtw==
X-Gm-Message-State: AOAM530g8QQ3I/xuu7po430Z7mkGzamaF29VSdcWCKkjaRfJzkgut5rP
	eIq1CyF+hJrUliUgVb56S2en5yRhV0yxsV2s1DPKHg==
X-Google-Smtp-Source: ABdhPJx8ZyOY4+a6c24kisPUrlsJtZk8u1JnvEyJAqvqI1kW7SIfTOzb/8Ek7Go3My0HEceAgbee1e+21Z3pFy4x0BQ=
X-Received: by 2002:a9d:1c8f:: with SMTP id l15mr26876416ota.337.1635366596123;
 Wed, 27 Oct 2021 13:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com> <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
 <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com> <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
 <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com> <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com>
 <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com> <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
 <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com> <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
In-Reply-To: <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 27 Oct 2021 16:29:45 -0400
Message-ID: <CAB__hTRUkGGhyAUvJY7oMtzqmP24FLq1znUCp+r=OXWy0iA4-g@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Message-ID-Hash: GQIW3XECBY4SDPYVUYW5JASZ4MZCUJOR
X-Message-ID-Hash: GQIW3XECBY4SDPYVUYW5JASZ4MZCUJOR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?5p2O5rO96L+c?= <zeyuan.li@zengyi-tech.com>, USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQIW3XECBY4SDPYVUYW5JASZ4MZCUJOR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5351824153444383873=="

--===============5351824153444383873==
Content-Type: multipart/alternative; boundary="0000000000000a773c05cf5b7546"

--0000000000000a773c05cf5b7546
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Michael / Ettus,
This procedure really needs to be added to the documentation.  This is not
nearly the first time this happened.
Rob

On Wed, Oct 27, 2021 at 10:06 AM Michael Dickens <michael.dickens@ettus.com=
>
wrote:

> Forgot to mention earlier: at device initialization you have to supply th=
e
> external LO at 5 GHz,
> as well as set the device argument as noted. Once the device is fully
> initialized then you can
> change the center frequency & the supplied LO must be 2x that. Hope this
> helps! - MLD
>
>
> On Wed, Oct 27, 2021 at 9:51 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-10-27 03:11, zeyuan.li@zengyi-tech.com wrote:
>>
>> I set the correct device arguments,but it doesn=E2=80=99t work correctly=
 and also
>> there is no error report.
>>
>> I don=E2=80=99t what can I do next .
>>
>> So I want to config this argument in mpm.conf file or usrp_hwd.conf file
>> to try to use external LO .
>>
>> I couldn=E2=80=99t find this file named "usrp-hwd.conf" in =E2=80=9C/usr=
=E2=80=9D .and also
>> =E2=80=9Cmpm.conf=E2=80=9D
>>
>> Again, modifying the MPM config file is NOT necessary to get external LO
>> to work.
>>
>> What frequency are you trying to use?
>>
>> Can you share the lines of code you use to set up the N310 for shared LO
>> operation--including the initial device "make" with device arguments, et=
c.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000a773c05cf5b7546
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Michael / Ettus,<div>This procedure really needs to be add=
ed to the documentation.=C2=A0 This is not nearly the first time this happe=
ned.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Oct 27, 2021 at 10:06 AM Michael Dickens &l=
t;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div>Forgot to mention earlier: at devi=
ce initialization you have=C2=A0to supply the external LO at 5 GHz,</div><d=
iv>as well as set the device argument as noted. Once the device is fully in=
itialized then you can</div><div>change the center frequency &amp; the supp=
lied LO must be 2x that. Hope this helps! - MLD</div></div></div><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Oct 27, 2021 at 9:51 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-27 03:11,
      <a href=3D"mailto:zeyuan.li@zengyi-tech.com" target=3D"_blank">zeyuan=
.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I set the correct devic=
e
            arguments,but it doesn=E2=80=99t work correctly and also there =
is no
            error report.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I don=E2=80=99t what ca=
n I do
            next .<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">So I want to config thi=
s
            argument in mpm.conf file or usrp_hwd.conf file to try to
            use external LO .<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I couldn=E2=80=99t find=
 this
            file named &quot;usrp-hwd.conf&quot; in =E2=80=9C/usr=E2=80=9D =
.and also =E2=80=9Cmpm.conf=E2=80=9D<u></u><u></u></span></p>
        <br>
      </div>
    </blockquote>
    Again, modifying the MPM config file is NOT necessary to get
    external LO to work.<br>
    <br>
    What frequency are you trying to use?<br>
    <br>
    Can you share the lines of code you use to set up the N310 for
    shared LO operation--including the initial device &quot;make&quot; with=
 device
    arguments, etc.<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000a773c05cf5b7546--

--===============5351824153444383873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5351824153444383873==--
