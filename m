Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C01DA78EA2
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 17:03:48 +0200 (CEST)
Received: from [::1] (port=53528 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs7Bh-0001Z8-6F; Mon, 29 Jul 2019 11:03:45 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:44750)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hs7Bd-0001UF-DY
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 11:03:41 -0400
Received: by mail-lj1-f170.google.com with SMTP id k18so58885900ljc.11
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 08:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XFhezFvJm09Fb/YEE7yvSOSU6ZkeJjx2fQ+QQ9wB+/4=;
 b=FPeU4hY6BkCW8YQDmKlMrB+12keiNnwh6Ne2cqnmI4T2DotW7uqTK9HjBPVwSj+jyo
 EDivDMpYgKQ7vdyYz5MNxlf/5Sy3Ek6JYFrT/jWzGnVStgo69glg7cXZqM5FPsi2gq+5
 y0Q9y7loTQjyAwf7wUsYBRtWn8yBNQkDzB5I7QNhh4VfZyQuppVDnvCSUwo9fwCdXcAh
 NM3hTyZ9QmnwDTD15eWtXPwENazlBbTWWmU1Cb/s2AbSXJ0L2f5ZSgdFfdGnj5S/oJJs
 936L2BB5MpgaUbqA4o84rhVQeI+yOA2io1o7PKSz8wV+BjbSkW2o6YBTUkf+C5TkPV8z
 YCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XFhezFvJm09Fb/YEE7yvSOSU6ZkeJjx2fQ+QQ9wB+/4=;
 b=Ag6dy0KrURI004jUeW0rEoFKuMZBsNeH285uR/kp2IL4GfScrn1Y3IpBf3YTOJMx2+
 ZzlU5OapjilEEXeuzRd0oGZ/eU9AFYz7nbUZH34L11+D6DmhZ8XENDwjlfLoiCvbEtwM
 R11svJJhlyalHmzp7yhNkV7tV/g5EL7ATv9fbon6BAc4PLoyFukECZX6Delm5Warr4KA
 sg1VfdZpHRlK8esUgiGvPQROy2rc9fECvGUwV8OuBejkU5PEny9t1KsneUSKB6ruiv15
 PHLCTpgEsV3FC9Uc57M4coBn6vGLwF//6B1UDwSiAJFos4brUrTtLQIpaHAaMAd+zv5L
 Z0Ew==
X-Gm-Message-State: APjAAAUKNb9zuwgqwieSthqGzzR5PUuoz7sfwgnsP7GNNy8/1PUl9z9J
 ss6bK2mvz7dBs3qkt6FELCs1VFNBTxbJgU5G0KnYLkQA
X-Google-Smtp-Source: APXvYqwbC4Qa4FmrCs6AuYbjpmFm9gVJE6y19GXfeG1LJbZoIf8IBfwyrhnuH+Yu/xZJdRGyEG+4+5yyd/XRbZo8h+o=
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr8483082ljc.36.1564412580200; 
 Mon, 29 Jul 2019 08:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <CALVKaGftm5nAJM_c4_0mPHhiuq_9GUH6u_DbgGK79uWjj1GXMA@mail.gmail.com>
 <CAL7q81vF0XRSAkOjms_zxB7ZDT7r=xhwzB3NoQe-Una40fOfsg@mail.gmail.com>
In-Reply-To: <CAL7q81vF0XRSAkOjms_zxB7ZDT7r=xhwzB3NoQe-Una40fOfsg@mail.gmail.com>
Date: Tue, 30 Jul 2019 00:02:24 +0900
Message-ID: <CAL7q81tSj3JxHT_P5WdGsAASEMEoK+HXRkhaY-W2hvpAvobkNA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0819596218066092287=="
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

--===============0819596218066092287==
Content-Type: multipart/alternative; boundary="0000000000002011d1058ed3304f"

--0000000000002011d1058ed3304f
Content-Type: text/plain; charset="UTF-8"

Scott and I determined off list that the STR_SINK_FIFOSIZE parameter on
noc_shell was misconfigured.

On Thu, Jul 25, 2019 at 9:32 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hey Scott,
>
> Have you tried building an image with an unmodified noc_block_threshold.v?
> Do you get the same BRAM usage?
>
> Jonathon
>
> On Thu, Jul 25, 2019 at 9:28 PM Scott Mullin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello All,
>>
>> I am trying to use the threshold block on two streams of rf data by using
>> a common tkeep signal to the two axi_async_stream modules. I used the
>> noc_block_threshold.v code and added a generate statement to create two
>> axi_wrappers and two axi_async_stream modules. Plus added some simple code
>> to trigger the tkeep signal when either rf stream breaks the threshold.
>> However when I try to build the image I get a block ram error (shown
>> below).  I assume it has something to do with the fifo in the
>> axi_async_stream module, but I am not sure?
>>
>> I am building this for an X310.
>>
>> Any help would be appreciated.
>>
>> Thank you
>> Scott.
>>
>> [00:05:12] Current task: Synthesis +++ Current Phase: RTL Component
>> Statistics
>> [00:05:12] Current task: Synthesis +++ Current Phase: RTL Hierarchical
>> Component Statistics
>> [00:05:13] Current task: Synthesis +++ Current Phase: Part Resource
>> Summary
>> ERROR: [Synth 8-5834] Design needs 17067 RAMB18 which is more than device
>> capacity of 1590
>> ERROR: [Common 17-69] Command failed: Vivado Synthesis failed
>> [00:06:46] Current task: Synthesis +++ Current Phase: Cross Boundary and
>> Area Optimization
>> [00:06:47] Current task: Synthesis +++ Current Phase: Finished
>> [00:06:47] Process terminated. Status: Failure
>>
>> ========================================================
>> Warnings:           814
>> Critical Warnings:  31
>> Errors:             2
>>
>> Makefile.x300.inc:106: recipe for target 'bin' failed
>> make[1]: *** [bin] Error 1
>> make[1]: Leaving directory
>> '/home/irisheyes5/rfnoc_2/src/uhd-fpga/usrp3/top/x300'
>> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
>> make: *** [X310_RFNOC_HG] Error 2
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002011d1058ed3304f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Scott and I determined off list that the =
STR_SINK_FIFOSIZE parameter on noc_shell was misconfigured.</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25, =
2019 at 9:32 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ett=
us.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Sc=
ott,<div><br></div><div>Have you tried building an image with an unmodified=
 noc_block_threshold.v? Do you get the same BRAM usage?</div><div><br></div=
><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Jul 25, 2019 at 9:28 PM Scott Mullin via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello All,</div><div><br></di=
v><div>I am trying to use the threshold block on two streams of rf data by =
using a common tkeep signal to the two axi_async_stream modules. I used the=
 noc_block_threshold.v code and added a generate statement to create two ax=
i_wrappers and two axi_async_stream modules. Plus added some simple code to=
 trigger the tkeep signal when either rf stream breaks the threshold.=C2=A0=
 However when I try to build the image I get a block ram error (shown below=
).=C2=A0 I assume it has something to do with the fifo in the axi_async_str=
eam module, but I am not sure?<br></div><div><br></div><div>I am building t=
his for an X310.=C2=A0 <br></div><div><br></div><div>Any help would be appr=
eciated.=C2=A0 <br></div><div><br></div><div>Thank you</div><div>Scott.<br>=
</div><div><br></div><div>[00:05:12] Current task: Synthesis +++ Current Ph=
ase: RTL Component Statistics<br>[00:05:12] Current task: Synthesis +++ Cur=
rent Phase: RTL Hierarchical Component Statistics<br>[00:05:13] Current tas=
k: Synthesis +++ Current Phase: Part Resource Summary<br>ERROR: [Synth 8-58=
34] Design needs 17067 RAMB18 which is more than device capacity of 1590<br=
>ERROR: [Common 17-69] Command failed: Vivado Synthesis failed<br>[00:06:46=
] Current task: Synthesis +++ Current Phase: Cross Boundary and Area Optimi=
zation<br>[00:06:47] Current task: Synthesis +++ Current Phase: Finished<br=
>[00:06:47] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 814<br>Critical Warnings: =
=C2=A031<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br><br>Make=
file.x300.inc:106: recipe for target &#39;bin&#39; failed<br>make[1]: *** [=
bin] Error 1<br>make[1]: Leaving directory &#39;/home/irisheyes5/rfnoc_2/sr=
c/uhd-fpga/usrp3/top/x300&#39;<br>Makefile:112: recipe for target &#39;X310=
_RFNOC_HG&#39; failed<br>make: *** [X310_RFNOC_HG] Error 2<br></div><div><b=
r></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</div>

--0000000000002011d1058ed3304f--


--===============0819596218066092287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0819596218066092287==--

