Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EA865C35E
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:56:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC6FE3842D9
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:56:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672761380; bh=vQJAoSzgXsoitlzPsxhLXUROK/AWIM+p1IPWGPB65Uw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mQB3DCh6E7bP7nZ4xEg9ePympBklPfdmVpG0Mx/QcXvUSCqU7PAYhO5hFUohw6ndy
	 +vvf73vS3IYOSUE8mLTgP9MEPpldxAE1yPnW8iAQn62ywzjdhb2/PV7O+2kxLTzl2l
	 GvgizVIm6zInKh82uQyPKTwlVtQ9HjKtai71/p1iOg6G8viQNmh8sUi4IhxjUo0V/0
	 N/h5eq3Hot1kjLVaR/clfh++0pcsa8VpB1tVxX1HsvkIMV1jNJg6Ycm6nSl+LCjAFv
	 UwfKsonQQdf6lEKWxEBz+uY3gEBaLpo45UQIYf0F6lgBq6oV+FkMwNdJRssl4M8a5f
	 3pDAhd1cBvt0A==
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 8ECEC3841AF
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:54:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qqk6f2Jk";
	dkim-atps=neutral
Received: by mail-wr1-f54.google.com with SMTP id h16so29882079wrz.12
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 07:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QxWvjP0cRXX0kzCzB4iqArLZNl4TAsXhYIA+y7JhUFk=;
        b=Qqk6f2JkvLdBcTZjYbZDCV6GIoSgmPpdNCIkO3Oevlx/Ufw73FkqOVQIEsJ49d3/5u
         mPxsAgYkl+L6pxygLsKMI0K+iDQYgbb90m4/1B+6aNvaeKfpBPsoctjwerW8itEI3oN6
         +YVMMlItPtQiuZY2gk+qXaO0c0nc15YnbmX5/SiNFxTUsQbgxYuTydDQ60owU4Aui5EP
         xrYwtl27Kmqenc7UkCYtwc7wt9gbChvo1gTcMHZa+UJtEljmT6ds0XXALbTYBBm23a1Q
         fY4spqXTSyBIolRPvwOeD7X1EwQlhRv9k50o3Nao0WIlzPyxkBfDqfQuFiELgY5kJrwk
         1Jqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QxWvjP0cRXX0kzCzB4iqArLZNl4TAsXhYIA+y7JhUFk=;
        b=Bac3mrEiNqT0JCZQFcVJyj2mfzJC/SVcUmwoU/kw7BVqpJe+BqCWsAWc0ugmkTpTBG
         Z3fHCQvlVmhUZwaRXV/+h0/9AwX6qTuS2ONFqREiTalPnxU0IWCdQy8WINMlInS3GyJ1
         H7wl9uBFud0QoI5jsLI+R6O29A2OAzQEETewyO6EpSs0PaXenqvZqWwOMwCZMeAlWTpH
         mgynKeARfFaHOh2JuoH/zTmo+AMNF/sQG8Zq2Gv+zYtlaPwszJdXAAHEY3qJc2QUm6AI
         ZUv4kGMsOhfLwvQpNm7CgJinN6BentCXt3KUCuZ6NA4JmLd42tpK6ITzhPJthNNh+e/A
         unzA==
X-Gm-Message-State: AFqh2kotiROfR/lfOUBb4SdGqN9V0rmkGyyS8QEt9aLpx5GJuhmEsnul
	u/EDG3xWZun0vy2zfKdBfeVN8tfnaXfMBhdT6o+kfxqFF9A=
X-Google-Smtp-Source: AMrXdXtadicrtGVUBQ6978j0ytDkJn2vPXzAZcUj4losB6mfqLvqCVmhEiP8X9BPgT/usGe+Hvc/lMhvU/Snf1oDCwc=
X-Received: by 2002:a5d:4247:0:b0:248:ab8a:5149 with SMTP id
 s7-20020a5d4247000000b00248ab8a5149mr848636wrr.126.1672761271361; Tue, 03 Jan
 2023 07:54:31 -0800 (PST)
MIME-Version: 1.0
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com> <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
In-Reply-To: <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
From: Pedro Pereira <pedro60132@gmail.com>
Date: Tue, 3 Jan 2023 15:54:20 +0000
Message-ID: <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: HZLOM3DTUZGLHKPRKR422LQKIMUKTOB4
X-Message-ID-Hash: HZLOM3DTUZGLHKPRKR422LQKIMUKTOB4
X-MailFrom: pedro60132@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZLOM3DTUZGLHKPRKR422LQKIMUKTOB4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5019276591282263284=="

--===============5019276591282263284==
Content-Type: multipart/alternative; boundary="0000000000005fa56805f15e152a"

--0000000000005fa56805f15e152a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the response.

I don=C2=B4t want to run the software component of the GNSS receiver on my
computer, while connected to the N310 for heterogeneous processing - if
that's what you're saying.
I want an edge device running embedded linux, like I already have on my
zcu102, to run both sw and hw components.

The first stages of the processing chain are in hardware so I don=C2=B4t wa=
nt to
read samples from the front-end at the application level. I want to read
samples directly from my hardware block design, do some heavy processing
and deliver the results to the software application.
I can do all of this using AD front-ends and their HDL reference designs.
Is there any support to do this using N210 or N310?

Thanks again.

On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller <marcus.mueller@ettus.com> =
wrote:

> Note that the N310's FPGA might actually be large enough to fit in (parts
> of) a GNSS receiver, especially if you remove the DUC chain of the TX pat=
h,
> in case you don't need that. RFNoC is Ettus' framework for extending the
> FPGA functionality, especially made for such use cases.
>
> Note that even in RFNoC you get a stream of samples from the radio
> frontend, which you basically paid NI/Ettus for to design it for you, so
> that you don't have to worry about how to talk to the physical hardware a=
nd
> can care about signal processing :)
>
> Cheers,
> Marcus
>
> On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>
> Hi Mr Pereira,
>
> the directest access you get to samples in the N210 is the ethernet
> connection =E2=80=93 and that has no downside for GNSS applications, as t=
he VITA49
> samples fully represent the RF signal, thanks to Shannon-Nyquist.
>
> That is, of course, unless you start modifying the FPGA image of the N210=
,
> and make it a completely different product. It's kind of unlikely you wan=
t
> to do that.
>
> Greetings,
> Marcus
>
> On 03.01.23 14:25, Pedro Pereira wrote:
>
> Greetings,
>
> I have 2 USRP front-ends - N210 and N310. I want to develop a GNSS
> Receiver inside my FGPA - xilinx ZCU102 - and use one of the USRP devices
> only as the front-end. The receiver is quite large so I need an external
> board for all the signal processing chain. The receiver has two
> implementations - software-only & hybrid. In hybrid mode some tasks of th=
e
> processing chain are accelerated in hardware.
>
> The software-only version of the receiver running on my ZCU102 is able to
> configure the N210 and read packets over ethernet correctly. However, wit=
h
> the hybrid version of the receiver, I want to read the digital IQ samples
> from the front end directly in hardware.
>
> For example, I am able to do this with the ZCU102 connected to FMComm2/3
> using the FMC connection on the FPGA. AD provides HDL reference designs t=
o
> support communication between multiple front-ends and multiple FPGAs.
>
> Is there a similar way to read the digital samples directly in hardware
> using the N210? The N210 only has the ethernet and a MIMO port.
>
> Thanks in advance.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005fa56805f15e152a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the response.<div><br></div><div>I don=C2=B4t w=
ant to run the software component of the GNSS receiver on my computer, whil=
e connected to the N310 for heterogeneous processing - if that&#39;s what y=
ou&#39;re saying.=C2=A0</div><div>I want an edge device running embedded li=
nux, like I already have on my zcu102, to run both sw and hw components.</d=
iv><div><br></div><div>The first stages of the processing chain are in hard=
ware so I don=C2=B4t want to read samples from the front-end at the applica=
tion level. I want to read samples directly from my hardware block design, =
do some heavy processing and deliver the results to the software applicatio=
n.=C2=A0</div><div>I can do all of this using AD front-ends and their HDL r=
eference designs. Is there any support to do this using N210 or N310?</div>=
<div><br></div><div>Thanks again.</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at 15:15, Marcus =
M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Note that the N310&#39;s FPGA might actually be large enough to fit
      in (parts of) a GNSS receiver, especially if you remove the DUC
      chain of the TX path, in case you don&#39;t need that. RFNoC is Ettus=
&#39;
      framework for extending the FPGA functionality, especially made
      for such use cases.</p>
    <p>Note that even in RFNoC you get a stream of samples from the
      radio frontend, which you basically paid NI/Ettus for to design it
      for you, so that you don&#39;t have to worry about how to talk to the
      physical hardware and can care about signal processing :)</p>
    <p>Cheers,<br>
      Marcus<br>
    </p>
    <br>
    <div>On 03.01.23 16:11, Marcus M=C3=BCller wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi Mr Pereira,</p>
      <p>the directest access you get to samples in the N210 is the
        ethernet connection =E2=80=93 and that has no downside for GNSS
        applications, as the VITA49 samples fully represent the RF
        signal, thanks to Shannon-Nyquist.</p>
      <p>That is, of course, unless you start modifying the FPGA image
        of the N210, and make it a completely different product. It&#39;s
        kind of unlikely you want to do that.</p>
      <p>Greetings,<br>
        Marcus<br>
      </p>
      <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
      <blockquote type=3D"cite">
       =20
        <div dir=3D"ltr">Greetings,
          <div><br>
          </div>
          <div>I have 2 USRP front-ends - N210 and N310. I want to
            develop a GNSS Receiver inside my FGPA - xilinx ZCU102 - and
            use one of the USRP devices only as the front-end. The
            receiver is quite large so I need an external board for all
            the signal processing chain. The receiver has two
            implementations - software-only &amp; hybrid. In hybrid mode
            some tasks of the processing chain are accelerated in
            hardware.</div>
          <div><br>
          </div>
          <div>The software-only version of the receiver running on my
            ZCU102 is able to configure the N210 and read packets over
            ethernet correctly. However, with the hybrid version of the
            receiver, I want to read the digital IQ samples from the
            front end directly in hardware.=C2=A0</div>
          <div><br>
          </div>
          <div>For example, I am able to do this with the ZCU102
            connected to=C2=A0<span>FMComm2/3 using
              the FMC connection on the FPGA. AD provides HDL reference
              designs to support communication between multiple
              front-ends and multiple FPGAs.=C2=A0</span></div>
          <div><span><br>
            </span></div>
          <div><span>Is there a similar
              way to read the digital samples directly in hardware using
              the N210? The N210 only has the ethernet and a MIMO port.</sp=
an></div>
          <div><span><br>
            </span></div>
          <div><font face=3D"Barlow, Helvetica Neue, Helvetica, Arial,
              Lucida Grande, sans-serif" color=3D"#11171a"><span style=3D"f=
ont-size:14px">Thanks in advance.</span></font></div>
          <div><span><br>
            </span></div>
          <div><span><br>
            </span></div>
        </div>
        <br>
        <fieldset></fieldset>
        <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005fa56805f15e152a--

--===============5019276591282263284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5019276591282263284==--
