Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C9774E31
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 14:33:59 +0200 (CEST)
Received: from [::1] (port=58096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqcwX-0001SS-8h; Thu, 25 Jul 2019 08:33:57 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:44478)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hqcwS-0001Na-Uu
 for usrp-users@lists.ettus.com; Thu, 25 Jul 2019 08:33:53 -0400
Received: by mail-lj1-f181.google.com with SMTP id k18so47801509ljc.11
 for <usrp-users@lists.ettus.com>; Thu, 25 Jul 2019 05:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MI7KhLYsLKE5uNE+udNy5HqldNGdl9RXFSuQrHFahb0=;
 b=tSG7KXPYk3+juh+ql7wJjC+cc2FinNxEAjxCj1modAdRa/55N/ZufNNSdooeeCriqp
 8PnLvSmU3Chx2VIrcKNrnGe01dNa4fln8695IO/8wbYrYVt5DzqHztw/57WAaet8ikqa
 QLpOqmdFiBzEov6HAuM4vLBYdRWi9Ignb8udt4lJ1EzmBGhm8YLhghsvk914SwHTZVvR
 eCStLdR6OyQAuHAICtFxaU2t1vAYioJwFMr4TOkUG7P5pF+FcABB3KlcY5G7aFGJ/4Hg
 v/v5iO8qBtt0FGJ9SWHk9KRRwmq47TVrfTjYhCnH+xNOHzvRfcW6dqnODsNk4YDBUgD4
 DGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MI7KhLYsLKE5uNE+udNy5HqldNGdl9RXFSuQrHFahb0=;
 b=P3ub4SDAn185qYNUZ9zRriGKLBle0qQl2QmhUJNN5+nIlyl4g9WUzND9ruF+wYbicj
 isuIc2TBf8arJ8C+97PkOxZU1nGnNvPHU5iGMWq1IWbjX5INEs26YxrfROfaCL1netUC
 UaUM7ds4slC+hYY3NZz20MubpsDGBjKJlFxDTG8xyXdTGNSV2SA8QKELvqmmWP02ugzC
 r2I4F199g/9L8LmGYiAbHoTHG07NAU0inH8MvcmDhdLRK4QaRFyuRKPpIzArrEbtrJPR
 r03DZ9k62N+QkonvmQkuuui7fg5uJ17I/U0rOVOFPMWgVPZUQe89XagpFN9kxtSqssU1
 kpBQ==
X-Gm-Message-State: APjAAAWV34aa7gPVKVfEECv2oE7F/H5s2Qn3UltfM3Bn/zlwkdNmVKej
 MCaG3+rDjvZBCGpuroKJd+VaK9wo2NQw/AEkDwrwEbJJ
X-Google-Smtp-Source: APXvYqxX/gpNnsw154fi7WfmRS/Xwu0Nvp9/4fgLV3Pl8cN3vItN44qXOKqfMboF+Ex5JG70ocpZQzQRzIvnXfLBhAk=
X-Received: by 2002:a2e:968f:: with SMTP id q15mr3966737lji.30.1564057991589; 
 Thu, 25 Jul 2019 05:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALVKaGftm5nAJM_c4_0mPHhiuq_9GUH6u_DbgGK79uWjj1GXMA@mail.gmail.com>
In-Reply-To: <CALVKaGftm5nAJM_c4_0mPHhiuq_9GUH6u_DbgGK79uWjj1GXMA@mail.gmail.com>
Date: Thu, 25 Jul 2019 21:32:35 +0900
Message-ID: <CAL7q81vF0XRSAkOjms_zxB7ZDT7r=xhwzB3NoQe-Una40fOfsg@mail.gmail.com>
To: Scott Mullin <smullin2@nd.edu>
Subject: Re: [USRP-users] noc_block_threshold.v ram issue
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4656409419266116538=="
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

--===============4656409419266116538==
Content-Type: multipart/alternative; boundary="000000000000ff4bb7058e80a0cb"

--000000000000ff4bb7058e80a0cb
Content-Type: text/plain; charset="UTF-8"

Hey Scott,

Have you tried building an image with an unmodified noc_block_threshold.v?
Do you get the same BRAM usage?

Jonathon

On Thu, Jul 25, 2019 at 9:28 PM Scott Mullin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello All,
>
> I am trying to use the threshold block on two streams of rf data by using
> a common tkeep signal to the two axi_async_stream modules. I used the
> noc_block_threshold.v code and added a generate statement to create two
> axi_wrappers and two axi_async_stream modules. Plus added some simple code
> to trigger the tkeep signal when either rf stream breaks the threshold.
> However when I try to build the image I get a block ram error (shown
> below).  I assume it has something to do with the fifo in the
> axi_async_stream module, but I am not sure?
>
> I am building this for an X310.
>
> Any help would be appreciated.
>
> Thank you
> Scott.
>
> [00:05:12] Current task: Synthesis +++ Current Phase: RTL Component
> Statistics
> [00:05:12] Current task: Synthesis +++ Current Phase: RTL Hierarchical
> Component Statistics
> [00:05:13] Current task: Synthesis +++ Current Phase: Part Resource Summary
> ERROR: [Synth 8-5834] Design needs 17067 RAMB18 which is more than device
> capacity of 1590
> ERROR: [Common 17-69] Command failed: Vivado Synthesis failed
> [00:06:46] Current task: Synthesis +++ Current Phase: Cross Boundary and
> Area Optimization
> [00:06:47] Current task: Synthesis +++ Current Phase: Finished
> [00:06:47] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           814
> Critical Warnings:  31
> Errors:             2
>
> Makefile.x300.inc:106: recipe for target 'bin' failed
> make[1]: *** [bin] Error 1
> make[1]: Leaving directory
> '/home/irisheyes5/rfnoc_2/src/uhd-fpga/usrp3/top/x300'
> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
> make: *** [X310_RFNOC_HG] Error 2
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ff4bb7058e80a0cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Scott,<div><br></div><div>Have you tried building an i=
mage with an unmodified noc_block_threshold.v? Do you get the same BRAM usa=
ge?</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, 2019 at 9:28 PM =
Scott Mullin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello All,</div><div><br=
></div><div>I am trying to use the threshold block on two streams of rf dat=
a by using a common tkeep signal to the two axi_async_stream modules. I use=
d the noc_block_threshold.v code and added a generate statement to create t=
wo axi_wrappers and two axi_async_stream modules. Plus added some simple co=
de to trigger the tkeep signal when either rf stream breaks the threshold.=
=C2=A0 However when I try to build the image I get a block ram error (shown=
 below).=C2=A0 I assume it has something to do with the fifo in the axi_asy=
nc_stream module, but I am not sure?<br></div><div><br></div><div>I am buil=
ding this for an X310.=C2=A0 <br></div><div><br></div><div>Any help would b=
e appreciated.=C2=A0 <br></div><div><br></div><div>Thank you</div><div>Scot=
t.<br></div><div><br></div><div>[00:05:12] Current task: Synthesis +++ Curr=
ent Phase: RTL Component Statistics<br>[00:05:12] Current task: Synthesis +=
++ Current Phase: RTL Hierarchical Component Statistics<br>[00:05:13] Curre=
nt task: Synthesis +++ Current Phase: Part Resource Summary<br>ERROR: [Synt=
h 8-5834] Design needs 17067 RAMB18 which is more than device capacity of 1=
590<br>ERROR: [Common 17-69] Command failed: Vivado Synthesis failed<br>[00=
:06:46] Current task: Synthesis +++ Current Phase: Cross Boundary and Area =
Optimization<br>[00:06:47] Current task: Synthesis +++ Current Phase: Finis=
hed<br>[00:06:47] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 814<br>Critical Warn=
ings: =C2=A031<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br><b=
r>Makefile.x300.inc:106: recipe for target &#39;bin&#39; failed<br>make[1]:=
 *** [bin] Error 1<br>make[1]: Leaving directory &#39;/home/irisheyes5/rfno=
c_2/src/uhd-fpga/usrp3/top/x300&#39;<br>Makefile:112: recipe for target &#3=
9;X310_RFNOC_HG&#39; failed<br>make: *** [X310_RFNOC_HG] Error 2<br></div><=
div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ff4bb7058e80a0cb--


--===============4656409419266116538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4656409419266116538==--

