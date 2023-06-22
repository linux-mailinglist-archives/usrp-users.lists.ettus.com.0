Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F8C7394D0
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jun 2023 03:44:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B1B7384A5F
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 21:44:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687398243; bh=syncMkxPLpPm+Hss8IOd/LFZewjXBsoKBGMa59lm9g0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k9HgLsX4Cz1KiQyChaSHVQ9S0589mfznTsgScxZdyMjdWeQB/JWDUTFFYflLMuJ6K
	 bLr+AH7m1XuNLeZRQE419FpsX5A64nOGuwYKZU9/9Hc19DShOj99RdXj3rH+/u1mBb
	 dmw4IYVmPACSXx27AFLpTSu9I5EqaevAIKy2FjjRMxkDeW/23xMIrqk+x74enS/p3y
	 jw4KiL1+fsrjaJFsJH9SB7u/lOUFo8CZkBQfwp4zdqcBhWHYXTGnW4y7/g8fQTbNfA
	 jKusExsFyQAsODllc3xrQr/BGOtLyJhIVs8PU+O0cUdlQeYI8yb+xIz86UDqbiOR3P
	 PTHEHQ0TS7cZw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AB183849D9
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 21:43:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20221208.gappssmtp.com header.i=@dolphinsystem-jp.20221208.gappssmtp.com header.b="w1P6fmqI";
	dkim-atps=neutral
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3a034580aafso2819453b6e.0
        for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 18:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20221208.gappssmtp.com; s=20221208; t=1687398187; x=1689990187;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IHF/1IfQeiUSNdCW7Rv/+TiaBICP/b/piMionI5lVxE=;
        b=w1P6fmqIRcYiWyJE2lSBQgVKWOqLDWQVL6G9O/3tsX40qJCSQXLRVN6IOEQ2s3Ec3W
         MTMmMQxKYy1T/T6MjRNsXLS7qIo54DKiGS8qzcUnfLSphjiG3N0ih5QzNcK3pD+QbVq1
         KrkUYFfg91esvcqYj2tDt4M/FwJf65szW41FNgNpcC99uhuDC0ACA0bXNBgdTrGDwOeI
         9IW19SM0S7J8hREyRo07faLFCVrfSedXXTxidYIkB37WSDx3EDrsIVEFi6JtiLzzGmAX
         0dS/XcDYgSyUcoq/qvbO93oX9NCDIeWpubFDs+T/mdzoJ9QC7jvIywa5C2LAFHY9KYbo
         HWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687398187; x=1689990187;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IHF/1IfQeiUSNdCW7Rv/+TiaBICP/b/piMionI5lVxE=;
        b=gdCaMAjFL9dgPQlqRg2MAWfad5VcA9BFTd7Lt04OZ/8iJQGjcg7eU259f6U/7VPgg9
         vVnsAAtGZ8NzH4XQ6zz0QDTAu6DoDZw8iEkDrjt5w9NPT5XXVN26d4Yq+NqAqT6WMfgO
         TRePNclbIOqvGZ11rztAeAXzOc4Uxszj7n5ZZhnF7SupcbKeLFG9nOvgxtGy5BE8VoTh
         h9rXVuNAK7sFcHWbfavQge4htnX9gjAt4GBCUnnpwpqVMNK3ClY4UvEI7TMYmbxZWB71
         MZJUHwxm8eYbwzRQfJtRizRuQllzJ4t0i2wDJvghq8mGgtOKto2WVcurrdh20D42uAs3
         thAQ==
X-Gm-Message-State: AC+VfDwbo80mngiucemrqGRu8KfccrfHdo6yKmksX8JcBkYRx82bMgYf
	58PjLIvWO9nL30JigdkOraFJGoTB9AJoeGFMROCyrGCM3aBpxQWYPXM=
X-Google-Smtp-Source: ACHHUZ6asR+Ng5n+bxpErvQ2x22b57+hL98EucJ9uYV3iAyBsskpfglPLZJHcwxAw8lMLKtmWKyN3mddEh9EA5mm7jg=
X-Received: by 2002:a05:6808:1a29:b0:39e:c6e4:a4a8 with SMTP id
 bk41-20020a0568081a2900b0039ec6e4a4a8mr16450722oib.12.1687398187529; Wed, 21
 Jun 2023 18:43:07 -0700 (PDT)
MIME-Version: 1.0
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Thu, 22 Jun 2023 10:42:32 +0900
Message-ID: <CABfZwcdf8uVEPWNYH8yhg0V6V0jkc0y-c3G9j0t+rhWfTmCsqg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: UDDYSL4RKYSYLV2OQNU72WSEU4PJS5NJ
X-Message-ID-Hash: UDDYSL4RKYSYLV2OQNU72WSEU4PJS5NJ
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] replay_samples_from_file (UHD 4.4) with N310 doesn't work.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UDDYSL4RKYSYLV2OQNU72WSEU4PJS5NJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7798358965647246225=="

--===============7798358965647246225==
Content-Type: multipart/alternative; boundary="00000000000090116b05feae017b"

--00000000000090116b05feae017b
Content-Type: text/plain; charset="UTF-8"

Hi

We are attempting to run a replay_samples_from_file example (UHD 4.4)  with
a N310 (UHD 4.4). but the example software was waiting for anything with
"Waiting for recording to complete...".
the same software and PC with X310 (UHD 4.4) are works fine.

Why?

c:\> rfnoc_replay_samples_from_file.exe --freq 2000e6 --rate 1e6 --file
d:\dat\dat.dat

Creating the RFNoC graph with args: ...
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107800;
UHD_4.4.0.0-release
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.0.22,type=n3xx,product=n310,serial=3144671,name=ni-n3xx-3144671,fpga=XG,claimed=False,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=XG,mgmt_addr=192.168.0.22,name=ni-n3xx-3144671,product=n310,clock_source=internal,time_source=internal'.
Using Radio Block:  0/Radio#0, channel 0
Using Replay Block: 0/Replay#0, channel 0
Using DUC Block:    0/DUC#0, channel 0
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
Requesting TX Freq: 2000.000000 MHz...
Actual TX Freq: 2000.000000 MHz...

Requesting TX Rate: 1.000000 Msps...
DUC block found.
[WARNING] [0/DUC#0] The requested interpolation is odd; the user should
expect passband CIC rolloff.
Select an even interpolation to ensure that a halfband filter is enabled.

  Interpolation value is 125
Actual TX Rate: 1.000000 Msps...

Replay file size:     60000000 bytes (7500000 qwords, 15000000 samples)
Record base address:  0x0
Record buffer size:   60000000 bytes
Record fullness:      0 bytes

Emptying record buffer...
Record fullness:      0 bytes

Sending data to be recorded...
Waiting for recording to complete...
^C

Thanks

--00000000000090116b05feae017b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v>Hi<br><br>We are attempting to run a replay_samples_from_file example (UH=
D 4.4) =C2=A0with a N310 (UHD 4.4). but the example software was waiting fo=
r anything with &quot;Waiting for recording to complete...&quot;.<br>the sa=
me software and PC with X310 (UHD 4.4) are works fine.<br><br>Why?<br><br>c=
:\&gt; rfnoc_replay_samples_from_file.exe --freq 2000e6 --rate 1e6 --file d=
:\dat\dat.dat<br><br>Creating the RFNoC graph with args: ...<br>[INFO] [UHD=
] Win32; Microsoft Visual C++ version 14.2; Boost_107800; UHD_4.4.0.0-relea=
se<br>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_ad=
dr=3D192.168.0.22,type=3Dn3xx,product=3Dn310,serial=3D3144671,name=3Dni-n3x=
x-3144671,fpga=3DXG,claimed=3DFalse,addr=3D192.168.20.2<br>[INFO] [MPM.Peri=
phManager] init() called with device args `fpga=3DXG,mgmt_addr=3D192.168.0.=
22,name=3Dni-n3xx-3144671,product=3Dn310,clock_source=3Dinternal,time_sourc=
e=3Dinternal&#39;.<br>Using Radio Block: =C2=A00/Radio#0, channel 0<br>Usin=
g Replay Block: 0/Replay#0, channel 0<br>Using DUC Block: =C2=A0 =C2=A00/DU=
C#0, channel 0<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. S=
kipping.<br>Requesting TX Freq: 2000.000000 MHz...<br>Actual TX Freq: 2000.=
000000 MHz...<br><br>Requesting TX Rate: 1.000000 Msps...<br>DUC block foun=
d.<br>[WARNING] [0/DUC#0] The requested interpolation is odd; the user shou=
ld expect passband CIC rolloff.<br>Select an even interpolation to ensure t=
hat a halfband filter is enabled.<br><br>=C2=A0 Interpolation value is 125<=
br>Actual TX Rate: 1.000000 Msps...<br><br>Replay file size: =C2=A0 =C2=A0 =
60000000 bytes (7500000 qwords, 15000000 samples)<br>Record base address: =
=C2=A00x0<br>Record buffer size: =C2=A0 60000000 bytes<br>Record fullness: =
=C2=A0 =C2=A0 =C2=A00 bytes<br><br>Emptying record buffer...<br>Record full=
ness: =C2=A0 =C2=A0 =C2=A00 bytes<br><br>Sending data to be recorded...<br>=
Waiting for recording to complete...<br>^C<br><br>Thanks<br></div></div></d=
iv></div></div></div>

--00000000000090116b05feae017b--

--===============7798358965647246225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7798358965647246225==--
