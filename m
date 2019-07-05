Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C056606A9
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jul 2019 15:37:28 +0200 (CEST)
Received: from [::1] (port=44358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hjOOv-0007yt-LH; Fri, 05 Jul 2019 09:37:21 -0400
Received: from mail-pg1-f174.google.com ([209.85.215.174]:41500)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tom.n5eg@gmail.com>) id 1hjOOs-0007ux-RR
 for usrp-users@lists.ettus.com; Fri, 05 Jul 2019 09:37:18 -0400
Received: by mail-pg1-f174.google.com with SMTP id q4so4335008pgj.8
 for <usrp-users@lists.ettus.com>; Fri, 05 Jul 2019 06:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=y/B+zdHMBl4kqFnOSEsRh0mPyBTUSjqL27Luqmpz5IU=;
 b=CQZT8PjekPfA5bCbXMkMmrfkoI/aPTWBr72TXV+eFk0JQvaOHhbxMvBc/L85Dno3xE
 LMibDrtRtpmOqmW6jUlRpzopKn6ufrivLpBdp90igCO4xAQsoqqM/xvp2pU9ghH2E5ux
 VmEfeD/uo/OuiuAs6awY2qAVyFLUDKcsc8oZzYTc1f81egw6CGu1XVfznQFnbYoVKp6h
 tsHNGg6DUFHNW/IoJteH94An3kfBHlAxcP0uj94/XS7lzFpVk9KdwY2U/3Xa6JGQT+pl
 PFCodVWVa02mtrCWHvt0MECTKXZPdKRr/K2UA+jt7pPJZq/gA6D1Ox25b/tvOSMa7vn9
 8Ktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=y/B+zdHMBl4kqFnOSEsRh0mPyBTUSjqL27Luqmpz5IU=;
 b=huqPE7LP3Ix2mqrqUZzx54bKnSK1vM+7Sumhlvkpisr3jV5o+Os1tVqWZyvYO2Zt87
 86TnF2CXx4d0K0RVTFOvet9iz9bEoayqAwBSOtpXZIyw43ywokI8H0e8JclbnXI3bJEM
 yAs10vpH/H8dd7Sh9iegkqlzpkbH+mskgV1lNmIYqaLTeDUEX7ID+4G7U3kennfEt/2y
 TS3PLjKGV3/FW1EthLNMDxLu2BON2ipPAiaoZ/YSANc00zRNOzpAARGveDOS6FBcIR9u
 ioTGPUsacAKDpLbMo2q5/tRzbP6noRun6CW9m7GOiwNLRk/F5JYYZZ4fhRj2elSCCr+D
 zrqA==
X-Gm-Message-State: APjAAAXU8vZtC32SrMXjPrMby7/DMTmiKctWG84z5wyAMDYEU1tvPdPu
 qkRfT/98GNo3qa6t0NnWYWRndzALsyPU02ieZ1n9jWIA
X-Google-Smtp-Source: APXvYqxyuWJ2J8voyyUOnC7lLwuyy1w/YbSVAzr9vwRvgrTln9UhLX8SD3Utpban4EctCfmxB0ld3x6agDMX4mxaJBk=
X-Received: by 2002:a63:e251:: with SMTP id y17mr5640119pgj.8.1562333797725;
 Fri, 05 Jul 2019 06:36:37 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 5 Jul 2019 06:36:01 -0700
Message-ID: <CACO3nRT7r1iZg3Gv8jSBPbUp9wDQCHNYF=fQTYuuCwA71GAuqw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] B205mini half-duplex? (GRC)
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
From: Tom McDermott via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tom McDermott <tom.n5eg@gmail.com>
Content-Type: multipart/mixed; boundary="===============3097951745966022993=="
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

--===============3097951745966022993==
Content-Type: multipart/alternative; boundary="00000000000008baf9058cef2fda"

--00000000000008baf9058cef2fda
Content-Type: text/plain; charset="UTF-8"

Hi Marcus - thanks for the link to the documentation.  Messages don't have
the required functionality, so I have tried to insert tx_sob and tx_eob tags.
This unfortunately has not changed anything.  This is what the tag debug shows,
are these formatted correctly for UHD USRP sink?

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 139250  Source: burst_tagger4     Key: tx_sob   Value: #t
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug:
Input Stream: 00
  Offset: 196587  Source: burst_tagger4     Key: tx_eob   Value: #t
----------------------------------------------------------------------

I have to stop streaming samples to the USRP Sink to get it to stop
transmitting and
switch TX/RX over to RX - the tags aren't enough.  However the next
time back to Tx,
the problem with transmitter underruns and weird oscillating T/R
behavior resumes.

Still looking for advice as to how to T/R switch the unit without the
TX going nuts?

-- Tom, N5EG





On 07/04/2019 11:14 PM, Tom McDermott via USRP-users wrote:
>* I am trying to use a B205mini in half-duplex mode through the TX/RX
*>* connector
*>* from a GRC flowgraph.  Gnuradio 3.7.13.4.  Very slow switching,
*>* manually implemented.
*>>* The flowgraph implements a simple half-duplex transceiver. In order to
*>* switch
*>* the TX/RX antenna switch, I am starting and stopping samples to the
*>* USRP sink
*>* using the Copy block.  When the Copy block is enabled it passes
*>* samples to the USRP sink,
*>* and when disabled it does not copy samples to the USRP sink.
*>>* If the Copy block is statically enabled, then the USRP transmits (RED
*>* led 'On' for TX/RX)
*>* continuously without any underruns.
*>>* If the Copy is statically disabled, then USRP goes into receive mode
*>* (GREEN led 'On' for TX/RX)
*>* and stays in that mode.
*>>* So far so good.
*>>* However if I toggle the enable/disable on the copy block to disable
*>* the TX/RX switches as it should
*>* from red to green, but after I re-enable the Copy block and leave it
*>* enabled, the TX/RX  LED goes red
*>* for awhile, then rapidly flashes red/green/red etc. while printing
*>* UUUUUUU  on the GRC console, then
*>* goes RED for about 5 seconds without underruns, then flashes RED/GREEN
*>* rapidly for 5 or 10 seconds
*>* and underruns, back and forth ad infinitum.
*>>* So Copy appears not to be a good way to implement T/R switching.
*>>* There is a message port on the USRP sink block.  Can this be used to
*>* implement T/R switching?
*>* Is there some place that the messages that this port accepts defined?
*>* I cannot seem to find
*>* the syntax for the message definitions in the USRP documentation, so I
*>* must be looking in the wrong place.
*>>* -- Tom, N5EG
*>>There's some documentation here:
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html

--00000000000008baf9058cef2fda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre>Hi Marcus - thanks for the link to the documentation.=
  Messages don&#39;t have<br>the required functionality, so I have tried to=
 insert tx_sob and tx_eob tags.<br>This unfortunately has not changed anyth=
ing.  This is what the tag debug shows,<br>are these formatted correctly fo=
r UHD USRP sink?<br><br>---------------------------------------------------=
-------------------<br>Tag Debug: <br>Input Stream: 00<br>=C2=A0 Offset: 13=
9250 =C2=A0Source: burst_tagger4 =C2=A0 =C2=A0 Key: tx_sob =C2=A0 Value: #t=
<br>----------------------------------------------------------------------<=
br><br>--------------------------------------------------------------------=
--<br>Tag Debug: <br>Input Stream: 00<br>=C2=A0 Offset: 196587 =C2=A0Source=
: burst_tagger4 =C2=A0 =C2=A0 Key: tx_eob =C2=A0 Value: #t<br>-------------=
---------------------------------------------------------<br><br></pre><pre=
>I have to stop streaming samples to the USRP Sink to get it to stop transm=
itting and<br>switch TX/RX over to RX - the tags aren&#39;t enough.  Howeve=
r the next time back to Tx,<br>the problem with transmitter underruns and w=
eird oscillating T/R behavior resumes.<br><br></pre><pre>Still looking for =
advice as to how to T/R switch the unit without the TX going nuts?<br><br><=
/pre><pre>-- Tom, N5EG<br><br></pre><pre><br><br><br></pre><pre><br>On 07/0=
4/2019 11:14 PM, Tom McDermott via USRP-users wrote:
&gt;<i> I am trying to use a B205mini in half-duplex mode through the TX/RX=
=20
</i>&gt;<i> connector
</i>&gt;<i> from a GRC flowgraph.  Gnuradio 3.7.13.4.  Very slow switching,=
=20
</i>&gt;<i> manually implemented.
</i>&gt;<i>
</i>&gt;<i> The flowgraph implements a simple half-duplex transceiver. In o=
rder to=20
</i>&gt;<i> switch
</i>&gt;<i> the TX/RX antenna switch, I am starting and stopping samples to=
 the=20
</i>&gt;<i> USRP sink
</i>&gt;<i> using the Copy block.  When the Copy block is enabled it passes=
=20
</i>&gt;<i> samples to the USRP sink,
</i>&gt;<i> and when disabled it does not copy samples to the USRP sink.
</i>&gt;<i>
</i>&gt;<i> If the Copy block is statically enabled, then the USRP transmit=
s (RED=20
</i>&gt;<i> led &#39;On&#39; for TX/RX)
</i>&gt;<i> continuously without any underruns.
</i>&gt;<i>
</i>&gt;<i> If the Copy is statically disabled, then USRP goes into receive=
 mode=20
</i>&gt;<i> (GREEN led &#39;On&#39; for TX/RX)
</i>&gt;<i> and stays in that mode.
</i>&gt;<i>
</i>&gt;<i> So far so good.
</i>&gt;<i>
</i>&gt;<i> However if I toggle the enable/disable on the copy block to dis=
able=20
</i>&gt;<i> the TX/RX switches as it should
</i>&gt;<i> from red to green, but after I re-enable the Copy block and lea=
ve it=20
</i>&gt;<i> enabled, the TX/RX  LED goes red
</i>&gt;<i> for awhile, then rapidly flashes red/green/red etc. while print=
ing=20
</i>&gt;<i> UUUUUUU  on the GRC console, then
</i>&gt;<i> goes RED for about 5 seconds without underruns, then flashes RE=
D/GREEN=20
</i>&gt;<i> rapidly for 5 or 10 seconds
</i>&gt;<i> and underruns, back and forth ad infinitum.
</i>&gt;<i>
</i>&gt;<i> So Copy appears not to be a good way to implement T/R switching=
.
</i>&gt;<i>
</i>&gt;<i> There is a message port on the USRP sink block.  Can this be us=
ed to=20
</i>&gt;<i> implement T/R switching?
</i>&gt;<i> Is there some place that the messages that this port accepts de=
fined? =20
</i>&gt;<i> I cannot seem to find
</i>&gt;<i> the syntax for the message definitions in the USRP documentatio=
n, so I=20
</i>&gt;<i> must be looking in the wrong place.
</i>&gt;<i>
</i>&gt;<i> -- Tom, N5EG
</i>&gt;<i>
</i>&gt;<i>
</i>There&#39;s some documentation here:

<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sin=
k.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.h=
tml</a>

<br><br><br></pre></div>

--00000000000008baf9058cef2fda--


--===============3097951745966022993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3097951745966022993==--

