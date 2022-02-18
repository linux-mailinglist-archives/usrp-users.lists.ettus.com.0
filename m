Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1014BB9E6
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 14:13:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7F4A3845A3
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 08:13:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qmp4dcg9";
	dkim-atps=neutral
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id EF60B3845A3
	for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 08:12:45 -0500 (EST)
Received: by mail-ed1-f52.google.com with SMTP id m17so15335517edc.13
        for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 05:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=BakAtvQ+S+9bqGar2XH6zBmE7rxctvAI3OemFCMmWfk=;
        b=Qmp4dcg9KVvdWGTvjRaLOU4VNzX493RgDtRJRoIS4/lSe+LhkC5vjTILrZMwIN1M0k
         h0uAL+Q92OT5rkBbpZ7XqsqRSc5V81Pu8XnuTPlnjl7JibrdHwRj+eFh3K5EhNGRbyeT
         vX2w7uYvqxwVFLOuBfXVLQ479IjB6P6tQgWw44aPZCNWVdk25wRIVbEK71EBSeCp92r9
         ZJ6XOaEiO/86vx+a57G2a8f5836wJY/EVIyio6BkeNEfnpp7evYdoswQ2PqQOH6GDm7C
         exaMjGLS8TT2orETyb2zsm0dPNx4XPtj8L3mh1IM590EPbDlr/Lxqge6MVVeVX7D9oCK
         St8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BakAtvQ+S+9bqGar2XH6zBmE7rxctvAI3OemFCMmWfk=;
        b=a7NkpDB0IzWAgvZPOv5ydDDDgkj/e9HJSpzdmc6m7HTG1zyf7XcQEIBgtGYANr3VMO
         /HemIeVQj5tj8JzKnefzjFvTEsdqeQDUeBzFKcxZ4a8a9aTtGEim6lYz/5dJkfNYLd2L
         Rhu9KEiPD6LTIUon/GL7GVsvE6rqL1EhDHXttlv4SocoNb9ubyIcUYFyQVxmYnViajp+
         O7F/n2pQhX25num8cKDGnNrUwOkL6nxdnbt6zHX/06HWJt0QEzHsi+Xe04mBrBJhD4lS
         u+Gp79DO3kHH9BBulxY2wwezxvYI9fuoiYspb8OV9e59/9JVq2w08GfpgwrbjzKjBXcL
         ZWTg==
X-Gm-Message-State: AOAM531C5+GxMsYe/QdaWAh4ekR7jWWmamFx/TM2pFvpaFdQBfPBpEX2
	hTTC+mGSfToY7Yvr6jpAtbPdrQQR4nAPVSMW+s1B2KwPkAI=
X-Google-Smtp-Source: ABdhPJxlgcFekrduygo33ea25UvGJ1I8+sp8a65Q3SaK5zUZ5tE9KqxogpMYod2K9n4J4padTm/oQ9+fVinHrHpW5ZQ=
X-Received: by 2002:a50:9ea8:0:b0:3e2:9df7:3a6c with SMTP id
 a37-20020a509ea8000000b003e29df73a6cmr8023200edf.384.1645189964278; Fri, 18
 Feb 2022 05:12:44 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Fri, 18 Feb 2022 14:12:32 +0100
Message-ID: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 5ZLLQRGTADVTGZ3IWDXWRZWFNADYFNIA
X-Message-ID-Hash: 5ZLLQRGTADVTGZ3IWDXWRZWFNADYFNIA
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ZLLQRGTADVTGZ3IWDXWRZWFNADYFNIA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0750252958897936058=="

--===============0750252958897936058==
Content-Type: multipart/alternative; boundary="00000000000068b2f705d84aa38b"

--00000000000068b2f705d84aa38b
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receiving
samples through an RX RFNoC Radio block and performing some processing in a
custom RFNoC block.
I have created my block using rfnocmodtool, modifying the Verilog and yml
files for my custom block. I left the cpp and hpp files as default, but I
copied them to the UHD install path to see the name of my block with
uhd_usrp_probe.
I have tested satisfactorily my custom block with a gnuradio graph like
this:

Host block => rfnoc tx streamer => custom RFNoC block => rfnoc rx streamer
=> Host block

I have also tested it for transmission through the rfnoc tx radio, and
works fine:

Host block => rfnoc tx streamer => custom RFNoC block => RFNoC DUC=> RFNoC
TX Radio

But when I try to receive from the radio with the following graph, rx led
does not light up and gnuradio give time out:
RFNoC RX Radio =>  RFNoC DDC   => custom RFNoC block =>  rfnoc rx streamer
=>Host block

If I remove my custom block from the last graph, I can receive samples and
the led is on.

It seems like the custom block is blocking somehow the samples. I tried
with different sampling rates and spp values for the radio but nothing
works.

Any help on this will be appreciated.

Kind Regards,

Maria

--00000000000068b2f705d84aa38b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using a USRP E320 with =
UHD 4.0 and GNURadio 3.8 for receiving samples=C2=A0through=C2=A0an RX RFNo=
C Radio block and performing some processing in a custom RFNoC block.</div>=
<div>I have created my block using rfnocmodtool, modifying the Verilog and =
yml files for my custom block. I left the cpp and hpp files as default, but=
 I copied them to the UHD install path to see the name of my block with uhd=
_usrp_probe.</div><div>I have tested satisfactorily my custom block with a =
gnuradio graph like this:</div><div><br></div><div>Host block =3D&gt; rfnoc=
 tx streamer =3D&gt; custom RFNoC block =3D&gt; rfnoc rx streamer =3D&gt; H=
ost block</div><div><br></div><div>I have also tested it for transmission=
=C2=A0through the rfnoc tx radio, and works fine:</div><div><br></div><div>=
Host block =3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC block =3D&gt; RFN=
oC DUC=3D&gt; RFNoC TX Radio<br></div><div><br></div><div>But when I try to=
 receive from the radio with the following graph, rx led does not light up =
and gnuradio give time out:</div><div>RFNoC RX Radio =3D&gt;=C2=A0

RFNoC DDC=C2=A0=C2=A0=C2=A0=3D&gt; custom RFNoC block =3D&gt;=C2=A0=C2=A0rf=
noc rx streamer =3D&gt;Host block</div><div><br></div><div>If I remove my c=
ustom block from the last graph, I can receive samples and the led is on.</=
div><div><br></div><div>It seems like the custom block is blocking somehow =
the samples. I tried with different sampling rates and spp values for the r=
adio but nothing works.=C2=A0</div><div><br></div><div>Any help on this wil=
l be appreciated.</div><div><br></div><div>Kind Regards,</div><div><br></di=
v><div>Maria</div></div>

--00000000000068b2f705d84aa38b--

--===============0750252958897936058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0750252958897936058==--
