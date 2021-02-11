Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98720319671
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 00:17:19 +0100 (CET)
Received: from [::1] (port=60792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lALD2-0008Lo-8I; Thu, 11 Feb 2021 18:17:16 -0500
Received: from mail-vs1-f51.google.com ([209.85.217.51]:42267)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1lALCx-0008Gq-Qq
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 18:17:11 -0500
Received: by mail-vs1-f51.google.com with SMTP id z3so3939952vsn.9
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 15:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pew/KL+ErZPJI1kbaZ8FfD2W56/i6YVXIIk69uRSXTw=;
 b=ML9R7cJneRGaxuM9YdRkaSyyBgVy7lXWhPYJpMq/kC7Btijzy840cF+gjEeMBSzQwI
 xjZ8yPp3Vg0XS52m2m/3xYNYwdjV5p+3SnS4GaU9K+WCWSR2xrnD5LyS9HLQ2HHdENwi
 g5b/mYNf0u/HVBbOujUX8Zi9YCDtwqbmpvzh8bu+jOUEi8psY3gERg9kPPL/ksX9IuL2
 Q9w+FwvMpHPcbelz2fg7mkxEEx0Tw447lK9FfEO+LuVEn/QsFJBJjJhZn7al/9v9glZF
 KwXv3JPEisYp+O8jNrYT9HeKWrIH4iW1TKmFeHHMmHp/JfaBFQVpW/iq3pVOP6LMWEql
 sfXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pew/KL+ErZPJI1kbaZ8FfD2W56/i6YVXIIk69uRSXTw=;
 b=s9d85B1ZSjos1mFI2WuWv9BBJ3ft4+s/YndWO2ynEpcNbye6eiSLGmmFr7wnwALX0g
 VrBb+Gx+MtYjHn35tXO4+QTrqxOlU4o+Ib++eUp3haKn7o+p332ayF7yCs2q+28Yfx0h
 vM5XfVJwT0wieS9/1KvoqroXhz7xY/3A35Mrqqo2nSaoUuT0Sz06HVk4o+7AwjqNNWpm
 H/Gl5b/hZXQH6WSlhXCW0qyc1Kwjv4zIJYrP1wMMOpN53fkecryx0aLpzxHhqCfKSn1O
 S1cR1xcBsYid+s+OM0BykCusYSE+02OFS17p8a+2eAwma9rh73rABBzbRxuqtQpKILtK
 mVtg==
X-Gm-Message-State: AOAM5310ipNtel4nUc6nD5ZwO3FIGvE4P6ivIzOxkOCcQqlU2MGthyrM
 PAk2CqNPeXX/t98ayjyxsWm0XCgxGxavsn14gWs4BDUU
X-Google-Smtp-Source: ABdhPJxbfK2WeEmrEkOj6EtQxTt6haacW4FTtMHwxykJIYE+COmY7eUc7UXST9NQk/QpTiaxaG3/+xOy1bAkAW2EYLo=
X-Received: by 2002:a67:bc04:: with SMTP id t4mr230468vsn.18.1613085390933;
 Thu, 11 Feb 2021 15:16:30 -0800 (PST)
MIME-Version: 1.0
References: <4f689791-2302-7230-9931-6bcf890fbce8.ref@verizon.net>
 <4f689791-2302-7230-9931-6bcf890fbce8@verizon.net>
 <fb168c17-61ed-36d9-e970-61d6cf9a08ff@verizon.net>
In-Reply-To: <fb168c17-61ed-36d9-e970-61d6cf9a08ff@verizon.net>
Date: Thu, 11 Feb 2021 18:15:55 -0500
Message-ID: <CAL7q81vq1OncbkNU-HyPrRjp4M28Z2feB4VK1iah9JOav2JkBA@mail.gmail.com>
To: Mike <mikerd1@verizon.net>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E310 and RFNoC
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
Content-Type: multipart/mixed; boundary="===============6805385877405759854=="
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

--===============6805385877405759854==
Content-Type: multipart/alternative; boundary="000000000000b820ef05bb17b54f"

--000000000000b820ef05bb17b54f
Content-Type: text/plain; charset="UTF-8"

Hi Mike,

Did you cross-compile your RFNoC OOT module and install it to the E310?

Jonathon

On Tue, Feb 9, 2021 at 9:52 PM Mike via USRP-users <
usrp-users@lists.ettus.com> wrote:

> All,  I wanted to resurrect a problem that I had couple months ago that
> I put aside and would now like to fix.  The issue is that I get a python
> error when executing a flow graph on an E310 that was generated from GRC.
>
> The error is posted below.  For background I'm using UHD 3.15 with GNU
> Radio 3.7.  I've successfully created a bit file for the FPGA with a
> custom block (simple gain block).  I've updated the UHD xml file such
> that uhd_usrp_probe correctly identifies the new block.  Also, using a
> python command line tool, I've been able to import my module and enough
> of other modules like ettus and create a device3 variable to see that I
> can instantiate my mikes.digitalgain block.  Previously I've
> successfully generated non-RFNoC OOT modules and run them on the E310.
> So, I'm a little stumped how to get past this error.  Is there an
> additional step that I'm missing to compile the RFNoC module so that the
> E310 version of GNU Radio can successfully import the module and connect
> to it in the top block.  Is the warning about using the default block
> controller relevant?  I thought that simple blocks could be controlled
> through the XML files using the default controller.  Any help would be
> greatly appreciated...
>
> root@ni-e31x:~# ./e310_rx_spectrum.py
> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> UHD_3.15.0.0-62-g7a3f1516
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003310)
> [WARNING] [RFNOC] Can't find a block controller for key digitalgain,
> using default block controller!
> [INFO] [0/digitalgain_0] Initializing block control (NOC ID:
> 0x1234123412341234)
> [INFO] [MPM.PeriphManager] init() called with device args
> `product=e310_sg1,mgmt_addr=127.0.0.1'.
> [WARNING] [RFNOC] Can't find a block controller for key FFT, using
> default block controller!
> [INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
> [INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> [INFO] [0/Radio_0] Performing CODEC loopback test...
> [INFO] [0/Radio_0] CODEC loopback test passed
> Traceback (most recent call last):
>    File "./e310_rx_spectrum.py", line 191, in <module>
>      main()
>    File "./e310_rx_spectrum.py", line 180, in main
>      tb = top_block_cls(freq=options.freq,
> rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)
>    File "./e310_rx_spectrum.py", line 80, in __init__
>      self.mikes_digitalgain_0 = mikes.digitalgain(
> AttributeError: 'module' object has no attribute 'digitalgain'
> root@ni-e31x:~# ^C
>
>
> On 11/16/20 3:53 PM, Mike via USRP-users wrote:
> > All,
> >
> > I'm working with the E310 unit and have run up against a road block.
> > I've completed almost the entire application note, AN-823 (Getting
> > started with RFNoC Development).
> >
> > I'm using UHD 3.15 with GNU Radio 3.7.  I've successfully built a
> > custom FPGA with the tutorial's "gain" block.  I can see the new block
> > with the proper name with uhd_usrp_probe.
> >
> > I updated the XML files to allow GRC to implement the RFNoC block.
> >
> > Here is where I run into problems.  When I copy the gnuradio python
> > file over to the E310 I keep getting an error that states that the
> > 'module' object has no attribute 'gain'.
> >
> > root@ni-e31x:~# python e310_rx_spectrum.py
> > [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
> > UHD_3.15.0.0-62-g7a3f1516
> > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> >
> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False
> > [WARNING] [MPM.RPCServer] A timeout event occured!
> > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
> > [INFO] [0/Radio_0] Initializing block control (NOC ID:
> > 0x12AD100000003310)
> > [WARNING] [RFNOC] Can't find a block controller for key gain, using
> > default block controller!
> > [INFO] [0/gain_0] Initializing block control (NOC ID: 0x1111222233334444)
> > [INFO] [MPM.PeriphManager] init() called with device args
> > `mgmt_addr=127.0.0.1,product=e310_sg1'.
> > [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> > [WARNING] [RFNOC] Can't find a block controller for key FFT, using
> > default block controller!
> > [INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
> > [INFO] [0/Radio_0] Performing CODEC loopback test...
> > [INFO] [0/Radio_0] CODEC loopback test passed
> > [INFO] [0/Radio_0] Performing CODEC loopback test...
> > [INFO] [0/Radio_0] CODEC loopback test passed
> > Traceback (most recent call last):
> >   File "e310_rx_spectrum.py", line 216, in <module>
> >     main()
> >   File "e310_rx_spectrum.py", line 205, in main
> >     tb = top_block_cls(freq=options.freq,
> > rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)
> >   File "e310_rx_spectrum.py", line 101, in __init__
> >     self.tutorial_gain_0 = tutorial.gain(
> > AttributeError: 'module' object has no attribute 'gain'
> >
> > Now, I've seen many suggestions on how to address this.  It mostly
> > describes this as a problem importing the module 'tutorial'.  I've
> > seen descriptions of using the "nm" command to see if the callback
> > function is undefined.  But I still haven't been able to fix the issue.
> >
> > But mostly what I'm after is a working example of an RFNoC module for
> > the E310. One that includes the GRC interface so that the software
> > interface can program the FPGA registers.  I think that a lot of the
> > tutorials are written for host applications whereas the E310 has a
> > cross-compiling aspect to it.
> >
> > So, if somebody has a working example, I'd greatly appreciate it. Or
> > maybe a better description or tutorial for E310 specific issues like
> > cross-compiling OOT RFNoC blocks.
> >
> > Many thanks for all the help that has already been given me.
> >
> > Mike
> >
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

--000000000000b820ef05bb17b54f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Mike,</div><div><br></div><div>Di=
d you cross-compile your RFNoC OOT module and install it to the E310?</div>=
<div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 9, 2021 at 9:52 PM Mike via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">All,=C2=A0 I wanted to resurrect a problem that I had couple mon=
ths ago that <br>
I put aside and would now like to fix.=C2=A0 The issue is that I get a pyth=
on <br>
error when executing a flow graph on an E310 that was generated from GRC.<b=
r>
<br>
The error is posted below.=C2=A0 For background I&#39;m using UHD 3.15 with=
 GNU <br>
Radio 3.7.=C2=A0 I&#39;ve successfully created a bit file for the FPGA with=
 a <br>
custom block (simple gain block).=C2=A0 I&#39;ve updated the UHD xml file s=
uch <br>
that uhd_usrp_probe correctly identifies the new block.=C2=A0 Also, using a=
 <br>
python command line tool, I&#39;ve been able to import my module and enough=
 <br>
of other modules like ettus and create a device3 variable to see that I <br=
>
can instantiate my mikes.digitalgain block.=C2=A0 Previously I&#39;ve <br>
successfully generated non-RFNoC OOT modules and run them on the E310.=C2=
=A0 <br>
So, I&#39;m a little stumped how to get past this error.=C2=A0 Is there an =
<br>
additional step that I&#39;m missing to compile the RFNoC module so that th=
e <br>
E310 version of GNU Radio can successfully import the module and connect <b=
r>
to it in the top block.=C2=A0 Is the warning about using the default block =
<br>
controller relevant?=C2=A0 I thought that simple blocks could be controlled=
 <br>
through the XML files using the default controller.=C2=A0 Any help would be=
 <br>
greatly appreciated...<br>
<br>
root@ni-e31x:~# ./e310_rx_spectrum.py<br>
[INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; <br>
UHD_3.15.0.0-62-g7a3f1516<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D3092E3A,claim=
ed=3DFalse<br>
[WARNING] [MPM.RPCServer] A timeout event occured!<br>
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000003310)<=
br>
[WARNING] [RFNOC] Can&#39;t find a block controller for key digitalgain, <b=
r>
using default block controller!<br>
[INFO] [0/digitalgain_0] Initializing block control (NOC ID: <br>
0x1234123412341234)<br>
[INFO] [MPM.PeriphManager] init() called with device args <br>
`product=3De310_sg1,mgmt_addr=3D127.0.0.1&#39;.<br>
[WARNING] [RFNOC] Can&#39;t find a block controller for key FFT, using <br>
default block controller!<br>
[INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)<br=
>
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)<b=
r>
[INFO] [0/Radio_0] Performing CODEC loopback test...<br>
[INFO] [0/Radio_0] CODEC loopback test passed<br>
[INFO] [0/Radio_0] Performing CODEC loopback test...<br>
[INFO] [0/Radio_0] CODEC loopback test passed<br>
Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;./e310_rx_spectrum.py&quot;, line 191, in &lt;modul=
e&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 main()<br>
=C2=A0=C2=A0 File &quot;./e310_rx_spectrum.py&quot;, line 180, in main<br>
=C2=A0=C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(freq=3Doptions.freq, <br>
rfnoc_gain=3Doptions.rfnoc_gain, rx_gain=3Doptions.rx_gain)<br>
=C2=A0=C2=A0 File &quot;./e310_rx_spectrum.py&quot;, line 80, in __init__<b=
r>
=C2=A0=C2=A0=C2=A0=C2=A0 self.mikes_digitalgain_0 =3D mikes.digitalgain(<br=
>
AttributeError: &#39;module&#39; object has no attribute &#39;digitalgain&#=
39;<br>
root@ni-e31x:~# ^C<br>
<br>
<br>
On 11/16/20 3:53 PM, Mike via USRP-users wrote:<br>
&gt; All,<br>
&gt;<br>
&gt; I&#39;m working with the E310 unit and have run up against a road bloc=
k.=C2=A0 <br>
&gt; I&#39;ve completed almost the entire application note, AN-823 (Getting=
 <br>
&gt; started with RFNoC Development).<br>
&gt;<br>
&gt; I&#39;m using UHD 3.15 with GNU Radio 3.7.=C2=A0 I&#39;ve successfully=
 built a <br>
&gt; custom FPGA with the tutorial&#39;s &quot;gain&quot; block.=C2=A0 I ca=
n see the new block <br>
&gt; with the proper name with uhd_usrp_probe.<br>
&gt;<br>
&gt; I updated the XML files to allow GRC to implement the RFNoC block.<br>
&gt;<br>
&gt; Here is where I run into problems.=C2=A0 When I copy the gnuradio pyth=
on <br>
&gt; file over to the E310 I keep getting an error that states that the <br=
>
&gt; &#39;module&#39; object has no attribute &#39;gain&#39;.<br>
&gt;<br>
&gt; root@ni-e31x:~# python e310_rx_spectrum.py<br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; <br>
&gt; UHD_3.15.0.0-62-g7a3f1516<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: <br>
&gt; mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D3092E3A,=
claimed=3DFalse<br>
&gt; [WARNING] [MPM.RPCServer] A timeout event occured!<br>
&gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
&gt; [INFO] [0/Radio_0] Initializing block control (NOC ID: <br>
&gt; 0x12AD100000003310)<br>
&gt; [WARNING] [RFNOC] Can&#39;t find a block controller for key gain, usin=
g <br>
&gt; default block controller!<br>
&gt; [INFO] [0/gain_0] Initializing block control (NOC ID: 0x11112222333344=
44)<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args <br>
&gt; `mgmt_addr=3D127.0.0.1,product=3De310_sg1&#39;.<br>
&gt; [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)<br>
&gt; [WARNING] [RFNOC] Can&#39;t find a block controller for key FFT, using=
 <br>
&gt; default block controller!<br>
&gt; [INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF7000000000000=
0)<br>
&gt; [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
&gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
&gt; [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
&gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
&gt; Traceback (most recent call last):<br>
&gt; =C2=A0 File &quot;e310_rx_spectrum.py&quot;, line 216, in &lt;module&g=
t;<br>
&gt; =C2=A0=C2=A0=C2=A0 main()<br>
&gt; =C2=A0 File &quot;e310_rx_spectrum.py&quot;, line 205, in main<br>
&gt; =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(freq=3Doptions.freq, <br>
&gt; rfnoc_gain=3Doptions.rfnoc_gain, rx_gain=3Doptions.rx_gain)<br>
&gt; =C2=A0 File &quot;e310_rx_spectrum.py&quot;, line 101, in __init__<br>
&gt; =C2=A0=C2=A0=C2=A0 self.tutorial_gain_0 =3D tutorial.gain(<br>
&gt; AttributeError: &#39;module&#39; object has no attribute &#39;gain&#39=
;<br>
&gt;<br>
&gt; Now, I&#39;ve seen many suggestions on how to address this.=C2=A0 It m=
ostly <br>
&gt; describes this as a problem importing the module &#39;tutorial&#39;.=
=C2=A0 I&#39;ve <br>
&gt; seen descriptions of using the &quot;nm&quot; command to see if the ca=
llback <br>
&gt; function is undefined.=C2=A0 But I still haven&#39;t been able to fix =
the issue.<br>
&gt;<br>
&gt; But mostly what I&#39;m after is a working example of an RFNoC module =
for <br>
&gt; the E310. One that includes the GRC interface so that the software <br=
>
&gt; interface can program the FPGA registers.=C2=A0 I think that a lot of =
the <br>
&gt; tutorials are written for host applications whereas the E310 has a <br=
>
&gt; cross-compiling aspect to it.<br>
&gt;<br>
&gt; So, if somebody has a working example, I&#39;d greatly appreciate it. =
Or <br>
&gt; maybe a better description or tutorial for E310 specific issues like <=
br>
&gt; cross-compiling OOT RFNoC blocks.<br>
&gt;<br>
&gt; Many thanks for all the help that has already been given me.<br>
&gt;<br>
&gt; Mike<br>
&gt;<br>
&gt;<br>
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
</blockquote></div></div>

--000000000000b820ef05bb17b54f--


--===============6805385877405759854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6805385877405759854==--

