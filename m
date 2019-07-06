Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E39F561237
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jul 2019 18:44:21 +0200 (CEST)
Received: from [::1] (port=40154 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hjnnK-0000Mr-09; Sat, 06 Jul 2019 12:44:14 -0400
Received: from mail-pf1-f177.google.com ([209.85.210.177]:37040)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tom.n5eg@gmail.com>) id 1hjnnG-0000IV-6G
 for usrp-users@lists.ettus.com; Sat, 06 Jul 2019 12:44:10 -0400
Received: by mail-pf1-f177.google.com with SMTP id 19so5587375pfa.4
 for <usrp-users@lists.ettus.com>; Sat, 06 Jul 2019 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=54ZxrfhD3W1j09JYbuB1X4hqK9zNksTxkE9R6V2YWaU=;
 b=Chn65wAU36ejmUuxiydGLG8yG2BdFDf0BQEt8cKpI0WuQEY0Vt4fpsIeoRIIDx+ncQ
 jiOCjmSy4EO5u43ZYRsVFxYgTZU1+y1p9S4dbkk1UJZxlmQ7CSc2eiDKEk4Mp8IW/pku
 UcP2/AVaFb6YlzlYaE/utv9U0GwJPqh//c2b5P6fAO7C6WmE0iCg1lu4wA1c+U5vOXtv
 mblpoquoctJNBL9wdPlJ/KNE1ULA2lgFpk75WrNWLU39dvotjJKWUJ14cuT95e7CGr5h
 8WsLJfO9INQKJYlM4Y0K+J1JnMKEpjVbs9MfZxAhpa2eECJt7BPaMr9ChFRucTXrdrk/
 o7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=54ZxrfhD3W1j09JYbuB1X4hqK9zNksTxkE9R6V2YWaU=;
 b=iO5HrtdztX791WaC3u1p8VnEgw8DWaHzHeVCR5m/yMVJrRZ1psHPNtBm+Lz3vCFRsY
 25x/0pT32xNou3NQQxrwQ02T3mVuW3N5LrqiwjpITxuErUtkvQweiN8XGX7TY3t48H1U
 14qkaNLlvujrz4xnqjhVCCNfaRbd25f/ieqpB/3lXjGQ7LOwY9Ycgthm2RBEimQLlRPZ
 PD1TvNhliM/aW24js2it5XTUIqT6nPubYdKHXmMqQUb2bxZGGctZKLaLWIwLhf7cQRBf
 Zewe5bSK0d9U36Bxf30fP8qR/rAG+4ExsFG/HSdLbblrpZuIUry/pPZKuKWf+JqUKdc8
 w8fg==
X-Gm-Message-State: APjAAAWA3c10G+3NwnvxS9o0YtteKTYGVI6qLi9ueAt2xEkEERfQt0sg
 PKYzAuPB6dVBHM1XYTCz7SCNHDYnJbdB0MxOrSeeampX
X-Google-Smtp-Source: APXvYqzCkHmsZdYPPqf3d8I+V6ieBXxjY2DwSVTw6bEE7GTTEcd/nqwGs4dsmdgCCfrrE5HZ6PikPHk0kNL9qvQuSFE=
X-Received: by 2002:a63:181:: with SMTP id 123mr3011399pgb.63.1562431408788;
 Sat, 06 Jul 2019 09:43:28 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 6 Jul 2019 09:42:53 -0700
Message-ID: <CACO3nRQK6FgDo+gb1dD-GPOGFDphOHX_dUgXdDOV21pAyj0JxA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] CLUES : B205 Half-Duplex problem
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
Content-Type: multipart/mixed; boundary="===============4973156044816302505=="
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

--===============4973156044816302505==
Content-Type: multipart/alternative; boundary="0000000000001b5859058d05e969"

--0000000000001b5859058d05e969
Content-Type: text/plain; charset="UTF-8"

Finally identified the B205 Half-Duplex problem I think.  No packets
involved
here - everything is streaming. No Tags, no Messages.

My hypothesis is that when the B205 transmitter starts (the 2nd and later
times)
it tries to fill up something like a TX FIFO, sucking samples out of the
flowgraph
way faster than they can be provided. This causes the TX to underrun going
back
to receive. Then it catches back up and switches to transmit, bouncing back
and forth.

The first time the TX starts (on flowgraph startup) it seems to pace the TX
correctly.
After switching to RX then back to TX (by stopping TX samples the
restarting) is when
the problem occurs.

A number of different approaches seem to yield the same behavior:

1) I used an Audio Source block (microphone) to feed a multiplier
(frequency shifter)
that feeds the TX. If I remove that and replace it with a signal source
block sinewave
(something that does not involve real time) then the TX can suck samples as
fast as
it wants, and everything T/R switches correctly.

2) The original flowgraph used a Signal Source Block as a L.O. feeding two
multipliers:
one in the RX chain, and one in the TX chain.   The receiver is feeding
samples
to it's multiplier at a constant rate, which limits how fast the buffer on
the L.O. has
samples pulled. That same L.O. is also feeding a multiplier in the transmit
chain,
which drains all the buffers in the TX path up to that point.

I created two gnuradio Signal Source blocks, with identical input
parameters but
instantiated as two separate blocks in the flowgraph.  One feeds the
receiver
multiplier, one feeds the transmit multiplier - this avoids any common path
that could slow down samples to the TX. As long as the TX side has no
real-time
sources then it T/R switches correctly.  Using the Audio Source block in
the TX chain
causes the problem to resurface.

This seems to confirm the hypothesis.

My opinion is that this is probably a BUG in the B205 FPGA code.  It should
attempt
to pull samples at a rate close to the sample rate of the transmitter when
restarting.

-- Tom, N5EG

--0000000000001b5859058d05e969
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Finally identified th=
e B205 Half-Duplex problem I think.=C2=A0 No packets involved</div><div>her=
e - everything is streaming. No Tags, no Messages.</div><div><br></div><div=
>My hypothesis is that when the B205 transmitter starts (the 2nd and later =
times)</div><div>it tries to fill up something like a TX FIFO, sucking samp=
les out of the flowgraph</div><div>way faster than they can be provided. Th=
is causes the TX to underrun going back</div><div>to receive. Then it catch=
es back up and switches to transmit, bouncing back and forth.</div><div><br=
></div><div><div style=3D"text-align:left;color:rgb(34,34,34);text-transfor=
m:none;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sa=
ns-serif;font-size:13.33px;font-style:normal;font-variant:normal;font-weigh=
t:400;text-decoration:none;word-spacing:0px;white-space:normal">The first t=
ime the TX starts (on flowgraph startup) it seems to pace the TX correctly.=
</div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none=
;text-indent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-ser=
if;font-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;=
text-decoration:none;word-spacing:0px;white-space:normal">After switching t=
o RX then back to TX (by stopping TX samples the restarting) is when</div><=
div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;text-i=
ndent:0px;letter-spacing:normal;font-family:Arial,Helvetica,sans-serif;font=
-size:13.33px;font-style:normal;font-variant:normal;font-weight:400;text-de=
coration:none;word-spacing:0px;white-space:normal">the problem occurs.<br><=
/div></div><div><br></div><div>A number of different approaches seem to yie=
ld the same behavior:</div><div><br></div><div>1) I used an Audio Source bl=
ock (microphone) to feed a multiplier (frequency shifter)</div><div>that fe=
eds the TX. If I remove that and replace it with a signal source block sine=
wave</div><div>(something that does not involve real time) then the TX can =
suck samples as fast as</div><div>it wants, and everything T/R switches cor=
rectly.</div><div><br></div><div>2) The original flowgraph used a Signal So=
urce Block as a L.O. feeding two multipliers:</div><div>one in the RX chain=
, and one in the TX chain. =C2=A0 The receiver is feeding samples</div><div=
>to it&#39;s multiplier at a constant rate, which limits how fast the buffe=
r on the L.O. has</div><div>samples pulled. That same L.O. is also feeding =
a multiplier in the transmit chain,</div><div>which drains all the buffers =
in the TX path up to that point.</div><div><br></div><div>I created two gnu=
radio Signal Source blocks, with identical input parameters but</div><div>i=
nstantiated as two separate blocks in the flowgraph.=C2=A0 One feeds the re=
ceiver</div><div>multiplier, one feeds the transmit multiplier - this avoid=
s any common path</div><div>that could slow down samples to the TX. As long=
 as the TX side has no real-time</div><div>sources then it T/R switches cor=
rectly.=C2=A0 Using the Audio Source block in the TX chain</div><div>causes=
 the problem to resurface.</div><div><br></div><div>This seems to confirm t=
he hypothesis.</div><div><br></div><div>My opinion is that this is probably=
 a BUG in the B205 FPGA code.=C2=A0 It should attempt</div><div>to pull sam=
ples at a rate close to the sample rate of the transmitter when restarting.=
</div><div><br></div><div>-- Tom, N5EG<br><br></div></div></div>

--0000000000001b5859058d05e969--


--===============4973156044816302505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4973156044816302505==--

