Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C60C5EB7C6
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2019 20:09:16 +0100 (CET)
Received: from [::1] (port=60850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iQFok-0007X7-Fj; Thu, 31 Oct 2019 15:09:10 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:40729)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zcao@c3commsystems.com>)
 id 1iQFog-0007QU-Mh
 for USRP-users@lists.ettus.com; Thu, 31 Oct 2019 15:09:06 -0400
Received: by mail-qt1-f178.google.com with SMTP id o49so10006209qta.7
 for <USRP-users@lists.ettus.com>; Thu, 31 Oct 2019 12:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:subject:message-id:date:to;
 bh=Eu0bWBrIixUh61sXxKjy1CGfsisikR9FL7v5yXkKqx4=;
 b=kHunvOoWkczqmKKJSAzMYI9OHfPLn4VFoRptPSe/sWwIMChx24Iy9WqKu+uRRk2Jb3
 a0dzEPaV99qefmc7j8j23tOWcvFs6ot9kBHWZHiTx6PLkEq4cQdR6/nJa9E88jKN6aPQ
 OTbbUZEyQasDACZTjPrqCNsxUuSQWR1EPm5bRLEQvZs8HK7noiaOr633t+fsg8TQXXaE
 9xWKyjjeYhI5Mqz8XSBo1ZtKZ8mGqolnJN0h6vbgeZC0KriqKjn5OBtpg7mP0w94C3Fe
 evsV6zcdhIiJkputnWMe6xVJ53tlWWLtn8N9dK+30TSNutJh8oEbsZtoWU95l/UDx3RY
 xzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=Eu0bWBrIixUh61sXxKjy1CGfsisikR9FL7v5yXkKqx4=;
 b=iwOtraqrCV36BXFc1TXM8PrZOcj5ZPyosdz4McV4Jb9hc5e8+PNouxXsvKihty+Pfe
 nYnBcxzlYg2iVne8LhHUnyCt4zJS6hkn26OlSdJKO7C4UQ/JZr2XYH7qNlJpEkuLB1N4
 bsDAilvXMQmvPfvZqOpu6xl8s64GPpr6erCeXvdaycec8iaUXalqt/n2zpuhQbC02POF
 RcHSrNLo7I/R1b5/1u5WnLKuJK/35Cef9A1EuBuUUrA+tqnDd8wZakumwwnTSrlZHif3
 E4CSaxEJrzlA+LMqjZJ0O3iD6rj6PyTmIm2mKIeMyrL1a1ajLJtLDELjMAHoCn227q1U
 ryFg==
X-Gm-Message-State: APjAAAUwLsWEoPmzNJ2O9AOjQvM08zFGTxidfsFTTGuEPI1VRM152kiC
 1iork+lnriiehDBvSPcvmhQ81i9Q+Cs=
X-Google-Smtp-Source: APXvYqzr0Qb/G9SMWQ9Xkzi38tEQoHMrNtYpAVoiyQ6LrjqiD98e4Dv7wZ79NvAFiLV4FyXz3uzLsg==
X-Received: by 2002:ac8:7258:: with SMTP id l24mr7038580qtp.187.1572548905522; 
 Thu, 31 Oct 2019 12:08:25 -0700 (PDT)
Received: from [192.170.1.104] (exchange.sharedspectrum.com. [70.163.31.2])
 by smtp.gmail.com with ESMTPSA id n56sm3011006qtb.73.2019.10.31.12.08.24
 for <USRP-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Oct 2019 12:08:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <DC60473E-ABB5-49FD-8F69-E3734A4D72DB@c3commsystems.com>
Date: Thu, 31 Oct 2019 15:08:24 -0400
To: USRP-users <USRP-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [USRP-users] Problems running uhd/examples/tx_samples_from_files on
 E310
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
From: zcao--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>
Content-Type: multipart/mixed; boundary="===============4913837320500615190=="
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


--===============4913837320500615190==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_74C9D22F-D02E-4E2B-822F-492F48DBE3B2"


--Apple-Mail=_74C9D22F-D02E-4E2B-822F-492F48DBE3B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,=20

We are testing a newly acquired E310 by running UHD example =
tx_samples_from_files.cpp. The data file we use was used in testing =
other USRP E310 devices so we know it is correct. For this particular =
E310, we ran into underrun problem. The screen output looks like the =
following:

root@ettus-e3xx-sg3:~/localinstall# =
usr/lib/uhd/examples/tx_samples_from_file --rate 4000000 --freq =
2512000000 --ant TX/RX --gain 30 --bw 1000000 --file ./pkt_0238_2.dat =
--repeat --spb 5000

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.HEAD-0-gbfb9c1c7
[INFO] [E300] Loading FPGA image: =
/home/root/localinstall/usr/share/uhd/images/usrp_e310_fpga_sg3.bit...
[INFO] [E300] FPGA image loaded
[INFO] [E300] Detecting internal GPS=20
.... [INFO] [E300] GPSDO found
[INFO] [E300] Initializing core control (global registers)...

[INFO] [E300] Performing register loopback test...=20
[INFO] [E300] Register loopback test passed
[INFO] [0/Radio_0] Initializing block control (NOC ID: =
0x12AD100000000000)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit =
rates may encounter errors.
Using Device: Single USRP:
  Device: E-Series Device
  Mboard 0: E3XX SG3
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX2
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: FE-RX1
  RX Channel: 2
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX2
  RX Channel: 3
    RX DSP: 1
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX2
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: FE-TX1
  TX Channel: 2
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX2
  TX Channel: 3
    TX DSP: 1
    TX Dboard: A
    TX Subdev: FE-TX1

Setting TX Rate: 4.000000 Msps...
Actual TX Rate: 4.000000 Msps...

Setting TX Freq: 2512.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 2512.000000 MHz...

Setting TX Gain: 30.000000 dB...
Actual TX Gain: 30.000000 dB...

Setting TX Bandwidth: 1.000000 MHz...
Actual TX Bandwidth: 1.000000 MHz...

Checking TX: LO: locked ...
Press Ctrl + C to stop streaming...
=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUU^C
Done!
U
UUUUUUUUUU[INFO] [E300] Loading FPGA image: =
/home/root/localinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit..=
.
[INFO] [E300] FPGA image loaded

Any suggestions on where we should go from here are appreciated. We have =
a few questions.

1. Does RFNoC included in the default image in E310 now? If so, UHD =
3.14.1 branch and all its examples supports RFNoC? Which E310 image =
doesn=E2=80=99t include RFNoC?

2. On our old E310 platforms acquired 3 years ago, we can run TX rate =
@40MSPS. However, for this E310, there is a warning sign above says :
[WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit =
rates may encounter errors.

In fact, we tried to set rate high @40MSPS, we got the following =
messages:

[WARNING] [MULTI_USRP] The hardware does not support the requested TX =
sample rate:
Target sample rate: 40.000000 MSps
Actual sample rate: 16.000000 MSps


Are we using the right FPGA images?


Thanks,
Z. Cao

















--Apple-Mail=_74C9D22F-D02E-4E2B-822F-492F48DBE3B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">We are testing a newly acquired E310 by running UHD example =
tx_samples_from_files.cpp. The data file we use was used in testing =
other USRP E310 devices so we know it is correct. For this particular =
E310, we ran into underrun problem. The screen output looks like the =
following:</div><div class=3D""><br class=3D""></div><div class=3D""><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">root@ettus-e3xx-sg3:~/localinstall# =
usr/lib/uhd/examples/tx_samples_from_file --rate 4000000 --freq =
2512000000 --ant TX/RX --gain 30 --bw 1000000 --file ./pkt_0238_2.dat =
--repeat --spb 5000</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098); =
min-height: 16px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""></span><br class=3D""></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Creating =
the usrp device with: ...</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #34bc26" class=3D"">[INFO] [UHD] =
</span><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.HEAD-0-gbfb9c1c7</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #34bc26" class=3D"">[INFO] [E300] =
</span><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Loading FPGA image: =
/home/root/localinstall/usr/share/uhd/images/usrp_e310_fpga_sg3.bit...</sp=
an></div><div style=3D"margin: 0px; font-stretch: normal; line-height: =
normal; font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [E300] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">FPGA image loaded</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [E300] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Detecting internal =
GPS&nbsp;</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">.... </span><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #34bc26" class=3D"">[INFO] [E300] =
</span><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">GPSDO found</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #34bc26" class=3D"">[INFO] [E300] =
</span><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Initializing core control (global =
registers)...</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098); =
min-height: 16px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""></span><br class=3D""></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [E300] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Performing register loopback =
test...&nbsp;</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: #34bc26" class=3D"">[INFO] [E300] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Register =
loopback test passed</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #34bc26" class=3D"">[INFO] [0/Radio_0] =
</span><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Initializing block control (NOC ID: =
0x12AD100000000000)</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: #34bc26" class=3D"">[INFO] [0/DDC_0] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Initializing block control (NOC ID: =
0xDDC0000000000000)</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: #34bc26" class=3D"">[INFO] [0/DUC_0] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Initializing block control (NOC ID: =
0xD0C0000000000002)</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: #afad24" class=3D"">[WARNING] [RFNOC] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">[legacy_compat] No FIFO detected. Higher transmit rates may =
encounter errors.</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Using Device: Single USRP:</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; Device: E-Series =
Device</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; Mboard 0: E3XX SG3</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; RX Channel: 0</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
&nbsp; RX DSP: 0</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; RX Dboard: A</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; RX Subdev: =
FE-RX2</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; RX Channel: 1</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp; &nbsp; RX DSP: 1</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
&nbsp; RX Dboard: A</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; RX Subdev: FE-RX1</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
RX Channel: 2</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; RX DSP: 0</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; RX Dboard: =
A</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; RX Subdev: FE-RX2</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
RX Channel: 3</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; RX DSP: 1</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; RX Dboard: =
A</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; RX Subdev: FE-RX1</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
TX Channel: 0</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX DSP: 0</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; TX Dboard: =
A</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX Subdev: FE-TX2</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
TX Channel: 1</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX DSP: 1</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; TX Dboard: =
A</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX Subdev: FE-TX1</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
TX Channel: 2</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX DSP: 0</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; TX Dboard: =
A</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX Subdev: FE-TX2</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
TX Channel: 3</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX DSP: 1</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; TX Dboard: =
A</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; TX Subdev: FE-TX1</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098); min-height: 16px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Setting TX Rate: 4.000000 =
Msps...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Actual TX Rate: 4.000000 Msps...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098); min-height: 16px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Setting TX Freq: 2512.000000 =
MHz...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Setting TX LO Offset: 0.000000 MHz...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Actual =
TX Freq: 2512.000000 MHz...</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098); min-height: 16px;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Setting TX Gain: 30.000000 =
dB...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Actual TX Gain: 30.000000 dB...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098); min-height: 16px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Setting TX Bandwidth: 1.000000 =
MHz...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Actual TX Bandwidth: 1.000000 MHz...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098); min-height: 16px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Checking TX: LO: locked =
...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Press Ctrl + C to stop streaming...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU^C</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">Done!</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">U</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">UUUUUUUUUU</span><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [E300] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Loading FPGA image: =
/home/root/localinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit..=
.</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: #34bc26" class=3D"">[INFO] [E300] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">FPGA =
image loaded</span></div></div><div class=3D""><br class=3D""></div><div =
class=3D"">Any suggestions on where we should go from here are =
appreciated. We have a few questions.</div><div class=3D""><br =
class=3D""></div><div class=3D"">1. Does RFNoC included in the default =
image in E310 now? If so, UHD 3.14.1 branch and all its examples =
supports RFNoC? Which E310 image doesn=E2=80=99t include =
RFNoC?</div><div class=3D""><br class=3D""></div><div class=3D"">2. On =
our old E310 platforms acquired 3 years ago, we can run TX rate @40MSPS. =
However, for this E310, there is a warning sign above says :</div><div =
class=3D""><span style=3D"font-family: &quot;Courier New&quot;; =
background-color: rgba(0, 0, 0, 0.85098); font-variant-ligatures: =
no-common-ligatures; color: rgb(175, 173, 36);" class=3D"">[WARNING] =
[RFNOC]&nbsp;</span><span style=3D"caret-color: rgb(244, 244, 244); =
color: rgb(244, 244, 244); font-family: &quot;Courier New&quot;; =
background-color: rgba(0, 0, 0, 0.85098); font-variant-ligatures: =
no-common-ligatures;" class=3D"">[legacy_compat] No FIFO detected. =
Higher transmit rates may encounter errors.</span></div><div =
class=3D""><span style=3D"caret-color: rgb(244, 244, 244); color: =
rgb(244, 244, 244);" class=3D""><br class=3D""></span></div><div =
class=3D""><span style=3D"caret-color: rgb(244, 244, 244);" class=3D"">In =
fact, we tried to set rate high @40MSPS, we got the following =
messages:</span></div><div class=3D""><span style=3D"caret-color: =
rgb(244, 244, 244);" class=3D""><br class=3D""></span></div><div =
class=3D""><div style=3D"margin: 0px; font-stretch: normal; line-height: =
normal; font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #afad24" =
class=3D"">[WARNING] [MULTI_USRP] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">The =
hardware does not support the requested TX sample rate:</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Target =
sample rate: 40.000000 MSps</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Actual sample rate: 16.000000 =
MSps</span></div></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Are we =
using the right FPGA images?</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D""><br =
class=3D""></span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Thanks,</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D"">Z. Cao</div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D""><br =
class=3D""></span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D""><br =
class=3D""></span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D""><br =
class=3D""></span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D""><br =
class=3D""></span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""><br class=3D""></span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D""><br =
class=3D""></span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""><br class=3D""></span></div></body></html>=

--Apple-Mail=_74C9D22F-D02E-4E2B-822F-492F48DBE3B2--


--===============4913837320500615190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4913837320500615190==--

