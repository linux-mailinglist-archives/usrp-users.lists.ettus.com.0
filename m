Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A9737098C
	for <lists+usrp-users@lfdr.de>; Sun,  2 May 2021 03:29:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F034383E92
	for <lists+usrp-users@lfdr.de>; Sat,  1 May 2021 21:29:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="UUhxK3Ts";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id E4B30383E26
	for <usrp-users@lists.ettus.com>; Sat,  1 May 2021 21:29:01 -0400 (EDT)
Received: by mail-vs1-f53.google.com with SMTP id v188so1196487vsb.6
        for <usrp-users@lists.ettus.com>; Sat, 01 May 2021 18:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UqTI76rOVklj5f98553DIz/F4tFlEfWBnVKoDq3NV/U=;
        b=UUhxK3Ts42QYkgxk8ylfWvP41Fh1t0HHhzhFZoqpBb2YNqTxEWm4z0RmjIfSRtNYbS
         M2wxx5ZBcvjkZIB/pfoO62cBed/6NUpqYqwsoGQIliuLSaI5930/46hNyjXl0OZyEdUe
         +tiGW5laAIA3fO1Y4wx/F6egOtnsSz1+SxS4LZ3i9piGZDDwkpDMdV6/csd3GpJtiC2y
         sOxAOTBAETNWiIK1JWPjLzDi1EW+IYRmeUIqqP15i/gODPxug4wiVknw1tccjaZkvWnN
         xThLFGFKncecpFJd2zR34Z5n7gBfo1U3Ee/cqm18re4+E5SUAtEjghqclk/xmgcpgGm0
         8fSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UqTI76rOVklj5f98553DIz/F4tFlEfWBnVKoDq3NV/U=;
        b=QSx5m+vKBUwy7YdKsFtWpKbldRzsrdr6oZ5PpKrbIUu0AoJ3HBVjYYm/xoCVreQrf+
         rnNmaWUwuK2E9cXQpL3egHKu61Wh5awAtOftIRe7aR1lY263Yep7URA9Txk9bz5vxpC9
         1neeyvpduj8T/0prJTldBXJNpfK2Lbu5KXSCmPQiubDH6sRJAF2INOTdca17sz6RD/+O
         JR1869wrlrVdxvIPaIu8QdE07wmidYjh7jIc7zkAuwwCVwfzLT/OiQcdd8Eb8sQjhhr6
         SkU1aTAzyoheXtu4Y0Zk9IqvLwbXvM8BzWif90vcgpuPY1S/jI01E2578dj6eW8IpPwP
         a4fA==
X-Gm-Message-State: AOAM533mmqoS5kidDNR+4gPHobzzsKwcoiyippsfYhyIR7OJGPGIDctu
	8qIE1T6Y+NQRg65v7Pv8A3XoVa8Ot9Attjb7xd1JqEG1
X-Google-Smtp-Source: ABdhPJx9xSnuon1lBzcs3ip1KaX6CnoioNUkHFl5NzP3IYs4BHX6SJbZBR254ekR76rNyJyhtXhifQv9dLzwH4fjy2w=
X-Received: by 2002:a67:ec4f:: with SMTP id z15mr11860589vso.27.1619918941191;
 Sat, 01 May 2021 18:29:01 -0700 (PDT)
MIME-Version: 1.0
References: <F5A36F4D-8976-4576-BB8D-E400289E8A1E@asleep.ai>
In-Reply-To: <F5A36F4D-8976-4576-BB8D-E400289E8A1E@asleep.ai>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Sat, 1 May 2021 21:28:25 -0400
Message-ID: <CAL7q81s6Rq9y=L-UM_L8Q0zFUg0tTZoRTPuQYtdOXg6Jk2XSDQ@mail.gmail.com>
To: Louis Jung <insomnia@asleep.ai>
Message-ID-Hash: XN3P66HOQC5EFM4RBA2U6LZMWCY3YGI5
X-Message-ID-Hash: XN3P66HOQC5EFM4RBA2U6LZMWCY3YGI5
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310, RFNoC OFDM Sync block error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XN3P66HOQC5EFM4RBA2U6LZMWCY3YGI5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6096011573585163745=="

--===============6096011573585163745==
Content-Type: multipart/alternative; boundary="0000000000000e13cd05c14ec501"

--0000000000000e13cd05c14ec501
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Louis,

The E310 has limited FPGA resources, so you will quickly run into resource
utilization issues when trying to include multiple RFNoC blocks. Also, the
FFT, Window, and Schmidl Cox RFNoC blocks focus on usability, so their
implementations are less optimized and likely use more resources than
necessary for your application. I would suggest combining those blocks into
your own custom RFNoC block and removing features you don't need for your
specific application. Another option would be getting an E320 which has a
much larger FPGA.

Jonathon

On Sat, Apr 17, 2021 at 12:04 AM Louis Jung <insomnia@asleep.ai> wrote:

> Dear all,
>
> I=E2=80=99m trying to run Wi-Fi OFDM receiver in E310.
>
> However, when I tried to build custom fpga image with fft, window, and
> schmidl_cox blocks, it always fails with the error:
> ''ERROR: [Place 30-640] Place Check : This design requires more Slice LUT=
s
> cells than are available in the target device. This design requires 62507
> of such cell types but only 53200 compatible sites are available in the
> target device. Please analyze your synthesis results and constraints to
> ensure the design is mapped to Xilinx primitives as expected. If so, plea=
se
> consider targeting a larger device. Please set tcl parameter
> "drc.disableLUTOverUtilError" to 1 to change this error to warning.=E2=80=
=9D
>
> Is it infeasible in E310 or I misconfigured something?
>
> If possible, can you suggest any method to include it?
>
> (I=E2=80=99ve sent this email to the gnuradio mailing list, but guided to=
 this
> mailing list by Marcus, Thanks!)
>
> Best,
>
> Louis
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000e13cd05c14ec501
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Louis,<div><br></div><div>The E310 has limited FPGA res=
ources, so you will quickly run into resource utilization issues when tryin=
g to include multiple RFNoC blocks. Also, the FFT, Window, and Schmidl Cox =
RFNoC blocks focus on usability, so their implementations are less optimize=
d and likely use more resources than necessary for your application. I woul=
d suggest combining those blocks into your own custom RFNoC block and remov=
ing features you don&#39;t need for your specific application. Another opti=
on would be getting an E320 which has a much larger FPGA.</div><div><br></d=
iv><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sat, Apr 17, 2021 at 12:04 AM Louis Jung &lt;<a hr=
ef=3D"mailto:insomnia@asleep.ai">insomnia@asleep.ai</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Dear all,<br>
<br>
I=E2=80=99m trying to run Wi-Fi OFDM receiver in E310.<br>
<br>
However, when I tried to build custom fpga image with fft, window, and schm=
idl_cox blocks, it always fails with the error:<br>
&#39;&#39;ERROR: [Place 30-640] Place Check : This design requires more Sli=
ce LUTs cells than are available in the target device. This design requires=
 62507 of such cell types but only 53200 compatible sites are available in =
the target device. Please analyze your synthesis results and constraints to=
 ensure the design is mapped to Xilinx primitives as expected. If so, pleas=
e consider targeting a larger device. Please set tcl parameter &quot;drc.di=
sableLUTOverUtilError&quot; to 1 to change this error to warning.=E2=80=9D<=
br>
<br>
Is it infeasible in E310 or I misconfigured something?<br>
<br>
If possible, can you suggest any method to include it?<br>
<br>
(I=E2=80=99ve sent this email to the gnuradio mailing list, but guided to t=
his mailing list by Marcus, Thanks!)<br>
<br>
Best,<br>
<br>
Louis<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000e13cd05c14ec501--

--===============6096011573585163745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6096011573585163745==--
