Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDF84006A1
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 22:30:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D380384632
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 16:30:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="E8ve6Ahn";
	dkim-atps=neutral
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D119B384196
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 16:29:20 -0400 (EDT)
Received: by mail-lf1-f53.google.com with SMTP id y34so601106lfa.8
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 13:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FVAsHNvFhN4/BK5I6DBndJYIlnLjo58H8L6Duu+V2Eg=;
        b=E8ve6AhnNQxEZpRfATBmiDSLTTuN21K4z08qyIlSICSt0udLNvaHJG3Ivrlz+RvDPK
         0M9QVZfrPfCrB5QUPnNgBKQhJAwkWMUoWA198ttd3fLKTrKWvG1vCntYv9i0FJn8SXLO
         bTtQ2AC9gsKIhSNC21BaPe0BEJND+raFNzZFmSq6ltJigk5fwYMs7g9R2omXN1+rywwJ
         4wB/QrcGvKv79/NOz2lZ/E3TkZ8V8UOs1ValCLvNZOCsO4DKQqwqB2hyHCkAXYTRu4Tr
         ySMrVgW4SMXFFRvjBL/rE8tXct4X2e74Qx26wdLIrhOhUeR6t/NrJwlTeN5mzGNcdgHH
         uQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FVAsHNvFhN4/BK5I6DBndJYIlnLjo58H8L6Duu+V2Eg=;
        b=engS/MUoix+SxbAhi2PX+bupML0u9ySnaQjwaRsZjE8j+qs03gCr/+PkjjJpO8wBfR
         YenBycMdqKmsAepkx4oEPhvodSnIj9yjkQjFs+o8nhyter6w6rB9O5KFQy8HMeFj5JQ3
         IdT2y2zPnGXFMgfavV6PKYzVlF+fbOGKjT67jw1fAG93mo3RsIPFdiFBBPb15Palc3Ns
         IyUsiFn+Emx6UW6qU2Sx5WPaGtpQ4Lg5RalYXV+wM54BpMGK+fx9kCt4iKRMTp/YWeqC
         PN/lJqKWfTr4yaIlkDEuQr4v6lq06/WJ1FBuUILYhf5nsq6Ih0wYNZVoxcO4it4+5eTa
         UwrA==
X-Gm-Message-State: AOAM530+VWzzFUWEZhQAeJarNifVWADQNrXmHB6L/OVXmcbPkbp7wpfb
	P2Babtbs2euixEFZCB4hoSDn2ZzuHL3SwhpGbKE=
X-Google-Smtp-Source: ABdhPJyP9G1TEvMa1ACiKLfhMdB7c4J/n7Z8V5tupLiY5ymGnA+XfIuu2ZNCLmGt7QWNsoHv/FsZYuBADbgRWFoEvPQ=
X-Received: by 2002:a05:6512:12c8:: with SMTP id p8mr516424lfg.208.1630700959319;
 Fri, 03 Sep 2021 13:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
 <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <CAGLr63tyG4LJkwtAoiY1QNBPr5CN_5Mu6Ygn0R90+vB52OLrOg@mail.gmail.com> <cdb81990-bb54-6aa9-33cb-2cbb77c3fe2c@gmail.com>
In-Reply-To: <cdb81990-bb54-6aa9-33cb-2cbb77c3fe2c@gmail.com>
From: Cameron Matson <ncmatson95@gmail.com>
Date: Fri, 3 Sep 2021 15:29:08 -0500
Message-ID: <CAGLr63tiizj-HtMScfX3e2Np-5+_nc31boT7Ngw-5Gb=PWkm2A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7JPUUCS3D5SPVACAXAKFMK5OQV53DGDM
X-Message-ID-Hash: 7JPUUCS3D5SPVACAXAKFMK5OQV53DGDM
X-MailFrom: ncmatson95@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7JPUUCS3D5SPVACAXAKFMK5OQV53DGDM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7678757194234460490=="

--===============7678757194234460490==
Content-Type: multipart/alternative; boundary="0000000000006a48ed05cb1d27ac"

--0000000000006a48ed05cb1d27ac
Content-Type: text/plain; charset="UTF-8"

Pinging from n310 to server yes. From server to n310 no.


Cameron


On Fri, Sep 3, 2021 at 1:11 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-03 2:01 p.m., Cameron Matson wrote:
> > Thanks for the tip Ming.  I have heard that there are some
> > compatibility issues out there.  We are using the Finsair when trying
> > copper (ethernet) and 10Gtek AXS85-192-M3 when trying fiber (which is
> > how it was set and working.)
> >
> > One thing I've noticed is that when using fiber, there is no link LED
> > if I use sfp0, but there is in sfp1.  The opposite is true when I'm
> > using copper (led on when plugged into sfp0, off sfp1.)  This is true
> > on multiple FPGA flavors (WX and HG).
> >
> > I'm really at a loss here...
> >
> > Thanks for your help,
> >
> > Cameron
> >
> When you're pinging, do you get an blinky lights on the N310, indicating
> that it has seen your traffic?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006a48ed05cb1d27ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Pinging from n310 to server yes. From server to n310 no.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Cameron</div><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 3, 2021 at 1:11 PM =
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 2021-=
09-03 2:01 p.m., Cameron Matson wrote:<br>
&gt; Thanks for the tip Ming.=C2=A0 I have heard that there are some <br>
&gt; compatibility=C2=A0issues out there.=C2=A0 We are using the Finsair wh=
en trying <br>
&gt; copper (ethernet) and 10Gtek AXS85-192-M3 when trying fiber (which is =
<br>
&gt; how it was set and working.)<br>
&gt;<br>
&gt; One thing I&#39;ve noticed is that when using fiber, there is no link =
LED <br>
&gt; if I use sfp0, but there is in sfp1.=C2=A0 The opposite is true when I=
&#39;m <br>
&gt; using copper (led on when plugged into sfp0, off sfp1.) =C2=A0This is =
true <br>
&gt; on multiple FPGA flavors (WX and HG).<br>
&gt;<br>
&gt; I&#39;m really at a loss here...<br>
&gt;<br>
&gt; Thanks for your help,<br>
&gt;<br>
&gt; Cameron<br>
&gt;<br>
When you&#39;re pinging, do you get an blinky lights on the N310, indicatin=
g <br>
that it has seen your traffic?<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000006a48ed05cb1d27ac--

--===============7678757194234460490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7678757194234460490==--
