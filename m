Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EAC4BC555
	for <lists+usrp-users@lfdr.de>; Sat, 19 Feb 2022 05:23:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2C513845AF
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 23:23:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bxFEkRPf";
	dkim-atps=neutral
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id EDAA138429C
	for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 23:22:51 -0500 (EST)
Received: by mail-yb1-f170.google.com with SMTP id d21so968652yba.11
        for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 20:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cN4VlyKeJLxA6HyWguZ7QjsP9k+8yH2TC+QgrFcLXR0=;
        b=bxFEkRPfZ6U1YLKTtbmcneQr0xAUrFGO1qirrjCR9mKF/9QRoHYHsiAsusiKdKw9BV
         6NeVByL3aoxm7TJoGIFU/2IH3mEWrtcJScIDuy49P1pv129um9gmc0bjQgPvWJGY8ZLZ
         T+5bW12i8m3Jk+7beH5p2Gtg7dfUd90GGyQ7RvuNTDB1LEcWhelPSC186UZc00CKjAa6
         91VDDo6MHCP3I/6ylJ9KpPu3fCGSUUkRYoI4C6SX6C+AWwyksPibJgAspqxzOJ5Zh5PS
         PyPZpWpW8RAAL/8yuqKImNBtTZEqGoX/uFRw1/sig90j88MAabDaF+cWezHhn7Jv+ZB7
         Tvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cN4VlyKeJLxA6HyWguZ7QjsP9k+8yH2TC+QgrFcLXR0=;
        b=1V/Trg967Gf4PH9a9pJXtO5K/YEybMztOLn8a1kZRflTc9tyE295eLzjuRBpXDGpmT
         Za96UISpjsEGzq7gPJFijiTgi4Mcy2R/G4EPkj8ZyDrIYdIVIRBoYq/SAEbQ8t96jPtM
         MrlurE7aGGDDFTzuWHCYX2+rZkcFNJu5rPPxS2kAvm32uwYgjN++Zg75q7WMG9KRuA7u
         USNgJKNsWAW/HOCXkLZuIWpmNycPUbEV4k67ryR6jGPNtC81OCih0jwZOSKt9oG0QPA5
         u+tBgsEglm4daovg5eXDKPxrEzgrul8E3JXGbogkKLH1J3qPL9O3t1W8ZVS54qgeZBkh
         7Y7w==
X-Gm-Message-State: AOAM531GnkaIKZD0B+FGixpi/Z+VjpWEzxoSRoXuMWZKMhsgDjmBs1p2
	tMlePGu+yPt6yzljYRhwsaGYX/ga45t+/oBwr9M=
X-Google-Smtp-Source: ABdhPJzvpUrkRhtHGhlxs/W4+gN5/GUp1goYvEFdYwWbuqK8qDPE9SdUGq9xeJ9FRWEagEf9vPAdYakCJQZeZMBV/cQ=
X-Received: by 2002:a25:c487:0:b0:61d:9570:e77f with SMTP id
 u129-20020a25c487000000b0061d9570e77fmr9975502ybf.229.1645244570622; Fri, 18
 Feb 2022 20:22:50 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt2bDbj6K8WGi1dh1=nxdGtgibAuB9UYP376kB4t_iDqQ@mail.gmail.com>
 <CAA=S3PuTzTAd99ts8RbpONSKrXRDq9d-RP9EtfZbdJVbttGXqw@mail.gmail.com> <20220218134416.vbqfwvueqa7cjm4i@barbe>
In-Reply-To: <20220218134416.vbqfwvueqa7cjm4i@barbe>
From: sp h <stackprogramer@gmail.com>
Date: Sat, 19 Feb 2022 07:52:27 +0330
Message-ID: <CAA=S3PuKb_oxr4hKrTZ6kBUTWKsDc=tzeQv15ESopgYgZmk75g@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: JP5IFGIKQBO57O5233SPGLWBEHFCT56K
X-Message-ID-Hash: JP5IFGIKQBO57O5233SPGLWBEHFCT56K
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to create the RFNOC block gain for other RFNOC image cores...Default is for X310, but I want to be x300?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JP5IFGIKQBO57O5233SPGLWBEHFCT56K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4652183046941776359=="

--===============4652183046941776359==
Content-Type: multipart/alternative; boundary="000000000000335ddd05d8575a0f"

--000000000000335ddd05d8575a0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, But for another model like B210 and is it not there anyway?

On Fri, Feb 18, 2022 at 5:14 PM C=C3=A9dric Hannotier <cedric.hannotier@ulb=
.be>
wrote:

> On 18/02/22 12:51, sp h wrote:
> > On Sun, Feb 13, 2022 at 10:51 AM sp h <stackprogramer@gmail.com> wrote:
> > > How to create the RFNOC block gain for other RFNOC image
> cores...Default
> > > is for X310, but I want to be x300?
> > > When I created a new RFNOC module with the below commands, the RFNNOC
> > > image core is x310 (my Gnuradio 3.8.1, UHD 4.1.0.5).
> > > $rfnocmodtool newmod transceiver
> > > $cd rfnoc-transceiver
> > > $ rfnocmodtool add gain
> > >
> > > *You can icores folder list, you are seeing that default is x310, wit=
h
> > > which command I can change to other RFNOC like x300 and son ...*
> > > thnaks in advance
> > >
> > > $:~/fnoc-transceiver/rfnoc/icores$ ls
> > > CMakeLists.txt                  x310_rfnoc_image_core.vh
> > > gain_x310_rfnoc_image_core.yml  x310_static_router.hex
> > > x310_rfnoc_image_core.v
> >
> > Does anyone have not any idea? thanks in advance
>
> I think the x300 and x310 are very close FPGA-wise,
> so modifying "device" from "x310" to "x300"
> and "default_target" from "X310_HG" to "X300_HG"
> in the .yml could be enough.
>
> --
>
> C=C3=A9dric Hannotier
>

--000000000000335ddd05d8575a0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, But for another model=C2=A0like B210 and is it not=
 there anyway?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Feb 18, 2022 at 5:14 PM C=C3=A9dric Hannotier &lt;<=
a href=3D"mailto:cedric.hannotier@ulb.be">cedric.hannotier@ulb.be</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 18/02/2=
2 12:51, sp h wrote:<br>
&gt; On Sun, Feb 13, 2022 at 10:51 AM sp h &lt;<a href=3D"mailto:stackprogr=
amer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<b=
r>
&gt; &gt; How to create the RFNOC block gain for other RFNOC image cores...=
Default<br>
&gt; &gt; is for X310, but I want to be x300?<br>
&gt; &gt; When I created a new RFNOC module with the below commands, the RF=
NNOC<br>
&gt; &gt; image core is x310 (my Gnuradio 3.8.1, UHD 4.1.0.5).<br>
&gt; &gt; $rfnocmodtool newmod transceiver<br>
&gt; &gt; $cd rfnoc-transceiver<br>
&gt; &gt; $ rfnocmodtool add gain<br>
&gt; &gt;<br>
&gt; &gt; *You can icores folder list, you are seeing that default is x310,=
 with<br>
&gt; &gt; which command I can change to other RFNOC like x300 and son ...*<=
br>
&gt; &gt; thnaks in advance<br>
&gt; &gt;<br>
&gt; &gt; $:~/fnoc-transceiver/rfnoc/icores$ ls<br>
&gt; &gt; CMakeLists.txt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 x310_rfnoc_image_core.vh<br>
&gt; &gt; gain_x310_rfnoc_image_core.yml=C2=A0 x310_static_router.hex<br>
&gt; &gt; x310_rfnoc_image_core.v<br>
&gt;<br>
&gt; Does anyone have not any idea? thanks in advance<br>
<br>
I think the x300 and x310 are very close FPGA-wise,<br>
so modifying &quot;device&quot; from &quot;x310&quot; to &quot;x300&quot;<b=
r>
and &quot;default_target&quot; from &quot;X310_HG&quot; to &quot;X300_HG&qu=
ot;<br>
in the .yml could be enough.<br>
<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
</blockquote></div>

--000000000000335ddd05d8575a0f--

--===============4652183046941776359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4652183046941776359==--
