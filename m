Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CAEB0332
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 19:58:28 +0200 (CEST)
Received: from [::1] (port=51452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i86sr-0002Zg-Ts; Wed, 11 Sep 2019 13:58:25 -0400
Received: from mail-vs1-f44.google.com ([209.85.217.44]:39263)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jbmsdr@gmail.com>) id 1i86sn-0002Oh-Me
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 13:58:21 -0400
Received: by mail-vs1-f44.google.com with SMTP id y62so14333099vsb.6
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 10:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n8mr/Ibo15Dlp2Lncm8ZU80L+pcQ7qDNwUWskJN/j6c=;
 b=eDC3uc/+WsCGtS7e+ogobnd8moJOkQTNvN1KFI3PxUw9eZDt7eYpiNz0YrCFXzfl4u
 LPm1pnouI1DIUiwb0ObxVh/kaok++RP+6DkIrgsm6EDV8tExq7XYhFLfyfL6DzYFRVsE
 dMHb5HcZLhW5hxjRDFQt5HxqiOlMjePYCdz69nQUdGOqPVXMmLM/K4oDOjHBHN/aHxCn
 gHRellpKovRhKls4ybzvml4lvF4SyYATOCkjiNttuOYcAsBvndSuh+bGbQGA+8wV9/v6
 Z7s3HJN2hQjymK7hA5pU+PAmGy5wJdY15scpV1azTCuMvEAAqZ2xJ9GJTGRQxO2fYtQ7
 ci6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n8mr/Ibo15Dlp2Lncm8ZU80L+pcQ7qDNwUWskJN/j6c=;
 b=lOQN2KfE60BWug5HRY/xtbZ3gy0zUaUHImChPHQwNUuxHFBGEzIAecpNAEONDA/HLz
 zf3OMGkMAbwfUNzhmBYmPr7SgwntUeOx1cIdCD/VNaRViPZlboJDoWL9r1BXanqHLn3g
 1/zpVDUBLCzxoj+kTPVuY9d5EemvNfqGqIFY8rvZKf6X2t7d+1LCNyDKIYnq9Ez4qdWG
 ewi6BsIQ35ACC5wisq4NhQ6PfJMKhCbHOblCYk2XpVty13mGY9bbGAnU6Y8LxQYBsG/d
 g6hV71ebjZY9hpdrS07fKUj70CjtERxoA/06gys2y+l7x4ZIoYeQYojsIcABPdNb4/vD
 7ynA==
X-Gm-Message-State: APjAAAXW7N4Fryv1vAwVg9jwTo2M1uk7eT+Xt3ZFL9PU+5JyGrYCpyNs
 GCd1/LwrAKPoayhFBlGtyBBg8uKCiFNKgFHMfos=
X-Google-Smtp-Source: APXvYqzdObH9SlP62tDbJQqisXddd5diI8GO9PZpew95CGorMcWRMdXbFNBEd5JHU0Pr9sXiTDTCxzKQh0DTpTIxZHo=
X-Received: by 2002:a67:2d13:: with SMTP id t19mr17558071vst.99.1568224661027; 
 Wed, 11 Sep 2019 10:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <CA+1FM8rABFGmjTHf-GrW9w1agB_vMybCLRr_WjDaMjXsbtbg5Q@mail.gmail.com>
 <0047c71d410263624fdb2e46e3e0f1e6d17fc4af.camel@ettus.com>
In-Reply-To: <0047c71d410263624fdb2e46e3e0f1e6d17fc4af.camel@ettus.com>
Date: Wed, 11 Sep 2019 13:57:29 -0400
Message-ID: <CA+1FM8oC==73LdnJ91tpZqmOh1JR-wQZBSVHRC9ftJSi5mBORw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] UHD sink transmit at 100 MSPS
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
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3487301366334331467=="
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

--===============3487301366334331467==
Content-Type: multipart/alternative; boundary="000000000000d9443605924ac122"

--000000000000d9443605924ac122
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus!
I've previously done most everything on there except for the DPDK.  I'll
give that a shot and see if it makes a difference.

The strange thing though is that I only get the UUUUU's when first starting
the flowgraph.  In the steady state, the flowgraph only consumes 85% of a
core for the UHD block and no underruns.

Josh

On Wed, Sep 11, 2019 at 12:36 PM Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>
wrote:

> Hi Josh,
>
> maybe https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>  is of relevance to you?
>
> Best regards,
> Marcus
>
> On Wed, 2019-09-11 at 10:50 -0400, Josh via USRP-users wrote:
> > Hello,
> >
> > I'm looking to transmit a wideband signal from an X310 at 100 MSPS,
> > so I'll start by posing the very general question of what tips and
> > optimizations do I need to make to be able to do this reliably.
> >
> > Here is what I already have set up (this is using a powerful server -
> > 60 cores at 3.4GHz)
> > GNU Radio 3.7, Ubuntu 16
> > UHD 3.14.1.1
> >   - have also downgraded to UHD 3.9 and get generally higher
> > throughput, less buffer underruns
> > MTU/frame size set to 8000
> >
> > But no matter what I try - continuous stream, or TSB bursts, there is
> > a string of U's when I first start transmitting.  With TSBs, there is
> > also a string of Us on every burst I send to the UHD sink (with the
> > newer UHD).  I've monkeyed around with parts of gr-uhd and uhd - but
> > nothing of consequence.
> >
> > So any tips to get up to 100MSPS transmit would be greatly
> > appreciated
> >
> > Thanks,
> > Josh
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000d9443605924ac122
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Marcus!=C2=A0 <br></div><div>I&#39;ve previous=
ly done most everything on there except for the DPDK.=C2=A0 I&#39;ll give t=
hat a shot and see if it makes a difference.=C2=A0 <br></div><div><br></div=
><div>The strange thing though is that I only get the UUUUU&#39;s when firs=
t starting the flowgraph.=C2=A0 In the steady state, the flowgraph only con=
sumes 85% of a core for the UHD block and no underruns.<br></div><div><br><=
/div><div>Josh<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Sep 11, 2019 at 12:36 PM Marcus M=C3=BCller=
 &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
 Josh,<br>
<br>
maybe <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and=
_Tricks" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_Hos=
t_Performance_Tuning_Tips_and_Tricks</a><br>
=C2=A0is of relevance to you?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Wed, 2019-09-11 at 10:50 -0400, Josh via USRP-users wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m looking to transmit a wideband signal from an X310 at 100 MSPS=
,<br>
&gt; so I&#39;ll start by posing the very general question of what tips and=
<br>
&gt; optimizations do I need to make to be able to do this reliably.<br>
&gt; <br>
&gt; Here is what I already have set up (this is using a powerful server -<=
br>
&gt; 60 cores at 3.4GHz)<br>
&gt; GNU Radio 3.7, Ubuntu 16<br>
&gt; UHD 3.14.1.1<br>
&gt;=C2=A0 =C2=A0- have also downgraded to UHD 3.9 and get generally higher=
<br>
&gt; throughput, less buffer underruns<br>
&gt; MTU/frame size set to 8000<br>
&gt; <br>
&gt; But no matter what I try - continuous stream, or TSB bursts, there is<=
br>
&gt; a string of U&#39;s when I first start transmitting.=C2=A0 With TSBs, =
there is<br>
&gt; also a string of Us on every burst I send to the UHD sink (with the<br=
>
&gt; newer UHD).=C2=A0 I&#39;ve monkeyed around with parts of gr-uhd and uh=
d - but<br>
&gt; nothing of consequence.=C2=A0 <br>
&gt; <br>
&gt; So any tips to get up to 100MSPS transmit would be greatly<br>
&gt; appreciated<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Josh<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--000000000000d9443605924ac122--


--===============3487301366334331467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3487301366334331467==--

