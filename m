Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC12248C74D
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jan 2022 16:37:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A97F93855AC
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jan 2022 10:37:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="AVQmgMSh";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 008A93848F0
	for <usrp-users@lists.ettus.com>; Wed, 12 Jan 2022 10:36:14 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id 127so7483716ybb.4
        for <usrp-users@lists.ettus.com>; Wed, 12 Jan 2022 07:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ys7kfAecDYzkxZDQzO5hNL5MTlnGvIoBBNvyN4GvDQY=;
        b=AVQmgMShiwiQUEZeqc5IB9LGJgobRb/jmyaLfzDi1y02FHyA/KWMl1sZq7eQZ7CE5K
         Ew8dHy37dJWwAng7C9lWGHTpJhpK3wmAblfn8Ia0kBRtKk8PR+/yfpdlIfSjQ0ZoO9jb
         KGMLnKCbTpeoYmOHONjABpa04iguWzp9yKrUJA+iPtkrD9FhSF2BTQ0DoY0oar7duYSr
         /IHKBdm0hicrRbAXNYeEn82muCQbIsymOokyvhUXFzvtDzv03bxFbMsz3FKNPErO5hSx
         xPy75Qc6VG0WWgP/kkWRVE4Oi+weHJ+0vawz6BQtBQWNrptTbUuMihbv0McepeFKGXLd
         c36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ys7kfAecDYzkxZDQzO5hNL5MTlnGvIoBBNvyN4GvDQY=;
        b=mr7+FKfr4pstxJSvtX6U8QPORYmd1ZSTLH61Kxc3TgpcAAKgqInxuo5pG+5obJj615
         PmisivzgRZRBEf2YKlDqROo9P4TmCMSlGcFWVPViVinKmpad/ZMuJKlpCmq1Wz9S9gqV
         zr3bH0Irlr7FKYnF98UpY0tJXdqNsTKYRvsDbPNl/UMWoOuxmSRkxLKoLZSy4QDtmjwT
         OI9RTZFgHhcIWhQasROdp7LEKLwM+lZRWMnK2zcbXpikp3x22nGVT36gCLqIh6m0pFge
         5w3++FykyJR5IEOXdhyoEV098fqP6yGh7fz/XDm8eAEbOFAQmqrI6p5oKbqPRVQPQ5cI
         XSTA==
X-Gm-Message-State: AOAM533YWTNEBt9alkTIo2JiaURIYBguQApSqb8LDwyBczlAZ4+K2Y+w
	P55qWrjLVASSx4f7u6DUxa5sAzaKk/EUxl0S5SDA5DMa
X-Google-Smtp-Source: ABdhPJyzsG+orNj45b/bfshpmG32XDQtFT+noWYhK7x2RpZkJdDBHMAyCyapD0jMA+YxJmvgxfNWI6h8A4XI22DQRKM=
X-Received: by 2002:a25:7e87:: with SMTP id z129mr217611ybc.719.1642001774408;
 Wed, 12 Jan 2022 07:36:14 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVXoc1UkG0B1LSBxje62MPsbGZqrX167aUPgivpWxBiiw@mail.gmail.com>
In-Reply-To: <CAG16vQVXoc1UkG0B1LSBxje62MPsbGZqrX167aUPgivpWxBiiw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 12 Jan 2022 09:35:58 -0600
Message-ID: <CAFche=j15Tb_B9fbSswennzHfqSM6YZRFSokcs51Uk6L0Oua2Q@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: 4HJBLSODRLZTB64RC4ZTILPQM6JFRU6H
X-Message-ID-Hash: 4HJBLSODRLZTB64RC4ZTILPQM6JFRU6H
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block with 2in/2out
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4HJBLSODRLZTB64RC4ZTILPQM6JFRU6H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1243344295668869537=="

--===============1243344295668869537==
Content-Type: multipart/alternative; boundary="0000000000007c0d8805d5645457"

--0000000000007c0d8805d5645457
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,

The addsub block is an example with two inputs and two outputs.

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/block=
s/rfnoc_block_addsub/rfnoc_block_addsub.v
https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/blo=
cks/addsub.yml

Moving Average is an example with a configurable number of ports. The
NUM_PORTS parameter is used to set the number of input ports, which in this
case is always the same as the number of output ports. Several of the
blocks are set up like this one.

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/block=
s/rfnoc_block_moving_avg/rfnoc_block_moving_avg.v
https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/blo=
cks/moving_avg.yml

To run the simulation in the GUI, add GUI=3D1 to the make command.

make xsim GUI=3D1

You can find more information about running simulations in the manual.

https://files.ettus.com/manual/md_usrp3_sim_running_testbenches.html

Unfortunately, the Vivado crashing is a known issue that we have reported
to Xilinx. It should be resolved when we upgrade Vivado versions. In the
mean time you could use ModelSim if you have access, or run xsim from the
console only, or perhaps you could try running just your simulation in the
GUI of a newer version of Vivado.

Thanks,

Wade

On Wed, Jan 12, 2022 at 4:08 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi all,
>
> I am using USRP E320 with UHD 4.0, GNURadio 3.8 and gr-ettus master
> versions.
>
> I have made a custom RFNoC block using rfnocmodtool. Since the
> skeleton that this tool creates only has 1 input and 1 output, I have
> modified the yml block generated to have 2 inputs and 2 outputs and then
> I've run the rfnoc_create_verilog.py script inside the block folder. This
> creates the noc shell and block Verilog files with 2 inputs and 2 outputs=
.
> When I modify the block Verilog file with my code and try to test it with
> the interface tb to send and receive packages, I have timeout.
> I have simulated my code in Vivado and works as expected, so I think the
> problem comes with the interface between my block and rfnoc. I also try t=
o
> bypass my code (axis inputs to axis output) and still have a timeout
> issue.  I try to open the simulation in GUI mode, but Vivado crashes. I
> test the gain block tutorial created with rfnocmodtool (1 input and 1
> output) and it works fine.
>
> So I have several questions:
>
> Is it possible to have custom block with 2in/2out (or several
> inputs/outputs)? What is the best way to do it?
> Is there a way to open simulation with the rfnoc framework in GUI mode
> directly? (I have modified the simulation.tcl with -g option created once=
 I
> run make tb)
>
> Kind Regards,
>
> Maria
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007c0d8805d5645457
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maria,<br><br>The addsub block is an example with two i=
nputs and two outputs.<br><br><div><a href=3D"https://github.com/EttusResea=
rch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_addsub/rfnoc_bl=
ock_addsub.v">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/l=
ib/rfnoc/blocks/rfnoc_block_addsub/rfnoc_block_addsub.v</a></div><div><a hr=
ef=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfn=
oc/blocks/addsub.yml">https://github.com/EttusResearch/uhd/blob/master/host=
/include/uhd/rfnoc/blocks/addsub.yml</a></div><br>Moving Average is an exam=
ple with a configurable number of ports. The NUM_PORTS parameter is used to=
 set the number of input ports, which in this case is always the same as th=
e number of output ports. Several of the blocks are set up like this one.<b=
r><br><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga=
/usrp3/lib/rfnoc/blocks/rfnoc_block_moving_avg/rfnoc_block_moving_avg.v">ht=
tps://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/=
rfnoc_block_moving_avg/rfnoc_block_moving_avg.v</a></div><div><a href=3D"ht=
tps://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/block=
s/moving_avg.yml">https://github.com/EttusResearch/uhd/blob/master/host/inc=
lude/uhd/rfnoc/blocks/moving_avg.yml</a><br></div><br><div>To run the simul=
ation in the GUI, add GUI=3D1 to the make command.</div><br>make xsim GUI=
=3D1<br><br>You can find more information about running simulations in the =
manual.<br><br><div><a href=3D"https://files.ettus.com/manual/md_usrp3_sim_=
running_testbenches.html">https://files.ettus.com/manual/md_usrp3_sim_runni=
ng_testbenches.html</a></div><div><br></div><div>Unfortunately, the Vivado =
crashing is a known issue that we have reported to Xilinx. It should be res=
olved when we upgrade Vivado versions. In the mean time you could use Model=
Sim if you have access, or run xsim from the console only, or perhaps you c=
ould try running just your simulation in the GUI of a newer version of Viva=
do.<br></div><div></div><br>Thanks,<br><br>Wade</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 12, 2022 at 4:08=
 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_b=
lank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br><div><br></div><div>I a=
m using USRP E320 with UHD 4.0, GNURadio 3.8 and gr-ettus master versions.<=
/div><div><br></div><div>I have made a custom RFNoC block using=C2=A0rfnocm=
odtool. Since the skeleton=C2=A0that this tool creates only has 1 input and=
 1 output, I have modified the yml block generated to have 2 inputs and 2 o=
utputs and then I&#39;ve run the rfnoc_create_verilog.py script inside the =
block folder. This creates the noc shell and block Verilog files with 2 inp=
uts and 2 outputs.</div><div>When I modify the block Verilog file with my c=
ode and try to test it with the interface tb to send and receive packages, =
I have timeout.=C2=A0</div><div>I have simulated my code in Vivado and work=
s as expected, so I think the problem comes with the interface between my b=
lock and rfnoc. I also try to bypass my code (axis inputs to axis output) a=
nd still have a timeout issue.=C2=A0=C2=A0I try to open the simulation in G=
UI mode, but Vivado crashes. I test the gain block tutorial created with rf=
nocmodtool (1 input and 1 output) and it works fine.</div><div><br></div><d=
iv>So I have several questions:</div><div><br></div><div>Is it possible to =
have custom block with 2in/2out (or several inputs/outputs)? What is the be=
st way to do it?</div><div>Is there a way to open simulation with the rfnoc=
 framework in GUI mode directly? (I have modified the simulation.tcl with -=
g option created once I run make tb)</div><div>=C2=A0</div><div>Kind Regard=
s,</div><div><br></div><div>Maria</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007c0d8805d5645457--

--===============1243344295668869537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1243344295668869537==--
