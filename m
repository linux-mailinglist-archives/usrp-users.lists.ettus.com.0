Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F09DE4815D3
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 18:34:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0305385077
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 12:34:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U/DfN+VQ";
	dkim-atps=neutral
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B70F3846A3
	for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 12:33:39 -0500 (EST)
Received: by mail-ot1-f41.google.com with SMTP id 45-20020a9d0a30000000b0058f1a6df088so29247876otg.4
        for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 09:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mPKayyuNqIyR7B/6/DoV5KkJ4nA7wuNqmAYsguiVZ+c=;
        b=U/DfN+VQuNIQn4P94upNIm92ZBgGRHFRBPrCfPaj5Q6ckmLmVkut2GTQKVCgeeZ24b
         GdIoSOvjhe4Owqzc6pk4Grl0WSRO8YeEyDO1wXgsVG+lhABUJCHHRzfi+BCahmdg7uF7
         QCzr4tNXDmdI4om8Hj3WFSwSmEg+3Bu4OLQcN+5FIrdGl3/xz7w7YVfObzIsSYAV6sE1
         wRCcIMfivLNbCQk5rCm4Q5MsdlseRtkoibkkRv8yFoLMC7PuYdrXRRna0jZnDPV1rH0U
         4TU9BEWj4tokT8/wUVeOqiANjGwKKQRLLsE+XMMGXOnJKOLdfHxjen7/GYZNuV87z+RJ
         9Qzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mPKayyuNqIyR7B/6/DoV5KkJ4nA7wuNqmAYsguiVZ+c=;
        b=Mz4i/s1bfrio5jb3B000IDmARdor81/w50EPz+N6tORQpqgxyoIGCGucjuaH6lieDX
         qeTfyZf3vO0xYwRChWFKPq+GxJtELqRx7Cl8/Q1lNg3L5bSP3BGPhEP+KtEvdkk4VXGf
         /TvUGAiyPTli69fFMioUQS7tz6PiIOddgj/maYj7YIQFRHVxKeMXaEDpW2BVkg9UdU95
         3jlx2UIbSTXO6vq4+qA7gGLrwN93zfBFlyHw3UiY6jeNMOH4nJa+GKP5/FqEkF415la8
         WeHY+beDrXqR2r2ivgPo24CkZTpC46snvbbs2IlDH49Go9i+Zl0tqxWmH/F1vZN+dSCf
         fHJA==
X-Gm-Message-State: AOAM531Cwbc7bqSY/5As3vnMoYhfEIKVyRU3sD3ZWanmsvav2jPiw1hk
	Xat7Seq4hHRqHph/Vel5gH9vnNXCLqeaeiOs7Wcnai/c
X-Google-Smtp-Source: ABdhPJxla0/dHWDc4PonWbORmzz6AAmGHMJj/9Bxciu6fV9gNx3bAf3Q8bSasyzwq+s5S0ODxbmGvBVauqo4rnNrP3k=
X-Received: by 2002:a9d:70d4:: with SMTP id w20mr19755293otj.154.1640799218502;
 Wed, 29 Dec 2021 09:33:38 -0800 (PST)
MIME-Version: 1.0
References: <CANP_axLR7UeZZ5sUCuaJXpr0fV+Yt5S_9nkLPU62h0tmzbbkpQ@mail.gmail.com>
 <FE5EEC14-2C29-4D6C-B5EE-17E812304C96@gmail.com>
In-Reply-To: <FE5EEC14-2C29-4D6C-B5EE-17E812304C96@gmail.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Wed, 29 Dec 2021 20:33:27 +0300
Message-ID: <CANP_ax+AaawkL=FWzKJv3KfjoK4p2ESKvxNw7ne89v=M7VnzAg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: TRKRTBXFNE55KINTSFFPQYJR62JBDCWB
X-Message-ID-Hash: TRKRTBXFNE55KINTSFFPQYJR62JBDCWB
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TRKRTBXFNE55KINTSFFPQYJR62JBDCWB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2149972268175233896=="

--===============2149972268175233896==
Content-Type: multipart/alternative; boundary="000000000000910e2405d44c5623"

--000000000000910e2405d44c5623
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for promptly replying. Has E330 ever been offered for purchase? If
so, has it been discontinued?

Best,
Temir

On Wed, Dec 29, 2021 at 8:31 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> The TwinRx daughter cards for X310.
>
> Sent from my iPhone
>
> On Dec 29, 2021, at 12:30 PM, Temir Karakurum <temirkarakurum@gmail.com>
> wrote:
>
> =EF=BB=BF
> Hi there,
>
> I recently came across a presentation by Matt Ettus at grcon16
> <https://youtu.be/kEAkIfWViQo?t=3D1254>, where he introduces E330 as a
> receive-only alternative for E-series USRPs. I checked Ettus store as wel=
l
> as googled for some info about E330 but could not find anything useful. H=
as
> it ever been offered as a product by Ettus or NI?
>
> As a general question, most of my applications are receive-only in nature
> (spectrum monitoring etc.) and usually Tx channels of the USRPs end up
> redundant. Is it possible to purchase rx-only devices?
>
> Best regards,
> Temir
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000910e2405d44c5623
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>Thanks for prompt=
ly replying. Has E330 ever been offered for purchase? If so, has it been di=
scontinued?</div><div><br></div><div>Best,</div><div>Temir</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec=
 29, 2021 at 8:31 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto">The TwinRx daughter card=
s for X310.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=
=3D"ltr"><br><blockquote type=3D"cite">On Dec 29, 2021, at 12:30 PM, Temir =
Karakurum &lt;<a href=3D"mailto:temirkarakurum@gmail.com" target=3D"_blank"=
>temirkarakurum@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockqu=
ote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi there,<div>=
<br></div><div>I recently came across a presentation by Matt Ettus at <a hr=
ef=3D"https://youtu.be/kEAkIfWViQo?t=3D1254" target=3D"_blank">grcon16</a>,=
 where he introduces E330 as a receive-only alternative for E-series USRPs.=
 I checked Ettus store as well as googled for some info about E330 but coul=
d not find anything useful. Has it ever been offered as a product by Ettus =
or NI?</div><div><br></div><div>As a general question, most of my applicati=
ons are receive-only in nature (spectrum monitoring etc.) and usually Tx ch=
annels of the USRPs end up redundant. Is it possible to purchase rx-only de=
vices?</div><div><br></div><div>Best regards,</div><div>Temir</div><div><br=
></div><div><br></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></blockquote></div>

--000000000000910e2405d44c5623--

--===============2149972268175233896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2149972268175233896==--
