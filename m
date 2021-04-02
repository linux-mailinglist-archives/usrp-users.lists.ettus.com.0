Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC9C3525E9
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 06:02:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 670DB3839D8
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 00:02:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="LZhb45SK";
	dkim-atps=neutral
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F6533839C1
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 00:02:02 -0400 (EDT)
Received: by mail-ua1-f47.google.com with SMTP id c2so1139760uaj.3
        for <usrp-users@lists.ettus.com>; Thu, 01 Apr 2021 21:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yPGPSlRvtgNjgZBeAE4lHPx2wULmXCXj7XyYWo/b84A=;
        b=LZhb45SKSB3PWGQZWd5oGZDdYX1TbJCmxk4C8Mkx7iKSnay1Xe0HGTDiS0M7bTeljY
         XfMQYgnJY5T2SMFYrW8udqF3IYBQS16WZIFd/K4uxvhJYjHm/YmA1R6zM2DAhEuV2kpA
         idIM7AypNt5Lsrjg0WN2HnT4gGkXNuawaRuXG1+UCMKPIWgTMoyfYZCjhiOcKKj+pxnP
         6VOlBCLMzaZi/wUerrLc6jKvSu1mVvzQZghWaIBxYEeUoknkJkdPXGD5gJ6bV3qUdc2q
         fu3wBXtziTQLtk/zZWAxgASfbfUEXB1Fp+bQfdut7iUoEHH7GHhA92HhMSBv/wBcEDUV
         58jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yPGPSlRvtgNjgZBeAE4lHPx2wULmXCXj7XyYWo/b84A=;
        b=PpykqVOSxyUF2ahJV1PEAJ3GQaWevKN67XNS+BRX+0eB6B5pWYhMvBTJgeeOoGwuot
         eAgp2ugokb0FjQi7Atw00G7O70PnufcT5N2FEfVAzGjFxyxKs5ksb8/CTHIHP7i0c3Rt
         TTUmmA/pa4ZOnquGqNS3Q091ihOIjkkQLSd8RHG/bZtdAgrXXL1NHWPHcBaHSS2tp5oa
         UjLF2DpS/SjNXB5VuYfXQFmjY4n3NRWVeCrNqQFS9EtY9lbPHTRlcsyIJGXvABsKlofD
         rXNxAB/O4+F7SfoWgvV4AY7xmH1ZQlMYgsjsNQZydRf3S1Wl9iF+Y83M3S9MUic1lApj
         mxgQ==
X-Gm-Message-State: AOAM531gUelPShO7M/+WIt1auVZgS98AgD+PlZRblazH3s7JtcxxkD4M
	7sVpNyJjJF1tsMXxyZzDsRrMIS4zvv7VUJcm/2EXwG8l
X-Google-Smtp-Source: ABdhPJzFgeV2JD4+szrHXYkV/Gc/7WxTV9ccME+BxnujBAEXWwJLqT9LoIvaL6zq3sH4xGZWZnjtiBHYQyyjZW4TqnM=
X-Received: by 2002:ab0:7457:: with SMTP id p23mr7419576uaq.44.1617336121684;
 Thu, 01 Apr 2021 21:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ938e=-OtR1JBQF2MpaNZwZbBmpYp4ovt1EhxO7ev9Dw@mail.gmail.com>
In-Reply-To: <CAB__hTQ938e=-OtR1JBQF2MpaNZwZbBmpYp4ovt1EhxO7ev9Dw@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Fri, 2 Apr 2021 00:01:25 -0400
Message-ID: <CAL7q81vF6Sq65TfNH8z4mkRCpCx9GfCJPt9tcBHBAyxyxgg+3Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: Z4VWFBVZW627E2XR7EO44NZNTPUUMLOT
X-Message-ID-Hash: Z4VWFBVZW627E2XR7EO44NZNTPUUMLOT
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I/Q swapping situation with RFNoC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z4VWFBVZW627E2XR7EO44NZNTPUUMLOT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0055644483456985178=="

--===============0055644483456985178==
Content-Type: multipart/alternative; boundary="00000000000004025305bef569e0"

--00000000000004025305bef569e0
Content-Type: text/plain; charset="UTF-8"

Hey Rob,

Are you doing register pokes to write to axi_setting_bus or are you using
an input port? If using an input port, the I/Q format for SC16 versus
complex short are backwards, which might be the cause of your software only
issue.

Jonathon

On Thu, Apr 1, 2021 at 10:04 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I developed a custom RFNoC block that implements an FIR filter
> having complex taps (using 2 instances of Xilinx FIR IP with 2 inputs
> each).  The taps are reloadable via an AXI bus.  After implementing a
> successful testbench, I later discovered an issue when running with UHD and
> the actual image.  The reloaded taps had I/Q swapped.  So, I changed my
> block controller to perform this swap and now things work.
>
> I'm trying to understand if this makes sense or if I have fooled myself.
> My implementation uses the legacy "axi_settings_reg" to load coefficients
> on the IPs reload axi input.  The register width is 32 and I use the upper
> 16 bits as the input to the "real" FIR instance and the lower 16 bits as
> the input to the "imag" FIR instance.
>
> When I run the testbench, I get the expected results without needing to
> swap real/imag.  When I run with UHD and the built FPGA image, I must swap
> the real/imag parts in the block controller in order to get the correct
> results.  I wondered why I did not have to do something similar when
> streaming I/Q data to my block (or other blocks), but then figured that
> maybe UHD takes care of such swapping automatically.  Is this true?  If so,
> am I going about this the right way by swapping I/Q in the block
> controller?  Why does the testbench work without swapping?
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000004025305bef569e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Rob,<div><br></div><div>Are you doing register pokes t=
o write to axi_setting_bus or are you using an input port? If using an inpu=
t port, the I/Q format for SC16 versus complex short are backwards, which m=
ight be the cause of your software only issue.</div><div><br></div><div>Jon=
athon=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Apr 1, 2021 at 10:04 AM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I deve=
loped a custom RFNoC block that implements an FIR filter having=C2=A0comple=
x taps (using 2 instances of Xilinx FIR IP with 2 inputs each).=C2=A0 The t=
aps are reloadable via=C2=A0an AXI bus.=C2=A0 After implementing a successf=
ul testbench, I later discovered an issue when running with UHD and the act=
ual image.=C2=A0 The reloaded taps had I/Q swapped.=C2=A0 So, I changed my =
block controller to perform this swap and now things work.</div><div><br></=
div><div>I&#39;m trying to understand if this makes sense or if I have fool=
ed myself.=C2=A0 My implementation uses the legacy &quot;axi_settings_reg&q=
uot; to load coefficients on the IPs reload axi input.=C2=A0 The register w=
idth is 32 and I use the upper 16 bits as the input to the &quot;real&quot;=
 FIR instance and the lower 16 bits as the input to the &quot;imag&quot; FI=
R instance.=C2=A0=C2=A0</div><div><br></div><div>When I run the testbench, =
I get the expected results without needing to swap real/imag.=C2=A0 When I =
run with UHD and the built FPGA image, I must swap the real/imag parts in t=
he block controller in order to get the correct results.=C2=A0 I wondered w=
hy I did not have to do something similar when streaming I/Q data to my blo=
ck (or other blocks), but then figured that maybe UHD takes care of such sw=
apping automatically.=C2=A0 Is this true?=C2=A0 If so, am I going about thi=
s the right way by swapping I/Q in the block controller?=C2=A0 Why does the=
 testbench work without swapping?</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000004025305bef569e0--

--===============0055644483456985178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0055644483456985178==--
