Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C55243CB89
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 16:06:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A112D384417
	for <lists+usrp-users@lfdr.de>; Wed, 27 Oct 2021 10:06:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="B0djwfbm";
	dkim-atps=neutral
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 08761383FAA
	for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 10:06:08 -0400 (EDT)
Received: by mail-ed1-f48.google.com with SMTP id y12so11328643eda.4
        for <usrp-users@lists.ettus.com>; Wed, 27 Oct 2021 07:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pj3KSdX0T1vC3x9Dp8RPClfsVLMSeRM4RqZ14UD8e4g=;
        b=B0djwfbmTneOiTXYUL8ggLgrsdhB+bo9QRp+/A0Bl3I5nf6MU9atQI+Sx8ehwVGfmp
         sE9QKS2oOBJAJq8Fr7yDeLtEqk4Wmj6jrJVUfy530IAmFBhYlkIVmrOyVhAmiRmhsWsJ
         tzhBHrjtjJNzx9LaM7k0cYziLfmVbBcFk/BcCeVPmwkPDsTEDrCdVe3/30aQqaW8eN6s
         Brbbr8bIjwkPQLRNDnc5Ew9qFn5RzVuCoH+j0sZnAefIP3VrqpsjT10auiE83a/Yvh3O
         XT0DF8VE56I6ghRvCGmiDtmHHdzTUCcRo/DudPbU4vMI5DsJ5VASgDYwAEOEsRWuJAPU
         cq8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pj3KSdX0T1vC3x9Dp8RPClfsVLMSeRM4RqZ14UD8e4g=;
        b=bOxNeT1rtCcio3f5Wpyn3D8CRHFkIKRNoQbktqkCTB4cp1gP56CqKWsmgQxmfTDyaB
         aQh7GiCBtDQowr5mT7l3nAvnFHbfbk5utAIlCeGj2pyS7b/diq8Cmz/tKZSa/PMTU+3i
         EpK6eT4okLT79u5Jvi6nb92MP7fEJ+XzJm6oZl1xU5pXKvH5I0H0RaPMqMFW/s7bjYOK
         RPFIGc4RmaouGcFLWpuaIkYqVJCsxxxc3r0Y8erWeobIvHce1WR+eadwlhXHW7MbYGyg
         caS/XleayFVwyKz3vo9e+WO7dYS3k6ZUmW9XXeV+3Rte2ZW0kyTlueFRjGjLGMmhrhoe
         UX0A==
X-Gm-Message-State: AOAM53315XMv2est5Tinpeh/y2LPdecL3MjyYezLwec6tEgFhm/rlNAI
	nMu2D990cdQlZSv4egfIbTnB3gbe6LhDxzr4iOGfEQdsRK3xA4X7
X-Google-Smtp-Source: ABdhPJznyPnvGiVYjmc9RQMUed2i7skAQ6bLevqfksoaB7s4e0/Wbyrsjlbj4VWe5o6NwMRxtfek3gkMBFzlC49MCrs=
X-Received: by 2002:a17:906:46db:: with SMTP id k27mr38775446ejs.436.1635343562570;
 Wed, 27 Oct 2021 07:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com> <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
 <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com> <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
 <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com> <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com>
 <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com> <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
 <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com>
In-Reply-To: <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 27 Oct 2021 10:05:51 -0400
Message-ID: <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ARDXZ27WTOKP4ZO7Q7MJK535LWNVKQSP
X-Message-ID-Hash: ARDXZ27WTOKP4ZO7Q7MJK535LWNVKQSP
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?5p2O5rO96L+c?= <zeyuan.li@zengyi-tech.com>, USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ARDXZ27WTOKP4ZO7Q7MJK535LWNVKQSP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4370933514701287485=="

--===============4370933514701287485==
Content-Type: multipart/alternative; boundary="00000000000022209a05cf56189b"

--00000000000022209a05cf56189b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Forgot to mention earlier: at device initialization you have to supply the
external LO at 5 GHz,
as well as set the device argument as noted. Once the device is fully
initialized then you can
change the center frequency & the supplied LO must be 2x that. Hope this
helps! - MLD


On Wed, Oct 27, 2021 at 9:51 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-10-27 03:11, zeyuan.li@zengyi-tech.com wrote:
>
> I set the correct device arguments,but it doesn=E2=80=99t work correctly =
and also
> there is no error report.
>
> I don=E2=80=99t what can I do next .
>
> So I want to config this argument in mpm.conf file or usrp_hwd.conf file
> to try to use external LO .
>
> I couldn=E2=80=99t find this file named "usrp-hwd.conf" in =E2=80=9C/usr=
=E2=80=9D .and also
> =E2=80=9Cmpm.conf=E2=80=9D
>
> Again, modifying the MPM config file is NOT necessary to get external LO
> to work.
>
> What frequency are you trying to use?
>
> Can you share the lines of code you use to set up the N310 for shared LO
> operation--including the initial device "make" with device arguments, etc=
.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000022209a05cf56189b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div>Forgot to mention earlier: at device initiali=
zation you have=C2=A0to supply the external LO at 5 GHz,</div><div>as well =
as set the device argument as noted. Once the device is fully initialized t=
hen you can</div><div>change the center frequency &amp; the supplied LO mus=
t be 2x that. Hope this helps! - MLD</div></div></div><br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 27, 2=
021 at 9:51 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
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

--00000000000022209a05cf56189b--

--===============4370933514701287485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4370933514701287485==--
