Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A672246DD18
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 21:30:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C932384781
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 15:30:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AEUrN9YU";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id D9631384638
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 15:29:42 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id v138so8749027ybb.8
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 12:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NHZ1npmGdfjaR3no1xQ0jhxko17K5IHQhjVK3SobFPk=;
        b=AEUrN9YUC4F6rLFFoP6vSiK9rUC3sMEAfd0a27VBkcBGhg6d1l1hNJhqlMG7D7QRpc
         CHq6F0YbYCLiwWS73sCMIHYgCVde8X8zdBpxs16H6oXpfwwIzpZJtdxcudkEFNUKTH4q
         GDnyv877XgXrsWucGcpmPRkv1SvVZLJwdiRgbgiTq08M0VZcHEd+t1Sb5JrTFPgr6wHE
         5GbHNXXuy3vNQ/CLCK5GAJL4TDZm0PDWykr/kRSjZMxxucXQ6Qa4mRzzUPLQ72o9av29
         I8kZElrmwXtAW2WGkG305cza4ZUgKY3kdrVNE0dtNoJEySrC/Fe6upf0GQZS9STX6g1K
         v17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NHZ1npmGdfjaR3no1xQ0jhxko17K5IHQhjVK3SobFPk=;
        b=ZRImyyOEMqMtQpq+Kdh38TXfcQvQZe9EyI1KRxgNn+NlAzBVKZ5D1mjVNxj8Tbhu12
         6rio+fUzYbln4H8n+PXP4ksvNc9FKESR1AuJSYr8Saz1TDtfVjuOHEdGL9qBqg4JMSxG
         DmUYu/Vd+sB5ocms2jHHNueTRYvmNS7PcLcSbsNTJFa7UMqHjfIGje9ZCUqKEtdacnPM
         +lSVLp6lpLnKl8RXvunppEr2rbgtXD0UrDNEn25WcKu3dmxDICBR1fTqXvfScTSGjeHF
         UdPhA0X3oQA7n7A50WfRm28zNpnchliLioTv1jUecig2wEtPGJ4tDzd0c7uvhcJpY3EG
         dyqw==
X-Gm-Message-State: AOAM531vTwDTjHZgvFdmp4m4CVatlfO1dv9R9PXoI2sLRHu0XmysJIGm
	zNo6x/smumtORL5rne3NPuUtBtCM1PJ9Rv4PmIAifw==
X-Google-Smtp-Source: ABdhPJx7OhNgF5HPBATzaeK0036+PvbAmP1jR2jlbk9ZkExkdUgasi7bxA7Uafz2gPsnU9g+ZgIqqr6tAeCORB+/psw=
X-Received: by 2002:a25:31d5:: with SMTP id x204mr1182977ybx.750.1638995381894;
 Wed, 08 Dec 2021 12:29:41 -0800 (PST)
MIME-Version: 1.0
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
In-Reply-To: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Dec 2021 15:29:31 -0500
Message-ID: <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
To: Jason Merlo <merlojas@egr.msu.edu>
Message-ID-Hash: EG5J3MNRSAJ2JJAPF3BKBFRSZGU7VJ3I
X-Message-ID-Hash: EG5J3MNRSAJ2JJAPF3BKBFRSZGU7VJ3I
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EG5J3MNRSAJ2JJAPF3BKBFRSZGU7VJ3I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1023824049884349484=="

--===============1023824049884349484==
Content-Type: multipart/alternative; boundary="00000000000087219a05d2a859c5"

--00000000000087219a05d2a859c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jason,
A few questions:
- why do you want to avoid using PPS?
- are you using a common 10 MHz ref?
- what is the level of "synchronous" you are looking for?  Are you hoping
to have simultaneous sampling across all channels?
Rob

On Wed, Dec 8, 2021 at 3:15 PM Jason Merlo <merlojas@egr.msu.edu> wrote:

> Hi All,
>
> I=E2=80=99m currently working to synchronize multiple X310=E2=80=99s cloc=
ks without a PPS
> input, however right now the best method I can find to update the clock
> from a host PC (using the C++ API) is to query the current time from the
> USRP device (using usrp::multi_usrp::get_time_now), add a time delta to
> the current time, then send back the new clock time to the USRP device
> (using usrp::multi_usrp::set_time_now).  Unfortunately, this method
> introduces large timing errors due to the nondeterministic nature of pack=
et
> processing on both he CPU and network stack.
>
> I=E2=80=99m wondering if anyone knows of any other techniques for an "in-=
place"
> time update. I.e., is there a method for the host PC to send a time delta
> to the USRP which would be added to the clock register in a single
> operation?
>
> I see there are other get/set_time_now functions in the rfnoc::mb_control
> and rfnoc::radio_control  classes, but I=E2=80=99m not sure if these woul=
d allow
> me to accomplish this using only the C++ API. I can=E2=80=99t seem to fin=
d much
> documentation on this aside from the examples in the
> =E2=80=9Cuhd/host/examples/rfnoc*=E2=80=9D folder.
>
> If it=E2=80=99s not possible to accomplish this using a purely C++ approa=
ch, is it
> possible to do this through a custom RFNoC block?  I don=E2=80=99t have e=
xperience
> with RFNoC at the moment and I=E2=80=99m not sure if that register is exp=
osed to
> user blocks, or if so, if the register update would be deterministic in
> time, but if there=E2=80=99s motivation I would be willing go down the RF=
NoC path.
>
> Thanks in advance,
> Jason
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000087219a05d2a859c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jason,</div><div dir=3D"ltr">A few que=
stions:<div>- why do you want to avoid using PPS?</div><div>- are you using=
 a common 10 MHz ref?</div><div>- what is the level of &quot;synchronous&qu=
ot; you are looking for?=C2=A0 Are you hoping to have simultaneous sampling=
 across all channels?</div><div>Rob</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 8, 2021 at 3:15 PM Jas=
on Merlo &lt;<a href=3D"mailto:merlojas@egr.msu.edu">merlojas@egr.msu.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv style=3D"overflow-wrap: break-word;">Hi All,<div><br></div><div>I=E2=80=
=99m currently working to synchronize multiple X310=E2=80=99s clocks withou=
t a PPS input, however right now the best method I can find to update the c=
lock from a host PC (using the C++ API) is to query the current time from t=
he USRP device (using <font face=3D"Menlo">usrp::multi_usrp::get_time_now</=
font>), add a time delta to the current time, then send back the new clock =
time to the USRP device (using=C2=A0<span style=3D"font-family:Menlo">usrp:=
:multi_usrp::set_time_now</span>).=C2=A0 Unfortunately, this method introdu=
ces large timing errors due to the nondeterministic nature of packet proces=
sing on both he CPU and network stack.</div><div><br></div><div>I=E2=80=99m=
 wondering if anyone knows of any other techniques for an &quot;in-place&qu=
ot; time update. I.e., is there a method for the host PC to send a time del=
ta to the USRP which would be added to the clock register in a single opera=
tion?</div><div><br></div><div>I see there are other=C2=A0<span style=3D"fo=
nt-family:Menlo">get/set_time_now</span>=C2=A0functions in the <font face=
=3D"Menlo">rfnoc::mb_control</font> and <font face=3D"Menlo">rfnoc::radio_c=
ontrol</font>=C2=A0 classes, but I=E2=80=99m not sure if these would allow =
me to accomplish this using only the C++ API. I can=E2=80=99t seem to find =
much documentation on this=C2=A0aside from the examples in the =E2=80=9Cuhd=
/host/examples/rfnoc*=E2=80=9D folder.</div><div><br></div><div>If it=E2=80=
=99s not possible to accomplish this using a purely C++ approach, is it pos=
sible to do this through a custom RFNoC block?=C2=A0 I don=E2=80=99t have e=
xperience with RFNoC at the moment and I=E2=80=99m not sure if that registe=
r is exposed to user blocks, or if so, if the register update would be dete=
rministic in time, but if there=E2=80=99s motivation I would be willing go =
down the RFNoC path.</div><div><br></div><div>Thanks in advance,</div><div>=
Jason</div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000087219a05d2a859c5--

--===============1023824049884349484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1023824049884349484==--
