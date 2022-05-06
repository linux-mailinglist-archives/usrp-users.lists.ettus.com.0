Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F8F51CDE3
	for <lists+usrp-users@lfdr.de>; Fri,  6 May 2022 03:02:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87015384D7D
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 21:02:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651798921; bh=Sc16ElflQEpzOB9z2YDKwk9p7/pWPc64suyC7kuf9uA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wEy4RxACzmIDELj6o9TBqgIDYH0G63srQRD+3OTcshAOlwklVcQY8we4mHOOJ7/Kp
	 msjiAYXa4CDBOzmWG2wgSiHs6QoYCRGKyJxt+vY5VToovRtpp3NRGTbgm1filUXIrt
	 5jgiCpVHJG4ywokrjDaIC9yZglgNz9HuNqO0/FjYne+wlHSInQgODtuFB28+ABJg4n
	 WLYoNj95vN7z6+LMKuZVtbau2H4MK3zS6jDDJe8HmHDeyO1A/mcHCYmENYNAt9uvT8
	 jKuJUONKyfdfHNo282E2QsWekSijkslhfZ8s9AQqOv5ZzOsbAuCHWTa4QOovEpu83k
	 fwYnorw8oAK6A==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 45795384A1B
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 21:01:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="WqeBuY23";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id g28so10442274ybj.10
        for <usrp-users@lists.ettus.com>; Thu, 05 May 2022 18:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WPXWwRe5z4+YY1oyd7KHVgZIn8xRlwYO+oEUVioyJIA=;
        b=WqeBuY232XdEv9Uu3lPNuv+kHYx/UehugcrttueLbRdQdMDm+DevmuSpE2uvHWrodz
         LuasF0y/bWYb+Z0F6ulcIzzcp4y1pVSwB4hnK0BwkAH4aBm8JWC66YG2tGRa++W/WDIT
         232knyCP3WiYfWeY38VIekWb8IAMrYAhVEn5AaGpQ+wJBmbVvtG/lxC+wfryM26uFEht
         7W+VgPqX6uaeMPWspqrAeIZVmpfLszWaUD67fMQjzgUR71JKT93qmnuKYW+zrf5GxVMj
         epLd9HCUfASBXGbEILAVx07oS/5aIsg5PyWQQHqBbbZbdRLdrFNEH79OaitKWCQZg7bT
         If7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WPXWwRe5z4+YY1oyd7KHVgZIn8xRlwYO+oEUVioyJIA=;
        b=GfD7NzCM8ZcaBkSt1AI4+ZI6NPUxW+CLhTCQV8rit3ymspSB07IeHcByxu9h+Lm/25
         vvOvsV775GVlh7U9/yXdojjkp6ieFX5fcFyvOcxnPadj4DvfY4CxbD63iQclpy/jrpxP
         ILHEDYN9SiX22+hXd0OW7zL256JchLK4aIHM7KI5H4+8zgjrCH3Soaojf5DeX6j3HmyX
         OLDx7t9S9qyOMAfVGpTtajDfQCeC08SYVUQHvtZis2DPDEtquoTTRWC0uJvl0uubyGyl
         uUwuxu2cUkejZfCVSNBbBf6KYlLz5DqhBSM/dC8f+K0E9R1/UpE52LUd11wSSAYkkeoN
         KplQ==
X-Gm-Message-State: AOAM530MOBRe7XYx6kB8nnH6UJ9R08ReEkVE2H81/jHB3l24E/0ZznqI
	+/0gCAqZiTSJvOxpD5F07QAu9pzb1mJ0KWQlaQHL+SOUZ7jTVQ==
X-Google-Smtp-Source: ABdhPJzwcpYuNVsclSZfjbF27jssmAvIF8rsfjHoUV5objygWRLApRL0JVkC/1eWxQUWxeyZWRcFDEQo3M3eBehzwhI=
X-Received: by 2002:a25:320f:0:b0:648:42fe:9aa8 with SMTP id
 y15-20020a25320f000000b0064842fe9aa8mr727598yby.50.1651798863618; Thu, 05 May
 2022 18:01:03 -0700 (PDT)
MIME-Version: 1.0
References: <35179a1b-c803-a381-2ea1-afc1a2a3e592@olifantasia.com>
 <3becaee4-64b1-8f21-f753-604afccacea9@gmail.com> <CAFche=hxr+f0mMCW3zFBfuPF5YgLXtsQZOG7vrQ6MRdGmMonaQ@mail.gmail.com>
 <CAB__hTTYo=h--G=ymoZu5DvmOzUGOe5YFhi92Q_FyyacTjnpRQ@mail.gmail.com>
 <CAFche=h=tcwHtQffPMeQSMJAgACpfcqz1Z6EtZr-hKdaeytDAg@mail.gmail.com> <CAEXYVK6NRA6xXZ3JiM24GnGsjZ3f55peKh+ex7R=87Gics5ATg@mail.gmail.com>
In-Reply-To: <CAEXYVK6NRA6xXZ3JiM24GnGsjZ3f55peKh+ex7R=87Gics5ATg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 5 May 2022 20:00:47 -0500
Message-ID: <CAFche=hVrGFVQ6Sq_Rv=tQ=6Rpr--pfUT6XShYGsGGTkpddhvA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 2I6UFITW3PRD65Y6SVBNB62C676DKBE5
X-Message-ID-Hash: 2I6UFITW3PRD65Y6SVBNB62C676DKBE5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: data corruption problems with high speed dual channel capturing on USRP E320 over 10 gbit ethernet
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2I6UFITW3PRD65Y6SVBNB62C676DKBE5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4307690680665429147=="

--===============4307690680665429147==
Content-Type: multipart/alternative; boundary="00000000000081b85805de4d64d6"

--00000000000081b85805de4d64d6
Content-Type: text/plain; charset="UTF-8"

Hi Brian,

I don't recall the details of why the design was not able to statically
close timing at the highest clock rate. The current design is constrained
for the lower clock rate. Typically, static timing closure becomes
difficult when you get up around 250 MHz and dynamic phase alignment
techniques tend to be used instead. So it's certainly possible to create
LVDS interfaces that run at this rate, but the current design of the FPGA
interface doesn't.

Wade

On Thu, May 5, 2022 at 12:28 PM Brian Padalino <bpadalino@gmail.com> wrote:

> On Thu, May 5, 2022 at 11:45 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> It's a limitation of the FPGA interface to the RFIC. It doesn't support
>> the tight setup/hold requirements for operation at the higher clock clock
>> rate required for 2 x 61.44 Msps.
>>
>> Wade
>>
>
> This sounds wrong to me unless you have some very serious bus skew in the
> layout.  The clock and data delays built into the AD9361 along with the
> fact the FPGA is a Zynq-7045 should be enough to get some valid setup/hold
> times.  The LVDS interface is pretty robust and I've seen it work very well
> on many designs.
>
> Can you elaborate more on what the deficiency is with the FPGA interface
> to the RFIC?
>
> Brian
>

--00000000000081b85805de4d64d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Brian,</div><div><br></div><div>I don&#39;t recall=
 the details of why the design was not able to statically close timing at t=
he highest clock rate. The current design is constrained for the lower cloc=
k rate. Typically, static timing closure becomes difficult when you get up =
around 250 MHz and dynamic phase alignment techniques tend to be used inste=
ad. So it&#39;s certainly possible to create LVDS interfaces that run at th=
is rate, but the current design of the FPGA interface doesn&#39;t.</div><di=
v><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, May 5, 2022 at 12:28 PM Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">On Thu, May 5, 2022 at 11:45 AM Wade Fife &lt;<a =
href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>It&#39;s a limitation of the=
 FPGA interface to the RFIC. It doesn&#39;t support the tight setup/hold re=
quirements for operation at the higher clock clock rate required for 2 x 61=
.44 Msps.</div><div><br></div><div>Wade</div></div></blockquote><div><br></=
div><div>This sounds wrong to me unless you have some very serious bus skew=
 in the layout.=C2=A0 The clock and data delays built into the AD9361 along=
 with the fact the FPGA is a Zynq-7045 should be enough to get some valid s=
etup/hold times.=C2=A0 The LVDS interface is pretty robust and I&#39;ve see=
n it work very well on many designs.</div><div><br></div><div>Can you elabo=
rate more on what the deficiency is with the FPGA interface to the RFIC?</d=
iv><div><br></div><div>Brian</div></div></div>
</blockquote></div>

--00000000000081b85805de4d64d6--

--===============4307690680665429147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4307690680665429147==--
