Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5111F6138
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 07:17:18 +0200 (CEST)
Received: from [::1] (port=41762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjFaV-0008Se-Hi; Thu, 11 Jun 2020 01:17:15 -0400
Received: from mail-vs1-f51.google.com ([209.85.217.51]:39776)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jjFaQ-0008ED-Tq
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 01:17:10 -0400
Received: by mail-vs1-f51.google.com with SMTP id y123so2694127vsb.6
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 22:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ggmtOUrFuPyEcxKhTvLSNp3gRHbE60dfaTxMaMNdDx4=;
 b=z1dcvPM816gf8zm5p2ASTFFcp3pYHqDuzkj0H50suwqaB3/32/BAuLFtdrVnGHnNR5
 skBqsBogvXpSW6rLPanKQpVs90LuCKOQxutKR7vVxN1uDoORvChM0Vl38rk99/pTxeZp
 iavZUjKbqrmm1yREBtwTWnpP/OUQzMXQqD3oW+BM2Ftysb9bOv3Z2IARZujP/9MeZ66E
 eK8fHA6g8Oogz56Sd4KLGmTWA2s3NvF7zmOCYy74OIopVx/uOUANzw6P/Ev+svn/1Pqb
 MS1KA5JRw06aX5aviIu3KivpCDhTKEVRcDvWTRqStZ4TSaaMWsuFn2WnrgJQmN58pmnP
 +D7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ggmtOUrFuPyEcxKhTvLSNp3gRHbE60dfaTxMaMNdDx4=;
 b=rT9N+lBUmWQhP0ryPauZNpdVsdXQa1Hm6apZPKKV0WzABLNvjLLNnA75sAJ1s5c9e/
 1hKhy09If0Ek0U5cdYF2sAsduucbuO6j7mS2QRxwD1+vny9ZawiTLgrgdkTms+ZLUBqP
 j8+LJkNN/93/Q9p8qyA5XoBi1lhiIGtKrameQcWY/tMh/ZITGSIDv96iIP4QwUgQsZg0
 JxaG9mQtt9Z7Qbk/K94EGknYeu/375ePuNHhaDyyPi7oZeuJuFqp4EHD281N4SJWKk7Q
 RKyR2HdXHgtUUmSkcSaclfKw5TGvEHIRn30Fk1En1OCs/HDkgrGjiTa7mW3mjdeVQjTu
 bl7Q==
X-Gm-Message-State: AOAM532HZg3mmz+she8VNG4eV2RrIoe+Mq/Y0yjnhItbUGEmUWQQwfOT
 dTijhobzYCYM/L3GmJwklRJ+RM+CJnIshDSW167wWpIN
X-Google-Smtp-Source: ABdhPJyTM+k3WgCBA3k/xpVSOeh88sf9guUYIw1FfcHcK8tjRBsFkxELwV837p+7pZOAiwQSV74bEAL7/xfzNoW18HI=
X-Received: by 2002:a67:ce86:: with SMTP id c6mr5522877vse.51.1591852590161;
 Wed, 10 Jun 2020 22:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
 <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
 <CA+JMMq-WJu=uK8jetzZXQvkzMnxQPSf2SJ0p21iS+cNm8Zifhw@mail.gmail.com>
 <trinity-087eaba7-195a-4add-b435-4f9d5b3b1e85-1591837205629@3c-app-gmx-bap13>
In-Reply-To: <trinity-087eaba7-195a-4add-b435-4f9d5b3b1e85-1591837205629@3c-app-gmx-bap13>
Date: Thu, 11 Jun 2020 01:15:54 -0400
Message-ID: <CAL7q81tN0ESxpuFsOdsRT_T2MgQnB3yy-=YvMoMi5c1wEe+OCQ@mail.gmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6018300710179661536=="
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

--===============6018300710179661536==
Content-Type: multipart/alternative; boundary="0000000000002bf78e05a7c8109c"

--0000000000002bf78e05a7c8109c
Content-Type: text/plain; charset="UTF-8"

Hi Lukas,

2.) What happens when the command queue is full? Is the command dropped,
> does USRP crash or anything else? (above link is unclear about that)
>     Can we change this behavior?


UHD is aware of the size of the command FIFOs in each RFNoC block. It keeps
track of the number of commands in flight and uses the response packets to
know when those commands have been consumed. Therefore, the command FIFO
should never get full (famous last words). Of course, it is always possible
there is a bug. For example, maybe UHD doesn't properly track FIFO fullness
when using timed versus untimed commands. Here is a FPGA code tweak worth
trying that is quicker than chipscope:

In cmd_pkt_proc.v, change line 70 from:
axi_fifo #(.WIDTH(65), .SIZE(FIFO_SIZE)) axi_fifo (
to
axi_fifo #(.WIDTH(65), .SIZE(FIFO_SIZE+2)) axi_fifo (

This change will quadruple the size of the command FIFOs without UHD being
aware of it. If you still have the same issue, then it is very unlikely to
be due to the command FIFO in the radio core overflowing since there is
plenty of room for extra commands. If you want to be absolutely certain the
command FIFO is not overflowing, then you'll need to use chipscope to look
at the cmd_tvalid and cmd_tready signals in cmd_pkt_proc.v. If cmd_tvalid
== 1 and cmd_tready == 0 ever occurs, that is an overflow.

If somehow the command FIFO gets full, then a lockup might occur in the
crossbar and that would be very obvious as you'd have to hard reset to
clear it. Also, even if commands are late, they are still processed instead
of being dropped.

Jonathon

On Wed, Jun 10, 2020 at 9:00 PM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Nick,
>
> Good point with Wireshark and coincidentially I tried exactly that today.
> Both captures were fairly identical. But what's worse, things started to
> become more unreproducible (for example, depending on which blocks I add).
>
> Again, what not works is that timed commands sometimes are not executed
> when they are supposed to be.
> I execute them periodically (e.g. every 100ms, 10ms, 1ms), then capture
> the response and slice them into equal blocks in MATLAB.
> The action of the timed commands (for example, retune or gain change)
> should always happen at the same time. Instead a few of them (maybe 3%)
> happen sometime in between and mess up verything.
>
> How would one go to debug this without having to acquire deep Verilog
> knowledge?
> I am 99.99% positive that the timed commands I issue via tx_command tag
> are correct.
>
> Are there definite answers to the questions:
>
> 1.) How many commands do the command queues have exactly on the X310? (
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD
> says 5-8 but other sources say 16 or 32).
> 2.) What happens when the command queue is full? Is the command dropped,
> does USRP crash or anything else? (above link is unclear about that)
>     Can we change this behavior?
> 3.) How can we figure out what is the maximum speed to issue timed
> commands reliably?
>     What does this depend on and which parameters need to be tweaked?
>
> For example, what is the fastest rate I can issue timed commands (ignoring
> settling times etc) on a X310 over 10Gbe?
>
> I am thinking that maybe I am sending timed commands too fast such that
> the command queue overflows.
> However:
> a.) How can an overflowing command queue explain that timed commands not
> being executed on time?
> b.) I played around setting send_buff_size to different values, down to
> send_buff_size=10240 (10kB). If I understand correctly, that means that the
> USRP should never receive more than 10kB data at once (one chunk holds
> 10240/(10e6*2*2)=256us at 10MS/s which means the if each frame has one
> timed command that should support sending a timed command every 256us).
> Unfortunately nothing changes here.
>
> Using tx_command tag in USRP Source should ensure that the commands never
> arrive late on the FPGA (otherwise the data would also arrive late and I
> would get LLLLLLL's but I don't).
>
> I thought the most straight forward would be to debug the FPGA itself but
> that seems to open more issues that it solves.
>
> Thanks,
> Lukas
>
>
>
> Gesendet: Mittwoch, 10. Juni 2020 um 19:18 Uhr
> Von: "Nick Foster" <bistromath@gmail.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Betreff: Re: [USRP-users] How to debug timed commands on FPGA side?
>
> I'd start by using Wireshark. There's a dissector for CHDR packets
> included in UHD (uhd/tools/dissectors). Wireshark has excellent filtering
> and analysis tools. You should be able to see your C++-timestamped packet
> go out, and compare it to the Python generated version. This will take a
> couple of hours to set up, run, and analyze.
>
> Following that, if you still can't find a difference, recompile an FPGA
> image which includes an ILA core, hooked up to some radio signals. Try to
> avoid having to do this, because it will take a long time, and you'll get
> very deep into the radio core. On the plus side, after a week or so of
> digging, you'll have a much better understanding of how RFNoC works under
> the hood. =)
>
> Nick
>
> On Wed, Jun 10, 2020 at 1:47 PM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Just
> some additional info: I enabled the maximum possible debug on the host
> (UHD_LOG_CONSOLE_LEVEL=trace and debug_level = debug in
> .gnuradio/config.conf) and sent both versions to a file.
> Again, the diff is identical!
> (This debug contains the debug messages from gr-uhd but uhd itself does
> not seem to generate any debug/trace messages for timed commands).
>
> Is there a way to somehow report back to the host when the command queue
> overflows or a timed command could not be processed at the planned time
> (late command)?
>
> According to
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD[https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD]
> "An overflow of the command queue will result in a system halt and often
> requires a physical reset of the FPGA.".  This does not sound something
> that should just be silently dropped!
>
> This works for data streams so shouldn't it work for timed commands too?
>
> The USRP feels like a black box ... commands are being sent but I have no
> idea what happens inside or if they are even executed (except, of course,
> things are "not working")
>
>
> > Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr
> > Von: "Lukas Haase" <lukashaase@gmx.at[mailto:lukashaase@gmx.at]>
> > An: "USRP-userslists.ettus.com[http://USRP-userslists.ettus.com]" <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]>
> > Betreff: How to debug timed commands on FPGA side?
> >
> > Hello,
> >
> > Is there any (somewhat straight forward) way to debug timed commands on
> the FPGA?
> > In particular, I want to know:
> > 1.) if any timed command is not executed as timed command but right away
> (because it had a timestamp but the command was late so it was executed
> right away)
> > 2.) if any command queue overruns
> > 3.) Any other sort of information that causes timed commands to misbehave
> >
> > I use "tx_command" for USRP Sink to send timed commands. The
> "tx_command" tags are injected with an embedded python block. I use "Tag
> Debug" and save all tags to a text file. Works.
> > Then, in exactly the same block diagram, I replace the embedded python
> block with my C++ implementation that generates tags.
> > Suddenly, some timed commands do not execute at the right moment any
> more (these are just few and consistent across re-runs and reboots).
> >
> > However, the tags generated by boths blocks are absolutely IDENTICAL! A
> diff between the "tx_command" outputs results in NO differences. Hence I
> need to know what the FPGA actually processes in both cases.
> >
> > Thanks
> > Lukas
> >
> >
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002bf78e05a7c8109c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lukas,<div><br></div><div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">2.) What happens when the command queue is full? Is th=
e command dropped, does USRP crash or anything else? (above link is unclear=
 about that)<br>=C2=A0 =C2=A0 Can we change this behavior?</blockquote><div=
><br></div><div>UHD is aware of the size of the command FIFOs in each RFNoC=
 block. It keeps track of the number of commands in flight and uses the res=
ponse packets to know when those commands have been consumed. Therefore, th=
e command FIFO should never get full (famous last words). Of course, it is =
always possible there=C2=A0is a bug. For example, maybe UHD doesn&#39;t pro=
perly track FIFO fullness when using timed versus untimed commands. Here is=
 a FPGA code tweak worth trying that is quicker than chipscope:</div><div><=
br></div><div>In cmd_pkt_proc.v, change line 70 from:</div><div>axi_fifo #(=
.WIDTH(65), .SIZE(FIFO_SIZE)) axi_fifo (</div><div>to=C2=A0</div><div>axi_f=
ifo #(.WIDTH(65), .SIZE(FIFO_SIZE+2)) axi_fifo (</div><div><br></div><div>T=
his=C2=A0change will quadruple=C2=A0the size of the command FIFOs without U=
HD being aware of it. If you still have the same issue, then it is very unl=
ikely to be due to the command FIFO in the radio core overflowing since the=
re is plenty of room for extra commands. If you want to be absolutely certa=
in the command FIFO is not overflowing, then you&#39;ll need to use chipsco=
pe to look at the cmd_tvalid and=C2=A0cmd_tready signals  in cmd_pkt_proc.v=
. If=C2=A0cmd_tvalid =3D=3D 1 and=C2=A0cmd_tready =3D=3D 0 ever occurs, tha=
t is an overflow.</div><div><br></div><div>If somehow the command FIFO gets=
 full, then a lockup might occur in the crossbar and that would be very obv=
ious as you&#39;d have to hard reset to clear it. Also, even if commands ar=
e late, they are=C2=A0still processed instead of being dropped.</div><div><=
br></div><div>Jonathon</div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 10, 2020 at 9:00 PM Lukas Haa=
se via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hi Nick,<br>
<br>
Good point with Wireshark and coincidentially I tried exactly that today. B=
oth captures were fairly identical. But what&#39;s worse, things started to=
 become more unreproducible (for example, depending on which blocks I add).=
<br>
<br>
Again, what not works is that timed commands sometimes are not executed whe=
n they are supposed to be.<br>
I execute them periodically (e.g. every 100ms, 10ms, 1ms), then capture the=
 response and slice them into equal blocks in MATLAB.<br>
The action of the timed commands (for example, retune or gain change) shoul=
d always happen at the same time. Instead a few of them (maybe 3%) happen s=
ometime in between and mess up verything.<br>
<br>
How would one go to debug this without having to acquire deep Verilog knowl=
edge?<br>
I am 99.99% positive that the timed commands I issue via tx_command tag are=
 correct.<br>
<br>
Are there definite answers to the questions:<br>
<br>
1.) How many commands do the command queues have exactly on the X310? (<a h=
ref=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_=
in_UHD" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Synchroni=
zing_USRP_Events_Using_Timed_Commands_in_UHD</a> says 5-8 but other sources=
 say 16 or 32).<br>
2.) What happens when the command queue is full? Is the command dropped, do=
es USRP crash or anything else? (above link is unclear about that)<br>
=C2=A0 =C2=A0 Can we change this behavior?<br>
3.) How can we figure out what is the maximum speed to issue timed commands=
 reliably?<br>
=C2=A0 =C2=A0 What does this depend on and which parameters need to be twea=
ked?<br>
<br>
For example, what is the fastest rate I can issue timed commands (ignoring =
settling times etc) on a X310 over 10Gbe?<br>
<br>
I am thinking that maybe I am sending timed commands too fast such that the=
 command queue overflows.<br>
However:<br>
a.) How can an overflowing command queue explain that timed commands not be=
ing executed on time?<br>
b.) I played around setting send_buff_size to different values, down to sen=
d_buff_size=3D10240 (10kB). If I understand correctly, that means that the =
USRP should never receive more than 10kB data at once (one chunk holds 1024=
0/(10e6*2*2)=3D256us at 10MS/s which means the if each frame has one timed =
command that should support sending a timed command every 256us). Unfortuna=
tely nothing changes here.<br>
<br>
Using tx_command tag in USRP Source should ensure that the commands never a=
rrive late on the FPGA (otherwise the data would also arrive late and I wou=
ld get LLLLLLL&#39;s but I don&#39;t).<br>
<br>
I thought the most straight forward would be to debug the FPGA itself but t=
hat seems to open more issues that it solves.<br>
<br>
Thanks,<br>
Lukas<br>
<br>
=C2=A0<br>
<br>
Gesendet:=C2=A0Mittwoch, 10. Juni 2020 um 19:18 Uhr<br>
Von:=C2=A0&quot;Nick Foster&quot; &lt;<a href=3D"mailto:bistromath@gmail.co=
m" target=3D"_blank">bistromath@gmail.com</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] How to debug timed commands on FPGA side?<br=
>
<br>
I&#39;d start by using Wireshark. There&#39;s a dissector for CHDR packets =
included in UHD (uhd/tools/dissectors). Wireshark has excellent filtering a=
nd analysis tools. You should be able to see your C++-timestamped packet go=
 out, and compare it to the Python generated version. This will take a coup=
le of hours to set up, run, and analyze.<br>
=C2=A0<br>
Following that, if you still can&#39;t find a difference, recompile an FPGA=
 image which includes an ILA core, hooked up to some radio signals. Try to =
avoid having to do this, because it will take a long time, and you&#39;ll g=
et very deep into the radio core. On the plus side, after a week or so of d=
igging, you&#39;ll have a much better understanding of how RFNoC works unde=
r the hood. =3D)<br>
=C2=A0<br>
Nick=C2=A0<br>
<br>
On Wed, Jun 10, 2020 at 1:47 PM Lukas Haase via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>]&gt; wrote:Just some additional info: I =
enabled the maximum possible debug on the host (UHD_LOG_CONSOLE_LEVEL=3Dtra=
ce and debug_level =3D debug in .gnuradio/config.conf) and sent both versio=
ns to a file.<br>
Again, the diff is identical!<br>
(This debug contains the debug messages from gr-uhd but uhd itself does not=
 seem to generate any debug/trace messages for timed commands).<br>
<br>
Is there a way to somehow report back to the host when the command queue ov=
erflows or a timed command could not be processed at the planned time (late=
 command)?<br>
<br>
According to <a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Usin=
g_Timed_Commands_in_UHD%5Bhttps://kb.ettus.com/Synchronizing_USRP_Events_Us=
ing_Timed_Commands_in_UHD%5D" rel=3D"noreferrer" target=3D"_blank">https://=
kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD[https://=
kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD]</a> &qu=
ot;An overflow of the command queue will result in a system halt and often =
requires a physical reset of the FPGA.&quot;.=C2=A0 This does not sound som=
ething that should just be silently dropped!<br>
<br>
This works for data streams so shouldn&#39;t it work for timed commands too=
?<br>
<br>
The USRP feels like a black box ... commands are being sent but I have no i=
dea what happens inside or if they are even executed (except, of course, th=
ings are &quot;not working&quot;)<br>
<br>
<br>
&gt; Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr<br>
&gt; Von: &quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" =
target=3D"_blank">lukashaase@gmx.at</a>[mailto:<a href=3D"mailto:lukashaase=
@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>]&gt;<br>
&gt; An: &quot;<a href=3D"http://USRP-userslists.ettus.com" rel=3D"noreferr=
er" target=3D"_blank">USRP-userslists.ettus.com</a>[<a href=3D"http://USRP-=
userslists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://USRP-user=
slists.ettus.com</a>]&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>[mailto:<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a>]&gt;<br>
&gt; Betreff: How to debug timed commands on FPGA side?<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; Is there any (somewhat straight forward) way to debug timed commands o=
n the FPGA?<br>
&gt; In particular, I want to know:<br>
&gt; 1.) if any timed command is not executed as timed command but right aw=
ay (because it had a timestamp but the command was late so it was executed =
right away)<br>
&gt; 2.) if any command queue overruns<br>
&gt; 3.) Any other sort of information that causes timed commands to misbeh=
ave<br>
&gt;<br>
&gt; I use &quot;tx_command&quot; for USRP Sink to send timed commands. The=
 &quot;tx_command&quot; tags are injected with an embedded python block. I =
use &quot;Tag Debug&quot; and save all tags to a text file. Works.<br>
&gt; Then, in exactly the same block diagram, I replace the embedded python=
 block with my C++ implementation that generates tags.<br>
&gt; Suddenly, some timed commands do not execute at the right moment any m=
ore (these are just few and consistent across re-runs and reboots).<br>
&gt;<br>
&gt; However, the tags generated by boths blocks are absolutely IDENTICAL! =
A diff between the &quot;tx_command&quot; outputs results in NO differences=
. Hence I need to know what the FPGA actually processes in both cases.<br>
&gt;<br>
&gt; Thanks<br>
&gt; Lukas<br>
&gt;<br>
&gt;<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000002bf78e05a7c8109c--


--===============6018300710179661536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6018300710179661536==--

