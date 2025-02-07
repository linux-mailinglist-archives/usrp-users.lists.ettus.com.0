Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9A1A2C400
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 14:43:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9C3E385B57
	for <lists+usrp-users@lfdr.de>; Fri,  7 Feb 2025 08:43:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738935830; bh=/VUg9ATK7+nrVw1OQG9g9hLwfwiGczgTXGgPz9Hws+Y=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=nYRofy8m/BG2IQfzQPf0rnpaQYSbvc22lJGK5Y5S65QxyrLusDic/fg7bv3cl3RHg
	 z0csSOt+R0UQHcUec9S5mkkdPxS6PZ5cN86eERBr2c5Ml1RLhufM319OfjIL90h0pP
	 L1nvclUPm5UT9D7xlv1bm1VniDxXKyKwv9DCoY37m+p7ldFAsJhJ4WtUioZnJAob3d
	 3HCeBOh5Z0GBKB1N3BdbYf3v5OUWp4sZM8roW3pHr9ZIlPFwXwt90Bs8O86auhigQn
	 6AGe984k+cGflVQE0CM0M8mJWRIvuUH6UfGvjiawIejE9jx2yZ+ALOXE5Km6fu5NS6
	 4sVmK/DpuX3/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A7C3385812
	for <usrp-users@lists.ettus.com>; Fri,  7 Feb 2025 08:43:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738935816; bh=/h2h2AE472XpZpbVYq4qb3eJmjXAwTTM5MChI9Rn3YU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0G1BKSb8oMdmX/dlp5JZQkQpT3VPLci0zS6UucCXFlYocm5vWBU64/EohaP8KOHdj
	 UQdGyGpL8/OCGQ9frKFPGGvMGUKO8bNFroKWPe/ml+Hyiju6Yc6fRFbUdsDHrV6vbD
	 M5a4M3Q9NgJOqpyeWpallKX05vxCRyqqiuLtJDgUe0mz49XmI34Qu+X/NEbqwFKUKv
	 TFc49Ot16Be+7NizSwggiScyOWtjjJa88xxvOiYMIOA1llaKYv2oXthUbiJaVMOQbH
	 i/CuKNfLDSsLvnW/ZUg+1ZuqV47tzxqu0bnTncO/n78x9uQAcZQU6ejBRJFVwPiL56
	 G/a8znXBzPgug==
Date: Fri, 7 Feb 2025 13:43:36 +0000
To: usrp-users@lists.ettus.com
Message-ID: <yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOEzSFTrUiGK-oOaZkVL2FrGH8-f9HSLmrK6rnsevgL3-9g63Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YNISOD7YVZI7L6NQJFMXRD2KZHTVSXD7
X-Message-ID-Hash: YNISOD7YVZI7L6NQJFMXRD2KZHTVSXD7
X-MailFrom: rilbert.silva@embedded.ufcg.edu.br
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YNISOD7YVZI7L6NQJFMXRD2KZHTVSXD7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rilbert Lima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rilbert.silva@embedded.ufcg.edu.br
Content-Type: multipart/mixed; boundary="===============5687908207681544475=="

This is a multi-part message in MIME format.

--===============5687908207681544475==
Content-Type: multipart/alternative;
 boundary="b1_yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk
Content-Type: text/plain; charset=us-ascii

Thank you, Chris. 

I have updated the FPGA image from the USRP X440 to the X4_200, and upon executing, the sampling rate has been reduced to approximately 5 Msps.

Another matter I would like to inquire about is whether it is possible to reduce the analog bandwidth of the signal from 200 MHz to 100 MHz. I am aiming to use the X440 with OpenAirInterface5G in FR1, but since the image is from the X4_200, which is tied to a 200 MHz bandwidth, I would like to know if there is any workaround to perform this downgrade."

However, in some tests that were performed, the receive timeout error appears, even using the 5e6 sampling rate, increasing the value to 99 \*Num timeouts (Rx): 99\*. And I don't know why these receive errors appeared.

root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate 5e6 --tx_rate 5e6

\[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.7.0.0-0-ga5ed1872

\[00:00:00.029460\] Creating the usrp device with: ...

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=127.0.0.1,type=x4xx,product=x440,serial=342597F,name=ni-x4xx-342597F,fpga=X4_200,claimed=False

\[WARNING\] \[MPM.RPCServer\] A timeout event occured!

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=X4_200,mgmt_addr=127.0.0.1,name=ni-x4xx-342597F,product=x440,clock_source=internal,time_source=internal,initializing=True'.

Using Device: Single USRP:

  Device: X400-Series Device

  Mboard 0: x440

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

    RX Dboard: A

    RX Subdev: 2

  RX Channel: 3

    RX DSP: 3

    RX Dboard: A

    RX Subdev: 3

  RX Channel: 4

    RX DSP: 4

    RX Dboard: B

    RX Subdev: 0

  RX Channel: 5

    RX DSP: 5

    RX Dboard: B

    RX Subdev: 1

  RX Channel: 6

    RX DSP: 6

    RX Dboard: B

    RX Subdev: 2

  RX Channel: 7

    RX DSP: 7

    RX Dboard: B

    RX Subdev: 3

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

    TX Dboard: A

    TX Subdev: 2

  TX Channel: 3

    TX DSP: 3

    TX Dboard: A

    TX Subdev: 3

  TX Channel: 4

    TX DSP: 4

    TX Dboard: B

    TX Subdev: 0

  TX Channel: 5

    TX DSP: 5

    TX Dboard: B

    TX Subdev: 1

  TX Channel: 6

    TX DSP: 6

    TX Dboard: B

    TX Subdev: 2

  TX Channel: 7

    TX DSP: 7

    TX Dboard: B

    TX Subdev: 3

\[00:00:04.112276974\] Setting device timestamp to 0...

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user should expect passband CIC rolloff.

Select an even decimation to ensure that a halfband filter is enabled.

Decimations factorable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfbands.

decimation = dsp_rate/samp_rate -> 49

\[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[00:00:04.465504150\] Testing receive rate 5.015510 Msps on 1 channels

\[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

\[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user should expect passband CIC rolloff.

Select an even interpolation to ensure that a halfband filter is enabled.

\[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz

Setting TX spp to 352

\[00:00:04.801908845\] Testing transmit rate 5.015510 Msps on 1 channels

\[00:00:14.826000429\] Benchmark complete.

Benchmark rate summary:

  Num received samples:     50161056

  Num dropped samples:      0

  Num overruns detected:    0

  Num transmitted samples:  50201888

  Num sequence errors (Tx): 0

  Num sequence errors (Rx): 0

  Num underruns detected:   0

  Num late commands:        0

  Num timeouts (Tx):        0

  Num timeouts (Rx):        0

Done!

--b1_yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Thank you, Chris. </p><p>I have updated the FPGA image from the USRP X44=
0 to the X4_200, and upon executing, the sampling rate has been reduced to =
approximately 5 Msps.</p><p>Another matter I would like to inquire about is=
 whether it is possible to reduce the analog bandwidth of the signal from 2=
00 MHz to 100 MHz. I am aiming to use the X440 with OpenAirInterface5G in F=
R1, but since the image is from the X4_200, which is tied to a 200 MHz band=
width, I would like to know if there is any workaround to perform this down=
grade."</p><p>However, in some tests that were performed, the receive timeo=
ut error appears, even using the 5e6 sampling rate, increasing the value to=
 99 *Num timeouts (Rx): 99*. And I don't know why these receive errors appe=
ared.</p><p><br></p><p>root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchm=
ark_rate --rx_rate 5e6 --tx_rate 5e6</p><p>[INFO] [UHD] linux; GNU C++ vers=
ion 11.4.0; Boost_107800; UHD_4.7.0.0-0-ga5ed1872</p><p>[00:00:00.029460] C=
reating the usrp device with: ...</p><p>[INFO] [MPMD] Initializing 1 device=
(s) in parallel with args: mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440=
,serial=3D342597F,name=3Dni-x4xx-342597F,fpga=3DX4_200,claimed=3DFalse</p><=
p>[WARNING] [MPM.RPCServer] A timeout event occured!</p><p>[INFO] [MPM.Peri=
phManager] init() called with device args `fpga=3DX4_200,mgmt_addr=3D127.0.=
0.1,name=3Dni-x4xx-342597F,product=3Dx440,clock_source=3Dinternal,time_sour=
ce=3Dinternal,initializing=3DTrue'.</p><p>Using Device: Single USRP:</p><p>=
  Device: X400-Series Device</p><p>  Mboard 0: x440</p><p>  RX Channel: 0</=
p><p>    RX DSP: 0</p><p>    RX Dboard: A</p><p>    RX Subdev: 0</p><p>  RX=
 Channel: 1</p><p>    RX DSP: 1</p><p>    RX Dboard: A</p><p>    RX Subdev:=
 1</p><p>  RX Channel: 2</p><p>    RX DSP: 2</p><p>    RX Dboard: A</p><p> =
   RX Subdev: 2</p><p>  RX Channel: 3</p><p>    RX DSP: 3</p><p>    RX Dboa=
rd: A</p><p>    RX Subdev: 3</p><p>  RX Channel: 4</p><p>    RX DSP: 4</p><=
p>    RX Dboard: B</p><p>    RX Subdev: 0</p><p>  RX Channel: 5</p><p>    R=
X DSP: 5</p><p>    RX Dboard: B</p><p>    RX Subdev: 1</p><p>  RX Channel: =
6</p><p>    RX DSP: 6</p><p>    RX Dboard: B</p><p>    RX Subdev: 2</p><p> =
 RX Channel: 7</p><p>    RX DSP: 7</p><p>    RX Dboard: B</p><p>    RX Subd=
ev: 3</p><p>  TX Channel: 0</p><p>    TX DSP: 0</p><p>    TX Dboard: A</p><=
p>    TX Subdev: 0</p><p>  TX Channel: 1</p><p>    TX DSP: 1</p><p>    TX D=
board: A</p><p>    TX Subdev: 1</p><p>  TX Channel: 2</p><p>    TX DSP: 2</=
p><p>    TX Dboard: A</p><p>    TX Subdev: 2</p><p>  TX Channel: 3</p><p>  =
  TX DSP: 3</p><p>    TX Dboard: A</p><p>    TX Subdev: 3</p><p>  TX Channe=
l: 4</p><p>    TX DSP: 4</p><p>    TX Dboard: B</p><p>    TX Subdev: 0</p><=
p>  TX Channel: 5</p><p>    TX DSP: 5</p><p>    TX Dboard: B</p><p>    TX S=
ubdev: 1</p><p>  TX Channel: 6</p><p>    TX DSP: 6</p><p>    TX Dboard: B</=
p><p>    TX Subdev: 2</p><p>  TX Channel: 7</p><p>    TX DSP: 7</p><p>    T=
X Dboard: B</p><p>    TX Subdev: 3</p><p>[00:00:04.112276974] Setting devic=
e timestamp to 0...</p><p>[WARNING] [0/DDC#0] The requested decimation is o=
dd; the user should expect passband CIC rolloff.</p><p>Select an even decim=
ation to ensure that a halfband filter is enabled.</p><p>Decimations factor=
able by 4 will enable 2 halfbands, those factorable by 8 will enable 3 half=
bands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/=
DDC#0] The requested decimation is odd; the user should expect passband CIC=
 rolloff.</p><p>Select an even decimation to ensure that a halfband filter =
is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, thos=
e factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/sa=
mp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.00=
0 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#0] The requested dec=
imation is odd; the user should expect passband CIC rolloff.</p><p>Select a=
n even decimation to ensure that a halfband filter is enabled.</p><p>Decima=
tions factorable by 4 will enable 2 halfbands, those factorable by 8 will e=
nable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[=
WARNING] [0/DDC#0] The requested decimation is odd; the user should expect =
passband CIC rolloff.</p><p>Select an even decimation to ensure that a half=
band filter is enabled.</p><p>Decimations factorable by 4 will enable 2 hal=
fbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =3D=
 dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX =
rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#0] The r=
equested decimation is odd; the user should expect passband CIC rolloff.</p=
><p>Select an even decimation to ensure that a halfband filter is enabled.<=
/p><p>Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt=
; 49</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user sh=
ould expect passband CIC rolloff.</p><p>Select an even decimation to ensure=
 that a halfband filter is enabled.</p><p>Decimations factorable by 4 will =
enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>de=
cimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could=
 not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/=
DDC#0] The requested decimation is odd; the user should expect passband CIC=
 rolloff.</p><p>Select an even decimation to ensure that a halfband filter =
is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, thos=
e factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/sa=
mp_rate -&gt; 49</p><p>[WARNING] [0/DDC#0] The requested decimation is odd;=
 the user should expect passband CIC rolloff.</p><p>Select an even decimati=
on to ensure that a halfband filter is enabled.</p><p>Decimations factorabl=
e by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfban=
ds.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [MULTI=
_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[=
WARNING] [0/DDC#1] The requested decimation is odd; the user should expect =
passband CIC rolloff.</p><p>Select an even decimation to ensure that a half=
band filter is enabled.</p><p>Decimations factorable by 4 will enable 2 hal=
fbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =3D=
 dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#1] The requested decima=
tion is odd; the user should expect passband CIC rolloff.</p><p>Select an e=
ven decimation to ensure that a halfband filter is enabled.</p><p>Decimatio=
ns factorable by 4 will enable 2 halfbands, those factorable by 8 will enab=
le 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WAR=
NING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5.016=
 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user sh=
ould expect passband CIC rolloff.</p><p>Select an even decimation to ensure=
 that a halfband filter is enabled.</p><p>Decimations factorable by 4 will =
enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>de=
cimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC#1] The requ=
ested decimation is odd; the user should expect passband CIC rolloff.</p><p=
>Select an even decimation to ensure that a halfband filter is enabled.</p>=
<p>Decimations factorable by 4 will enable 2 halfbands, those factorable by=
 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 4=
9</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual r=
ate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is odd;=
 the user should expect passband CIC rolloff.</p><p>Select an even decimati=
on to ensure that a halfband filter is enabled.</p><p>Decimations factorabl=
e by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfban=
ds.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WARNING] [0/DDC=
#1] The requested decimation is odd; the user should expect passband CIC ro=
lloff.</p><p>Select an even decimation to ensure that a halfband filter is =
enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, those f=
actorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_=
rate -&gt; 49</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 M=
Hz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decima=
tion is odd; the user should expect passband CIC rolloff.</p><p>Select an e=
ven decimation to ensure that a halfband filter is enabled.</p><p>Decimatio=
ns factorable by 4 will enable 2 halfbands, those factorable by 8 will enab=
le 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</p><p>[WAR=
NING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate is 5.016=
 MHz</p><p>[00:00:04.465504150] Testing receive rate 5.015510 Msps on 1 cha=
nnels</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; the use=
r should expect passband CIC rolloff.</p><p>Select an even interpolation to=
 ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Cou=
ld not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [=
0/DUC#0] The requested interpolation is odd; the user should expect passban=
d CIC rolloff.</p><p>Select an even interpolation to ensure that a halfband=
 filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5=
.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested =
interpolation is odd; the user should expect passband CIC rolloff.</p><p>Se=
lect an even interpolation to ensure that a halfband filter is enabled.</p>=
<p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate i=
s 5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; t=
he user should expect passband CIC rolloff.</p><p>Select an even interpolat=
ion to ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI_USR=
P] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARN=
ING] [0/DUC#1] The requested interpolation is odd; the user should expect p=
assband CIC rolloff.</p><p>Select an even interpolation to ensure that a ha=
lfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX rat=
e to 5.000 MHz. Actual rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The requ=
ested interpolation is odd; the user should expect passband CIC rolloff.</p=
><p>Select an even interpolation to ensure that a halfband filter is enable=
d.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual =
rate is 5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is =
odd; the user should expect passband CIC rolloff.</p><p>Select an even inte=
rpolation to ensure that a halfband filter is enabled.</p><p>[WARNING] [MUL=
TI_USRP] Could not set TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p=
>[WARNING] [0/DUC#1] The requested interpolation is odd; the user should ex=
pect passband CIC rolloff.</p><p>Select an even interpolation to ensure tha=
t a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set =
TX rate to 5.000 MHz. Actual rate is 5.016 MHz</p><p>Setting TX spp to 352<=
/p><p>[00:00:04.801908845] Testing transmit rate 5.015510 Msps on 1 channel=
s</p><p>[00:00:14.826000429] Benchmark complete.</p><p>Benchmark rate summa=
ry:</p><p>  Num received samples:     50161056</p><p>  Num dropped samples:=
      0</p><p>  Num overruns detected:    0</p><p>  Num transmitted samples=
:  50201888</p><p>  Num sequence errors (Tx): 0</p><p>  Num sequence errors=
 (Rx): 0</p><p>  Num underruns detected:   0</p><p>  Num late commands:    =
    0</p><p>  Num timeouts (Tx):        0</p><p>  Num timeouts (Rx):       =
 0</p><p>Done!</p>

--b1_yjuewVxQDt6a5IGJ3wfGKoab6OpNqWTdxdQCdYcpZk--

--===============5687908207681544475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5687908207681544475==--
