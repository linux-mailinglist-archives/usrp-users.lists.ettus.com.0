Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F231FEE9F0
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2019 21:40:41 +0100 (CET)
Received: from [::1] (port=36226 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRj9U-00049Y-Iz; Mon, 04 Nov 2019 15:40:40 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:38315)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zcao@c3commsystems.com>)
 id 1iRj9Q-00040c-OY
 for USRP-users@lists.ettus.com; Mon, 04 Nov 2019 15:40:36 -0500
Received: by mail-qk1-f182.google.com with SMTP id e2so19006044qkn.5
 for <USRP-users@lists.ettus.com>; Mon, 04 Nov 2019 12:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:subject:message-id:date:to;
 bh=s9pHvTPeyG2rpEHnIMSh3ZPM4y9cjiRTh+9tgMKNHCo=;
 b=aoEu68B1zcefDbSi8cJfqbHs0N+iYy6GfSHjksrUQmOvhee3SgeIpyGmkJqgm+7zv7
 oilVKB1EZIUnOgDq1utinfisnYnK6NGnMAEgoO2GQcY4JLi5SIt2TzrfrdTySnZbnXJw
 GDP40p16EVC9fzG0ge7/i6NERPJPfvaflehujZecA2AhO5aOykDu9nJY4yFLEvVy/aJ5
 q/ZEE2siPm2WCGoDTwXhTIHIpBNWQMlfyr0Qxe3YDNvnYFL4mpoUEvIIVzxGWFg4eILq
 G6zsdP9OChRd8L7tUrpLH33x20A2DX5UaIxl3eZgtcda2J19wCbq1E2LzlzCTVgsm0Wb
 G1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=s9pHvTPeyG2rpEHnIMSh3ZPM4y9cjiRTh+9tgMKNHCo=;
 b=t2cRaUHSjm2+DxZlSlcMQNglmD+5rMveXWUipwmlT8zFQiXXM/AebJJRTeLbE0APu6
 X0X+kKuSPUj8L6vRKIvNx5Z2Vv/HQMMgHCzpkxUzz9ePZhSp6Ug4dhdJJTnHIoANgojI
 5gJdzxeHWGB3vCRFNl/SkzEkNbLGZIgSuY/++gQPJmxTwFsYrPf2++atD0OP/vbQ770d
 VL0Pt4awLCA4zWAKvULUo3KpHeKKVmyfu1qXm3Iglv5i8v2MLzxvyD10nRs+9UE8LzoE
 0GBQgKCIUUwPuAua73N6JF+ioBTn9Fs5bbMB+SEvqOo+G8/PFomw+jKhvnyQkT+7VJHG
 cyvA==
X-Gm-Message-State: APjAAAUdiytxPWyOz6eJLoZHsS2F4ZFXPPdSMtLoU6C0LDUVJaaEA/zl
 45rH1hStIDhAWGQ3wVV0akg6NCKw03s=
X-Google-Smtp-Source: APXvYqwYl9u6+xcK+dap4LBIOVk546nv47xeitCZa/5u0nalJ2F5d6TRDp8cyZyBbmG7jNoBkgFcug==
X-Received: by 2002:a37:aa8b:: with SMTP id t133mr2622342qke.449.1572899995687; 
 Mon, 04 Nov 2019 12:39:55 -0800 (PST)
Received: from [192.170.1.102] (exchange.sharedspectrum.com. [70.163.31.2])
 by smtp.gmail.com with ESMTPSA id s21sm3434640qkg.24.2019.11.04.12.39.54
 for <USRP-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 12:39:55 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <5D8BA051-8CC5-4A06-A56A-0E346DA718A3@c3commsystems.com>
Date: Mon, 4 Nov 2019 15:39:54 -0500
To: USRP-users <USRP-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [USRP-users] Why Underflow happens when running
 tx_samples_from_file on E310
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
Content-Type: multipart/mixed; boundary="===============5589612777734671428=="
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


--===============5589612777734671428==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1CDD0019-2EAA-4CB3-8CC1-56A3792066AD"


--Apple-Mail=_1CDD0019-2EAA-4CB3-8CC1-56A3792066AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

We are trying to get the UHD examples running on E310, with UHD 3.14, =
built from the release branch. It seems that the example tx_waveform =
works fine. But tryings to send I/Q samples from a dat file always=20
lands us with the underflow =E2=80=9CU=E2=80=9D warning. Please see the =
following screen output.=20

We tried various rates and buffer sizes. None could avoid the underflow =
warning. Did we miss any important configuration settings?

Thanks,
Arnold


root@ettus-e3xx-sg3:~# /usr/lib/uhd/examples/tx_samples_from_file --arg =
"serial=3D31819A1" --file ./datafiles/TX/pkt_1500_0.dat --rate 1e6 =
--freq 2.4e9 --gain 30 --ant TX/RX --bw 250e3 --repeat --spb 500

Creating the usrp device with: serial=3D31819A1...
[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.1-0-g0347a6d8
[INFO] [E300] Loading FPGA image: =
/usr/share/uhd/images/usrp_e310_fpga_sg3.bit...
[INFO] [E300] FPGA image loaded
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

Setting TX Rate: 1.000000 Msps...
Actual TX Rate: 1.000000 Msps...

Setting TX Freq: 2400.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 2400.000000 MHz...

Setting TX Gain: 30.000000 dB...
Actual TX Gain: 30.000000 dB...

Setting TX Bandwidth: 0.250000 MHz...
Actual TX Bandwidth: 0.250000 MHz...

Checking TX: LO: locked ...
Press Ctrl + C to stop streaming...
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU^C
Done!




--Apple-Mail=_1CDD0019-2EAA-4CB3-8CC1-56A3792066AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal;" =
class=3D"">Hi,</div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal;" class=3D""><br class=3D""></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal;" =
class=3D"">We are trying to get the UHD examples running on E310, with =
UHD 3.14, built from the release branch. It seems that the example =
tx_waveform works fine. But tryings to send I/Q samples from a dat file =
always&nbsp;</div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal;" class=3D"">lands us with the underflow =E2=80=9CU=E2=
=80=9D warning. Please see the following screen output.&nbsp;</div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal;" =
class=3D""><br class=3D""></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal;" class=3D"">We tried various rates and =
buffer sizes. None could avoid the underflow warning. Did we miss any =
important configuration settings?</div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal;" class=3D""><br =
class=3D""></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal;" class=3D"">Thanks,</div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal;" class=3D"">Arnold</div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;;" class=3D""><br =
class=3D""></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;;" class=3D""><br=
 class=3D""></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D"">root@ettus-e3xx-sg3:~# =
/usr/lib/uhd/examples/tx_samples_from_file --arg "serial=3D31819A1" =
--file ./datafiles/TX/pkt_1500_0.dat --rate 1e6 --freq 2.4e9 --gain 30 =
--ant TX/RX --bw 250e3 --repeat --spb 500</div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098); min-height: 16px;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Creating the usrp device with: =
serial=3D31819A1...</span></div><div style=3D"margin: 0px; font-stretch: =
normal; line-height: normal; font-family: &quot;Courier New&quot;; =
color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: #34bc26" class=3D"">[INFO] [UHD] </span><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">linux; =
GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.1-0-g0347a6d8</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures; color: #34bc26" class=3D"">[INFO] [E300] =
</span><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Loading FPGA image: =
/usr/share/uhd/images/usrp_e310_fpga_sg3.bit...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [E300] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">FPGA image loaded</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [E300] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Initializing core control (global =
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
background-color: rgba(0, 0, 0, 0.85098);" class=3D"">&nbsp; &nbsp; RX =
DSP: 0</div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
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
no-common-ligatures" class=3D"">Setting TX Rate: 1.000000 =
Msps...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Actual TX Rate: 1.000000 Msps...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098); min-height: 16px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Setting TX Freq: 2400.000000 =
MHz...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Setting TX LO Offset: 0.000000 MHz...</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Actual =
TX Freq: 2400.000000 MHz...</span></div><div style=3D"margin: 0px; =
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
no-common-ligatures" class=3D"">Setting TX Bandwidth: 0.250000 =
MHz...</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Actual TX Bandwidth: 0.250000 MHz...</span></div><div =
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
class=3D"">UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU^C<=
/span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Done!</span></div><br class=3D""><br class=3D"">
<br class=3D""></body></html>=

--Apple-Mail=_1CDD0019-2EAA-4CB3-8CC1-56A3792066AD--


--===============5589612777734671428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5589612777734671428==--

