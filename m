Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF5184F2EB
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 11:04:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A451384FEB
	for <lists+usrp-users@lfdr.de>; Fri,  9 Feb 2024 05:04:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707473086; bh=z+nRRk0V9hixu32dZpeCHQ7rqS2pVAVQGUcYvIMl66o=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Pr9DGBCIUs9UzG7JZDzeQWxBp8iBF0cXjrEuj1qre1HEK8a/KIIrRX712leU4BIM5
	 opUngP2XaUkD7k0ehD9Mtp7R6/WOsc8sfRLUcNK5xg0oEpJFiEXSwqy0bUeg2TN84T
	 IVGM10ut8t+Rmpt4PhZ24bqsFVHM9t7qPjOs709SrwWafrHANiOqHw548lh09Ps9q5
	 WNu5JXL4UKefcVXO+0XvCaBfymtzZMY33ORevQqHKa6bmxltkOQpzf6ZEtbcpZIVO0
	 2BssRFvrkmkK2ZUHCX8LWNc++VWJjOvWOA5EIyeI2ccGNLG0CyWeWaOpVkhLCE5alD
	 ZHMPDS3w54o9g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0291384E9A
	for <usrp-users@lists.ettus.com>; Fri,  9 Feb 2024 05:03:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707473024; bh=xx6YKoD+4nphESoZPg9Sv46BKw6QwfvkD4rTN0DT8ZM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=bVrHID7UgBRBscWiU84BVBR8YuQU/vYSWC7RZvyoB4G7+Ht3/yqGRP5z1buyVdaVk
	 ueI+EQ0E1sJFFCF0HNPIpkauuhTBhBHzn8FDRGjl599v0C2gd3AazPAM0kYFLM+3Y5
	 3lFG6A/vFJWeAq7Fx90h+huZiSI6VRZ8es3pTN9mmlVPlvKzHXDvu+Adbl2HNvgGlI
	 92Cqlja2DkXq4I8rmo1okLNdNBxlfXq/eiold2lvbVfYDE16Go587LQpzEw5mshhqH
	 WWftT8BMr2zSKWE5g0ET99pwJvN13hyMuAlK3kjlIynsIg4kfq5t3l0IWpYsd0ufee
	 hpUCdbooq7CCA==
Date: Fri, 9 Feb 2024 10:03:44 +0000
To: usrp-users@lists.ettus.com
From: speik@hs-bremen.de
Message-ID: <fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=iQw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZUTMNSQM5P5X7YQRBVPRHDKTLKL77W2C
X-Message-ID-Hash: ZUTMNSQM5P5X7YQRBVPRHDKTLKL77W2C
X-MailFrom: speik@hs-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZUTMNSQM5P5X7YQRBVPRHDKTLKL77W2C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5162018195216899042=="

This is a multi-part message in MIME format.

--===============5162018195216899042==
Content-Type: multipart/alternative;
 boundary="b1_fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing the same problem.

I am on a Linux machine and hardware is an X300 with a UBX160.

When I am above 500 MHz the actual carrier freq becomes about 2000 MHz sm=
aller.=20

I checked it with the uhd example script=C2=A0 tx_waveforms that comes wi=
th the uhd install. Below is the output. Note that actual frequency is ne=
gative. There is no output at 915 MHz on a spectrum analyzer. Below 500 M=
Hz everything is fine.

Same happens when using Gnuradio.=20

=C2=A0Thanks

Soren

=C2=A0

---

$ ./tx_waveforms --freq 915e6 --rate 5e6 --gain 0

Creating the usrp device with: ...\
\[INFO\] \[UHD\] linux; GNU C++ version 13.1.0; Boost_107400; UHD_4.4.0.0=
+ds1-4\
\[INFO\] \[X300\] X300 initialization sequence...\
\[INFO\] \[X300\] Maximum frame size: 1472 bytes.\
\[INFO\] \[X300\] Radio 1x clock: 200 MHz\
Using Device: Single USRP:\
Device: X-Series Device\
Mboard 0: X300\
RX Channel: 0\
RX DSP: 0\
RX Dboard: A\
RX Subdev: UBX RX\
RX Channel: 1\
RX DSP: 1\
RX Dboard: B\
RX Subdev: Unknown (0xffff) - 0\
TX Channel: 0\
TX DSP: 0\
TX Dboard: A\
TX Subdev: UBX TX\
TX Channel: 1\
TX DSP: 1\
TX Dboard: B\
TX Subdev: Unknown (0xffff) - 0

Setting TX Rate: 5.000000 Msps...\
Actual TX Rate: 5.000000 Msps...

Setting TX Freq: 915.000000 MHz...\
Setting TX LO Offset: 0.000000 MHz...\
Actual TX Freq: -1085.000002 MHz...

Setting TX Gain: 0.000000 dB...\
Actual TX Gain: 0.000000 dB...

\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.\
Setting device timestamp to 0...\
Checking TX: TXLO: locked ...\
Press Ctrl + C to stop streaming...

--b1_fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I am facing the same problem.</p><p>I am on a Linux machine an=
d hardware is an X300 with a UBX160.</p><p>When I am above 500 MHz the actu=
al carrier freq becomes about 2000 MHz smaller. </p><p>I checked it with th=
e uhd example script&nbsp; tx_waveforms that comes with the uhd install. Be=
low is the output. Note that actual frequency is negative. There is no outp=
ut at 915 MHz on a spectrum analyzer. Below 500 MHz everything is fine.</p>=
<p>Same happens when using Gnuradio. </p><p>&nbsp;Thanks</p><p>Soren</p><p>=
&nbsp;</p><div contenteditable=3D"false"><hr></div><p>$ ./tx_waveforms --fr=
eq 915e6 --rate 5e6 --gain 0</p><p>Creating the usrp device with: ...<br>[I=
NFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400; UHD_4.4.0.0+ds1-4<b=
r>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum fr=
ame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>Using Dev=
ice: Single USRP:<br>Device: X-Series Device<br>Mboard 0: X300<br>RX Channe=
l: 0<br>RX DSP: 0<br>RX Dboard: A<br>RX Subdev: UBX RX<br>RX Channel: 1<br>=
RX DSP: 1<br>RX Dboard: B<br>RX Subdev: Unknown (0xffff) - 0<br>TX Channel:=
 0<br>TX DSP: 0<br>TX Dboard: A<br>TX Subdev: UBX TX<br>TX Channel: 1<br>TX=
 DSP: 1<br>TX Dboard: B<br>TX Subdev: Unknown (0xffff) - 0</p><p>Setting TX=
 Rate: 5.000000 Msps...<br>Actual TX Rate: 5.000000 Msps...</p><p>Setting T=
X Freq: 915.000000 MHz...<br>Setting TX LO Offset: 0.000000 MHz...<br>Actua=
l TX Freq: -1085.000002 MHz...</p><p>Setting TX Gain: 0.000000 dB...<br>Act=
ual TX Gain: 0.000000 dB...</p><p>[WARNING] [0/Radio#0] Attempting to set t=
ick rate to 0. Skipping.<br>Setting device timestamp to 0...<br>Checking TX=
: TXLO: locked ...<br>Press Ctrl + C to stop streaming...</p>

--b1_fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg--

--===============5162018195216899042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5162018195216899042==--
