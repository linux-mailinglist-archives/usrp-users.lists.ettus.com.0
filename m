Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2F44C39D8
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 00:44:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D24D385042
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 18:44:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="1lyOiYka";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id ACF3C3848F9
	for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 18:43:10 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id e140so2589359ybh.9
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 15:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iY7NrSMledCA/1no7pU1NZx4Mu4NQSBjZdCC75F59J8=;
        b=1lyOiYkarhZUU3+GkbH5lIsJERe8zeQZmGWRrsELf8QHXWc9b0Jvk25vf6H/BkUr5b
         oI1IZRZYyIcnQUNRfLWcPt+WZbEGxU/7kxr/lRYFRxidOInM1UcxmUe1iwrIK8aCdjOs
         rXamgi5jddsyvTDrnVIDQQ81Br5suI2Aruk+yTtcVcelG9v0HiVgBlgZ4P7eUPUOcbrI
         N4/N45hDhdG0CKdjbaIkmYjU85uewyVfVB8cKKD2/1QDkDBeN7jtBpMh85Koqs56le39
         A+PB7TCXLa2Wwzp+qbIOM2ETyvFIEbfFbiV6E2rQ5X4MaUcDdnbHb6PkXLxQQAFWZa/4
         SYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iY7NrSMledCA/1no7pU1NZx4Mu4NQSBjZdCC75F59J8=;
        b=AVbCOgevRJQ3NON5mo2G33KVOn6LT+UQp6nL7J6Ybm5in5cxuvqS1rlh6BbQS1KkoG
         6KdNExDgN/FnFaaqW5/aK4JBvsTEa3HUoEtzu5MLvJ1noPEDr7KMPCIC8ixDHRJd9VhR
         PySE1InCuc8SR63J4cWzufYQ0AyHx5YtF6wG01VMNDzH227oOXLun9PHYbIdg7VGf5/5
         pqLj8t4dVdgV24U3o8L1qpQsuRDY/LwOHkjr5Rpy8l71qrZYvgTv4az4tXUdnL5/ELSK
         cjv2dPP2kna6FK080iCJuGwP04BqRzgJ1WY7ca26mnA3xkWj7nVo5mvi8tmxNajtA3ZE
         liXA==
X-Gm-Message-State: AOAM532Hd+w/JpxTe63dDY26UwVJSrsmg1YjTFVQnEqPAI5SwhNZoFOu
	GBI//E4wwriutFWq2DPhAdPk/M2/0HEXT+aJZBj3TFed
X-Google-Smtp-Source: ABdhPJzlwxeddeGJWuejcl2lX1i+8zDHZSWYroi843HF3OlJrWr1JfYb4NrWAcTjxRH3NuNEKhIOw6yiHqEIxfHws2c=
X-Received: by 2002:a25:1f87:0:b0:623:ed72:ff2a with SMTP id
 f129-20020a251f87000000b00623ed72ff2amr4795376ybf.96.1645746190047; Thu, 24
 Feb 2022 15:43:10 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
In-Reply-To: <CAB__hTSOPxRuE8hBdUa_8t5=UL+-6fDFM_wMiod9cZ4VHYwghA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 24 Feb 2022 17:42:53 -0600
Message-ID: <CAFche=iW6jhLn-37Kmg3gTcgUL3qc+ZZOnSD4CRrDzBxovtJMQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: VXJLDAW7FPHBQCPLAHMCNVA6DKW6RGHT
X-Message-ID-Hash: VXJLDAW7FPHBQCPLAHMCNVA6DKW6RGHT
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: implement user clock in rfnoc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VXJLDAW7FPHBQCPLAHMCNVA6DKW6RGHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5145560125793880855=="

--===============5145560125793880855==
Content-Type: multipart/alternative; boundary="0000000000000c749b05d8cc257b"

--0000000000000c749b05d8cc257b
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

RFNoC doesn't support generating user clocks for you yet (the range value
is not currently used). You could use the `dram` clock on N310 and connect
that to the `ce` inputs of your blocks. That should be about 300 MHz. The
`rfnoc_chdr` clock is 200 MHz on N310.

If it won't close timing with the dram clock, and you want something
slower, then you can modify the HDL to add the clock you want. Take a look
at n3xx_clocking.v. You could probably modify the misc_clock_gen IP block
to add a clock closer to 260 MHz. You'd then have to route that clock into
n3xx_core then rfnoc_image_core, and add the new clock to n310_bsp.yml for
the rfnoc_image_builder to generate code to use it. Adding custom clocks is
a pretty manual process at the moment.

Wade

On Wed, Feb 23, 2022 at 10:15 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I have a signal processing block that includes a zero-padded FFT (50%
> zeros) that I built for the N310.  Because of the throttling that occurs
> during insertion of zeros, I expect that my FFT will need to be clocked at
> a bit more than twice the max sample rate. So, since I want to operate the
> N310 at the highest sample rate of 125 MS/s, it seems that my FFT will need
> to be clocked >= 260 MHz.  I'm wondering how to do it.
>
> I've looked at the RFNoC specification and my block is already set up to
> use the "CE" clock for both control & data. In the rfnoc spec, it mentions
> that I can enter a "range" for my clock in the block definition yaml. But,
> I also see that in the end, the top N310 yaml will require me to map a
> _device clock to my block's CE clock port.
>
> It's not clear to me how this works. Does it help to provide a range in
> the block definition yaml? Or, perhaps it is even necessary?  How do I
> specify in the top N310 yaml which device clock will map to my blocks CE
> clock port?  It seems to me that I am missing a step (defining a clock
> somewhere?).
>
> I am pretty much a novice, so I expect that this is the cause of my
> confusion. I am even struggling to figure out what the current clock rates
> are (rfnoc_ctrl, rfnoc_chdr, ce, etc) and where they are defined. Any help
> would be appreciated.
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000c749b05d8cc257b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>RFNoC doesn&#39;t su=
pport generating user clocks for you yet (the range value is not currently =
used). You could use the `dram` clock on N310 and connect that to the `ce` =
inputs of your blocks. That should be about 300 MHz. The `rfnoc_chdr` clock=
 is 200 MHz on N310.</div><div><br></div><div>If it won&#39;t close timing =
with the dram clock, and you want something slower, then you can modify the=
 HDL to add the clock you want. Take a look at n3xx_clocking.v. You could p=
robably modify the misc_clock_gen IP block to add a clock closer to 260 MHz=
. You&#39;d then have to route that clock into n3xx_core then rfnoc_image_c=
ore, and add the new clock to n310_bsp.yml for the rfnoc_image_builder to g=
enerate code to use it. Adding custom clocks is a pretty manual process at =
the moment.<br></div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022=
 at 10:15 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Hi,<div>I have a signal processing block that includes=
 a zero-padded FFT (50% zeros) that I built for the N310.=C2=A0 Because of =
the=C2=A0throttling that=C2=A0occurs during insertion of zeros, I expect th=
at my FFT will need to be clocked at a bit more than twice the max sample r=
ate. So, since I want to operate=C2=A0the N310 at the highest sample rate o=
f 125 MS/s, it seems that my FFT will need to be clocked &gt;=3D 260 MHz.=
=C2=A0 I&#39;m wondering how to do it.</div><div><br></div><div>I&#39;ve lo=
oked at the RFNoC specification and my block is already set up to use the &=
quot;CE&quot; clock for both control &amp; data. In the rfnoc spec, it ment=
ions that I can enter a &quot;range&quot; for my clock in the block definit=
ion yaml. But, I also see that in the end, the top N310 yaml will require m=
e to map a _device clock to my block&#39;s CE clock port.=C2=A0</div><div><=
br></div><div>It&#39;s not clear to me how this works. Does it help to prov=
ide a range in the block definition yaml? Or, perhaps it is even necessary?=
=C2=A0 How do I specify in the top N310 yaml which device clock will map to=
 my blocks CE clock port?=C2=A0 It seems to me that I am missing a step (de=
fining a clock somewhere?).=C2=A0</div><div><br></div><div>I am pretty much=
 a novice, so I expect that this is the cause of my confusion. I am even st=
ruggling to figure out what the current clock rates are (rfnoc_ctrl, rfnoc_=
chdr, ce, etc) and where they are defined. Any help would be appreciated.=
=C2=A0=C2=A0</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000c749b05d8cc257b--

--===============5145560125793880855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5145560125793880855==--
