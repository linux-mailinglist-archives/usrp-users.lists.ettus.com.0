Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C93FF1F7DAA
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 21:34:34 +0200 (CEST)
Received: from [::1] (port=47094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjpRf-0001cW-92; Fri, 12 Jun 2020 15:34:31 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:45333)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1jjpRb-0001YQ-1Z
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 15:34:27 -0400
Received: by mail-io1-f41.google.com with SMTP id y5so11414529iob.12
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 12:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OJG3B3DX41CEkvDR+FS5BTC5yR7IDwfaJmLQX1FGd5c=;
 b=UzCFwwCeNU8QGg3NhmVbVNoT0UHY9fQ9YJfBc2VQ5XgFox8kksbK2uWnapfUu+Z2H+
 Wtfl02tRfSOFwDBkwEQdUElVhNlmQOxCzcItoqF63ixjbKbGqpwy3+gsSptanRV7aQKf
 BEX5YpAWVnwqlIR5w9u3Wg27i098906yK531pApYrxt7y8hV2qEME39ejgDZo70RmWB6
 WE2xm4H3WjGEVLtVrLZKM5yDwGeZpv9N5NBgjyEEXMDfDcCWFPKihYdK6mTQN3/CpMmD
 1CdbyAcIX2XXQhkx4+RG0F4Ihdo8BztCj5EcRfXclFDf25q5Wmpie5g6cmdPvP2l02yq
 8EJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OJG3B3DX41CEkvDR+FS5BTC5yR7IDwfaJmLQX1FGd5c=;
 b=IIUhLMDyWuhfengo/fDLzdCJyPNeqZxbQ4FN+oNPje4Wh/6nhzdkCmZeivwrWL/6qX
 9njIM4A6j6dMeKad9HALa9v4kMPsAfcWftQpzk93eRmGdUU5lFf1JTeIMloYTEw0zO9S
 WfrsX0wqXvuyjXaLNxc7g6NdR8I/bS+kHNL0LxPptq8fYdzFpBtXNu1YmwchzQqP6Cg9
 yXBFk9sOnzewQFjOD2LyMVx/zvczj5U4on7XkrORGbAf2VbouCeY1wli8Ugc8VWHDhRt
 W3EHYTXfel1i7pqofXj/WwEnIfqK7XclrSomGVkf1zM2bjyVUgxDrdRQGX52OZX0F27N
 jR2A==
X-Gm-Message-State: AOAM532WplgJ0A2jClQIzGkpWbvIKXsA2tkYZcRgxnqvn7Ng9/5cm8T7
 Ajd2QZU+AHQfSIxN1BZO94bUTdOZ5Q7s/8KdbUI=
X-Google-Smtp-Source: ABdhPJx1mF6N0f09iEdnqf/M+/fSQPPEfG3FsCbHowCJ+L6YkeKGnejKg1VHzTrlaquv7MBgIixE70cele4gkVm++kE=
X-Received: by 2002:a02:2444:: with SMTP id q4mr9563074jae.29.1591990426237;
 Fri, 12 Jun 2020 12:33:46 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-469b54f5-33c1-4a43-876d-eb07014b9eb2-1591904041140@3c-app-gmx-bap40>
 <AAE54BC7-1AC7-4745-8598-4FC701DC2627@gmail.com>
 <trinity-698bf8e0-f382-4350-99d9-e2bf4b5ef8d4-1591908381370@3c-app-gmx-bap40>
 <CAOJfBDfX=L330sse-4bUv2uzD2rA9JWVTSQsT19ki2mvdypY4w@mail.gmail.com>
 <trinity-956ec4ce-edff-42f4-bb3f-f19d7681634c-1591976665950@3c-app-gmx-bs14>
In-Reply-To: <trinity-956ec4ce-edff-42f4-bb3f-f19d7681634c-1591976665950@3c-app-gmx-bs14>
Date: Fri, 12 Jun 2020 12:33:34 -0700
Message-ID: <CA+JMMq8t7ZhnE3j8Uk54j9UFux=e=yaY2PxRJ2sBiiqo3rijFg@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1454835961966808932=="
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

--===============1454835961966808932==
Content-Type: multipart/alternative; boundary="000000000000d7814e05a7e827b6"

--000000000000d7814e05a7e827b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I agree that Gnuradio sometimes introduces unpredictable and
non-reproducible latencies, which can be especially problematic when
dealing with timing-sensitive hardware close to the metal. Setting UHD
buffer size is one thing, but Gnuradio can hang onto data in sometimes
opaque ways, with sometimes opaque interactions (at least, to me!) with the
host OS's scheduler. These issues are ordinarily not a problem because you
can just increase send buffer size until you never see underruns due to
buffer starvation, but this solution only works for systems which a) have
backpressure, and b) are not latency-sensitive.

This isn't a particularly helpful suggestion, I realize, but when faced
with these problems in the past I have reimplemented my systems in C++,
interfaced directly to UHD, generally with favorable results. It is much
easier to guarantee timing when you have full control of the system.

Nick

On Fri, Jun 12, 2020 at 8:45 AM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Chintan,
>
> That's a good thought.
>
> What concerns me is that whether timed commands are executed properly
> seems to depend on second and third level parameters such as the way in
> which I connect blocks in gnuradio.
> This is problematic because even if I figure out the max. rate with the
> scope, once I add another block, things may behave differently.
>
> I think the reason that this depends on how blocks are connected in
> gnuradio are buffers. In other words, how fast and how much data UHD
> receives at once.
> All my data arrives on time, just timed commands are sometimes late (the
> cause and conditions are unclear).
>
> There must be a way to control this properly in UHD. The link speed is wa=
y
> fast enough (10Gbe and I use 20Msps).
>
> Thanks,
> Lukas
>
>
>
>
> Gesendet: Freitag, 12. Juni 2020 um 07:04 Uhr
> Von: "Chintan Patel" <cpatel@vt.edu>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Betreff: Re: [USRP-users] How to debug timed commands on FPGA side?
>
> Lukas,
>
> I may have missed some salient points of this thread, but here's a
> thought. Could you just alternate between sending two timed commands -
> transmit freq A and transmit freq B. Hook up the output to a scope (spec =
an
> may not react fast enough). Once you have the setup that you can "see"
> whether a command has been processed or not by looking at the scope, you
> can characterize the reliable ingest rate of the timed command,
> empirically?
>
> If using a scope is not feasible, if you have another SDR, you can use th=
e
> SDR to capture data (instead of scope) to see whether all TX tune command=
s
> were processed correctly.
>
> A thought.
>
> Chintan
>
> On Thu, Jun 11, 2020 at 4:47 PM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Hi
> Marcus,
>
> Can we quantify this in the following way?
>
> If I send timed commands every 2ms and sampling rate is 5MS/s, that's
> 10000 samples per command or 50000 for the command queue (assuming a dept=
h
> of 5).
>
> Can we say the timed commands will guaranteed to be executed on time if w=
e
> never buffer more than 50000 samples (=3D200000 bytes) on the host?
>
> Can this be tuned somehow? I tried setting send_buff_size [1] to a small
> value (send_buff_size=3D10000 etc.) but that didn't seem to make any
> difference.
>
> Thanks,
> Lukas
>
>
> [1]
> https://files.ettus.com/manual/page_transport.html[https://files.ettus.co=
m/manual/page_transport.html]
>
>
>
> > Gesendet: Donnerstag, 11. Juni 2020 um 16:32 Uhr
> > Von: "Marcus D Leech" <patchvonbraun@gmail.com[mailto:
> patchvonbraun@gmail.com]>
> > An: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at]>
> > Cc: "USRP-userslists.ettus.com[http://USRP-userslists.ettus.com]" <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]>
> > Betreff: Re: [USRP-users] How to debug timed commands on FPGA side?
> >
> > So one of the things That can happen is that your command packets will
> have to wait For a much-larger data packet. The link is shared.
> >
> > I=E2=80=99d timed commands are scheduled =E2=80=9Ctight=E2=80=9D this c=
an happen.
> >
> > Sent from my iPhone
> >
> > > On Jun 11, 2020, at 3:34 PM, Lukas Haase <lukashaase@gmx.at[mailto:
> lukashaase@gmx.at]> wrote:
> > >
> > > =EF=BB=BFHi Marcus,
> > >
> > >>> On 06/10/2020 09:00 PM, Lukas Haase via USRP-users wrote:
> > >>> [...]
> > >>> For example, what is the fastest rate I can issue timed commands
> > >>> (ignoring settling times etc) on a X310 over 10Gbe?
> > >> This is actually an ambiguous question.  Do you mean "what is the
> > >> smallest scheduling interval for the commands that will be executed
> > >> in the future?" or "how fast can I issue commands that will
> > >> ultimately be scheduled at a later time?"  In the former, that
> > >> depends on the exact nature of the commands, since they end up
> > >> actually being executed by, for example, an SPI or I2C endpoint,
> > >> which operates very very much slower than a 10GiGe interface.  In th=
e
> > >> latter, my guess is that the FPGA can swallow commands and place the=
m
> > >> on the queue pretty-much as fast as you can issue them over 10GiG.
> > >> How fast you can do that depends very much on your host-side
> > >> environment, network stack, kernel network drivers, kernel latencies=
,
> > >> etc.
> > >
> > > My questions concerns the latter (for now).
> > > Since the FPGA has a (small) finite FIFO for these timed commands I
> assume*d* there would be a limit on how fast I can send these commands.
> > >
> > > Based on Jonathon's answer however, it seems that UHD on the host
> ensures that it only sends a maximum number of timed commands such that t=
he
> command queues do not overflow.
> > >
> > > But it seems to bring another issue: If UHD holds back these messages
> too long they will eventually arrive late and (silently) execute non-time=
d
> (thereby destroying any coherence the application might require).
> > >
> > > I am trying to debug WHY this can happen, why it does NOT happen to
> the data stream (all data arrives on time!) and what I can do that I ensu=
re
> my timed commands will execute *on time*.
> > >
> > > Thanks,
> > > Lukas
> > >
> > >
> > >
> > >
> > >
> > >
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d7814e05a7e827b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I agree that Gnuradio sometimes introduces unpredicta=
ble and non-reproducible latencies, which can be especially problematic whe=
n dealing with timing-sensitive hardware close to the metal. Setting UHD bu=
ffer size is one thing, but Gnuradio can hang onto data in sometimes opaque=
 ways, with sometimes opaque interactions (at least, to me!) with the host =
OS&#39;s scheduler. These issues are ordinarily not a problem because you c=
an just increase send buffer size until you never see underruns due to buff=
er starvation, but this solution only works for systems which a) have backp=
ressure, and b) are not latency-sensitive.<br></div><div><br></div><div>Thi=
s isn&#39;t a particularly helpful suggestion, I realize, but when faced wi=
th these problems in the past I have reimplemented my systems in C++, inter=
faced directly to UHD, generally with favorable results. It is much easier =
to guarantee timing when you have full control of the system.<br></div><div=
><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 8:45 AM Lukas Haase v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi Chintan,<br>
<br>
That&#39;s a good thought.<br>
<br>
What concerns me is that whether timed commands are executed properly seems=
 to depend on second and third level parameters such as the way in which I =
connect blocks in gnuradio.<br>
This is problematic because even if I figure out the max. rate with the sco=
pe, once I add another block, things may behave differently.<br>
<br>
I think the reason that this depends on how blocks are connected in gnuradi=
o are buffers. In other words, how fast and how much data UHD receives at o=
nce.<br>
All my data arrives on time, just timed commands are sometimes late (the ca=
use and conditions are unclear).<br>
<br>
There must be a way to control this properly in UHD. The link speed is way =
fast enough (10Gbe and I use 20Msps).<br>
<br>
Thanks,<br>
Lukas<br>
<br>
<br>
<br>
<br>
Gesendet:=C2=A0Freitag, 12. Juni 2020 um 07:04 Uhr<br>
Von:=C2=A0&quot;Chintan Patel&quot; &lt;<a href=3D"mailto:cpatel@vt.edu" ta=
rget=3D"_blank">cpatel@vt.edu</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] How to debug timed commands on FPGA side?<br=
>
<br>
Lukas,<br>
=C2=A0<br>
I may have missed some salient points of this thread, but here&#39;s a thou=
ght. Could you just alternate=C2=A0between sending two timed commands - tra=
nsmit=C2=A0freq A and transmit=C2=A0freq B. Hook up the output to a scope (=
spec an may not react fast enough). Once you have the setup that you can &q=
uot;see&quot; whether a command has been processed or not by looking at the=
 scope, you can characterize the reliable ingest rate of the timed command,=
 empirically?=C2=A0<br>
=C2=A0<br>
If using a scope is not feasible, if you have another SDR, you can use the =
SDR to capture data (instead of scope) to see whether=C2=A0all TX tune comm=
ands were processed correctly.<br>
=C2=A0<br>
A thought.<br>
=C2=A0<br>
Chintan=C2=A0<br>
<br>
On Thu, Jun 11, 2020 at 4:47 PM Lukas Haase via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>]&gt; wrote:Hi Marcus,<br>
<br>
Can we quantify this in the following way?<br>
<br>
If I send timed commands every 2ms and sampling rate is 5MS/s, that&#39;s 1=
0000 samples per command or 50000 for the command queue (assuming a depth o=
f 5).<br>
<br>
Can we say the timed commands will guaranteed to be executed on time if we =
never buffer more than 50000 samples (=3D200000 bytes) on the host?<br>
<br>
Can this be tuned somehow? I tried setting send_buff_size [1] to a small va=
lue (send_buff_size=3D10000 etc.) but that didn&#39;t seem to make any diff=
erence.<br>
<br>
Thanks,<br>
Lukas<br>
<br>
<br>
[1] <a href=3D"https://files.ettus.com/manual/page_transport.html%5Bhttps:/=
/files.ettus.com/manual/page_transport.html%5D" rel=3D"noreferrer" target=
=3D"_blank">https://files.ettus.com/manual/page_transport.html[https://file=
s.ettus.com/manual/page_transport.html]</a><br>
<br>
<br>
<br>
&gt; Gesendet: Donnerstag, 11. Juni 2020 um 16:32 Uhr<br>
&gt; Von: &quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>[mailto:<a href=3D"ma=
ilto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>=
]&gt;<br>
&gt; An: &quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukashaase@=
gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt;<br>
&gt; Cc: &quot;<a href=3D"http://USRP-userslists.ettus.com" rel=3D"noreferr=
er" target=3D"_blank">USRP-userslists.ettus.com</a>[<a href=3D"http://USRP-=
userslists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://USRP-user=
slists.ettus.com</a>]&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>]&gt;<br>
&gt; Betreff: Re: [USRP-users] How to debug timed commands on FPGA side?<br=
>
&gt;<br>
&gt; So one of the things That can happen is that your command packets will=
 have to wait For a much-larger data packet. The link is shared.<br>
&gt;<br>
&gt; I=E2=80=99d timed commands are scheduled =E2=80=9Ctight=E2=80=9D this =
can happen.<br>
&gt;<br>
&gt; Sent from my iPhone<br>
&gt;<br>
&gt; &gt; On Jun 11, 2020, at 3:34 PM, Lukas Haase &lt;<a href=3D"mailto:lu=
kashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"=
mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt; wrot=
e:<br>
&gt; &gt;<br>
&gt; &gt; =EF=BB=BFHi Marcus,<br>
&gt; &gt;<br>
&gt; &gt;&gt;&gt; On 06/10/2020 09:00 PM, Lukas Haase via USRP-users wrote:=
<br>
&gt; &gt;&gt;&gt; [...]<br>
&gt; &gt;&gt;&gt; For example, what is the fastest rate I can issue timed c=
ommands<br>
&gt; &gt;&gt;&gt; (ignoring settling times etc) on a X310 over 10Gbe?<br>
&gt; &gt;&gt; This is actually an ambiguous question.=C2=A0 Do you mean &qu=
ot;what is the<br>
&gt; &gt;&gt; smallest scheduling interval for the commands that will be ex=
ecuted<br>
&gt; &gt;&gt; in the future?&quot; or &quot;how fast can I issue commands t=
hat will<br>
&gt; &gt;&gt; ultimately be scheduled at a later time?&quot;=C2=A0 In the f=
ormer, that<br>
&gt; &gt;&gt; depends on the exact nature of the commands, since they end u=
p<br>
&gt; &gt;&gt; actually being executed by, for example, an SPI or I2C endpoi=
nt,<br>
&gt; &gt;&gt; which operates very very much slower than a 10GiGe interface.=
=C2=A0 In the<br>
&gt; &gt;&gt; latter, my guess is that the FPGA can swallow commands and pl=
ace them<br>
&gt; &gt;&gt; on the queue pretty-much as fast as you can issue them over 1=
0GiG.<br>
&gt; &gt;&gt; How fast you can do that depends very much on your host-side<=
br>
&gt; &gt;&gt; environment, network stack, kernel network drivers, kernel la=
tencies,<br>
&gt; &gt;&gt; etc.<br>
&gt; &gt;<br>
&gt; &gt; My questions concerns the latter (for now).<br>
&gt; &gt; Since the FPGA has a (small) finite FIFO for these timed commands=
 I assume*d* there would be a limit on how fast I can send these commands.<=
br>
&gt; &gt;<br>
&gt; &gt; Based on Jonathon&#39;s answer however, it seems that UHD on the =
host ensures that it only sends a maximum number of timed commands such tha=
t the command queues do not overflow.<br>
&gt; &gt;<br>
&gt; &gt; But it seems to bring another issue: If UHD holds back these mess=
ages too long they will eventually arrive late and (silently) execute non-t=
imed (thereby destroying any coherence the application might require).<br>
&gt; &gt;<br>
&gt; &gt; I am trying to debug WHY this can happen, why it does NOT happen =
to the data stream (all data arrives on time!) and what I can do that I ens=
ure my timed commands will execute *on time*.<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Lukas<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d7814e05a7e827b6--


--===============1454835961966808932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1454835961966808932==--

