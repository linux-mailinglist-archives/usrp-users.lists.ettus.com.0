Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D48D580542
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 22:14:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36173380DE5
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jul 2022 16:14:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658780064; bh=3eTw1t5YvQ2XjVrtffg2MqMWTGHGrai4E5qPZbhAypE=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=yZdvkWZsox2UYptWv74UM+1HrZmkHkykblI5skXmwfHG3CTGWkbJH+LdcYljw10Zm
	 gYn+qaLSP3YzJZow4/qOnq4/Te/afmNlK+HUmhZRSIxbzYsF4Lz6ARqI4sE7BwANSA
	 9tDJYt4QSZ4AAPjZljfhK9/HjePIsGRiaDxwByWOZmVKrCfoiWYXFf3yCyg4jEBQaF
	 UbLITbB6f5VFIp+ytbSN0SdGY8+qbZnDVtNfk17koWJeb3FKhjAgzDvrSawWkbXlMW
	 kbdVc67pUH7whL/P3DsyoTQZv5Cw7IcRqlZ7R7Mp+mrt1jVt1MCL/BEYOLbKAWWjgI
	 HcT7K1VT9lP6w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA032380C72
	for <usrp-users@lists.ettus.com>; Mon, 25 Jul 2022 16:13:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658780002; bh=N1ni6IP69k515UYvS3c95tNC8i7P+pntEWLX9D4yFVA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aGN4/N63LDblUEcUpMScXTWSM2/q0ONUDCu0GhqjUnuAluxgKYn16ISiZSosPYB+N
	 Kc6CJvks2qJ5PkilLSH5IuP9yLmoWPg5u5N/A/iPeisJ2r3rDQc3N12ktNa2fq/BUJ
	 uFW6/4dikcAVyxIhiV7UTLqCpoqKIHkXQue1OyQataXhfQRvWc13Lv7k4oi2zsgKsG
	 W4d4uybRKiouqqE0ges2j2/gD6ddK16rXcccMeSTdg63ftM2esAvBbl9jHEpGO3eQ0
	 9/ZltR3DIeYicGdF7q0X3Me1s6EWnl/0MnuLTvOTowC5CPiH/GyxHgcwKVq0WDV27q
	 cQ1R1KtawyaQQ==
Date: Mon, 25 Jul 2022 20:13:22 +0000
To: usrp-users@lists.ettus.com
Message-ID: <4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a03b9660-457b-abfc-ba0f-ebdff7dfe0c8@gmail.com
MIME-Version: 1.0
Message-ID-Hash: TY27MKRFJHTR2UUX7HV47LH4N4JFTZ55
X-Message-ID-Hash: TY27MKRFJHTR2UUX7HV47LH4N4JFTZ55
X-MailFrom: skyung@nrel.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting low number of samples (USRP N310)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TY27MKRFJHTR2UUX7HV47LH4N4JFTZ55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: skyung--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: skyung@nrel.gov
Content-Type: multipart/mixed; boundary="===============3896064362127298912=="

This is a multi-part message in MIME format.

--===============3896064362127298912==
Content-Type: multipart/alternative;
 boundary="b1_4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for your response.

I did run the =E2=80=9Crx_sample_to_file=E2=80=9D example but did not get=
 any timeout error.

The following is the part of output I get when I run the OAI UE:

Found USRP n310

\[HW\]   device_init() sample_rate:46080000

\[HW\]   cal 0: freq 3500000000.000000, offset 0.000000, diff 119200000.0=
00000

\[HW\]   cal 1: freq 2660000000.000000, offset 0.000000, diff 959200000.0=
00000

\[HW\]   cal 2: freq 2300000000.000000, offset 0.000000, diff 1319200000.=
000000

\[HW\]   cal 3: freq 1880000000.000000, offset 0.000000, diff 1739200000.=
000000

\[HW\]   cal 4: freq 816000000.000000, offset 0.000000, diff 2803200000.0=
00000

\[HW\]   RX Gain too high, lower by 35.000000 dB

\[HW\]   RX Gain 0 110.000000 (0.000000) =3D> 110.000000 (max 75.000000)

\[HW\]   USRP TX_GAIN:65.00 gain_range:65.00 tx_gain:0.00

\[HW\]   Actual master clock: 122.880000MHz...

\[HW\]   Actual clock source internal...

\[HW\]   Actual time source internal...

\[HW\]   RF board max packet size 364, size for 100=C2=B5s jitter 4608

\[HW\]   rx_max_num_samps 364

\[HW\]   setting rx channel 0

\[HW\]   RX Channel 0

\[HW\]     Actual RX sample rate: 40.960000MSps...

\[HW\]     Actual RX frequency: 3.619200GHz...

\[HW\]     Actual RX gain: 75.000000...

\[HW\]     Actual RX bandwidth: 100.000000M...

\[HW\]     Actual RX antenna: RX2...

\[HW\]   TX Channel 0

\[HW\]     Actual TX sample rate: 40.960000MSps...

\[HW\]     Actual TX frequency: 3.619200GHz...

\[HW\]     Actual TX gain: 65.000000...

\[HW\]     Actual TX bandwidth: 100.000000M...

\[HW\]     Actual TX antenna: TX/RX...

\[HW\]     Actual TX packet size: 364

\[HW\]   Device timestamp: 1.283773...

\[HW\]   \[RRU\] has loaded USRP N300 device.

\[PHY\]   \[SCHED\]\[UE\] Check absolute frequency DL 3619200000.000000, =
UL 3619200000.000000 (RF card 0, oai_exit 0, channel 0, rx_num_channels 1=
)

\[PHY\]   Starting sync detection

\[PHY\]   \[UE thread Synch\] Running Initial Synch (mode 6)

\[PHY\]   \[UE\] nr_synchro_time: Sync source =3D 1, Peak found at pos 43=
4940, val =3D 1998314 (63 dB) avg 61 dB, ffo 0.003443

\[PHY\]   \[UE0\] Initial sync : Estimated PSS position -1, Nid2 1

\[PHY\]   sync_pos -1 ssb_offset 460691

\[HW\]   \[recv\] received 21212 samples out of 23040

\[HW\]   ERROR_CODE_TIMEOUT

--b1_4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p><br></p><p>Thanks for your response.</p><p>I did run th=
e =E2=80=9Crx_sample_to_file=E2=80=9D example but did not get any timeout e=
rror.</p><p><br></p><p>The following is the part of output I get when I run=
 the OAI UE:</p><p><br></p><p>Found USRP n310</p><p>[HW]   device_init() sa=
mple_rate:46080000</p><p>[HW]   cal 0: freq 3500000000.000000, offset 0.000=
000, diff 119200000.000000</p><p>[HW]   cal 1: freq 2660000000.000000, offs=
et 0.000000, diff 959200000.000000</p><p>[HW]   cal 2: freq 2300000000.0000=
00, offset 0.000000, diff 1319200000.000000</p><p>[HW]   cal 3: freq 188000=
0000.000000, offset 0.000000, diff 1739200000.000000</p><p>[HW]   cal 4: fr=
eq 816000000.000000, offset 0.000000, diff 2803200000.000000</p><p>[HW]   R=
X Gain too high, lower by 35.000000 dB</p><p>[HW]   RX Gain 0 110.000000 (0=
.000000) =3D&gt; 110.000000 (max 75.000000)</p><p>[HW]   USRP TX_GAIN:65.00=
 gain_range:65.00 tx_gain:0.00</p><p>[HW]   Actual master clock: 122.880000=
MHz...</p><p>[HW]   Actual clock source internal...</p><p>[HW]   Actual tim=
e source internal...</p><p>[HW]   RF board max packet size 364, size for 10=
0=C2=B5s jitter 4608</p><p>[HW]   rx_max_num_samps 364</p><p>[HW]   setting=
 rx channel 0</p><p>[HW]   RX Channel 0</p><p>[HW]     Actual RX sample rat=
e: 40.960000MSps...</p><p>[HW]     Actual RX frequency: 3.619200GHz...</p><=
p>[HW]     Actual RX gain: 75.000000...</p><p>[HW]     Actual RX bandwidth:=
 100.000000M...</p><p>[HW]     Actual RX antenna: RX2...</p><p>[HW]   TX Ch=
annel 0</p><p>[HW]     Actual TX sample rate: 40.960000MSps...</p><p>[HW]  =
   Actual TX frequency: 3.619200GHz...</p><p>[HW]     Actual TX gain: 65.00=
0000...</p><p>[HW]     Actual TX bandwidth: 100.000000M...</p><p>[HW]     A=
ctual TX antenna: TX/RX...</p><p>[HW]     Actual TX packet size: 364</p><p>=
[HW]   Device timestamp: 1.283773...</p><p>[HW]   [RRU] has loaded USRP N30=
0 device.</p><p>[PHY]   [SCHED][UE] Check absolute frequency DL 3619200000.=
000000, UL 3619200000.000000 (RF card 0, oai_exit 0, channel 0, rx_num_chan=
nels 1)</p><p>[PHY]   Starting sync detection</p><p>[PHY]   [UE thread Sync=
h] Running Initial Synch (mode 6)</p><p>[PHY]   [UE] nr_synchro_time: Sync =
source =3D 1, Peak found at pos 434940, val =3D 1998314 (63 dB) avg 61 dB, =
ffo 0.003443</p><p>[PHY]   [UE0] Initial sync : Estimated PSS position -1, =
Nid2 1</p><p>[PHY]   sync_pos -1 ssb_offset 460691</p><p><br></p><p>[HW]   =
[recv] received 21212 samples out of 23040</p><p>[HW]   ERROR_CODE_TIMEOUT<=
/p><p><br></p><p><br></p>

--b1_4lLC3Xgh7VN06w42yJNbMIG7V8zzRzQnIMZwJzrNr0--

--===============3896064362127298912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3896064362127298912==--
