Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B148B2FC6
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 13:56:48 +0200 (CEST)
Received: from [::1] (port=57482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9T92-0002WQ-I8; Sun, 15 Sep 2019 07:56:44 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:39427)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wa2el.ali@gmail.com>) id 1i9T8z-0002Ro-N2
 for USRP-users@lists.ettus.com; Sun, 15 Sep 2019 07:56:41 -0400
Received: by mail-ot1-f42.google.com with SMTP id n7so33259022otk.6
 for <USRP-users@lists.ettus.com>; Sun, 15 Sep 2019 04:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cK+lBFTMLP3uoC1Cg916+fz9lhDjUhyeOibYbe+tn5E=;
 b=jcoGWIuIJqPgQ58i9bgdkKtDdQB2LxCAJfIDk64mCKlCkkztkgLjsEzjoeoJjMDwcX
 hA4wG0pnXjKscIzUI5/xC3erssbmaRHRX2iLLlM+p8Hx9E4jeldUawa3Bc+2EBix6jE3
 p+hd+GxeGtkjcJ21NWPIVER/xjTycZt6gkgCX/4EOTf/GN2i3+AbQ5nmsDLaUYNnXB0F
 0L9tOq4mZmTIy+EKYT1ZuWQtOtygbI6/LvzuBCoHjbBn06JcfBcenO3e1uVNuVDZwWQi
 8lLjtewQGxxmKl1Xqq4PLrTlg7frxU2LvXJlcmqCJur4nn/HTTAeeOL6VPrS2E8HoXMU
 kQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cK+lBFTMLP3uoC1Cg916+fz9lhDjUhyeOibYbe+tn5E=;
 b=rvPlMEJiqx75bjQFJg3WH4WrEq/BrF1VihuYwuph5+SDyuOAh00IdHUazerXsJVcUY
 fyxDM8oZaz9eygj29H1dYrbXsTKEhNZmot3xeqGLB6GN0h5IyestcA4Pn+ogVo8vvmQ7
 7/Gl+/7QMckCTWBerAqSVLljqtOo8zx+GMXy1cXh9P0f7M/WDXjzOgAP7WClx58ofgbG
 l946GAaTpJbgmMv6FVAbQs9mbtC2+HGRv9w4rMWQjjDxO3qcE1SM9nNODur67tbXV9y0
 7Uw3EzHmtn+/kokad4int7AbtFznXf8BQ78EplJtR602p6oVmR0gdWvoOToWDsg9rWIq
 mtHw==
X-Gm-Message-State: APjAAAViAF6incsdj9WIE8qBTMrM6GC+hwKWUZueMPUUMgHK2Wc15/QI
 GKBRYQGIybswwchAi54x6CfPnEjm4mPcaZoI43RBqxV2Fvw=
X-Google-Smtp-Source: APXvYqy7akA3FevaxslbccULhnEmKId1NoBCf738pUKyqM/E1kKxDGZjtETTRC8Jn5pY0/+B5CPHmEDGVSfbWknN5bA=
X-Received: by 2002:a9d:6405:: with SMTP id h5mr1676990otl.115.1568548560584; 
 Sun, 15 Sep 2019 04:56:00 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 15 Sep 2019 13:55:49 +0200
Message-ID: <CAOCyOuMCrkq4QrLEHpPFK-K8nRhX-FSTibcHyP5j2iJ4o=9S2g@mail.gmail.com>
To: USRP-users@lists.ettus.com
Subject: [USRP-users] cannot load fpga to b205mini from wandboard
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
From: Wael Ali via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wael Ali <wa2el.ali@gmail.com>
Content-Type: multipart/mixed; boundary="===============1643200882045067604=="
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

--===============1643200882045067604==
Content-Type: multipart/alternative; boundary="000000000000c4443e0592962b6f"

--000000000000c4443e0592962b6f
Content-Type: text/plain; charset="UTF-8"

Dear all,
please help me with this issue,

I've built a poky distro. with yocto project for wandboard and uhd package
is pre-installed.

the problem is, when I tried to use "uhd_usrp_probe"  with (three different
usrp 205mini) I faced the following error

root@wandboard:~# uhd_usrp_probe
linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-release

-- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
-- Detected Device: B205mini
-- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...
39%Error: EnvironmentError: IOError: load_fpga: cannot write bitstream to
FX3 (-4: LIBUSB_ERROR_CODE -4)
root@wandboard:~# uhd_usrp_probe
linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-release

-- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
-- Detected Device: B205mini
-- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...
38%Error: EnvironmentError: IOError: load_fpga: cannot write bitstream to
FX3 (-4: LIBUSB_ERROR_CODE -4)
root@wandboard:~# uhd_usrp_probe
linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-release

-- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
-- Detected Device: B205mini
-- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...
38%Error: EnvironmentError: IOError: load_fpga: cannot write bitstream to
FX3 (-4: LIBUSB_ERROR_CODE -4)

As you can see, uhd: 3.10.2
also, I faced the same problem after re-downloading fpga image from ettus
website

thanks in advance

--000000000000c4443e0592962b6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,=C2=A0<div>please help me with this issue,</div><=
div><br></div><div>I&#39;ve built a poky distro. with yocto project for wan=
dboard and uhd package is pre-installed.</div><div><br></div><div>the probl=
em is, when I tried to use &quot;uhd_usrp_probe&quot;=C2=A0 with (three dif=
ferent usrp 205mini) I faced the following error</div><div><br></div><div>r=
oot@wandboard:~# uhd_usrp_probe <br>linux; GNU C++ version 7.3.0; Boost_106=
600; UHD_003.010.002.000-release<br><br>-- Loading firmware image: /usr/sha=
re/uhd/images/usrp_b200_fw.hex...<br>-- Detected Device: B205mini<br>-- Loa=
ding FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin... 39%Error: =
EnvironmentError: IOError: load_fpga: cannot write bitstream to FX3 (-4: LI=
BUSB_ERROR_CODE -4)<br>root@wandboard:~# uhd_usrp_probe <br>linux; GNU C++ =
version 7.3.0; Boost_106600; UHD_003.010.002.000-release<br><br>-- Loading =
firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...<br>-- Detected De=
vice: B205mini<br>-- Loading FPGA image: /usr/share/uhd/images/usrp_b205min=
i_fpga.bin... 38%Error: EnvironmentError: IOError: load_fpga: cannot write =
bitstream to FX3 (-4: LIBUSB_ERROR_CODE -4)<br>root@wandboard:~# uhd_usrp_p=
robe <br>linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-re=
lease<br><br>-- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.=
hex...<br>-- Detected Device: B205mini<br>-- Loading FPGA image: /usr/share=
/uhd/images/usrp_b205mini_fpga.bin... 38%Error: EnvironmentError: IOError: =
load_fpga: cannot write bitstream to FX3 (-4: LIBUSB_ERROR_CODE -4)<br></di=
v><div><br></div><div>As you can see, uhd: 3.10.2</div><div>also, I faced t=
he same problem after re-downloading fpga image from ettus website</div><di=
v><br></div><div>thanks in advance</div></div>

--000000000000c4443e0592962b6f--


--===============1643200882045067604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1643200882045067604==--

