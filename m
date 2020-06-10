Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2CF1F5EA3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 01:15:42 +0200 (CEST)
Received: from [::1] (port=59624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jj9wY-0003p6-Td; Wed, 10 Jun 2020 19:15:38 -0400
Received: from outbound.smtp.vt.edu ([198.82.183.121]:37544
 helo=omr1.cc.vt.edu)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <cpatel@vt.edu>) id 1jj9wV-0003ix-4w
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 19:15:35 -0400
Received: from mr1.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 05ANEsjn020556
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 19:14:54 -0400
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 05ANEnqD010457
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 19:14:54 -0400
Received: by mail-ej1-f72.google.com with SMTP id ch1so1783292ejb.18
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 16:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7qWxho8tkTQD3HaM/K9oGUXs5TbtuXsD9AtpAG8/tg=;
 b=Ub6Bl0UICpusT5MZNfjZR5jMAGAkCyo0dn0xFXZ9xV3gwnIEnwrxGFHMEV4mHBI8jH
 mpMYfWp+c4LYM0fiPzFgaYD5iiP/5sHZ9GF3XHsU6R3EQUDWCPJKNx+FkcVOOxX2IEKj
 7FJGVI4XT8xVizLZrpP89JT/W7oybGLnMmRn2mzOna+bJx6aoUnzOR5wWHBfcSNw0ZVc
 VxY80IxVc4ztFnRdxiUrsO+vDlpTnA3D5TWHQ2nAFL8ac49WVHoS5r2anVNTaSCcmupf
 P9TypV7tt8vsEY6K6YBL8n3VfMuag3rnEC2AasKXzCtZHOSoO7/hrDrcPie1O7CxmDqA
 CfMg==
X-Gm-Message-State: AOAM533I8n7UMUuiIBCTBUH0ZTdYVm5efU1LujU8rDZb9gF1HtrBrF4M
 Vqig3E9unf3+RolvpUE6ysH9+r/AyPgX3ilYh2bXSvHDuqQiJOJM4rFKeuzXjf+QPr3kfvJtTuG
 /yNyI6JeVaqbH3oPQ22YHz2x2UI/JgR/PnfEXJbaZz8hbH/UU
X-Received: by 2002:a50:9517:: with SMTP id u23mr4420513eda.332.1591830888866; 
 Wed, 10 Jun 2020 16:14:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYgIv/97S5/uOkdfPCNjf4N+dNafxGnwvzpdrEaOcFIt0BzUOlH6iwOZ99oC7imEjxKZB5PYggGbzBS0CWeEs=
X-Received: by 2002:a50:9517:: with SMTP id u23mr4420499eda.332.1591830888459; 
 Wed, 10 Jun 2020 16:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
 <DA6717CB-DB19-41EF-B1FD-08F720F78EA4@gmail.com>
In-Reply-To: <DA6717CB-DB19-41EF-B1FD-08F720F78EA4@gmail.com>
Date: Wed, 10 Jun 2020 19:14:36 -0400
Message-ID: <CAOJfBDeVo2oYAKBXo46AfDXiN+E6MvaxrsHSAfdNR2+sg12eiQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Lukas Haase <lukashaase@gmx.at>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
From: Chintan Patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chintan Patel <cpatel@vt.edu>
Content-Type: multipart/mixed; boundary="===============3391427284201567506=="
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

--===============3391427284201567506==
Content-Type: multipart/alternative; boundary="000000000000a651c305a7c30239"

--000000000000a651c305a7c30239
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Lukas,

There are two broad approaches to debug FPGAs, including the B210:

1. Instantiate chipscope/ILA in the Xilinx tool, and use JTAG to monitor
signals.

2. Instrument the code, with debug signals (for e.g, a counter that
increments when the fault condition happens) and connect the debug signals
to a register that is readable by software.

Unfortunately, both approaches need you to mess with the HDL code and so
you will need to be able to build from source code. I would suggest try to
build from source code as-is, confirm that you see the same functionality
as the the released image, and then proceed. Of the two methods listed
above, 2. is less invasive, but not as powerful as 1.

Good luck
Chintan



On Wed, Jun 10, 2020 at 7:02 PM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The standard approach for debugging FPGA logic is the JTAG port. This is
> true of most FPGA based devices, not just USRPs. If never done that becau=
se
> I=E2=80=99m not an FPGA guy.
>
> But I would suggest that you look into that style of =E2=80=9Clooking int=
o the
> black box=E2=80=9D if that=E2=80=99s what needs to be done.
>
> It has been my observation over the last 40 odd years of my tech
> development career that debugging environments tend to be useful to debug
> problems of a the same class that prompted the development of the debuggi=
ng
> environment in the first place. That inevitably leads to frustration when
> things become =E2=80=9Csubtle=E2=80=9D which seems to be what you=E2=80=
=99re experiencing.
>
> The FPGA code doesn=E2=80=99t necessarily have a lot of debugging =E2=80=
=9Chooks=E2=80=9D in it
> because that would consume real estate that could be used for other thing=
s,
> like better filters or critical features, etc. When you are coming from t=
he
> pure software side of the house, you may not have any visceral appreciati=
on
> of how constrained the FPGA universe is compared to a modern application
> layer piece of software running on a modern OS on a modern computer.
>
> Sent from my iPhone
>
> > On Jun 10, 2020, at 4:47 PM, Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BFJust some additional info: I enabled the maximum possible debu=
g on the
> host (UHD_LOG_CONSOLE_LEVEL=3Dtrace and debug_level =3D debug in
> .gnuradio/config.conf) and sent both versions to a file.
> > Again, the diff is identical!
> > (This debug contains the debug messages from gr-uhd but uhd itself does
> not seem to generate any debug/trace messages for timed commands).
> >
> > Is there a way to somehow report back to the host when the command queu=
e
> overflows or a timed command could not be processed at the planned time
> (late command)?
> >
> > According to
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D
> "An overflow of the command queue will result in a system halt and often
> requires a physical reset of the FPGA.".  This does not sound something
> that should just be silently dropped!
> >
> > This works for data streams so shouldn't it work for timed commands too=
?
> >
> > The USRP feels like a black box ... commands are being sent but I have
> no idea what happens inside or if they are even executed (except, of
> course, things are "not working")
> >
> >
> >> Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr
> >> Von: "Lukas Haase" <lukashaase@gmx.at>
> >> An: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
> >> Betreff: How to debug timed commands on FPGA side?
> >>
> >> Hello,
> >>
> >> Is there any (somewhat straight forward) way to debug timed commands o=
n
> the FPGA?
> >> In particular, I want to know:
> >> 1.) if any timed command is not executed as timed command but right
> away (because it had a timestamp but the command was late so it was
> executed right away)
> >> 2.) if any command queue overruns
> >> 3.) Any other sort of information that causes timed commands to
> misbehave
> >>
> >> I use "tx_command" for USRP Sink to send timed commands. The
> "tx_command" tags are injected with an embedded python block. I use "Tag
> Debug" and save all tags to a text file. Works.
> >> Then, in exactly the same block diagram, I replace the embedded python
> block with my C++ implementation that generates tags.
> >> Suddenly, some timed commands do not execute at the right moment any
> more (these are just few and consistent across re-runs and reboots).
> >>
> >> However, the tags generated by boths blocks are absolutely IDENTICAL! =
A
> diff between the "tx_command" outputs results in NO differences. Hence I
> need to know what the FPGA actually processes in both cases.
> >>
> >> Thanks
> >> Lukas
> >>
> >>
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a651c305a7c30239
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Lukas,<div><br></div><div>There are two broad approaches t=
o debug FPGAs, including the B210:</div><div><br></div><div>1. Instantiate =
chipscope/ILA in the Xilinx tool, and use JTAG to monitor signals.</div><di=
v><br></div><div>2. Instrument the code, with debug signals (for e.g, a cou=
nter that increments when the fault condition happens) and connect the debu=
g signals to a register that is readable by software.</div><div><br></div><=
div>Unfortunately, both approaches need you to mess with the HDL code and s=
o you will need=C2=A0to be able to build from source code. I would suggest =
try to build from source code as-is, confirm that you see the same function=
ality as the the released image, and then proceed. Of the two methods liste=
d above, 2. is less invasive, but not as powerful as 1.</div><div><br></div=
><div>Good luck</div><div>Chintan</div><div><br></div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Jun 10, 2020 at 7:02 PM Marcus D Leech via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">The standard appro=
ach for debugging FPGA logic is the JTAG port. This is true of most FPGA ba=
sed devices, not just USRPs. If never done that because I=E2=80=99m not an =
FPGA guy. <br>
<br>
But I would suggest that you look into that style of =E2=80=9Clooking into =
the black box=E2=80=9D if that=E2=80=99s what needs to be done.<br>
<br>
It has been my observation over the last 40 odd years of my tech developmen=
t career that debugging environments tend to be useful to debug problems of=
 a the same class that prompted the development of the debugging environmen=
t in the first place. That inevitably leads to frustration when things beco=
me =E2=80=9Csubtle=E2=80=9D which seems to be what you=E2=80=99re experienc=
ing. <br>
<br>
The FPGA code doesn=E2=80=99t necessarily have a lot of debugging =E2=80=9C=
hooks=E2=80=9D in it because that would consume real estate that could be u=
sed for other things, like better filters or critical features, etc. When y=
ou are coming from the pure software side of the house, you may not have an=
y visceral appreciation of how constrained the FPGA universe is compared to=
 a modern application layer piece of software running on a modern OS on a m=
odern computer. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 10, 2020, at 4:47 PM, Lukas Haase via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BFJust some additional info: I enabled the maximum possible deb=
ug on the host (UHD_LOG_CONSOLE_LEVEL=3Dtrace and debug_level =3D debug in =
.gnuradio/config.conf) and sent both versions to a file.<br>
&gt; Again, the diff is identical!<br>
&gt; (This debug contains the debug messages from gr-uhd but uhd itself doe=
s not seem to generate any debug/trace messages for timed commands).<br>
&gt; <br>
&gt; Is there a way to somehow report back to the host when the command que=
ue overflows or a timed command could not be processed at the planned time =
(late command)?<br>
&gt; <br>
&gt; According to <a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events=
_Using_Timed_Commands_in_UHD" rel=3D"noreferrer" target=3D"_blank">https://=
kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a> &quo=
t;An overflow of the command queue will result in a system halt and often r=
equires a physical reset of the FPGA.&quot;.=C2=A0 This does not sound some=
thing that should just be silently dropped!<br>
&gt; <br>
&gt; This works for data streams so shouldn&#39;t it work for timed command=
s too?<br>
&gt; <br>
&gt; The USRP feels like a black box ... commands are being sent but I have=
 no idea what happens inside or if they are even executed (except, of cours=
e, things are &quot;not working&quot;)<br>
&gt; <br>
&gt; <br>
&gt;&gt; Gesendet: Mittwoch, 10. Juni 2020 um 02:30 Uhr<br>
&gt;&gt; Von: &quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.=
at" target=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
&gt;&gt; An: &quot;<a href=3D"http://USRP-userslists.ettus.com" rel=3D"nore=
ferrer" target=3D"_blank">USRP-userslists.ettus.com</a>&quot; &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;<br>
&gt;&gt; Betreff: How to debug timed commands on FPGA side?<br>
&gt;&gt; <br>
&gt;&gt; Hello,<br>
&gt;&gt; <br>
&gt;&gt; Is there any (somewhat straight forward) way to debug timed comman=
ds on the FPGA?<br>
&gt;&gt; In particular, I want to know:<br>
&gt;&gt; 1.) if any timed command is not executed as timed command but righ=
t away (because it had a timestamp but the command was late so it was execu=
ted right away)<br>
&gt;&gt; 2.) if any command queue overruns<br>
&gt;&gt; 3.) Any other sort of information that causes timed commands to mi=
sbehave<br>
&gt;&gt; <br>
&gt;&gt; I use &quot;tx_command&quot; for USRP Sink to send timed commands.=
 The &quot;tx_command&quot; tags are injected with an embedded python block=
. I use &quot;Tag Debug&quot; and save all tags to a text file. Works.<br>
&gt;&gt; Then, in exactly the same block diagram, I replace the embedded py=
thon block with my C++ implementation that generates tags.<br>
&gt;&gt; Suddenly, some timed commands do not execute at the right moment a=
ny more (these are just few and consistent across re-runs and reboots).<br>
&gt;&gt; <br>
&gt;&gt; However, the tags generated by boths blocks are absolutely IDENTIC=
AL! A diff between the &quot;tx_command&quot; outputs results in NO differe=
nces. Hence I need to know what the FPGA actually processes in both cases.<=
br>
&gt;&gt; <br>
&gt;&gt; Thanks<br>
&gt;&gt; Lukas<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a651c305a7c30239--


--===============3391427284201567506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3391427284201567506==--

