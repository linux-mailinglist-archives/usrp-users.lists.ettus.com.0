Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C259A248A65
	for <lists+usrp-users@lfdr.de>; Tue, 18 Aug 2020 17:48:30 +0200 (CEST)
Received: from [::1] (port=49198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k83qb-0006Xa-70; Tue, 18 Aug 2020 11:48:25 -0400
Received: from mail-ej1-f47.google.com ([209.85.218.47]:44130)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ncmatson95@gmail.com>)
 id 1k83qX-0006T4-KK
 for usrp-users@lists.ettus.com; Tue, 18 Aug 2020 11:48:21 -0400
Received: by mail-ej1-f47.google.com with SMTP id bo3so22611347ejb.11
 for <usrp-users@lists.ettus.com>; Tue, 18 Aug 2020 08:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gvItIyer+48LN4UA/rQw1Rvn/yuKMReKwOT8HmnM5SI=;
 b=I22TCWouo0ZQXGJ6AZEyMc6wwTz8bwVIHDhtI5Hbf0cl7VU8Bn9ZfvARfhlnLAuX09
 rSVvDQgyUzCgpgPxL4v4EyZTPw2Ut6K39+1AzKQQRiZOm1KlByXzcvnqwAZOBPmiZBgo
 Gxp2zdpk9uDPd7gnvdnxI307SfV9ShYI0AYFZpDTFgunVec69+BjNoi0ZMlUD+380sGp
 wgZdZjkJPg3c8gh8ipKWLdPAEYd8+HvR06x8SMufxijOkoysXK5QZIJuJIHJqkQBC8Yq
 MuvjMTu8yMF6LUSjURB6ZHvKTNK6J6grQPZpmNxF03yyTLsA5zh5XwQIVtSV3WiTk3nV
 5AEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gvItIyer+48LN4UA/rQw1Rvn/yuKMReKwOT8HmnM5SI=;
 b=gjc9BrKzxwhl1ayLlUwhELwHCH0uu16RBV7l5Raq6z+d5kknym+EiuXNmXh87BtyJC
 peH2On7cV3Kk8RbmRpcfrnXbVoq/0+XsTNXUbOpuuzLbkEIDpibJe2cAitRGkycMsAPi
 ECxtSykpIUB6GDxCGg7ePoSCRv5fS/OYHIcPIqoIk26+p90PB6q0OImTaSHAMWaOpDCi
 1P3gaw+Fp4E1Fh7YvSr4OF2+yepaxyQ+6qONwKrj9sQBcCTceFXc14MkEaynj8Q+EdOh
 0Itl1btWEEvPVaSnku94wJVYjp533kqPn7Ltc101UiMK9etUIRaz9zJWRzou700VTkHE
 cozA==
X-Gm-Message-State: AOAM531j5bye+J9K2Atm9gQO0RUdPx7mnhekPUZnvx3RZ2AjGjWwRNQP
 a7kKeFvIfTF1UdIYumoVzczjDEJfy8wzwenm0KDwzJeUm8A=
X-Google-Smtp-Source: ABdhPJzdXcA2hN9kP4RALmzYGb5qwUfl26epr5Dkt17mQ2rLKFx4z9q0JyDr4yrJFX+WfyvJSXMqHesSSUvdQ1MZB94=
X-Received: by 2002:a17:906:a00d:: with SMTP id
 p13mr21860373ejy.535.1597765660371; 
 Tue, 18 Aug 2020 08:47:40 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 18 Aug 2020 10:47:29 -0500
Message-ID: <CAGLr63uMrepVPPPnDAc2Nd+Z4LjKAuDPT9wX5T8rvvBZ_0uksw@mail.gmail.com>
To: GNURadio Discussion List <discuss-gnuradio@gnu.org>,
 usrp-users@lists.ettus.com
Subject: [USRP-users] N310 self interference with packet comms and
 correlation estimator
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
From: Cameron Matson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cameron Matson <ncmatson95@gmail.com>
Content-Type: multipart/mixed; boundary="===============5049554807606477829=="
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

--===============5049554807606477829==
Content-Type: multipart/alternative; boundary="0000000000009eed2905ad28ce7c"

--0000000000009eed2905ad28ce7c
Content-Type: text/plain; charset="UTF-8"

Hey everyone,

I've copied both the gnuradio and usrp lists, since I'm not sure if the
question has a software or hardware answer, so I apologize for duplicate
emails.

I am attempting to set up a wireless transceiver using N310s and the packet
tx/rx examples from gnuradio.  I combined both the tx and rx chains in one
flowgraph with zeromq source/sink blocks like this:

[zmq source] -> [packet tx] -> [usrp sink]
and
[usrp source] -> [packet rx] -> [zmq sink]

I have a separate python file running in a separate process.  That handles
messages from the zmq blocks and controls state changes between "backoff",
"listen" and "talk"

I'm not sure the specific terminology for the variety of duplex I'm trying
to implement, but I want the TX and RX to happen on the same frequency
using one antenna.  The problem is that if I use the same frequency, my RX
chain immediately "hears" the signal that was transmitted.  By "hears" I
mean that the first part of the [packet rx] block, which is the
[correlation estimator] block detects the signal as a valid packet.  The
problem is that because the amplitude of my desired rx signal is low, I've
had to set the threshold of the correlation estimator relatively low--and
so the recently transmitted signal, which has a much higher amplitude being
right next to the rx antenna, overwhelms the detector.  This doesn't happen
if I have the TX and RX on different frequencies

What I don't quite fully understand is what happens on the N310 when a flow
graph with both transmit and receive processes are active.  I can see from
the LEDs that it is "receiving" most of the time and when it gets a message
to transmit it will blink to tx and then back.  What happens in this
process?  One thought is that since its the same antenna, the tx and rx
might share a buffer and the tx data is still present there.

Is what I'm trying to do even possible?

Thanks for your time,

Cameron

--0000000000009eed2905ad28ce7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey everyone,<div><br></div><div>I&#39;ve copied both the =
gnuradio and usrp lists, since I&#39;m not sure if the question has a softw=
are or hardware answer, so I apologize for duplicate emails.</div><div><br>=
</div><div>I am attempting to set up a wireless transceiver using N310s and=
 the packet tx/rx examples from gnuradio.=C2=A0 I combined both the tx and =
rx chains in one flowgraph with zeromq source/sink blocks like this:<div><b=
r></div><div>[zmq source] -&gt; [packet tx] -&gt; [usrp sink]</div><div>and=
</div><div>[usrp source] -&gt; [packet rx] -&gt; [zmq sink]</div><div><br><=
/div><div>I have a separate python file running in a separate process.=C2=
=A0 That handles messages from the zmq blocks and controls state changes be=
tween &quot;backoff&quot;, &quot;listen&quot; and &quot;talk&quot;</div><di=
v><br></div><div>I&#39;m not sure the specific terminology for the variety =
of duplex I&#39;m trying to implement, but I want the TX and RX to happen o=
n the same frequency using one antenna.=C2=A0 The problem is that if I use =
the same frequency, my RX chain immediately &quot;hears&quot; the signal th=
at was transmitted.=C2=A0 By &quot;hears&quot; I mean that the first part o=
f the [packet rx] block, which is the [correlation estimator] block detects=
 the signal=C2=A0as a valid packet.=C2=A0 The problem is that because the a=
mplitude of my desired rx signal is low, I&#39;ve had to set the threshold =
of the correlation estimator relatively low--and so the recently transmitte=
d signal, which has a much higher amplitude being right next to the rx ante=
nna, overwhelms the detector.=C2=A0 This doesn&#39;t happen if I have the T=
X and RX on different frequencies</div><div><br></div><div>What I don&#39;t=
 quite fully understand is what happens on the N310 when a flow graph with =
both transmit and receive processes are active.=C2=A0 I can see from the LE=
Ds that it=C2=A0is &quot;receiving&quot; most of the time and when it gets =
a message to transmit it will blink to tx and then back.=C2=A0 What happens=
 in this process?=C2=A0 One thought is that since its the same antenna, the=
 tx and rx might share a buffer and the tx data is still present there.</di=
v><div><br></div><div>Is what I&#39;m trying to do even possible?</div><div=
><br></div><div>Thanks for your time,</div><div><br></div><div>Cameron</div=
></div></div>

--0000000000009eed2905ad28ce7c--


--===============5049554807606477829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5049554807606477829==--

