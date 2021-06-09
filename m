Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D334F3A20AC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 01:20:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBBB73848A2
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 19:20:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AtSxuUnA";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C294383F76
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 19:20:05 -0400 (EDT)
Received: by mail-yb1-f180.google.com with SMTP id g142so18561042ybf.9
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 16:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tuxCmD4S1P9feWhcwdoU9dBxv0lioRAOj5m6FhQj5ik=;
        b=AtSxuUnAQ5aA58AtppXDqqpcHPckgvrUdDEeWWvfU8o8P6TlIv412mb+/HGP9zEZQt
         e+sPAfPSAn04rfYy4CTaR3eVNbaAi3rtyZNP4LG1AZ0Hz7VHOmBM9paI+fDFbaLWzixI
         ZmqAXoc7Q6b8FaG1aZR3MESxcVWcli8GaZblLxTA7/7OHS1Sf3XDu4wtnyyXNyN8Fw8d
         KqGkYrwQStzmhaWA2gB1UjHJ68iVERlCahtZysuOKUVf+v/SnTjlkLl/8vcnlNUTWJZZ
         4NUZ7KN2WPjSoE4AeodEENsZ9ZI3sP+MCbjj0YyAPhDAGpMm7FR0lyfr276PjgbtPMNS
         A4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tuxCmD4S1P9feWhcwdoU9dBxv0lioRAOj5m6FhQj5ik=;
        b=B8KC0Y8MeL0e2uuvcADTigbEuHADiEGoFtzT0MAH9bP4UbHakL31bQWzH2GT1CE3G4
         dUzd5cjsQ7ZASzur6adIuDvXDYQy3nMmnGDxJMRAMm7NM+hhBugzTf8Ed6SErfk40WDF
         iZoMWqxvbZgbog4wEApnRsnpcks2/3DgRJ/uuBYmbvS6GIgxcCKByGrUswR7xNWizNfL
         vOInq5ulbMvrLtCcCgMnWnsjyk4oc2WTu2WBdC57Rzu3F7BYcRAWU2RkWOoRV1gi5gpf
         YaUvyLmJFEZ+/yOuWYT2hmA4/l0kGdzJXRv9dZJvmC7vZBTJObVXf325kxq5cydqjuLM
         hVVA==
X-Gm-Message-State: AOAM533xK6Nea7IDoHO6OsmchT+6EuZcoL+5OoeruoVdzeoyy6T2o6Qp
	ImpXErbAq379jCFUtXLOwhWFCpEo/GlxEeRLEio=
X-Google-Smtp-Source: ABdhPJw9vq1m9R0Y31ASEHC8mTCRBa/j/X5MEybJilQ/K1/eXoiaCeIjLMGGnMQlKQE70SJypq1Y0lu2TogrxrAjhgQ=
X-Received: by 2002:a25:6182:: with SMTP id v124mr3348312ybb.383.1623280804732;
 Wed, 09 Jun 2021 16:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NbvdhggK7CiVjVono=YYH=OkT4v0TipKR1xKxp-9nYYSw@mail.gmail.com>
 <EDF9A135-3A44-4829-8DE4-82B7E6E168AE@gmail.com> <CAEXYVK75VK9b+K=sj=oyHw5-Lj1OnudjL5dDzFtciBVK_7GmRA@mail.gmail.com>
In-Reply-To: <CAEXYVK75VK9b+K=sj=oyHw5-Lj1OnudjL5dDzFtciBVK_7GmRA@mail.gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Wed, 9 Jun 2021 19:19:55 -0400
Message-ID: <CAL0m=NYgG1T+s4CvRtVcAeX1Md5+NzAWCu7-Uv-4No1qiUr0cQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: DBI7BQSDVB5P6CRADHZYMKSAXUWJYFV4
X-Message-ID-Hash: DBI7BQSDVB5P6CRADHZYMKSAXUWJYFV4
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disable N310's auto dc offset
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DBI7BQSDVB5P6CRADHZYMKSAXUWJYFV4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0818202085157114928=="

--===============0818202085157114928==
Content-Type: multipart/alternative; boundary="000000000000bca2da05c45d8327"

--000000000000bca2da05c45d8327
Content-Type: text/plain; charset="UTF-8"

Brian, Thanks for the detailed information. It's very helpful. -Hua

On Wed, Jun 9, 2021 at 4:43 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Wed, Jun 9, 2021 at 4:36 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> The Ad9371 front-end chip has dc offset removal always on.
>
>
> The AD9371 API has a call to disable the digital DC offset correction:
>
>
> https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykonos/adi/mykonos.h#L270
>
> But it isn't exposed via a higher layer call.  The Mykonos API is called
> in this file:
>
>
> https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykonos/ad937x_device.cpp
>
> You'd need to modify the file and rebuild MPM, load it onto the N310, then
> restart the uhd hardware service on the N310.
>
> Not sure how much more quadrature error correction (QEC) runs
> non-digitally on the device.  This is probably the hackiest way to just try
> it out.
>
> Brian
>

--000000000000bca2da05c45d8327
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Brian, Thanks for the detailed information. It&#39;s very =
helpful. -Hua</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Jun 9, 2021 at 4:43 PM Brian Padalino &lt;<a href=3D"m=
ailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr">On Wed, Jun 9, 2021 at 4:36 PM Marcus D Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wr=
ote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">The Ad9371 front-end chip has dc offset removal always on.<=
/blockquote><div><br></div><div>The AD9371 API has a call to disable the di=
gital DC offset correction:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D=
"https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d=
96884ca6/mpm/lib/mykonos/adi/mykonos.h#L270" target=3D"_blank">https://gith=
ub.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/=
lib/mykonos/adi/mykonos.h#L270</a></div><div><br></div><div>But it isn&#39;=
t exposed via a higher layer call.=C2=A0 The Mykonos API is called in this =
file:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/Et=
tusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykon=
os/ad937x_device.cpp" target=3D"_blank">https://github.com/EttusResearch/uh=
d/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykonos/ad937x_devi=
ce.cpp</a></div><div><br></div><div>You&#39;d need to modify the file and r=
ebuild MPM, load it onto the N310, then restart the uhd hardware service on=
 the N310.</div><div><br></div><div>Not sure how much more quadrature error=
 correction (QEC) runs non-digitally on the device.=C2=A0 This is probably =
the hackiest way to just try it out.</div><div><br></div><div>Brian</div></=
div></div>
</blockquote></div>

--000000000000bca2da05c45d8327--

--===============0818202085157114928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0818202085157114928==--
