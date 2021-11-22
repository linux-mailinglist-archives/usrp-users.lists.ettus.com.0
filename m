Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5BC458E09
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 13:11:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 482A6383EBB
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 07:11:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ZXJbvqge";
	dkim-atps=neutral
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 70EFA383C2C
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:10:44 -0500 (EST)
Received: by mail-il1-f172.google.com with SMTP id e8so17786056ilu.9
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 04:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hcvy29xIJ5hMW013vhgLM3fm7cFie+rpHU47E5NraNo=;
        b=ZXJbvqgedshbYgnWBOS3ssSUXFSx+jreFNK/br7/IDaVjYyF1XrBZ0cCKsaS+sPZ3Q
         1ir9VRvZq3tAPJoHtVno9plKl2F3y9EHi0XQbn/z3qqtfCDx30pmaZs2fquC7dMd48I5
         4ywr+Jihi/vL0MjywfFtn8lf2VMCCQ5iqvPO7N2Yi/TeGz05Ekbb4LueCr/sSKrwPdTg
         j6+mOcZWqSEUH5ovC0nEZXcHQD/9rLIGLgKAb003h2GRFZT8yy0FEiDZgwOp+iD73IUy
         eFxZWIngkUEbu655zZsxoeMsBN4HQKsKNPhQEQgGmwh5zvLvZcTN5J4fSLtOtlbddPD2
         27Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hcvy29xIJ5hMW013vhgLM3fm7cFie+rpHU47E5NraNo=;
        b=BaQb3j5MS2nSQSDwO9fM/gBc5XBGlubbW0gcythJjQ2IR5AHQ7P3Z1P2XlC4BAxI9G
         dtIiHCkB8IPeB9t5ALdJFxU7slZkOBvtqamwYk/HO9hep8GzgtKerAnYEzWEZmuJNQ5k
         UHrQtn5o26FxLUQACClQt0GrmpwxPnHOrNnukJTaPhV3qKYLahZ2IGtJYP01/9W8VhM+
         tkgO7q4dzcp7k802tm/DvMu1IR/iZdlqq3RweKSZg2KEDiDxhGkvzn2ZwnsXNfBV6Ch+
         FSb/5wMXalEtfzd+Yf3s0GXcHQf4T6nYHTmlHRF/OcG1ega9FG/p1qYR82//b2WyzuB0
         zK0g==
X-Gm-Message-State: AOAM533ULBD814BGhu0iNcItaybvSs/pYDjWdZV8XilmL9bcAcYrVCrr
	RNfR5CFSzxJyuYSldHiahSSePBnq9LirQTmH1VEk205hgBGSfH0B
X-Google-Smtp-Source: ABdhPJz7Nuv8uLDjOyGOjNmaCQ7s+ND8dMv6/MhvLeBegOqt6vKFWQAN4+1V8wgPUeUoAngRW/gcei9m3vfXe6+cFA8=
X-Received: by 2002:a92:d387:: with SMTP id o7mr5612202ilo.308.1637583044389;
 Mon, 22 Nov 2021 04:10:44 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTScPb2yKf9wUWBSSu6RiyKSwvrYXc-ZB-t7wK1fVdFaNQ@mail.gmail.com>
In-Reply-To: <CAB__hTScPb2yKf9wUWBSSu6RiyKSwvrYXc-ZB-t7wK1fVdFaNQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 22 Nov 2021 13:10:33 +0100
Message-ID: <CAFOi1A6JC_nvEHfn4_3K6AEh2sVfd9LnwV4vh_YrmhqwT0fSFw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: JU2SEX3YJAKQOBWJMH55SX4DTYRH3UKZ
X-Message-ID-Hash: JU2SEX3YJAKQOBWJMH55SX4DTYRH3UKZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_graph->synchronize_devices()
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JU2SEX3YJAKQOBWJMH55SX4DTYRH3UKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1024433076791658215=="

--===============1024433076791658215==
Content-Type: multipart/alternative; boundary="000000000000a6c31305d15f83ae"

--000000000000a6c31305d15f83ae
Content-Type: text/plain; charset="UTF-8"

Hey Rob,

thanks for asking -- this function is definitely under-documented. The
short answer is: This function should be called for synchronous operations,
but only on X3x0 will it make any difference if you don't call it.

What does it do? This function provides additional synchronization on top
of the timekeeper synchronization. Currently, only X310 needs this for the
DAC synchronization.

So why is not called in multi_usrp_rfnoc? To be honest, I had to
double-check the code myself

On Wed, Nov 17, 2021 at 12:04 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I recently stumbled across this synchonize_devices() function and I'm
> wondering if I need to be calling it.  I ran grep in the UHD source folder
> and there are no examples of calling this function.  I read the help but
> it's not clear to me how this function differs from calling
> set_time_next_pps() on all of the motherboards (such as is done in the
> lib/multi_usrp_rfnoc.cpp code).  My thought process is: if multi_usrp_rfnoc
> does not need to call synchonize_devices(), why would my custom application
> need to call it?  Any help would be appreciated.
>
> Thanks.
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a6c31305d15f83ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Rob,</div><div><br></div><div>thanks for asking -=
- this function is definitely under-documented. The short answer is: This f=
unction should be called for synchronous operations, but only on X3x0 will =
it make any difference if you don&#39;t call it.</div><div><br></div><div>W=
hat does it do? This function provides additional synchronization on top of=
 the timekeeper synchronization. Currently, only X310 needs this for the DA=
C synchronization.</div><div><br></div><div>So why is not called in multi_u=
srp_rfnoc? To be honest, I had to double-check the code myself<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Nov 17, 2021 at 12:04 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd=
.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I recently stumbled across th=
is synchonize_devices() function and I&#39;m wondering if I need to be call=
ing it.=C2=A0 I ran grep in the UHD source folder and there are no examples=
 of calling this function.=C2=A0 I read the help but it&#39;s not clear to =
me how this function differs from calling set_time_next_pps() on all of the=
 motherboards (such as is done in the lib/multi_usrp_rfnoc.cpp code).=C2=A0=
 My thought process is: if multi_usrp_rfnoc does not need to call synchoniz=
e_devices(), why would my custom application need to call it?=C2=A0 Any hel=
p would be appreciated.<div><br></div><div>Thanks.</div><div>Rob</div></div=
></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6c31305d15f83ae--

--===============1024433076791658215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1024433076791658215==--
