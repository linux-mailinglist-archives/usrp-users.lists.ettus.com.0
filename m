Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A49487212B
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 22:57:19 +0200 (CEST)
Received: from [::1] (port=50910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq1qX-0005KX-PE; Tue, 23 Jul 2019 16:57:17 -0400
Received: from mail-lj1-f172.google.com ([209.85.208.172]:43666)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1hq1qU-0005Fh-Bb
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 16:57:14 -0400
Received: by mail-lj1-f172.google.com with SMTP id y17so17820971ljk.10
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 13:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6ys7guQBS9To5VzIeU3E0Z+sw/jcQjM2M7cg3kTMono=;
 b=qy6zS3761DS+C0bd0RSfz3SyAEaRWLPY6sDjY5Z+ctkac2es5nhmmKpyrcIQV2QkNw
 LBsZc6Y8YGg/RCc2w5AiwhyE/w1ZzDZKvEh2+hUJHpV6+dr2jD91svilczts8tMCmIAb
 uc2Hu4+Hm9cNI8GpYzL+5CjsI7qHmhDzvL4+bFKf0uj8301efIVii5PZolDtToK54oBV
 MPbJYmkCQHHQmvzdD8T7rFQrfHzEoXFUeydxvxaA81gyWcmEHy/5XmDtxa9s3agMg+NC
 SSH777GR7zEaIjXYlsSAQw8ryWEbUy7uIlOMEAFFzLnINEF0/WCa8GJUuHOPwzGojGkT
 lGrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6ys7guQBS9To5VzIeU3E0Z+sw/jcQjM2M7cg3kTMono=;
 b=ggmjuN1M1FbQUwf+wXo0/3nTBH2+e/mJ7GVCU4OM6JGdjIIDdfscMeRK2PaNeOnsKo
 EY1avgdRZ8wCdHb+F0iZS+Pk1QDN5vwUhy+FTGGwzNndwEfj3QuLpm7SfpCn18m232OE
 dQoiFLk3OPfYmz2qS8f1suN1yHKXfpdz9fq/LM2sC0CXTwqzVEe0xS07sKwuZ9jjIfro
 V7F3Sen8R3UZmMajkjszmIG3l1ka3UwHRcYmFJxnMjWmUtPdnSHgCLvje+CrTXXW2iDw
 HuIUNIppNXmmx3nqDI4uwoddBQw2XZx1TB/a2joLxls7bF5wXMPi+SBx/Y4qwaO0WyA1
 ObMQ==
X-Gm-Message-State: APjAAAXCZ9s+JKntWnTmJKoJiqKrp5/twmRK1P4SPAvn8Hubias8p8Or
 GOWMUltEh15m31BwqgANf5EKvf/NjDimU1wzonPRPRG/
X-Google-Smtp-Source: APXvYqxaRGGFzIXuMQa9VCa8jKy4N9WmCEYHqAJDmV2+DBh9cBYD+B+1tuvjJpGkW+xW2oLX209Yb0MZRdyw+Bj8JoY=
X-Received: by 2002:a2e:9116:: with SMTP id m22mr39730233ljg.216.1563915393036; 
 Tue, 23 Jul 2019 13:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
In-Reply-To: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
Date: Tue, 23 Jul 2019 15:56:21 -0500
Message-ID: <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
To: =?UTF-8?B?5rGkIOmjng==?= <retina999@hotmail.com>
Subject: Re: [USRP-users] N310 "Bad CHDR or packet fragment" Problem
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9007539514197209448=="
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

--===============9007539514197209448==
Content-Type: multipart/alternative; boundary="00000000000076060c058e5f6d69"

--00000000000076060c058e5f6d69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you're connected over a 10GbE link, make sure to set your host's MTU
appropriately. I set mine to 9000.

Sam Reiter
SDR Support Engineer
Ettus Research


On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi, all,
>
> When benchmarking my N310, I keep getting such [RX FLOW CTRL] errors.
> What causes this and how to solve it?
>
> Thanks in advance!
>
> FT
>
>
> /usr/local/lib/uhd/examples/benchmark_rate  \
> >    --args "type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,mas=
ter_clock_rate=3D122.88e6" \
> >    --duration 60 \
> >    --channels "0" \
> >    --rx_rate 3.84e6 \
> >    --rx_subdev "A:0" \
> >    --tx_rate 3.84e6 \
> >    --tx_subdev "A:0"
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-=
0-gbfb9c1c7
> [00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D=
192.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...[INFO] [MPM=
D] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2=
,type=3Dn3xx,product=3Dn310,serial=3D3182B09,claimed=3DFalse,addr=3D192.168=
.10.2,master_clock_rate=3D122.88e6[INFO] [MPM.PeriphManager] init() called =
with device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,clock=
_source=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310'.[INFO] [0/Repla=
y_0] Initializing block control (NOC ID: 0x4E91A00000000004)[INFO] [0/Radio=
_0] Initializing block control (NOC ID: 0x12AD100000011312)[INFO] [0/Radio_=
1] Initializing block control (NOC ID: 0x12AD100000011312)[INFO] [0/DDC_0] =
Initializing block control (NOC ID: 0xDDC0000000000000)[INFO] [0/DDC_1] Ini=
tializing block control (NOC ID: 0xDDC0000000000000)[INFO] [0/DUC_0] Initia=
lizing block control (NOC ID: 0xD0C0000000000002)[INFO] [0/DUC_1] Initializ=
ing block control (NOC ID: 0xD0C0000000000002)[INFO] [0/FIFO_0] Initializin=
g block control (NOC ID: 0xF1F0000000000000)[INFO] [0/FIFO_1] Initializing =
block control (NOC ID: 0xF1F0000000000000)[INFO] [0/FIFO_2] Initializing bl=
ock control (NOC ID: 0xF1F0000000000000)[INFO] [0/FIFO_3] Initializing bloc=
k control (NOC ID: 0xF1F0000000000000)
> Using Device: Single USRP:
>   Device: N300-Series Device
>   Mboard 0: ni-n3xx-3182B09
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: Magnesium
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Magnesium
>
> [00:00:17.353184] Setting device timestamp to 0...
> [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
> [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
> [[ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or p=
acket fragment
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
> ValueError: Bad CHDR or packet fragment
> 00:00:17.414180] Unexpected error on recv, continuing...
> [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
> [00:00:17.514317] Unexpected error on recv, continuing...[ERROR] [RX FLOW=
 CTRL] Error unpacking packet: ValueError: Bad CHDR or packet fragment
> [ERROR] [STREAMER] The receive packet handler caught a value exception.
> ValueError: Bad CHDR or packet fragment
> [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
> [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
> [00:00:17.614377] Unexpected error on recv, continuing...
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000076060c058e5f6d69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you&#39;re connected over a 10GbE link, make sure to se=
t your host&#39;s MTU appropriately. I set mine to 9000.<div><br clear=3D"a=
ll"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR=
 Support Engineer</div><div>Ettus Research<br></div></div></div></div></div=
></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, Jul 19, 2019 at 2:21 AM =E6=B1=A4 =E9=A3=9E via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">



<div bgcolor=3D"#FFFFFF">
<pre>Hi, all,

When benchmarking my N310, I keep getting such <font color=3D"#CC0000">[RX =
FLOW CTRL]</font> errors.=20
What causes this and how to solve it?

Thanks in advance!

FT


/usr/local/lib/uhd/examples/benchmark_rate  \
&gt;    --args &quot;type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10=
.2,master_clock_rate=3D122.88e6&quot; \
&gt;    --duration 60 \
&gt;    --channels &quot;0&quot; \
&gt;    --rx_rate 3.84e6 \
&gt;    --rx_subdev &quot;A:0&quot; \
&gt;    --tx_rate 3.84e6 \
&gt;    --tx_subdev &quot;A:0&quot;

<font color=3D"#4E9A06">[INFO] [UHD] </font>linux; GNU C++ version 7.4.0; B=
oost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
[00:00:00.000014] Creating the usrp device with: type=3Dn3xx,mgmt_addr=3D19=
2.168.10.2,addr=3D192.168.10.2,master_clock_rate=3D122.88e6...
<font color=3D"#4E9A06">[INFO] [MPMD] </font>Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,seria=
l=3D3182B09,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e=
6
<font color=3D"#4E9A06">[INFO] [MPM.PeriphManager] </font>init() called wit=
h device args `master_clock_rate=3D122.88e6,time_source=3Dinternal,clock_so=
urce=3Dinternal,mgmt_addr=3D192.168.10.2,product=3Dn310&#39;.
<font color=3D"#4E9A06">[INFO] [0/Replay_0] </font>Initializing block contr=
ol (NOC ID: 0x4E91A00000000004)
<font color=3D"#4E9A06">[INFO] [0/Radio_0] </font>Initializing block contro=
l (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/Radio_1] </font>Initializing block contro=
l (NOC ID: 0x12AD100000011312)
<font color=3D"#4E9A06">[INFO] [0/DDC_0] </font>Initializing block control =
(NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DDC_1] </font>Initializing block control =
(NOC ID: 0xDDC0000000000000)
<font color=3D"#4E9A06">[INFO] [0/DUC_0] </font>Initializing block control =
(NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/DUC_1] </font>Initializing block control =
(NOC ID: 0xD0C0000000000002)
<font color=3D"#4E9A06">[INFO] [0/FIFO_0] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_1] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_2] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
<font color=3D"#4E9A06">[INFO] [0/FIFO_3] </font>Initializing block control=
 (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3182B09
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:17.353184] Setting device timestamp to 0...
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
[<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking pack=
et: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handle=
r caught a value exception.
ValueError: Bad CHDR or packet fragment
00:00:17.414180] Unexpected error on recv, continuing...
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.514317] Unexpected error on recv, continuing...
<font color=3D"#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packe=
t: ValueError: Bad CHDR or packet fragment

<font color=3D"#CC0000">[ERROR] [STREAMER] </font>The receive packet handle=
r caught a value exception.
ValueError: Bad CHDR or packet fragment
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.614377] Unexpected error on recv, continuing...
</pre>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000076060c058e5f6d69--


--===============9007539514197209448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9007539514197209448==--

