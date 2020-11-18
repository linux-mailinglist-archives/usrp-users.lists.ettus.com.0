Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6949E2B8725
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 23:07:39 +0100 (CET)
Received: from [::1] (port=59086 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfVc0-0006xf-US; Wed, 18 Nov 2020 17:07:36 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:45345)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kfVbx-0006sF-Pc
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 17:07:33 -0500
Received: by mail-oi1-f173.google.com with SMTP id l206so3970602oif.12
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 14:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XtBbGROkSXwgKLdIy9qepkqvImo8wYb5jWl+tRt+wlI=;
 b=O1Uh3yBZrdFLd3labL2dUmLPgCV4PqnA8e51n1/qlGq7uOlZFLlyceWyGrQuPFeC0M
 0k7gUgzSHd83M0c/Pp6bPc6qy8f6fSSEOi3NXpqqD6xWsf1hf/8Bsrzlmv/bugPIaO4x
 hvDxJO7KLH5bnb2db/p0JxER9OdpmGCWSLbF6Wcg1/IW9CCUah9+JpOdoUzh8WCdsvI9
 5NRj1XQmCZthhsf9hRYZuvMF7VVGlDPjNH4vumVus/nyJnA/d2U/cxRtYDQ/EFK5Ov6D
 Ijx3JoWe67tZpWkyG6NyUzgDPw055n1ovVBTGAjm4476oZOfHc+wfHoeucUEn9fma8g0
 deQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XtBbGROkSXwgKLdIy9qepkqvImo8wYb5jWl+tRt+wlI=;
 b=LTEVK6M6JnnlpqvKVI7sHnr0CwW8U+EfXTQYMANLLZrio2dBNO1gNPZTiNf5hxyyZA
 mleo13qqDuJzB76r9mX6dHw0Pia19K3BK50TZBAsiUCGobRilKwPaVCvNqe+bMARw+2B
 7FcvIheUWK4riZd6l1nPyDtv8yITZc63XHPDzz5BxTKC9Q0qG2asjPLChSSJxWwQ/VTA
 q/2tsJ137rBjoNIyzTobDHs682obxGZlpfkakXZAv4qzcsOCOU7RYu4fkfAs0YTQm7c6
 yFS4tA2LKmLPewUJzj6CQKsEFe2p0zY0UblOVL3fCbEsF7IbuJPwgmedKbmuDHpwiD8v
 EqAg==
X-Gm-Message-State: AOAM5337PmN5Zu9w4jsGe3ZAv8Sbifr7FonL5deHj99SlFd18JogsByv
 zttu41C9Wq7V31Ge1gPnjGmUavsbCziSpNIn/zC2XQ==
X-Google-Smtp-Source: ABdhPJyPIWdEG38nOUNJHjUL105guHu3MXv7Iw0FSdC9TQW1wWruIbFUra1MMrZUP0lkKNmOtOHNIFXP8Eo1yzp7QMo=
X-Received: by 2002:aca:5c82:: with SMTP id q124mr907770oib.33.1605737212833; 
 Wed, 18 Nov 2020 14:06:52 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTuHFM-TE=s2DvMzZ9MjUCG0b6qJntW3cdCACD1oBmCJQ@mail.gmail.com>
 <CAFche=g7f0piVrd0cVZ0L8NEm9+WFDCj1ntFt-4aK8tSHoq+HA@mail.gmail.com>
In-Reply-To: <CAFche=g7f0piVrd0cVZ0L8NEm9+WFDCj1ntFt-4aK8tSHoq+HA@mail.gmail.com>
Date: Wed, 18 Nov 2020 16:06:42 -0600
Message-ID: <CAB__hTT_zbpCV4F7w3ZiGc=6TtDH5YPP8c+eotYVmjeEH847Ng@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc_image_builder with Ettus blocks
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2579546160137417322=="
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

--===============2579546160137417322==
Content-Type: multipart/alternative; boundary="0000000000002cd88505b468d47b"

--0000000000002cd88505b468d47b
Content-Type: text/plain; charset="UTF-8"

Thanks Wade,
I added this line to the switchboard.yml file in the install share folder
and then re-built and it seems to have worked fine.
Rob

On Wed, Nov 18, 2020 at 2:59 PM Wade Fife <wade.fife@ettus.com> wrote:

> Rob,
>
> The -I option is meant for out-of-tree blocks, which are supposed to
> follow the same structure as the example. The switchboard.yml file is
> missing a line that indicates where its makefile.srcs is:
>
> makefile_srcs:
> "${fpga_lib_dir}/blocks/rfnoc_block_switchboard/Makefile.srcs"
>
> See one of the other in-tree RFNoC blocks for an example (e.g.,
> uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml). Once you add that then
> you shouldn't need to specify it using -I. I'll see that switchboard.yml
> gets updated.
>
> Thanks,
>
> Wade
>
> On Wed, Nov 18, 2020 at 1:10 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I'm wondering what is the intended procedure for building an FPGA image
>> using non-default Ettus RFNoC blocks in RFNoC 4.0.  I am referring to using
>> Ettus-developed blocks other than Radio, DDC, DUC, and Replay which by
>> default are included (see Makefile.n3xx.inc which mentions that only these
>> default blocks are included).
>>
>> I am trying to include the Ettus switchboard block in my image and I get
>> an error that this block cannot be found.  If I add a command line option
>> "-I" to add an include folder to the build, this still does not work (see
>> error below).  This command line option seems to expect an "fpga" subfolder
>> which does not exist for the switchboard block.
>>
>> However, if I directly modify Makefile.n3xx.inc to add the switchboard
>> block in the same way as DDC, it works.  But, this does not seem to me to
>> be the intended way of doing things. Is there a better way?
>> Rob
>>
>> ************ HERE is the command I issue
>> $ rfnoc_image_builder -y n310_pulse_det_6_rfnoc_image_core.yml -I ./ -F
>> /data/rkossler/uhd/UHD-4.0/uhd/fpga/ -d n310  -t N310_XG -I
>> /data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/
>>
>> ************ HERE is the error message I get.
>> Makefile.n3xx.inc:53:
>> /data/rkossler/uhd/UHD-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/fpga/Makefile.srcs:
>> No such file or directory
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002cd88505b468d47b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Wade,<div>I added this line to the switchboard.yml =
file in the install share folder and then re-built and it seems to have wor=
ked fine.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Nov 18, 2020 at 2:59 PM Wade Fife &lt=
;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>
<div>Rob,</div><div><br></div><div>The -I option is meant for=20
out-of-tree blocks, which are supposed to follow the same structure as=20
the example. The switchboard.yml file is missing a line that indicates=20
where its makefile.srcs is:<br></div><div><br></div><div>makefile_srcs: &qu=
ot;${fpga_lib_dir}/blocks/rfnoc_block_switchboard/Makefile.srcs&quot;</div>=
<div><br></div><div>See one of the other in-tree RFNoC blocks for an exampl=
e (e.g., uhd/host/include/uhd/rfnoc/blocks/fir_filter.yml).
 Once you add that then you shouldn&#39;t need to specify it using -I. I&#3=
9;ll=20
see that switchboard.yml gets updated.</div><div><br></div><div>Thanks,</di=
v><div><br></div><div>Wade</div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Nov 18, 2020 at 1:10 PM Rob Kossler via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hi,</div><div>I&#39;m wondering what is the intend=
ed procedure for building an FPGA image using non-default Ettus RFNoC block=
s in RFNoC 4.0.=C2=A0 I am referring to using Ettus-developed blocks other =
than Radio, DDC, DUC, and Replay which by default are included (see Makefil=
e.n3xx.inc which mentions that only these default blocks are included).=C2=
=A0=C2=A0</div><div><br></div><div>I am trying to include the Ettus switchb=
oard block in my image and I get an error that this block cannot be found.=
=C2=A0 If I add a command line option &quot;-I&quot; to add an include fold=
er to the build, this still does not work (see error below).=C2=A0 This com=
mand line option seems to expect an &quot;fpga&quot; subfolder which does n=
ot exist for the switchboard block.</div><div><br></div><div>However, if I =
directly modify Makefile.n3xx.inc to add the switchboard block in the same =
way as DDC, it works.=C2=A0 But, this does not seem to me to be the intende=
d way of doing things. Is there a better way?=C2=A0</div><div>Rob=C2=A0</di=
v><div><br></div><div>************ HERE is the command I issue<br></div><di=
v>$ rfnoc_image_builder -y n310_pulse_det_6_rfnoc_image_core.yml -I ./ -F /=
data/rkossler/uhd/UHD-4.0/uhd/fpga/ -d n310 =C2=A0-t N310_XG <span style=3D=
"background-color:rgb(255,255,0)">-I /data/rkossler/uhd/UHD-4.0/uhd/fpga/us=
rp3/lib/rfnoc/blocks/rfnoc_block_switchboard/</span><br></div><div><br></di=
v><div>************ HERE is the error message I get.</div>Makefile.n3xx.inc=
:53: <span style=3D"background-color:rgb(255,153,0)">/data/rkossler/uhd/UHD=
-4.0/uhd/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_switchboard/fpga/Makefile.=
srcs</span>: No such file or directory<br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002cd88505b468d47b--


--===============2579546160137417322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2579546160137417322==--

