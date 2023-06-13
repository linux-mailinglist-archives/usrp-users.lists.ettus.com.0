Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4660372EBF8
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 21:30:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82838384B05
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 15:30:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686684603; bh=TyO3+E3HrJpIQ8xWiTcmmt273JiIERYww64vr0qszlo=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=y3j46Az+Wc7LOA6KLeqVAkkAeuMovRNNaOCiYbdakpJ29b803T+NqKT4x3LSiSKHs
	 OymnTBpnWHaMwSUdbbrQ5OKJgGqhHNj0tn9TG3LfZgXiZYoKb9YlxBsvjLFNK7K4Ml
	 TvylWd/Na0Bb+cOoXBDRkPdJNLf9t/Yu5L2UDc14UyHKVXcU/D8hnWLyUEzTCYkogp
	 GpS11XNseKDj/NILW7uU9T5bNxrsQtiN2tcubAThsq6OeTqcbOB/tRm3K66Zr0EdFF
	 j9d1iTMhztQ44sQF7IJHT3zfKk786Us4XF/iTPhod7ohy+kWu+nVcOT5Q2k4xhTsEx
	 UaoSEZOCAiLLw==
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 45178384965
	for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 15:29:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="j2FIvn2D";
	dkim-atps=neutral
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-543c692db30so4256578a12.3
        for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 12:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1686684546; x=1689276546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jgHeon+k0ItXNEGGVyYOVmyo7zu2IEGhDj01biRru2U=;
        b=j2FIvn2D7hlh8qdbuK5q048NlLg4q2RXoc0UpnPcU/79GhAKu6Jduwbl7rlq4W9sOQ
         MFhpN0Jhi2Ws4mD0GK0QY69WJi/Cssx7+BZ5GHZS8KlvoSuWDOGYDR3FiRebgJb8ws3L
         +WT2XT+6H12hDr9TZ+7HrPfy9/m5PFSiivnkBYFA2xEX4EmD8DqfYW2o8Uz+Xrqll7xh
         JUZJ2+T68D3JtD/qa7ljbnw6GGWsKm4YtDu7rmhaIyaaqN53XzLkeP8TJ/HmY8awHtJ3
         Agf4rZHj5dHset60Mxa05sO5CnlkMwKsLaWZU6e2izXnb+Ac/f++jfbAw79UQeQ6Dvoc
         2X3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686684546; x=1689276546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jgHeon+k0ItXNEGGVyYOVmyo7zu2IEGhDj01biRru2U=;
        b=UnUjNQoSE2XK87cp47eqyMHm8DSQccml3DpMCIbYBLk/68c5EoR8MLR75upDiXtdIM
         5Wqo3rjpuSuL5oZu8SW4djt2oxnaOnspqITNvbClsmgUOKj/ttI6sSZKTmOkUDktnnJG
         nvxER5ElGiJH9cOOJfNLM5Ynx0vf2X7EMnD3gNbfNAXuqeD8AGZFyjjFxKgyNJuNjS+G
         i+9zi3U7aRj8euRyPIVdpmddKP08M/mjfYkaSWx88qOCA5DIjZQSmZeoA9gA0WlowOaF
         F3lk3hAItmE0WC18MVVrdsi9PuTd0IpT6vOKD5L+U7TZ6SR1X5IJeVgbatAk099tAgWr
         cGaQ==
X-Gm-Message-State: AC+VfDyW7QIy7/UY7fQZ+rjrOzZpgVcYyA1CqL1phwMo843I9Ln2nNoD
	EIdgXsFrWvnRD38Dd4ncPP3BHIcks6bu0CabgI+vVw==
X-Google-Smtp-Source: ACHHUZ4nKqVD5r3K5bg9h1ayGi+V8FGetJh77VBVnyMPMDdOVDeQ1Ey3rC/YVqRUPpP8R/t+x6Q6jyTdcWY5AJjVpwE=
X-Received: by 2002:a17:90a:d3cf:b0:256:cf04:f8f7 with SMTP id
 d15-20020a17090ad3cf00b00256cf04f8f7mr12329882pjw.29.1686684544759; Tue, 13
 Jun 2023 12:29:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh738iQj6a55CAsuN9Y9f4OKVHSuWuOrqeP_+06gMhrG=LA@mail.gmail.com>
 <79a14485-d53c-382b-e75c-97ee5d10cf29@gmail.com>
In-Reply-To: <79a14485-d53c-382b-e75c-97ee5d10cf29@gmail.com>
Date: Tue, 13 Jun 2023 15:28:52 -0400
Message-ID: <CAB__hTTFQy73SDsb9grWt6rwzFycu33fYBH74ATR=vFBGs8BEw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WYEZVULQPC6DXVBCNXVOZUOKGVMPKUWN
X-Message-ID-Hash: WYEZVULQPC6DXVBCNXVOZUOKGVMPKUWN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Dual 200 Msps Streaming
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYEZVULQPC6DXVBCNXVOZUOKGVMPKUWN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8056758488663943810=="

--===============8056758488663943810==
Content-Type: multipart/alternative; boundary="0000000000002506fd05fe07d99b"

--0000000000002506fd05fe07d99b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My own experience is that 200 S/s on two channels is very difficult to
achieve from the host. Separate streamers may help, but you will likely
need to move to DPDK to get the best performance. I have not tried DPDK
recently, but when I tried it a few years ago, the performance was
excellent, but it was not easy to get it working properly (and there were
some negative side effects that I never solved).  The "skip_ddc" and
"skip_duc" do not have any effect on FPGA images that are "statically
linked" between the Radio and DDC/DUC (which is likely all UHD 4 images).


On Tue, Jun 13, 2023 at 12:40=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 12/06/2023 22:03, Aaron Smith wrote:
> > Hello All,
> >
> > I am trying to transmit on two UBX-160 daughterboards  within a single
> > X310 at 200 Msps using UHD 4.1.0.5-3.
> >
> > I am experiencing periodic underflows, and I have already applied all
> > of the tips in the "USRP Host Performance Tuning Tips and Tricks"
> > application note, with the exception of using DPDK.
> >
> > I have a few questions about UHD streaming and what can be done to
> > improve performance.
> >
> > 1. My current implementation uses a single tx_streamer for both
> > channels, and uses multiple threads to populate the buffers sent to
> > the X310. Would the performance be better if I used two separate
> > streamers, one for each channel, in separate threads?
> I don't think there's a closed-form answer to this.  Because it would
> depend on your particular system, application, etc.   I'd
>    just do the experiment and see...
>
> >
> > 2. I have seen some claims that DPDK is not as useful with UHD 4, is
> > this true?
> I don't use DPDK myself, so I don't know if that's true or not.
>
> >
> > 3. With UHD 4, would it help to set the skip_duc and skip_ddc flags
> > with full rate streaming?
> Again, the answer here is susceptible to experiment...
>
> >
> > 4. Are underflows only created within the send() function? Or can the
> > timing of calls to send() cause underflows, especially when the burst
> > flags are used? For example, suppose I set the start of burst flag to
> > true for a single buffer containing 1 second of data, and then I
> > toggle the start of burst flag to false for subsequent buffers and
> > continuously call send() on 1 second buffers for 10 minutes. On the
> > last second I set end of burst flag to true. The idea is to create a
> > 10 minute long "burst." If I call send late on one of the one second
> > buffers in the middle of the "burst" will UHD report underflows? My
> > thinking is the X310 should think it is in the middle of a burst, and
> > will expect data, but send() has not been called, so there is no data
> > for the radio to read from the host, creating underflows. Perhaps I am
> > also misunderstanding the purpose of the burst flags, as they are not
> > well documented.
> >
> > Thanks for the help!
> > Armon
> >
> Underflows occur when the radio hardware underflows its FIFO, which in
> turn means the host isn't providing samples at
>    the desired rate--the radio has no idea what your "send()" boundaries
> are, just that it isn't getting samples when it needs
>    them.    The data in the "send()" has to percolate through UHD,
> through the kernel IP stack (or DPDK stack) and its buffers, and
>    then the hardware buffers.  Any information about exactly when you
> called "send()" is pretty invisible by the time it reaches
>    the radio.
>
> The "burst" architecture is really intended for applications like TDD or
> half-duplex, where you need to let the radio know to
>    not expect any more TX samples, so it can do things like switch
> antennas, etc.
>
>
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002506fd05fe07d99b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">My own experience is that 200 S/s on two =
channels is very difficult to achieve from the host. Separate=C2=A0streamer=
s may help, but you will likely need to move to DPDK to get the best perfor=
mance. I have not tried DPDK recently, but when I tried it a few years ago,=
 the performance was excellent, but it was not easy to get it working prope=
rly (and there were some negative side effects that I never solved).=C2=A0 =
The &quot;skip_ddc&quot; and &quot;skip_duc&quot; do not have any effect on=
 FPGA images that are &quot;statically linked&quot; between the Radio and D=
DC/DUC (which is likely all UHD 4 images).<br><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 13=
, 2023 at 12:40=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On 12/06/2023 22:03, Aaron Smith wrot=
e:<br>
&gt; Hello All,<br>
&gt;<br>
&gt; I am trying to transmit on two UBX-160 daughterboards=C2=A0 within a s=
ingle <br>
&gt; X310 at 200 Msps using UHD 4.1.0.5-3.<br>
&gt;<br>
&gt; I am experiencing periodic underflows, and I have already applied all =
<br>
&gt; of the tips in the &quot;USRP Host Performance Tuning Tips and Tricks&=
quot; <br>
&gt; application note, with the exception of using DPDK.<br>
&gt;<br>
&gt; I have a few questions about UHD streaming and what can be done to <br=
>
&gt; improve performance.<br>
&gt;<br>
&gt; 1. My current implementation uses a single tx_streamer for both <br>
&gt; channels, and uses multiple threads to populate the buffers sent to <b=
r>
&gt; the X310. Would the performance be better if I used two separate <br>
&gt; streamers, one for each channel, in separate threads?<br>
I don&#39;t think there&#39;s a closed-form answer to this.=C2=A0 Because i=
t would <br>
depend on your particular system, application, etc.=C2=A0=C2=A0 I&#39;d<br>
=C2=A0=C2=A0 just do the experiment and see...<br>
<br>
&gt;<br>
&gt; 2. I have seen some claims that DPDK is not as useful with UHD 4, is <=
br>
&gt; this true?<br>
I don&#39;t use DPDK myself, so I don&#39;t know if that&#39;s true or not.=
<br>
<br>
&gt;<br>
&gt; 3. With UHD 4, would it help to set the skip_duc and skip_ddc flags <b=
r>
&gt; with full rate streaming?<br>
Again, the answer here is susceptible to experiment...<br>
<br>
&gt;<br>
&gt; 4. Are underflows only created within the send() function? Or can the =
<br>
&gt; timing of calls to send() cause underflows, especially when the burst =
<br>
&gt; flags are used? For example, suppose I set the start of burst flag to =
<br>
&gt; true for a single buffer containing 1 second of data, and then I <br>
&gt; toggle the start of burst flag to false for subsequent buffers and <br=
>
&gt; continuously call send() on 1 second buffers for 10 minutes. On the <b=
r>
&gt; last second I set end of burst flag to true. The idea is to create a <=
br>
&gt; 10 minute long &quot;burst.&quot; If I call send late on one of the on=
e second <br>
&gt; buffers in the middle of the &quot;burst&quot; will UHD report underfl=
ows? My <br>
&gt; thinking is the X310 should think it is in the middle of a burst, and =
<br>
&gt; will expect data, but send() has not been called, so there is no data =
<br>
&gt; for the radio to read from the host, creating underflows. Perhaps I am=
 <br>
&gt; also misunderstanding the purpose of the burst flags, as they are not =
<br>
&gt; well documented.<br>
&gt;<br>
&gt; Thanks for the help!<br>
&gt; Armon<br>
&gt;<br>
Underflows occur when the radio hardware underflows its FIFO, which in <br>
turn means the host isn&#39;t providing samples at<br>
=C2=A0=C2=A0 the desired rate--the radio has no idea what your &quot;send()=
&quot; boundaries <br>
are, just that it isn&#39;t getting samples when it needs<br>
=C2=A0=C2=A0 them.=C2=A0=C2=A0=C2=A0 The data in the &quot;send()&quot; has=
 to percolate through UHD, <br>
through the kernel IP stack (or DPDK stack) and its buffers, and<br>
=C2=A0=C2=A0 then the hardware buffers.=C2=A0 Any information about exactly=
 when you <br>
called &quot;send()&quot; is pretty invisible by the time it reaches<br>
=C2=A0=C2=A0 the radio.<br>
<br>
The &quot;burst&quot; architecture is really intended for applications like=
 TDD or <br>
half-duplex, where you need to let the radio know to<br>
=C2=A0=C2=A0 not expect any more TX samples, so it can do things like switc=
h <br>
antennas, etc.<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002506fd05fe07d99b--

--===============8056758488663943810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8056758488663943810==--
