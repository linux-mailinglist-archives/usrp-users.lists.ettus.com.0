Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E68376D273
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 19:00:29 +0200 (CEST)
Received: from [::1] (port=47734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ho9lc-0005ZE-D4; Thu, 18 Jul 2019 13:00:28 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:33197)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ho9lY-0005Td-Gr
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 13:00:24 -0400
Received: by mail-ot1-f47.google.com with SMTP id q20so29765557otl.0
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 10:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e4KQ7c6Vpej7sg+PSFPA5QYpf9/Xt7l9z21CtjtBa58=;
 b=nkolm2otZkNGCLmGf/s8dLzBnNPs3B9MtjmKyiEDW0ra0rWQgcV3uSQgHv9vRJsf0F
 BacPeZ8ueVfsXRb5GeZ8Oi8nT5Rm8LGmlcwQfZgsj/0mcVcW1q4MbiUZfGfgN4b3BZlP
 lfwdj5XbNbDbO3U4IoqE+I/kg+t69nK7k8DuHQp1909LBppCo3XJaoW0MI/yNB9EWYoP
 ynel0h8eRMbiiaRkPcSpXC+enrIyR7UgRW3bC5g0QtLJrCNaM1erso98PtHmJ488FTdb
 3E+ixFNUah+/hSY/byvKDWPs2CtONhEX0ykcNzG78m7reYQHRaaVqAnjHqf5iCi9S5jD
 WeKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e4KQ7c6Vpej7sg+PSFPA5QYpf9/Xt7l9z21CtjtBa58=;
 b=o+IFWenUQatp2/nx4YabNGHTzItwD/3DNBHVvVt7zTjh5l17zr3EvN1KjWB1e6ayuT
 wcC+cXqYkKMePfL7wDV46WuKANG5jeYoDeZ228Kopj3ObJvxsltoaaI6MxWB6HIzNjFa
 I25dxXmStpY8bnoGAFOoUJ8bt4kdn8FEJxYXW7TQgZ4DTE5eKMjQlbRm/Ixbz1y4o3dy
 ut+dwGOBaIeaejTAIqrWM9KTj3yZjFAbl/ns+frhYTRsd7KUnz2qbUGLgGp3PK/irSFU
 YqkurKkv6VXi2LyOkXa2xCJLkS/EQdSuGSnetdRvXh85LWEoX4+4O6KOuFE/njd89Oge
 0XRQ==
X-Gm-Message-State: APjAAAWNe9oPQGOb1kvREVPGPBEltART+p8qGWJplYpsHIsK3AnlT9wi
 ZW4wB+HEj7d1zgd4TX8mALrHeVeGg9vVmNbvHgE+WT+bxs5UDA==
X-Google-Smtp-Source: APXvYqxRJY544TJPnELoKcO2bci4ZN/wJgr77pR6Nu73f+vBBa4w+qpbjpsiw3SVpUcZ/8eOcv3jDc7qla/fvJnrlhM=
X-Received: by 2002:a9d:4703:: with SMTP id a3mr6974232otf.183.1563469183750; 
 Thu, 18 Jul 2019 09:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <3d28bc6e-1f89-f7dd-f507-7c1f65865c16@eit.uni-kl.de>
In-Reply-To: <3d28bc6e-1f89-f7dd-f507-7c1f65865c16@eit.uni-kl.de>
Date: Thu, 18 Jul 2019 10:00:01 -0700
Message-ID: <CAL263iz_HaODktCA9=Ham5wXQgB=-MsrxXSgzfdTM1EwqHmDKA@mail.gmail.com>
To: Andreas Weinand <weinand@eit.uni-kl.de>
Subject: Re: [USRP-users] USRP E312 configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4837768386826945828=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4837768386826945828==
Content-Type: multipart/alternative; boundary="00000000000050a642058df789ec"

--00000000000050a642058df789ec
Content-Type: text/plain; charset="UTF-8"

Hi Andreas,

The errors you see when loading the idle FPGA can be safely ignored and are
fixed in the new MPM based file system.

We have a pending update for that application note that uses modern UHD
that will be posted soon. I can follow up with you off list with the
instructions for now.

Regards,
Nate Temple

On Thu, Jul 18, 2019 at 9:36 AM Andreas Weinand via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> has someone already sucessfully made the E312 running using RFNOC
> scripts? like in the example in
>
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>
>
> Unfortunately, i got the similar errors when following these
> instructions as reported here before (e.g.
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-March/056028.html
> ). I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but all
> ended in some errors like this earlier or later.
>
> I am currently trying with Ubuntu 18.04., if anyone has a working setup,
> please let me know. Other OS are also fine for me.
>
> BR
>
> Andreas
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000050a642058df789ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Andreas,<br><br>The errors you see when loading the =
idle FPGA can be safely ignored and are fixed in the new MPM based file sys=
tem.<br><br>We have a pending update for that application note that uses mo=
dern UHD that will be posted soon. I can follow up with you off list with t=
he instructions for now. <br><br>Regards,<br>Nate Temple</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 1=
8, 2019 at 9:36 AM Andreas Weinand via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
has someone already sucessfully made the E312 running using RFNOC <br>
scripts? like in the example in <br>
<a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Bui=
lding_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" rel=3D"noreferrer" targ=
et=3D"_blank">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_=
Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a> <br>
<br>
<br>
Unfortunately, i got the similar errors when following these <br>
instructions as reported here before (e.g. <br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-March/056028.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus=
.com/pipermail/usrp-users_lists.ettus.com/2018-March/056028.html</a> <br>
). I tried a lot of OS, UHD, gnuradio and gr-ettus combinations but all <br=
>
ended in some errors like this earlier or later.<br>
<br>
I am currently trying with Ubuntu 18.04., if anyone has a working setup, <b=
r>
please let me know. Other OS are also fine for me.<br>
<br>
BR<br>
<br>
Andreas<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000050a642058df789ec--


--===============4837768386826945828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4837768386826945828==--

