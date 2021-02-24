Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBA832459F
	for <lists+usrp-users@lfdr.de>; Wed, 24 Feb 2021 22:14:09 +0100 (CET)
Received: from [::1] (port=54840 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lF1Tx-000456-1z; Wed, 24 Feb 2021 16:14:05 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41952)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <robertbenwilson0@gmail.com>)
 id 1lF1Tu-0003yn-2q
 for usrp-users@lists.ettus.com; Wed, 24 Feb 2021 16:14:02 -0500
Received: by mail-oi1-f179.google.com with SMTP id o3so3887020oic.8
 for <usrp-users@lists.ettus.com>; Wed, 24 Feb 2021 13:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=UPvLqy792x7KlpqZFLJ5b+gO3NiLqQfdFtp3CKcnYIo=;
 b=SrmYr0Q5odLfsiCBGaz2mwVrqZhxuRfJtFruIBPTi+Yw87D2I592ljL8r5gLv1PZMq
 l8FrdSoIti6ndHNgqv+H6ZmG+s7Nj7gzONzARgjxAhCiVyf60JhsKiiLrA8CyLPRNbsQ
 IlYAlbQfyyMf1vrVtzHf1k0dOPAFxSTaFbu3MffY3ocY+3k2RBxCH/B/4brIpbYjNVi7
 I4tAdfVQZrUG12sy56rUiuiuqiTrpf+UfjCDzPUWc2V07p40+kdN6qpO+te9SGyZDue2
 /k0VXU1eNHtPW/1AWO0+h86ly33z89SAwrF+5HdeKGg0LlEosNCE4/sctV19DSDXEB5f
 cpbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=UPvLqy792x7KlpqZFLJ5b+gO3NiLqQfdFtp3CKcnYIo=;
 b=W7fpobIyVT1nBxMnlot0BnGtgboljcrLB/tgex6M30t1Yexql1oYOnpg7pb62NaM8C
 SNwmZYoptuiN7mO1Ta3UJlcr4QHsu/qsqzjonpFJBCWZ1+6rlslPLQBeIoUNBl4WQ6iy
 6Zxowbc1eurgbzwS2cKGx+7gombXTHyM1k5sK7kyGSXe7S86f+hxa1TXLNdNQKA13HMS
 KcQv7d2YLyxflHqqG7Vwr1Zav7Vj+k67OhEO2C8mh+sOwN5fC8dxhxRPNDPfNBbSY5Wy
 s1FXHUQRtW0U6tQCxTfgyNBakhlUwlBRjUTfpU0c5fQMbNsExGJ2woXdGk7XlslAZLpi
 o62g==
X-Gm-Message-State: AOAM531HGL6lzsRKiUE00tluDVDS5o213N2XgYJlRFveu3tXFTGQkARd
 o5CPZlRKcRvVPWb8Kk3WLWVj3qQdFMbxfqYsD+vmg9IjHoM=
X-Google-Smtp-Source: ABdhPJyz7Paiq5BKXWe6ovJCiH0RL/cQhUh8EgdkJdxselP88tpdIOqvVKz0FfOJLlbCazjqqB6ivap24Zbx5O5aZ8o=
X-Received: by 2002:aca:4508:: with SMTP id s8mr4091374oia.118.1614201200944; 
 Wed, 24 Feb 2021 13:13:20 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 24 Feb 2021 16:13:11 -0500
Message-ID: <CAGJu-nYEyAcMQYwZUzp5Tr58UNyj4+=oHV=c_17EQj6UUWP3Rw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Software Loopback RFNoC TX/RX same flowgraph
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
From: Robert Wilson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Wilson <robertbenwilson0@gmail.com>
Content-Type: multipart/mixed; boundary="===============3385669093394426875=="
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

--===============3385669093394426875==
Content-Type: multipart/alternative; boundary="0000000000002daa8505bc1b81ff"

--0000000000002daa8505bc1b81ff
Content-Type: text/plain; charset="UTF-8"

Hello,

OS: Linux Ubuntu 20.04
GRC: 3.8
UHD: 4.0
USRP: X310 with two UBX-160 daughterboards

Attempting to receive and repeat a spectrum with low latency without using
RX/TX streamers with RFNoC in GnuRadio.
Currently using the default x310 image core.
Steps I have taken to do this:
Shown that I can receive correct signal with a RX-Radio RFNoC Block ->DDC
RFNoC->Rx Streamer.
Also shown that I can transmit correct signal via TX Streamer-.>DUC
RFNoC->TX-Radio RFNoC Block.
However, when attempting  RX-Radio RFNoC Block ->DDC RFNoC-> DUC
RFNoC->TX-Radio RFNoC Block, there is no signal output and no TX/RX RX2
link lights.
Changing the Block Instances to match the existing default x310 image core
Static connections made the flow graph run, but again with no lights or
output.

I found (through this mailing list) relevant material on this, the "Stupid
RFNoC Tricks: Loopback"  in removing timestamps on received signals.
https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/

But, the current UHD build does not have the same filesystem or files (from
what I can tell).

Looking for guidance or reference in order to build this repeater.

Robert

--0000000000002daa8505bc1b81ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>OS: Linux Ubuntu 20.0=
4<br></div><div>GRC: 3.8</div><div>UHD: 4.0</div><div>USRP: X310 with two U=
BX-160 daughterboards</div><div><br></div><div>Attempting to receive and re=
peat a spectrum with low latency without using RX/TX streamers with RFNoC i=
n GnuRadio.</div><div>Currently using the default x310 image core.=C2=A0=C2=
=A0<br></div><div>Steps I have taken to do this:</div><div></div><div>Shown=
 that I can receive correct signal with a RX-Radio RFNoC Block -&gt;DDC RFN=
oC-&gt;Rx Streamer.</div><div>Also shown that I can transmit correct signal=
 via TX Streamer-.&gt;DUC RFNoC-&gt;TX-Radio RFNoC Block.</div><div>However=
, when attempting=C2=A0

RX-Radio RFNoC Block -&gt;DDC RFNoC-&gt;

DUC RFNoC-&gt;TX-Radio RFNoC Block, there is no signal output and no TX/RX =
RX2 link lights.</div><div>Changing the Block Instances to match the existi=
ng default x310 image core Static connections made the flow graph run, but =
again with no lights or output.=C2=A0=C2=A0</div><div><br></div><div>I foun=
d (through this mailing list) relevant material on this, the &quot;Stupid R=
FNoC Tricks: Loopback&quot;=C2=A0 in removing timestamps on received signal=
s.=C2=A0</div><div><a href=3D"https://corvid.io/2017/04/22/stupid-rfnoc-tri=
cks-loopback/">https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/</=
a><br></div><div><br></div><div>But, the current UHD build does not have th=
e same filesystem or files (from what I can tell).=C2=A0</div><div><br></di=
v><div>Looking for guidance or reference in order to build this repeater.</=
div><div><br></div><div>Robert</div><div><br></div><div><br></div><div>=C2=
=A0</div></div>

--0000000000002daa8505bc1b81ff--


--===============3385669093394426875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3385669093394426875==--

