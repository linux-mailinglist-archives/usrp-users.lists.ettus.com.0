Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A5A584620
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 20:55:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43C49383FD8
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 14:55:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659034509; bh=nvowFdUvydKxPqTTSJswjx7oKa2S/kVQCmMvfpgWJDI=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=aoFLAhI1K0kqhCfqqs/Osq/ROybzCCt3UoEFbcyZqP25PuNyqDbEQlyDq280/7gFc
	 5yOg548RD+5QRRN3N6GI9OEyHSDpVATlUqvpjhHfFGLi4vVVdJn6WjpBxyPqacYHYa
	 7P4DITPGU9vigKymk/3u7ATEEWqskN/4sCo4XHeIHyc7l7zHuRsAIhpPat0WY7l+O3
	 bZm2QSngbgvcnb58O7n78GOb2cd4sM9TqXmB8c9AdnkKks129t7HQQv9DkTk/7LqeX
	 HJZSw4rLUJ07s5GqOiAcKh8pbBUujaS81cH1aRc9ctnNuxJ3wTxZp7pemjH+/vjg2T
	 PUd9dCjF7d4+A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48191383FA8
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 14:53:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659034391; bh=XkU+KKsqB3H41CtzJtIN9hmPF580ZNjNXcbvtsXYPoI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=unbcsk9XK/gMjRZaTYF0tpeTKzgCsIteAz1BemojFqCbfl1UT61nAzZ60zrzUZlKf
	 JslIRH0yHM0dk8q0iG5yIdlbUEBnmPiNMK14vk0nbPB41zMjCTX7gkheYIDVkbMXa/
	 xqEpyliuSpta3Euw0Jc10Wnz28a1QHod4YndEbgv4wOoqJJE7a7Gby0xOIXLOj8ZkK
	 UvcpnFlQC3OIEF5ncfoY/Khcvum5xTlE7W8jQHz4MDYUrtEr7116M0i51AEbN9skOV
	 3ZIubsUd730mgRr0eijil8IZOgiAuN2qaCN/5qGDQzRPqSGooQJgvgUCmN1jQ2ArRK
	 jPjME8I06Eb9w==
Date: Thu, 28 Jul 2022 18:53:11 +0000
To: usrp-users@lists.ettus.com
Message-ID: <3mJzhI7U8ITf6pqi68prmM3VNTb290VGY4rCrQzOZHg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAKhiL6WGETfh+w08WgHsrMk_fHhpA5QAnMLMOZaVdgogN6JM4g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FDQQWG2XGGQJZZML5EH4TJSRZIIM2DEV
X-Message-ID-Hash: FDQQWG2XGGQJZZML5EH4TJSRZIIM2DEV
X-MailFrom: skyung@nrel.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP x310 ERROR_CODE_OVERFLOW issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDQQWG2XGGQJZZML5EH4TJSRZIIM2DEV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: skyung--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: skyung@nrel.gov
Content-Type: multipart/mixed; boundary="===============4953105556845948235=="

This is a multi-part message in MIME format.

--===============4953105556845948235==
Content-Type: multipart/alternative;
 boundary="b1_3mJzhI7U8ITf6pqi68prmM3VNTb290VGY4rCrQzOZHg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3mJzhI7U8ITf6pqi68prmM3VNTb290VGY4rCrQzOZHg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Loy,

I have a similar problem to yours.

I am trying to run the OAI 5G nr-UE binary with=20

```
./nr-uesoftmodem --sa --usrp-args "type=3Dn3xx, addr=3D192.168.99.114" --=
numerology 1 -r 106 --band 78 -s 516 -C 3619200000 -d --ue-fo-compensatio=
n -E --ue-rxgain 65
```

and getting the following error:

```
[HW]   Found USRP n3xx
```

```
Found USRP n310
```

```
net.core.rmem_max =3D 62500000
```

```
net.core.wmem_max =3D 62500000
```

```
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
192.168.99.114,type=3Dn3xx,product=3Dn310,serial=3D3240243,name=3Dni-n3xx=
-3240243,fpga=3DHG,claimed=3DFalse,addr=3D192.168.99.114,master_clock_rat=
e=3D122880000.000000
```

```
[WARNING] [MPM.RPCServer] A timeout event occured!
```

```
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,mast=
er_clock_rate=3D122880000.000000,mgmt_addr=3D192.168.99.114,name=3Dni-n3x=
x-3240243,product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'.
```

```
[HW]   Setting clock source to internal
```

```
[HW]   Setting time source to internal
```

```
-- Using calibration table: calib_table_n310
```

```
[HW]   device_init() sample_rate:46080000
```

```
[WARNING] [0/DDC#0] The requested decimation is odd; the user should expe=
ct passband CIC rolloff.
```

```
Select an even decimation to ensure that a halfband filter is enabled.
```

```
Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8 will enable 3 halfbands.
```

```
decimation =3D dsp_rate/samp_rate -> 3
```

```
[WARNING] [0/DDC#0] The requested decimation is odd; the user should expe=
ct passband CIC rolloff.
```

```
Select an even decimation to ensure that a halfband filter is enabled.
```

```
Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8 will enable 3 halfbands.
```

```
decimation =3D dsp_rate/samp_rate -> 3
```

```
[WARNING] [MULTI_USRP] Could not set RX rate to 46.080 MHz. Actual rate i=
s 40.960 MHz
```

```
[HW]   cal 0: freq 3500000000.000000, offset 0.000000, diff 119200000.000=
000
```

```
[HW]   cal 1: freq 2660000000.000000, offset 0.000000, diff 959200000.000=
000
```

```
[HW]   cal 2: freq 2300000000.000000, offset 0.000000, diff 1319200000.00=
0000
```

```
[HW]   cal 3: freq 1880000000.000000, offset 0.000000, diff 1739200000.00=
0000
```

```
[HW]   cal 4: freq 816000000.000000, offset 0.000000, diff 2803200000.000=
000
```

```
[HW]   RX Gain 0 65.000000 (0.000000) =3D> 65.000000 (max 75.000000)
```

```
[WARNING] [0/DUC#0] The requested interpolation is odd; the user should e=
xpect passband CIC rolloff.
```

```
Select an even interpolation to ensure that a halfband filter is enabled.
```

```
[WARNING] [MULTI_USRP] Could not set TX rate to 46.080 MHz. Actual rate i=
s 40.960 MHz
```

```
[HW]   USRP TX_GAIN:65.00 gain_range:65.00 tx_gain:0.00
```

```
[HW]   Actual master clock: 122.880000MHz...
```

```
[HW]   Actual clock source internal...
```

```
[HW]   Actual time source internal...
```

```
[HW]   RF board max packet size 364, size for 100=C2=B5s jitter 4608
```

```
[HW]   rx_max_num_samps 364
```

```
[HW]   setting rx channel 0
```

```
[INFO] [0/Radio#0] Re-initializing dboard to apply bandwidth settings. Th=
is may take some time.
```

```
[INFO] [0/Radio#0] Bandwidth settings applied: 40000000.000000
```

```
[INFO] [0/Radio#0] Re-initializing dboard to apply bandwidth settings. Th=
is may take some time.
```

```
[INFO] [0/Radio#0] Bandwidth settings applied: 40000000.000000
```

```
[HW]   RX Channel 0
```

```
[HW]     Actual RX sample rate: 40.960000MSps...
```

```
[HW]     Actual RX frequency: 3.619200GHz...
```

```
[HW]     Actual RX gain: 65.000000...
```

```
[HW]     Actual RX bandwidth: 40.000000M...
```

```
[HW]     Actual RX antenna: RX2...
```

```
[HW]   TX Channel 0
```

```
[HW]     Actual TX sample rate: 40.960000MSps...
```

```
[HW]     Actual TX frequency: 3.619200GHz...
```

```
[HW]     Actual TX gain: 65.000000...
```

```
[HW]     Actual TX bandwidth: 40.000000M...
```

```
[HW]     Actual TX antenna: TX/RX...
```

```
[HW]     Actual TX packet size: 364
```

```
[HW]   Device timestamp: 1.650939...
```

```
[HW]   [RRU] has loaded USRP N300 device.
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
sleep...
```

```
[PHY]   [SCHED][UE] Check absolute frequency DL 3619200000.000000, UL 361=
9200000.000000 (RF card 0, oai_exit 0, channel 0, rx_num_channels 1)
```

```
[PHY]   Starting sync detection
```

```
[PHY]   [UE thread Synch] Running Initial Synch (mode 6)
```

```
[PHY]   [UE] nr_synchro_time: Sync source =3D 1, Peak found at pos 53888,=
 val =3D 977850 (59 dB) avg 58 dB, ffo 0.059037
```

```
PSS execution duration 162148 microseconds
```

```
[PHY]   [UE0] Initial sync : Estimated PSS position -1, Nid2 1
```

```
[PHY]   sync_pos -1 ssb_offset 460691
```

```
[PHY]   TDD Normal prefix: SSS error condition: sync_pos -1
```

```
[HW]   [recv] received 13248 samples out of 23040
```

```
D[HW]   Time: 1.22139 s
```

```
ERROR_CODE_OVERFLOW (Out of sequence error)
```

```
Assertion (UE->frame_parms.get_samples_per_slot(slot,&UE->frame_parms) =3D=
=3D UE->rfdevice.trx_read_func(&UE->rfdevice, timestamp, rxp, UE->frame_p=
arms.get_samples_per_slot(slot,&UE->frame_parms), UE->frame_parms.nb_ante=
nnas_rx)) failed!
```

```
In readFrame() /home/ubuntu/openairinterface5g/executables/nr-ue.c:767
```

```
Exiting execution
```

```
Aborted
```

Could you please let me know which source code you modified to accept the=
 lowered sample rate?

--b1_3mJzhI7U8ITf6pqi68prmM3VNTb290VGY4rCrQzOZHg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Loy,</p><p><br></p><p>I have a similar problem to yours.</p><p>I am t=
rying to run the OAI 5G nr-UE binary with </p><pre><code>./nr-uesoftmodem -=
-sa --usrp-args "type=3Dn3xx, addr=3D192.168.99.114" --numerology 1 -r 106 =
--band 78 -s 516 -C 3619200000 -d --ue-fo-compensation -E --ue-rxgain 65</c=
ode></pre><p>and getting the following error:</p><p><br></p><pre><code>[HW]=
   Found USRP n3xx</code></pre><pre><code>Found USRP n310</code></pre><pre>=
<code>net.core.rmem_max =3D 62500000</code></pre><pre><code>net.core.wmem_m=
ax =3D 62500000</code></pre><pre><code>[INFO] [MPMD] Initializing 1 device(=
s) in parallel with args: mgmt_addr=3D192.168.99.114,type=3Dn3xx,product=3D=
n310,serial=3D3240243,name=3Dni-n3xx-3240243,fpga=3DHG,claimed=3DFalse,addr=
=3D192.168.99.114,master_clock_rate=3D122880000.000000</code></pre><pre><co=
de>[WARNING] [MPM.RPCServer] A timeout event occured!</code></pre><pre><cod=
e>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,mast=
er_clock_rate=3D122880000.000000,mgmt_addr=3D192.168.99.114,name=3Dni-n3xx-=
3240243,product=3Dn310,clock_source=3Dinternal,time_source=3Dinternal'.</co=
de></pre><pre><code>[HW]   Setting clock source to internal</code></pre><pr=
e><code>[HW]   Setting time source to internal</code></pre><pre><code>-- Us=
ing calibration table: calib_table_n310</code></pre><pre><code>[HW]   devic=
e_init() sample_rate:46080000</code></pre><pre><code>[WARNING] [0/DDC#0] Th=
e requested decimation is odd; the user should expect passband CIC rolloff.=
</code></pre><pre><code>Select an even decimation to ensure that a halfband=
 filter is enabled.</code></pre><pre><code>Decimations factorable by 4 will=
 enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</code><=
/pre><pre><code>decimation =3D dsp_rate/samp_rate -&gt; 3</code></pre><pre>=
<code>[WARNING] [0/DDC#0] The requested decimation is odd; the user should =
expect passband CIC rolloff.</code></pre><pre><code>Select an even decimati=
on to ensure that a halfband filter is enabled.</code></pre><pre><code>Deci=
mations factorable by 4 will enable 2 halfbands, those factorable by 8 will=
 enable 3 halfbands.</code></pre><pre><code>decimation =3D dsp_rate/samp_ra=
te -&gt; 3</code></pre><pre><code>[WARNING] [MULTI_USRP] Could not set RX r=
ate to 46.080 MHz. Actual rate is 40.960 MHz</code></pre><pre><code>[HW]   =
cal 0: freq 3500000000.000000, offset 0.000000, diff 119200000.000000</code=
></pre><pre><code>[HW]   cal 1: freq 2660000000.000000, offset 0.000000, di=
ff 959200000.000000</code></pre><pre><code>[HW]   cal 2: freq 2300000000.00=
0000, offset 0.000000, diff 1319200000.000000</code></pre><pre><code>[HW]  =
 cal 3: freq 1880000000.000000, offset 0.000000, diff 1739200000.000000</co=
de></pre><pre><code>[HW]   cal 4: freq 816000000.000000, offset 0.000000, d=
iff 2803200000.000000</code></pre><pre><code>[HW]   RX Gain 0 65.000000 (0.=
000000) =3D&gt; 65.000000 (max 75.000000)</code></pre><pre><code>[WARNING] =
[0/DUC#0] The requested interpolation is odd; the user should expect passba=
nd CIC rolloff.</code></pre><pre><code>Select an even interpolation to ensu=
re that a halfband filter is enabled.</code></pre><pre><code>[WARNING] [MUL=
TI_USRP] Could not set TX rate to 46.080 MHz. Actual rate is 40.960 MHz</co=
de></pre><pre><code>[HW]   USRP TX_GAIN:65.00 gain_range:65.00 tx_gain:0.00=
</code></pre><pre><code>[HW]   Actual master clock: 122.880000MHz...</code>=
</pre><pre><code>[HW]   Actual clock source internal...</code></pre><pre><c=
ode>[HW]   Actual time source internal...</code></pre><pre><code>[HW]   RF =
board max packet size 364, size for 100=C2=B5s jitter 4608</code></pre><pre=
><code>[HW]   rx_max_num_samps 364</code></pre><pre><code>[HW]   setting rx=
 channel 0</code></pre><pre><code>[INFO] [0/Radio#0] Re-initializing dboard=
 to apply bandwidth settings. This may take some time.</code></pre><pre><co=
de>[INFO] [0/Radio#0] Bandwidth settings applied: 40000000.000000</code></p=
re><pre><code>[INFO] [0/Radio#0] Re-initializing dboard to apply bandwidth =
settings. This may take some time.</code></pre><pre><code>[INFO] [0/Radio#0=
] Bandwidth settings applied: 40000000.000000</code></pre><pre><code>[HW]  =
 RX Channel 0</code></pre><pre><code>[HW]     Actual RX sample rate: 40.960=
000MSps...</code></pre><pre><code>[HW]     Actual RX frequency: 3.619200GHz=
...</code></pre><pre><code>[HW]     Actual RX gain: 65.000000...</code></pr=
e><pre><code>[HW]     Actual RX bandwidth: 40.000000M...</code></pre><pre><=
code>[HW]     Actual RX antenna: RX2...</code></pre><pre><code>[HW]   TX Ch=
annel 0</code></pre><pre><code>[HW]     Actual TX sample rate: 40.960000MSp=
s...</code></pre><pre><code>[HW]     Actual TX frequency: 3.619200GHz...</c=
ode></pre><pre><code>[HW]     Actual TX gain: 65.000000...</code></pre><pre=
><code>[HW]     Actual TX bandwidth: 40.000000M...</code></pre><pre><code>[=
HW]     Actual TX antenna: TX/RX...</code></pre><pre><code>[HW]     Actual =
TX packet size: 364</code></pre><pre><code>[HW]   Device timestamp: 1.65093=
9...</code></pre><pre><code>[HW]   [RRU] has loaded USRP N300 device.</code=
></pre><pre><code>sleep...</code></pre><pre><code>sleep...</code></pre><pre=
><code>sleep...</code></pre><pre><code>sleep...</code></pre><pre><code>slee=
p...</code></pre><pre><code>sleep...</code></pre><pre><code>sleep...</code>=
</pre><pre><code>sleep...</code></pre><pre><code>sleep...</code></pre><pre>=
<code>[PHY]   [SCHED][UE] Check absolute frequency DL 3619200000.000000, UL=
 3619200000.000000 (RF card 0, oai_exit 0, channel 0, rx_num_channels 1)</c=
ode></pre><pre><code>[PHY]   Starting sync detection</code></pre><pre><code=
>[PHY]   [UE thread Synch] Running Initial Synch (mode 6)</code></pre><pre>=
<code>[PHY]   [UE] nr_synchro_time: Sync source =3D 1, Peak found at pos 53=
888, val =3D 977850 (59 dB) avg 58 dB, ffo 0.059037</code></pre><pre><code>=
PSS execution duration 162148 microseconds</code></pre><pre><code>[PHY]   [=
UE0] Initial sync : Estimated PSS position -1, Nid2 1</code></pre><pre><cod=
e>[PHY]   sync_pos -1 ssb_offset 460691</code></pre><pre><code>[PHY]   TDD =
Normal prefix: SSS error condition: sync_pos -1</code></pre><pre><code>[HW]=
   [recv] received 13248 samples out of 23040</code></pre><pre><code>D[HW] =
  Time: 1.22139 s</code></pre><pre><code>ERROR_CODE_OVERFLOW (Out of sequen=
ce error)</code></pre><pre><code>Assertion (UE-&gt;frame_parms.get_samples_=
per_slot(slot,&amp;UE-&gt;frame_parms) =3D=3D UE-&gt;rfdevice.trx_read_func=
(&amp;UE-&gt;rfdevice, timestamp, rxp, UE-&gt;frame_parms.get_samples_per_s=
lot(slot,&amp;UE-&gt;frame_parms), UE-&gt;frame_parms.nb_antennas_rx)) fail=
ed!</code></pre><pre><code>In readFrame() /home/ubuntu/openairinterface5g/e=
xecutables/nr-ue.c:767</code></pre><pre><code>Exiting execution</code></pre=
><pre><code>Aborted</code></pre><p><br></p><p>Could you please let me know =
which source code you modified to accept the lowered sample rate?</p>

--b1_3mJzhI7U8ITf6pqi68prmM3VNTb290VGY4rCrQzOZHg--

--===============4953105556845948235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4953105556845948235==--
