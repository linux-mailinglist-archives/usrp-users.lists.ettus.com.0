Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB32337A11E
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 09:47:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CCF538471D
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 03:47:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="1WVHfBRL";
	dkim-atps=neutral
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F408384464
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 03:46:37 -0400 (EDT)
Received: by mail-vs1-f44.google.com with SMTP id s15so6927695vsi.4
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 00:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DbNJ8v0RDGGJvnfHM0Wrs0FSArj/ogdR7NxXm48rdLc=;
        b=1WVHfBRLPUap8KSA6O3a5N1i7XEH1f9sxCKqtSwftEv9ihytELAhXsroKlLSKPnYof
         ukpewyXJtH7/K0ctlZvzytxYSaeCkO9rdcB81qQtKpaglYFqS4nu6rf4DKkawUucVb8c
         u7SCbzOgHZk6W5u2LXAVtpXc7+1Y9pJgD0WMat4u546JWHdsftItThJZglLjxwvsgh1z
         WUINWVSekVi0I++sTSt7lHt/NjDjBCG2aGA+UH01NjffF3hvnnLwWhA7rFsjd9dY4ieX
         VhOIZQBg9ICdX9KpuswkqZ0YS32SiG/+UGE0JEHFepNEToQ1CJ+689qDjZmZYglQeD5Z
         aiBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DbNJ8v0RDGGJvnfHM0Wrs0FSArj/ogdR7NxXm48rdLc=;
        b=U07jvAGwmd210vK5tD+5X0A5M1Y8a35CMzIGUAklXA2rIuPfj+gb1uDb/xGuMxUXO1
         0Upc3moCJyIlln9+r0dBR8jrKCWlKt4vPXsyLHxUvPvjrfJN1dV6MlkkNbJRSyt4eA4o
         bnxZYop8nwan0qQW9H9VZlHm3NdroQP4FpbVz7CkDKc2fIBq1+I80t3Blw91Nzz1bsOp
         IvLmTYR+jDxelxIEsDqMrogDFEwgQlXeC1/zCc6CYnfx+ielATCpxCehCepHoiVdPC5a
         yGO4wt64qmJ2542BWewqNW/DIKXWzyxoXkXlCwcVQJWS4Z2Tfxjx03j9hfxRHddBcOU+
         aggQ==
X-Gm-Message-State: AOAM533cXjUU2JJMl0eRuiZrtVjfsKPSSkzWl5BRXisI9mj0JW9rtRnu
	5fJDY27UiaIxSpOF+xj3uzPMyGxS9vL+zRvDb9qAZSv7
X-Google-Smtp-Source: ABdhPJxt7JE9awsC+0h5S68yMpoo7UvJpIBwBp/rp1WVmlDG1RrkIJ4A1Hm5jqFp/ox/YBKWpAK1vkeoMEw/tzXiadY=
X-Received: by 2002:a67:2c03:: with SMTP id s3mr23620144vss.42.1620719196737;
 Tue, 11 May 2021 00:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <E4FD46C1-987F-4E16-A017-59EB665A28BA@gmail.com>
In-Reply-To: <E4FD46C1-987F-4E16-A017-59EB665A28BA@gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 11 May 2021 03:46:01 -0400
Message-ID: <CAL7q81ubQFnG12LgNqd6i9t2d_Cwyfv11oYOo_6PNc4nFiqMbA@mail.gmail.com>
To: Josh Starling <joshstarling92@gmail.com>
Message-ID-Hash: SUX2UF3BIBODDEXGTNIONOHWS6JF4IW2
X-Message-ID-Hash: SUX2UF3BIBODDEXGTNIONOHWS6JF4IW2
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 RFNoC FPGA Image
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SUX2UF3BIBODDEXGTNIONOHWS6JF4IW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3057331867266651809=="

--===============3057331867266651809==
Content-Type: multipart/alternative; boundary="00000000000000a6d305c2091841"

--00000000000000a6d305c2091841
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Josh,

Are you using the "fpga-src" submodule in the uhd repo for your FPGA
builds? If so, go into that directory and checkout the UHD-3.15.LTS tag.
There is a fix on that tag for E310 builds that I think will resolve your
issue. You'll need to rerun uhd_image_builder / uhd_image_builder_gui and
rebuild your E310 bitstream.

Jonathon

On Tue, May 4, 2021 at 8:50 AM Josh Starling <joshstarling92@gmail.com>
wrote:

> Hello all,
>
> I=E2=80=99m making the transition from UHD 3.14 to 3.15 on my E310 device=
s. With
> 3.14 I was able to successfully make FPGA images with different RFNoC
> blocks combinations and correctly load them to the device. With 3.15 I=E2=
=80=99m
> running into an issue where I make an image with the sig gen and digital
> gain block but when I flash the device and run uhd_usrp_probe I get all t=
he
> RFNoC blocks for running fosphor (e.g. the window, FFT, forsphor, FIFO,
> FIR, window, and radio blocks) . This is clean VM so there=E2=80=99s no o=
ld fosphor
> bit files on my file system.
>
> Has anyone ran into any issue like this with UHD 3.15?
>
> The command I=E2=80=99ve used to flash the image is below
> uhd_image_loader --args "type=3De3xx,addr=3D192.168.50.5" --fpga-path
> usrp_e310_sg3_rfnoc_fpga.bit
>
> Which returns that is successfully update the fpga image. I have noticed
> that when I flash the stock image using the command below it returns that
> it updated both the fpga image and the component dts. After flashing the
> stock image uhd_usrp_probe goes back to reporting only the Radio, DUC, an=
d
> DDC blocks.
> uhd_image_loader --args "type=3De3xx,addr=3D192.168.50.5=E2=80=9D
>
> I=E2=80=99m running this with Ubuntu 18.04 and Vivado 2018.3. Any help wo=
uld be
> greatly appreciated.
>
> Thanks
> Josh
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000000a6d305c2091841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Josh,<div><br></div><div>Are you using the &quot;fpga-s=
rc&quot; submodule in the uhd repo for your FPGA builds? If so, go into tha=
t directory and checkout the UHD-3.15.LTS tag. There is a fix on that tag f=
or E310 builds that I think will resolve your issue. You&#39;ll need to rer=
un=C2=A0uhd_image_builder /=C2=A0uhd_image_builder_gui and rebuild your E31=
0 bitstream.</div><div><br></div><div>Jonathon</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 4, 2021 at =
8:50 AM Josh Starling &lt;<a href=3D"mailto:joshstarling92@gmail.com">joshs=
tarling92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hello all,<br>
<br>
I=E2=80=99m making the transition from UHD 3.14 to 3.15 on my E310 devices.=
 With 3.14 I was able to successfully make FPGA images with different RFNoC=
 blocks combinations and correctly load them to the device. With 3.15 I=E2=
=80=99m running into an issue where I make an image with the sig gen and di=
gital gain block but when I flash the device and run uhd_usrp_probe I get a=
ll the RFNoC blocks for running fosphor (e.g. the window, FFT, forsphor, FI=
FO, FIR, window, and radio blocks) . This is clean VM so there=E2=80=99s no=
 old fosphor bit files on my file system.<br>
<br>
Has anyone ran into any issue like this with UHD 3.15? <br>
<br>
The command I=E2=80=99ve used to flash the image is below<br>
uhd_image_loader --args &quot;type=3De3xx,addr=3D192.168.50.5&quot; --fpga-=
path usrp_e310_sg3_rfnoc_fpga.bit<br>
<br>
Which returns that is successfully update the fpga image. I have noticed th=
at when I flash the stock image using the command below it returns that it =
updated both the fpga image and the component dts. After flashing the stock=
 image uhd_usrp_probe goes back to reporting only the Radio, DUC, and DDC b=
locks.<br>
uhd_image_loader --args &quot;type=3De3xx,addr=3D192.168.50.5=E2=80=9D<br>
<br>
I=E2=80=99m running this with Ubuntu 18.04 and Vivado 2018.3. Any help woul=
d be greatly appreciated. <br>
<br>
Thanks<br>
Josh<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000000a6d305c2091841--

--===============3057331867266651809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3057331867266651809==--
