Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5135FFB0
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jul 2019 05:15:28 +0200 (CEST)
Received: from [::1] (port=56532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hjEh1-0006QU-7A; Thu, 04 Jul 2019 23:15:23 -0400
Received: from mail-pg1-f176.google.com ([209.85.215.176]:36454)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tom.n5eg@gmail.com>) id 1hjEgw-0006Gh-DI
 for usrp-users@lists.ettus.com; Thu, 04 Jul 2019 23:15:18 -0400
Received: by mail-pg1-f176.google.com with SMTP id c13so3629989pgg.3
 for <usrp-users@lists.ettus.com>; Thu, 04 Jul 2019 20:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=uTENsx7XNvu3ySNewu/gqQQ1GhVtVXHMiTu6mpg8H60=;
 b=TAMgKIHiKc/St04hgRld5pM3UYt6LZE5sOleiMvgWpTIloZpXgEtneZ7tTmizSwXeD
 8qRokkuPPM3URO9FQZkuYxBfN/yBTJnSeZupIt+Yur99LtAd+iLa7A6LxJVw830I7f/V
 IPY5VePzTXlsABOQPBWi7rGNfe4DtUbR9VtQHYBs/l+2LABR+FQVDmw/87/lbDqrlrt7
 e4VtiI6GKmrLRLovk8C8J+KgCTqrqwPOPYbe1+tFhHzzpg4/buyaLOPjOJiUTJRh60rf
 go36vOkuAO5dAUv8Dlz8i4bfHIsPae1PdufE4UYxvfCIwjgkPqTYGdYSTvvqajFH8cLV
 qeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=uTENsx7XNvu3ySNewu/gqQQ1GhVtVXHMiTu6mpg8H60=;
 b=TK10Z1fDm0pkuy2ZiYR1bEL45ITh7zT8LOpB2TccejpLE3bzvbSDSrwdV9VeP03vj4
 OSEC8jOTq82n3lN1iff8RK8YCydpzL3iAzGajJ4NpDlqJ7zx8i6adEYzgF2/E8kuaMD5
 deT5put7UZt3cqdJHAhwg/PR4tYo/12kI10dKfi0Wwx7OE0KF7Mpe8JLF5EJ9WXQHXTJ
 /j1jUBX4PBklPWeYTt+zSx/jQohgil2mrUtMSh3C7dprRncEnqmxoMnngWOxy1jWJt/G
 fYJQrcSlhxNTxDIisBZ59b/Ra0hCptSPd5qsvyF7JUQgO2OmWdI3k/bB6+q3C6rD04cO
 rXHw==
X-Gm-Message-State: APjAAAUXn8aSwNOZ0c3Ulk8F87X9tXQeN+bePqnKyLbWlNPZEJc/6Xow
 OibQm1lyvXMFrXqQVpX5Y5DA7m655+X8tw+95tTHXA==
X-Google-Smtp-Source: APXvYqww0Ci3rwwW+vSgVd9hLfXrl7vLX1FwQRfXapz7FyrpQk13G3fROlzh2wF+Iw2/q0mpeH40CHAHQGyNWcyzwJg=
X-Received: by 2002:a63:1c09:: with SMTP id c9mr2069162pgc.63.1562296477230;
 Thu, 04 Jul 2019 20:14:37 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 4 Jul 2019 20:14:01 -0700
Message-ID: <CACO3nRR9Ct3n8ofJKRLU4-fdk3ypdxibc1JowJ0yh_46zx5Qfw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] B205mini half-duplex? (GRC)
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
Content-Type: multipart/mixed; boundary="===============6518519205601636317=="
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

--===============6518519205601636317==
Content-Type: multipart/alternative; boundary="0000000000008f2cb2058ce67eab"

--0000000000008f2cb2058ce67eab
Content-Type: text/plain; charset="UTF-8"

I am trying to use a B205mini in half-duplex mode through the TX/RX
connector
from a GRC flowgraph.  Gnuradio 3.7.13.4.  Very slow switching, manually
implemented.

The flowgraph implements a simple half-duplex transceiver.  In order to
switch
the TX/RX antenna switch, I am starting and stopping samples to the USRP
sink
using the Copy block.  When the Copy block is enabled it passes samples to
the USRP sink,
and when disabled it does not copy samples to the USRP sink.

If the Copy block is statically enabled, then the USRP transmits (RED led
'On' for TX/RX)
continuously without any underruns.

If the Copy is statically disabled, then USRP goes into receive mode (GREEN
led 'On' for TX/RX)
and stays in that mode.

So far so good.

However if I toggle the enable/disable on the copy block to disable the
TX/RX switches as it should
from red to green, but after I re-enable the Copy block and leave it
enabled, the TX/RX  LED goes red
for awhile, then rapidly flashes red/green/red etc. while printing UUUUUUU
on the GRC console, then
goes RED for about 5 seconds without underruns, then flashes RED/GREEN
rapidly for 5 or 10 seconds
and underruns, back and forth ad infinitum.

So Copy appears not to be a good way to implement T/R switching.

There is a message port on the USRP sink block.  Can this be used to
implement T/R switching?
Is there some place that the messages that this port accepts defined?  I
cannot seem to find
the syntax for the message definitions in the USRP documentation, so I must
be looking in the wrong place.

-- Tom, N5EG

--0000000000008f2cb2058ce67eab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am trying to use a B205mini in half-duplex mode thr=
ough the TX/RX connector</div><div>from a GRC flowgraph.=C2=A0 Gnuradio 3.7=
.13.4.=C2=A0 Very slow switching, manually implemented.<br></div><div><br><=
/div><div>The flowgraph implements a simple half-duplex transceiver.=C2=A0 =
In order to switch</div><div>the TX/RX antenna switch, I am starting and st=
opping samples to the USRP sink</div><div>using the Copy block.=C2=A0 When =
the Copy block is enabled it passes samples to the USRP sink,</div><div>and=
 when disabled it does not copy samples to the USRP sink.</div><div><br></d=
iv><div>If the Copy block is statically enabled, then the USRP transmits (R=
ED led &#39;On&#39; for TX/RX)</div><div>continuously without any underruns=
.</div><div><br></div><div>If the Copy is statically disabled, then USRP go=
es into receive mode (GREEN led &#39;On&#39; for TX/RX)</div><div>and stays=
 in that mode.</div><div><br></div><div>So far so good.<br></div><div><br><=
/div><div>However if I toggle the enable/disable on the copy block to disab=
le the TX/RX switches as it should</div><div> from red to green, but after =
I re-enable the Copy block and leave it enabled, the TX/RX=C2=A0 LED goes r=
ed <br></div><div>for awhile, then rapidly flashes red/green/red etc. while=
 printing UUUUUUU=C2=A0 on the GRC console, then</div><div> goes RED for ab=
out 5 seconds without underruns, then flashes RED/GREEN rapidly for 5 or 10=
 seconds</div><div> and underruns, back and forth ad infinitum.<br></div><d=
iv><br></div><div>So Copy appears not to be a good way to implement T/R swi=
tching.</div><div><br></div><div>There is a message port on the USRP sink b=
lock.=C2=A0 Can this be used to implement T/R switching?</div><div>Is there=
 some place that the messages that this port accepts defined?=C2=A0 I canno=
t seem to find <br></div><div>the syntax for the message definitions in the=
 USRP documentation, so I must be looking in the wrong place.</div><div><br=
></div><div>-- Tom, N5EG</div><div><br></div><div><br></div></div>

--0000000000008f2cb2058ce67eab--


--===============6518519205601636317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6518519205601636317==--

