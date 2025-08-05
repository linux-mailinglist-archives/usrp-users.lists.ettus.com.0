Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2486CB1B64C
	for <lists+usrp-users@lfdr.de>; Tue,  5 Aug 2025 16:23:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA734385F92
	for <lists+usrp-users@lfdr.de>; Tue,  5 Aug 2025 10:23:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754403797; bh=Krl53rvY8H0Yn9QsS7kMBYWRa4PZHVL3dTQRluMJyoA=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=LZ+eGjrEhxkU/6P8uQH++rTzBzDvip0DQjcbL9CCEcqVHm7FgipxTkFd3Ftdau0qa
	 as8agctX6aAhQnnQnFMS9Ko07S1sPoaJoLGud9Inlyhj9P3+4Vq+7/xL02O6KpEuCX
	 A5F77pc6BqqZko5jAqjpUstosgqsd8juP1J85GGDgZ1NkmqJ0xQ3fj++YiadO4zRWv
	 025mpwD+x0J0Zrt65GAngKd0ixj+SlP+U6o2WajxcN2wiYjNrpJY07cWd4LWqSBfZT
	 97s8nFvrrfrYjC+qJ0wqiaZvmD1Vt1zLM+LLGnpJ1C2AWjSgQaKGidpdgGZAr8JxI3
	 vKXnWt1E95lwA==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C728385CA8
	for <usrp-users@lists.ettus.com>; Tue,  5 Aug 2025 10:22:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GCu12Qcv";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-af939afe5efso555054866b.2
        for <usrp-users@lists.ettus.com>; Tue, 05 Aug 2025 07:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1754403749; x=1755008549; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rBO4zr/gYWbCTul71WngOpU2DUqioPNmrk7X3W3coI8=;
        b=GCu12QcvH6V/lqUOErXF7epubnYu3ctI1cPojUwXICAGV8tj12pfgNdXfVo+gJ/a4e
         Lq22psQQnCGhweN5cVQaQ+5A26ZJzIKWFlmCFeQdKs+lMB8G1bG48tl5m0D08491M+b/
         Wf1OLKQ7iiaHMM+EFnydiB+IGIbUxn//SpVZoRJLvHY2AC7+Aux7bD967R63vXPD6Nj8
         eC40/PE+XbSJXvG30ijKnwK8CxAm4b5kdlbprvAAmD1ZGyVEGV7x2Zkx5m9mXaZb02n8
         eBp+irufimxKFluHfeslFyYFOa+SDbJ5yL6aTb8sjgk/1ytt9LFwpeIJxZ/h+JTZBm3y
         GH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754403749; x=1755008549;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rBO4zr/gYWbCTul71WngOpU2DUqioPNmrk7X3W3coI8=;
        b=NFxVpSAmVx0Z0ZobmzWd9FqMGry/VN88TxObZuYsUrAhZRDCws9LhSRfo6t+eU7Oxa
         G7lU4vYMt2Z96kCoHe10RmyQhbfxpkbxeAwRG8Q/dOZZHn6nwM0gpVzewqtWXvXFkB23
         z1tykEOLnqrCW/VRNnSeqIUWHswk2KdZrqS3X4LQXrMWiWIjuYu/OT9/na4/ZF4cf+yk
         YcNdmJRnuFxaGj7yGnODeXvWc0zCC1oQbfLVrHV/rmCOkd2j3Ng6XNYm58zcoE52XLcN
         gmcHQ2ufgTCz5swBna/HSyP/PqX/HgrELeyG+xHBjvltKENdRY+Gf/LVxEKbf73Z9v3R
         rEFQ==
X-Gm-Message-State: AOJu0YxKkpgWmclbLCrScCbjt7kdFFSBOc59kRmADgVZgmeO/HsBmH6V
	Y3+sEQGGfKvNIePTQ6ImCqLJlipixC3MV1eV3mDf8flcYrt+NYLzAxUXmhyuBGIvmjwymZdIDhI
	lBPCi4MiIm9jbj48QspZzWt41Lg5mpOGrdwCMN2Xcf3vN8DTu20ZYJQ==
X-Gm-Gg: ASbGncumlIL3upcyp/P+JEuPG9PAdfP9g4at7V8mRsomy/V1yAQyu0PxkBMBjsaUpd5
	Jx8rYCaAJ+aV1CfuP/vDeuIq18ciiBqbkqFYFItVgOv2uHfGT1wCs+KF3kESRWnYMCPfN5MtXJU
	O7yCIWUETqiwwdDqYROP4xL+jhFwp42AfbXoKN7Qr40QGFXH4mkLhUC7VkNze54v/NBrdOpQnM7
	AiGyUf8snWvAuuU9g==
X-Google-Smtp-Source: AGHT+IFhTQWnqjFUqK6FUpyj7UVUbi2BkUi/HG+AnBgK4sznedz3gxNeSbFcmwwWGieYudHgIJ/gRFn5fHH387vuazM=
X-Received: by 2002:a17:907:7295:b0:ae0:a116:b9d3 with SMTP id
 a640c23a62f3a-af9401f48a8mr1386716566b.60.1754403748618; Tue, 05 Aug 2025
 07:22:28 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 5 Aug 2025 10:22:16 -0400
X-Gm-Features: Ac12FXws-3bKD7RwnOTefvwDrLaxkzJQeK7Tc-49L-vGkYS5g7UywClHpAs3VXQ
Message-ID: <CAB__hTSX9oOegJq6XvHty8U=UzJAvLc=xtAg4r4fhsQrRt0-eg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: OSH3Z4PQBZGSSMYPZ2LO37WNOZZFMEUN
X-Message-ID-Hash: OSH3Z4PQBZGSSMYPZ2LO37WNOZZFMEUN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using Replay block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OSH3Z4PQBZGSSMYPZ2LO37WNOZZFMEUN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0403005068098769620=="

--===============0403005068098769620==
Content-Type: multipart/alternative; boundary="0000000000003ac048063b9ef41c"

--0000000000003ac048063b9ef41c
Content-Type: text/plain; charset="UTF-8"

Hi,
I recently received and starting using an X410.  I noticed that my custom
software does not work when using the Replay block for playout in the
transmit path (Replay=>DUC=>Radio). This software works with all of our
other USRPs including N310, X310, and N321.  I don't get any error
messages, but the transmit light simply does not turn on and there is no RF
coming out.

I then tried rfnoc_replay_samples_from_file (see command line and terminal
output below).  This also does not show any error message but the transmit
light does not turn on and there is no RF.

I then tried tx_samples_from_file (see command line and terminal output
below). This produces an error message "Cannot forward action tx_event from
0/Radio#0:INPUT_EDGE:0, no neighbour found!".

Note that I am able to get RF output (and Tx light on) if I use the
multi_usrp object (which sends the Tx samples real-time across the Ethernet
link). I am also able to get RF output (and Tx light on) if I use the
rf_siggen_gui utility.

I'm wondering if anyone can confirm that they are using the Replay block as
a playout memory on the X410.  Any ideas what may be happening?

Rob

Command line and terminal output from "rfnoc_samples_from_file"
chisum-gnb@chisumgnb-Precision-5860-Tower:~$ rfnoc_replay_samples_from_file
--freq 5800e6 --rate 30.72e6 --gain 50 --file
~/Documents/waveforms/mtone_100_0p8_1.bin

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
UHD_4.8.0.0-0ubuntu1~noble1
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.20.2,type=x4xx,product=x410,serial=3498DB3,name=ni-x4xx-3498DB3,fpga=UC_200,claimed=False,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=UC_200,mgmt_addr=192.168.20.2,name=ni-x4xx-3498DB3,product=x410,clock_source=internal,time_source=internal,initializing=True'.
Using Radio Block:  0/Radio#0, channel 0
Using Replay Block: 0/Replay#0, channel 0
Using DUC Block:    0/DUC#0, channel 0
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Active connections:
* 0/DUC#0:0==>0/Radio#0:0
* 0/Replay#0:0-->0/DUC#0:0
* TxStreamer#0:0-->0/Replay#0:0
Requesting TX Freq: 5800.000000 MHz...
TX Freq at Radio: 5800.000000 MHz...

Requesting TX Rate: 30.720000 Msps...
DUC block found.
  Interpolation value is 8
Actual TX Rate: 30.720000 Msps...

Requesting TX Gain: 50.000000 dB...
Actual TX Gain: 50.000000 dB...

Replay file size:     2000 bytes (250 qwords, 500 samples)
Record base address:  0x0
Record buffer size:   2000 bytes
Record fullness:      0 bytes

Emptying record buffer...
Record fullness:      0 bytes

Sending data to be recorded...
Waiting for recording to complete...
Record fullness:      2000 bytes

Issuing replay command for 500 samps in continuous mode...
Replaying data (Press Ctrl+C to stop)...


Command line and terminal output using "tx_samples_from_file"
chisum-gnb@chisumgnb-Precision-5860-Tower:~$ tx_samples_from_file --freq
5800e6 --rate 30.72e6 --gain 50 --file
~/Documents/waveforms/mtone_100_0p8_1.bin

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
UHD_4.8.0.0-0ubuntu1~noble1
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.20.2,type=x4xx,product=x410,serial=3498DB3,name=ni-x4xx-3498DB3,fpga=UC_200,claimed=False,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=UC_200,mgmt_addr=192.168.20.2,name=ni-x4xx-3498DB3,product=x410,clock_source=internal,time_source=internal,initializing=True'.
Using Device: Single USRP:
  Device: X400-Series Device
  Mboard 0: x410
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: 0
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: 1
  RX Channel: 2
    RX DSP: 2
    RX Dboard: B
    RX Subdev: 0
  RX Channel: 3
    RX DSP: 3
    RX Dboard: B
    RX Subdev: 1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: 0
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: 1
  TX Channel: 2
    TX DSP: 2
    TX Dboard: B
    TX Subdev: 0
  TX Channel: 3
    TX DSP: 3
    TX Dboard: B
    TX Subdev: 1

Setting TX Rate: 30.720000 Msps...
Actual TX Rate: 30.720000 Msps...

Setting TX Freq: 5800.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 5800.000000 MHz...

Setting TX Gain: 50.000000 dB...
Actual TX Gain: 50.000000 dB...

Checking TX: all_los: locked ...
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.

Done!

[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action tx_event from
0/Radio#0:INPUT_EDGE:0, no neighbour found!
chisum-gnb@chisumgnb-Precision-5860-Tower:~$

--0000000000003ac048063b9ef41c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I recently received and starting using =
an X410.=C2=A0=C2=A0I noticed that my custom software does not work when us=
ing the Replay block for playout in the transmit path (Replay=3D&gt;DUC=3D&=
gt;Radio). This software works with all of our other USRPs including N310, =
X310, and N321.=C2=A0 I don&#39;t get any error messages, but the transmit =
light simply does not turn on and there is no RF coming out.</div><div><br>=
</div><div>I then tried rfnoc_replay_samples_from_file (see command line an=
d terminal output below).=C2=A0 This also does not show any error message b=
ut the transmit light does not turn on and there is no RF.</div><div><br></=
div><div>I then tried tx_samples_from_file (see command line and terminal o=
utput below). This produces an error message &quot;Cannot forward action tx=
_event from 0/Radio#0:INPUT_EDGE:0, no neighbour found!&quot;.</div><div><b=
r></div><div>Note that I am able to get RF output (and Tx light on) if I us=
e the multi_usrp object (which sends the Tx samples real-time across the Et=
hernet link). I am also able to get RF output (and Tx light on) if I use th=
e rf_siggen_gui utility.</div><div><br></div><div>I&#39;m wondering if anyo=
ne can confirm that they are using the Replay block as a playout memory on =
the X410.=C2=A0 Any ideas what may be happening?</div><div><br></div><div>R=
ob</div><div><br></div><div>Command line and terminal output from &quot;rfn=
oc_samples_from_file&quot;</div><div><span style=3D"font-family:monospace;c=
olor:rgb(0,0,255)">chisum-gnb@chisumgnb-Precision-5860-Tower:~$ rfnoc_repla=
y_samples_from_file --freq 5800e6 --rate 30.72e6 --gain 50 --file ~/Documen=
ts/waveforms/mtone_100_0p8_1.bin <br><br>Creating the RFNoC graph with args=
: ...<br>[INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300; UHD_4.8.=
0.0-0ubuntu1~noble1<br>[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D192.168.20.2,type=3Dx4xx,product=3Dx410,serial=3D3498=
DB3,name=3Dni-x4xx-3498DB3,fpga=3DUC_200,claimed=3DFalse,addr=3D192.168.20.=
2<br>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DUC_2=
00,mgmt_addr=3D192.168.20.2,name=3Dni-x4xx-3498DB3,product=3Dx410,clock_sou=
rce=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.<br>Using Ra=
dio Block: =C2=A00/Radio#0, channel 0<br>Using Replay Block: 0/Replay#0, ch=
annel 0<br>Using DUC Block: =C2=A0 =C2=A00/DUC#0, channel 0<br>[WARNING] [0=
/Radio#0] Attempting to set tick rate to 0. Skipping.<br>Active connections=
:<br>* 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>* 0/Replay#0:0--&gt;0/DUC#0:0<br>*=
 TxStreamer#0:0--&gt;0/Replay#0:0<br>Requesting TX Freq: 5800.000000 MHz...=
<br>TX Freq at Radio: 5800.000000 MHz...<br><br>Requesting TX Rate: 30.7200=
00 Msps...<br>DUC block found.<br>=C2=A0 Interpolation value is 8<br>Actual=
 TX Rate: 30.720000 Msps...<br><br>Requesting TX Gain: 50.000000 dB...<br>A=
ctual TX Gain: 50.000000 dB...<br><br>Replay file size: =C2=A0 =C2=A0 2000 =
bytes (250 qwords, 500 samples)<br>Record base address: =C2=A00x0<br>Record=
 buffer size: =C2=A0 2000 bytes<br>Record fullness: =C2=A0 =C2=A0 =C2=A00 b=
ytes<br><br>Emptying record buffer...<br>Record fullness: =C2=A0 =C2=A0 =C2=
=A00 bytes<br><br>Sending data to be recorded...<br>Waiting for recording t=
o complete...<br>Record fullness: =C2=A0 =C2=A0 =C2=A02000 bytes<br><br>Iss=
uing replay command for 500 samps in continuous mode...<br>Replaying data (=
Press Ctrl+C to stop)...<br></span></div><div><br></div><div><br></div><div=
>Command line and terminal output using &quot;tx_samples_from_file&quot;</d=
iv><div><span style=3D"font-family:monospace;color:rgb(153,0,255)">chisum-g=
nb@chisumgnb-Precision-5860-Tower:~$ tx_samples_from_file --freq 5800e6 --r=
ate 30.72e6 --gain 50 --file ~/Documents/waveforms/mtone_100_0p8_1.bin <br>=
<br>Creating the usrp device with: ...<br>[INFO] [UHD] linux; GNU C++ versi=
on 13.3.0; Boost_108300; UHD_4.8.0.0-0ubuntu1~noble1<br>[INFO] [MPMD] Initi=
alizing 1 device(s) in parallel with args: mgmt_addr=3D192.168.20.2,type=3D=
x4xx,product=3Dx410,serial=3D3498DB3,name=3Dni-x4xx-3498DB3,fpga=3DUC_200,c=
laimed=3DFalse,addr=3D192.168.20.2<br>[INFO] [MPM.PeriphManager] init() cal=
led with device args `fpga=3DUC_200,mgmt_addr=3D192.168.20.2,name=3Dni-x4xx=
-3498DB3,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,init=
ializing=3DTrue&#39;.<br>Using Device: Single USRP:<br>=C2=A0 Device: X400-=
Series Device<br>=C2=A0 Mboard 0: x410<br>=C2=A0 RX Channel: 0<br>=C2=A0 =
=C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: =
0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Db=
oard: A<br>=C2=A0 =C2=A0 RX Subdev: 1<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=
=A0 RX DSP: 2<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: 0<b=
r>=C2=A0 RX Channel: 3<br>=C2=A0 =C2=A0 RX DSP: 3<br>=C2=A0 =C2=A0 RX Dboar=
d: B<br>=C2=A0 =C2=A0 RX Subdev: 1<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0=
 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: 0<br>=
=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard:=
 A<br>=C2=A0 =C2=A0 TX Subdev: 1<br>=C2=A0 TX Channel: 2<br>=C2=A0 =C2=A0 T=
X DSP: 2<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: 0<br>=C2=
=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 3<br>=C2=A0 =C2=A0 TX Dboard: B<=
br>=C2=A0 =C2=A0 TX Subdev: 1<br><br>Setting TX Rate: 30.720000 Msps...<br>=
Actual TX Rate: 30.720000 Msps...<br><br>Setting TX Freq: 5800.000000 MHz..=
.<br>Setting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 5800.000000 M=
Hz...<br><br>Setting TX Gain: 50.000000 dB...<br>Actual TX Gain: 50.000000 =
dB...<br><br>Checking TX: all_los: locked ...<br>[WARNING] [0/Radio#0] Atte=
mpting to set tick rate to 0. Skipping.<br><br>Done!<br><br>[WARNING] [RFNO=
C::GRAPH::DETAIL] Cannot forward action tx_event from 0/Radio#0:INPUT_EDGE:=
0, no neighbour found!<br>chisum-gnb@chisumgnb-Precision-5860-Tower:~$ <br>=
</span><br></div></div>

--0000000000003ac048063b9ef41c--

--===============0403005068098769620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0403005068098769620==--
