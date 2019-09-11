Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F17B04BB
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 22:08:11 +0200 (CEST)
Received: from [::1] (port=55278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i88uN-0005hy-Q8; Wed, 11 Sep 2019 16:08:07 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:43795)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <javiercba@gmail.com>) id 1i88uJ-0005Te-VQ
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 16:08:04 -0400
Received: by mail-io1-f48.google.com with SMTP id r8so23906700iol.10
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 13:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=UQl6TRaLtn3y+1YCoAIF/0LsvrhWa0OdUptKmCr4b3g=;
 b=m1L2JjlCf6L0ixjEerCLyal9Gl99VmMTdOnb7BUabGooXrfaV5oF8hpFasfXcaB6RO
 Gt4xCDngjkyB8jBZEG9RNRm+oVYOxYKrmQwhU0aV7BH5brh4XeTSs9DLlYxmnfqlPtpg
 ExRo5GfEGqEPOOMgcEMR7U6SjfEtAOszJReEa4ouInonLTgOEZa7e1+vOrg9USU//XF+
 pTvqeD6jllUmm9RRYwjELGXl7q86TXQs0jtkGISu6qlGGyYmaCKpZL3lZFvCEQ913h5k
 UPQ3FwjSAyZl7KJFk+N0ReqEUHKhTQ14A1cTmMPmdDdTbKDGTr14pM3vrXZy4wb8YZqy
 j4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=UQl6TRaLtn3y+1YCoAIF/0LsvrhWa0OdUptKmCr4b3g=;
 b=dMGz3aE58wjiNGljatLgStLN5QPLJAEGYpAMqm5L02EdBa96jomRGgzRgDmdhG6rfH
 VCBFiFeuXfbKHamJzsimOVxNLjANeDjaMAYhMogs7h6HdKUXAeWTIWtT9BL9c7haReS2
 Bzj68GZ9cmoMa7TQAihVHMQZZcAlQa3/JNB/bHnDHfJalGBPNJiKzfCyO78FH4psmCgK
 WI7ukd9AXnEVjlR9xev6rv0QPkUllwp3fA9cIqnTtcszRnroI4/gcylzNAZ8JkZ84lXT
 CTs87JXb/MkgmoDLYPQG2Nkpezfv/7su8djdMBoqZwGMG+AkSipRtrNSRhAMKmB8RFlO
 TN3Q==
X-Gm-Message-State: APjAAAUFDv4S9Lki/9LJkLtCfOc+JtzvLLMaWNUuAgrtoxT8kBt4P0rM
 OIh9qGK1LgkUncBoTj0S4Om2lPRXdKGENx5512rriVClyjw=
X-Google-Smtp-Source: APXvYqwyfNr73J2EKbA8PoSceRCzdarWARAPZdukj+G+4OG83HDVTTSBv7bRVmgV94EQX5MYyhZXDqzTCWRzSG//AQw=
X-Received: by 2002:a6b:3906:: with SMTP id g6mr18492201ioa.48.1568232442897; 
 Wed, 11 Sep 2019 13:07:22 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 11 Sep 2019 17:09:51 -0300
Message-ID: <CAMGw0PawXrX2hyLvDSPVqxhpccCh+L6HP64OmbOTqA21C6i6gA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B100 Help
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
From: Javier Uranga via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Javier Uranga <javiercba@gmail.com>
Content-Type: multipart/mixed; boundary="===============4551589593209922236=="
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

--===============4551589593209922236==
Content-Type: multipart/alternative; boundary="000000000000af2b6105924c91f4"

--000000000000af2b6105924c91f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Members in the List,

I'm working with an old USRP B100 that came with a cubesat development  kit=
,

Now suddenly stop working, no longer respond to:

uhd_find_devices
linux; GNU C++ version 5.3.1 20151219; Boost_105800;
UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
No UHD Devices Found

uhd_usrp_probe
linux; GNU C++ version 5.3.1 20151219; Boost_105800;
UHD_003.009.002-=E2=81=A00-=E2=81=A0unknown
Error: LookupError: KeyError: No devices found for -=E2=81=A0-=E2=81=A0-=E2=
=81=A0-=E2=81=A0-=E2=81=A0>
Empty Device Address

I must to say that, until few minutes before, the device showed no
problems, but after a switch OFF/ON the device, problems came up

And when I ask:

$lsusb
the device found is:
Bus 003 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013
EZ-=E2=81=A0USB FX2 USB 2.0 Development Kit

As you can see, the detected device is not longer Ettus USRP as use to be.
More over, in the front panel, new led is on, there is a new led in ON
status, the LED B: FPGA loaded
(in addition to:
LED A: transmitting,    ON
LED C: receiving,          ON
LED D: FPGA loaded,   OFF
LED E: reference lock, ON
LED F: board power,     ON )

I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04 and GNU
RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, But the
USRP is no longer detected.

drivers in Ubuntu 16.04:
/usr/share/uhd/images$ ls
usrp_b100_fw.ihx
usrp_b100_fpga.bin

What can be wrong ?, it's Firmware problem ?
How can I solve it?

I'll be very grateful with any comments or suggestions

Best Regards,
Javier Nicolas

--000000000000af2b6105924c91f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;font-size:small">Dear Members in the List,<br><br>I&#39;=
m working with an old USRP B100 that came with a cubesat development =C2=A0=
kit,<br><br>Now suddenly stop working, no longer respond to:<br><br>uhd_fin=
d_devices<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_00=
3.009.002-=E2=81=A00-=E2=81=A0unknown<br>No UHD Devices Found<br><br>uhd_us=
rp_probe<br>linux; GNU C++ version 5.3.1 20151219; Boost_105800;<br>UHD_003=
.009.002-=E2=81=A00-=E2=81=A0unknown<br>Error: LookupError: KeyError: No de=
vices found for -=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0-=E2=81=A0&gt;<br>E=
mpty Device Address<br><br>I must to say that, until few minutes before, th=
e device showed no<br>problems, but after a switch OFF/ON the device, probl=
ems came up<br><br>And when I ask:<br><br>$lsusb<br>the device found is:<br=
>Bus 003 Device 003: ID 04b4:8613 Cypress Semiconductor Corp. CY7C68013<br>=
EZ-=E2=81=A0USB FX2 USB 2.0 Development Kit<br><br>As you can see, the dete=
cted device is not longer Ettus USRP as use to be. More over, in the front =
panel, new led is on, there is a new led in ON status, the LED B: FPGA load=
ed<br>(in addition to:<br>LED A: transmitting, =C2=A0 =C2=A0ON<br>LED C: re=
ceiving, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ON<br>LED D: FPGA loaded, =C2=A0=
 OFF<br>LED E: reference lock, ON<br>LED F: board power, =C2=A0 =C2=A0 ON )=
<br><br>I already re installed the GNU RADIO 3.7.9 drivers for Ubuntu 16.04=
 and GNU RADIO 3.7.11 for Ubuntu 18.04, all systems where it use to work, B=
ut the USRP is no longer detected.<br><br>drivers in Ubuntu 16.04:<br>/usr/=
share/uhd/images$ ls<br>usrp_b100_fw.ihx<br>usrp_b100_fpga.bin =C2=A0 <br><=
br>What can be wrong ?, it&#39;s Firmware problem ?<br>How can I solve it?<=
br><br>I&#39;ll be very grateful with any comments or suggestions<br><br>Be=
st Regards,<br>Javier Nicolas<br></div></div>

--000000000000af2b6105924c91f4--


--===============4551589593209922236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4551589593209922236==--

