Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2633481792E
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 18:52:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDF9C3856C8
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 12:52:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702921933; bh=OzAvhkoh5E0omM4TDP0819hzgIwA+obnHxUeS/5H+z0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rDPI6Rykc8onoE13cwY66jMausgG1LRLHA2s25/IvnXpi/GdTu8b/G7YUttFDMv0B
	 sdq1qFrJZRukVNiGWg7LX5zo/Tnix3ICfWm39wvgi6/tWzpn9QrELO67SQOLCuUNNl
	 h59sPRhqh7ig3Vq7qRq43W5t41bSFYRYs94sconS8V+Taz/0M2y8ZI3gbB1xguGlif
	 R3vsAL0dD1osQeD29P0Zat3h1BKm/O3jS1kRf5HqVPow1PY9ZYmp81A9QLmrNjJdAc
	 fRIg6evkyd5AXdI82etUFK4rYa9LYO0kQpdxSLFk8Biijiwvc4CpPcrCOvhBTNJnw0
	 hKaRmEfPZxRAQ==
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 288AE385366
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 12:51:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WFc8GanU";
	dkim-atps=neutral
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3b9e2a5e8faso1463134b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 09:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702921891; x=1703526691; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=unrHkiVjQizr4MqnmCRnWL/7LjuRXrJ1c207PDTGWMY=;
        b=WFc8GanU6s3l3p45ZEELeCUxyk2Du2Jx40uF1Qy9M/khpFqLaVE4I5zIfUchu0D8V9
         7kaLY6HnQPwKxZzvp8HoQZ8hscZLc4nPaiDmDDAmPz8T/2Qjvw+QlKJ7mx7jtJM7R1vV
         QnGnhLZkkMZXPsZnyihs1t7DNikd500yjyB98oVp6eWp1IPsKIFHE4G2tFYZzi/3reJE
         cPR/HITPwSXjP9KP/GKn/DWSB1fZcnwQgGDp9inBYdfev24cdB/91OcwzuKh8XnIx4qM
         KbDbQi89XcEg4PvSUBSF5yqO1RsY/jO5s0p85H3i3y9MEBB5bWneNlkCJLnmNKTm5CoW
         aFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702921891; x=1703526691;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=unrHkiVjQizr4MqnmCRnWL/7LjuRXrJ1c207PDTGWMY=;
        b=ejRNaLfqsCnDuNZflOYfd6DHhg+/tLZVPCQCxCncaAsplDxu9JkBLi1z3BKnShmxnF
         6KrCLcNIK/+/9sTy/Fyh8suXw6CK0/uti2CTN9yDzmA4SnJRy14kaBhjoROUb/ATel2j
         GaR4J1WjLwDaLef4QyoY9+L55YsxMtAssQezLUTJ6avi/DSaEbV9pF0vH2n210wGg7u4
         YAS+GYfYpv0Z+W3MrrCGu3wJR/AIDHXhO0fMk9RAYOIJl6Vcvk/uSOTI+BD6Rdcp/T/D
         BLtXbL+OZ6/AEMPKSrQNS990MeMzeBdvL1lQ0muxF3p4QsSNTURBxmYkXXo0PlrVNMDz
         MIFA==
X-Gm-Message-State: AOJu0YyrCFi7ZUQAvAzjbdaW2RKNh2Z+iOtA6clSUNr/vFr1FlcTePS4
	HV8fKJlgjxdvhLW/uPT8O0/sva5SK2z05SYaBIT7ddSX
X-Google-Smtp-Source: AGHT+IFqa8evlWiq3SfS6/XhMUUFRaTOtJxR56zf9/GUNFW3O52mOiSMge3gNEN5wQ+hwzUa738SCBnzYnvO1WuTsVs=
X-Received: by 2002:a05:6808:f8b:b0:3ba:2508:abb1 with SMTP id
 o11-20020a0568080f8b00b003ba2508abb1mr3874962oiw.55.1702921891259; Mon, 18
 Dec 2023 09:51:31 -0800 (PST)
MIME-Version: 1.0
From: German Farinas <german.farinas@gmail.com>
Date: Mon, 18 Dec 2023 12:51:19 -0500
Message-ID: <CAJx0LdU6RtiRxq=DveYK84-aOxC5xFONDFEYTrn0RK6H0_MBCg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DKVBRRYD3QM6F3VXYDZGXMFBXAKL4EQ6
X-Message-ID-Hash: DKVBRRYD3QM6F3VXYDZGXMFBXAKL4EQ6
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building fpga image with online one Ethernet interface
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKVBRRYD3QM6F3VXYDZGXMFBXAKL4EQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8685441309688172622=="

--===============8685441309688172622==
Content-Type: multipart/alternative; boundary="00000000000068aae8060ccc6617"

--00000000000068aae8060ccc6617
Content-Type: text/plain; charset="UTF-8"

Hello All,

I have a USRP x300 and I want to build my custom image. I would like to
drive an array of 4 Tx/Rx antennas in the HF band for ionospheric research,
i.e beam steering monostatic pulse radar.

This is my idea for a custom built:

Since I will use 4 daughterboards 2 LFTX and 2 LFRX mounted on the X300.
Each LFTX or LFRX have 2 port that can be used independently or as a single
I/Q input. I will use it independently. Then, I will have available 4 Rx
ports and 4 Tx ports. The Radio connections would be the following:

For the receiver chain: Radio 0 port 0, Radio 0 port 1, Radio 0 port 2 and
Radio 0 port 3 would be connected to an adder, the output of the adder to a
DDC chain, and the output of the DDC chain to a streamer. In that way all 4
Rx signal would be summed before passing through the DDC chain and I would
save space in FPGA.

For the transmitter chain the only difference is that I would connect the
output of the DUC to a delay line filter and from there extract the 4
outputs to the 4 Tx ports available on the daughterboards. This delay line
should be configurable since from there I would change the steering of the
beam.

Also I would like to use only one 1Gb Ethernet and not both, so I could
save FPGA space. In summary this would be the rfnoc blocks: 2 Radio
interfaces, 1 DDC, 1DUC, 1 custom delay line block, and only 1Gb interface.
I think this may occupy less space than the default image.  One of the many
doubts that I have is about the radio interfaces, in the default image
these radio interfaces have only 2 port, for example Radio 0:0 and Radio
0:1, but I would need also Radio 0:2 and Radio 0:3. The same for Radio 1: 0
to 3. Because I will use all the ports availables in the doughterboards.

I know this is a general and tricky question and I apologize in advance.
But any any help would be very appreciated.

Best,
German

--00000000000068aae8060ccc6617
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello All,<div dir=3D"auto"><br></div><div dir=3D"auto">I=
 have a USRP x300 and I want to build my custom image. I would like to driv=
e an array of 4 Tx/Rx antennas in the HF band for ionospheric research, i.e=
 beam steering monostatic pulse radar.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">This is my idea for a custom built:</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Since I will use 4 daughterboards 2 LFTX and 2 L=
FRX mounted on the X300. Each LFTX or LFRX have 2 port that can be used ind=
ependently or as a single I/Q input. I will use it independently. Then, I w=
ill have available 4 Rx ports and 4 Tx ports. The Radio connections would b=
e the following:=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">F=
or the receiver chain: Radio 0 port 0, Radio 0 port 1, Radio 0 port 2 and R=
adio 0 port 3 would be connected to an adder, the output of the adder to a =
DDC chain, and the output of the DDC chain to a streamer. In that way all 4=
 Rx signal would be summed before passing through the DDC chain and I would=
 save space in FPGA.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">For the transmitter chain the only difference is that I would connect th=
e output of the DUC to a delay line filter and from there extract the 4 out=
puts to the 4 Tx ports available on the daughterboards. This delay line sho=
uld be configurable since from there I would change the steering of the bea=
m.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Also I would like to =
use only one 1Gb Ethernet and not both, so I could save FPGA space. In summ=
ary this would be the rfnoc blocks: 2 Radio interfaces, 1 DDC, 1DUC, 1 cust=
om delay line block, and only 1Gb interface. I think this may occupy less s=
pace than the default image.=C2=A0 One of the many doubts that I have is ab=
out the radio interfaces, in the default image these radio interfaces have =
only 2 port, for example Radio 0:0 and Radio 0:1, but I would need also Rad=
io 0:2 and Radio 0:3. The same for Radio 1: 0 to 3. Because I will use all =
the ports availables in the doughterboards.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">I know this is a general and tricky question and I apol=
ogize in advance. But any any help would be very appreciated.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Best,</div><div dir=3D"auto">German</=
div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div>

--00000000000068aae8060ccc6617--

--===============8685441309688172622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8685441309688172622==--
