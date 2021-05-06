Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0D0375C11
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 22:00:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0056384768
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 16:00:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="b6S4ypdb";
	dkim-atps=neutral
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DE6B38418D
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 15:59:21 -0400 (EDT)
Received: by mail-vk1-f175.google.com with SMTP id o17so1466430vko.8
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 12:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wpqfhHvUQaFzk/KHmLAD5fA/ydh94Wf3POE1yEs+38g=;
        b=b6S4ypdbR4B47vsguK1zFT5PN6uVtX4aVN74GQNhFSifmg5R2PuPK8o/szQ8YKQRmY
         NKIa9sLBhlqbcnEwOlsBmnrDVmBJAn6Om3i5YfR4rt4sR/wH7dTMCVA6kk2RD3jA+tpk
         BtcC8vAId3M8NKNvagXMbtawHD3RmzddrEXX11NCb06Mg0gE98MGERYwjsZ1sJJR06rJ
         Re6h/w+HuZQZWhHtRc6NTBi11/t+p1OtcSH8VAv0pEaFA4aWUzP8VixazLjk6oI1EYkp
         QvKM/4xzU2SGBBS7ABk5cDlT5Id4y+7PyiGn8IOhxnGocIGE244imFlzZ6f+lJmHGsqt
         a49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wpqfhHvUQaFzk/KHmLAD5fA/ydh94Wf3POE1yEs+38g=;
        b=rxxzNXlz8UkbozNuwlzRyHjLwnuGD6PpA+m/Mgh4GkBvzW3p60FhuKrP4zJ0Te4ETY
         yPN8h33Cmr6TSahFkQLFM5en3vdzsJXxU91T2GcaTaPvA9nn+f/3QvLXwQo9qK7OQNIs
         yCKqERpZWMjuoxjUPaBXExHkqvCVtkWYNplCXMswMNExhP2BW0StECrxTUjwxVyVg39j
         i4Xu1ylI4kS2ab8DXEGdMBwbny4f7I65aSXtl5qL28ocypbCqCXde9UGAvU86q3Gk7WJ
         /pX2/j7Vo7N1KLzNLQYA+W9lHH+0TG7jl4QEGJigaszmxwQ8pCjdxdq8MmNAQ1XIMsHK
         7sqw==
X-Gm-Message-State: AOAM53201CKP8t+Wz+LZSgmTKebcMMRbLYGkTUcciglaLCKnVmAlPho5
	0f9ej3kLbngsHlmJktdn81w0JosQZ5RMG7Tdc4+0oTvB
X-Google-Smtp-Source: ABdhPJyI04kW3XSLRogxJhoxpXYKbl7YfaLx17MzO8c/C1hpVlXzeZikhdTI2nvZcb2T4p+yn03BxgBRp8YIOonjUH8=
X-Received: by 2002:a1f:d283:: with SMTP id j125mr5636564vkg.9.1620331160648;
 Thu, 06 May 2021 12:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg@lists.ettus.com>
In-Reply-To: <ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 6 May 2021 15:58:44 -0400
Message-ID: <CAL7q81ukqSiWnBod806hjCdeVFq139xev8Onvoia5L5OWBdueQ@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: T2AT7INUQLTHCGY753IUKA53FE5ZEEKZ
X-Message-ID-Hash: T2AT7INUQLTHCGY753IUKA53FE5ZEEKZ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2AT7INUQLTHCGY753IUKA53FE5ZEEKZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5077331687707092712=="

--===============5077331687707092712==
Content-Type: multipart/alternative; boundary="00000000000040083705c1aebfd0"

--00000000000040083705c1aebfd0
Content-Type: text/plain; charset="UTF-8"

Hi Julian,

Can you provide some more background info? Why did you originally have to
go through the recovery procedure? Did you load a custom image and run into
issues?

Jonathon

On Thu, May 6, 2021 at 3:08 PM <jcasallas2019@gmail.com> wrote:

> Hi all,
>
>
> I went through the device recovery process explained here:
> https://kb.ettus.com/X300/X310_Device_Recovery, but I get the following
> error:
>
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.0-50-ge520e3ff
>
> Unit: USRP X310 (3176C83, 192.168.30.2)
>
> FPGA Image: /usr/local/share/uhd/images/usrp_x310_fpga_XG.bit failed.
>
> Error: RuntimeError: Device reported an error during initialization.
>
>
> I checked the error online and suggested to perform the recovery steps
> from the host itself (no switch in between) which I did but still getting
> the same error.
>
> Has anyone know how to fix this issue?
>
>
> Thanks,
>
> Julian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000040083705c1aebfd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>Can you provide some more ba=
ckground info? Why did you originally have to go through the recovery proce=
dure? Did you load a custom image and run into issues?</div><div><br></div>=
<div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, May 6, 2021 at 3:08 PM &lt;<a href=3D"mailto:jca=
sallas2019@gmail.com">jcasallas2019@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all,</p><p><br></p><p>I =
went through the device recovery process explained here: <a href=3D"https:/=
/kb.ettus.com/X300/X310_Device_Recovery" target=3D"_blank">https://kb.ettus=
.com/X300/X310_Device_Recovery</a>, but I get the following error:</p><p><b=
r></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD=
_4.0.0.0-50-ge520e3ff</code></p><p><code>Unit: USRP X310 (3176C83, 192.168.=
30.2)</code></p><p><code>FPGA Image: /usr/local/share/uhd/images/usrp_x310_=
fpga_XG.bit failed.</code></p><p><code>Error: RuntimeError: Device reported=
 an error during initialization.</code></p><p><br></p><p>I checked the erro=
r online and suggested to perform the recovery steps from the host itself (=
no switch in between) which I did but still getting the same error. </p><p>=
Has anyone know how to fix this issue?</p><p><br></p><p>Thanks,</p><p>Julia=
n</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000040083705c1aebfd0--

--===============5077331687707092712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5077331687707092712==--
