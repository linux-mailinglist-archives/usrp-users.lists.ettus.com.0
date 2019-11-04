Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B7CEE460
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2019 17:05:35 +0100 (CET)
Received: from [::1] (port=60470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRerD-00043y-QU; Mon, 04 Nov 2019 11:05:31 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:41241)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zcao@c3commsystems.com>)
 id 1iRer9-0003yQ-FW
 for USRP-users@lists.ettus.com; Mon, 04 Nov 2019 11:05:27 -0500
Received: by mail-qk1-f177.google.com with SMTP id m125so18068955qkd.8
 for <USRP-users@lists.ettus.com>; Mon, 04 Nov 2019 08:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:subject:message-id:date:to;
 bh=NzTrTrXQ2L8peO88th+lb88y24GbTjNE6Kx3ok7IoK0=;
 b=Sta0gZ2EWS2FxOcM+w3EuVkifiUNB5OR3cg0eq/AaGeCrlWWRPZm77e+3dKHUNCJgK
 MZtMu8mfXIu8ebhtCSwo9IVJgP5x3H9BiX7Gy61b+nhgQ1V+mysZqfiwMNXAZLEDG6Gt
 H3Gv4zGq9MISfuhbHaavO3wkf0BQyYqYnOMJxGKrWQG/snC0qgdZE+UrrQPiNQivcN4A
 29z2ZHsHmTnTxvld62AbrpezjtL3trKAwoSi24Xm4lsqkvKDWmbbxreYy0PKKNyYzUkO
 KIrFCGb1SSkw0VZX3nYTaMIlr8HXi8d5wu66krFXBlq9cReuCQ6AxSL6IrCRawJmcv8e
 RWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=NzTrTrXQ2L8peO88th+lb88y24GbTjNE6Kx3ok7IoK0=;
 b=m+p/YSNE0rf6TgnZ799lx6Jx74k4I4awfoALGTmvR8kHlSF2KiCZpZ2Kv55gbXFSjq
 KhXCFZ+gFrUO7gKWuigjIpDv/QtWuVpO3I+/4o7gOmIvEdb5FFneoJ+/ZgU5kSV70yDR
 fbKxQBLFp5pmpPWwVvnrLyx6YR3vp1CAuZr16/8kJ0gQymccbLiYQcyhxeQmNubhIpIl
 farobttfxjuFK5+gs5wtWP5RYQIKrD0+Gy20h4fc992lDAJrSuu26MbVhJOiILp9XJVL
 bJcqU0JGWGgyvXtsB1FhZnUPLw56Qyqvb8/1d3M4qXTB93/DYvNdbnYxmBOeKc3Am8yB
 JoMA==
X-Gm-Message-State: APjAAAX7vCk4xH4LP6lqF4i4Z+B0DZ6+bVLji1LOTPxSjK0jH1kcyZh9
 SWf0SouOOt1yG6Y1x51uLfnRcDajSsY=
X-Google-Smtp-Source: APXvYqxtTVCDWGjUIw9aLJoObw8svM7VKE1D1VjOBgdf3xWbKgR4+m0zohUzBwfrHXOerjAv/HxD9g==
X-Received: by 2002:a37:2716:: with SMTP id n22mr14050150qkn.500.1572883486258; 
 Mon, 04 Nov 2019 08:04:46 -0800 (PST)
Received: from [192.170.1.102] (exchange.sharedspectrum.com. [70.163.31.2])
 by smtp.gmail.com with ESMTPSA id e44sm10440753qtc.53.2019.11.04.08.04.45
 for <USRP-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 08:04:45 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <F8807E43-2706-48BD-84BC-3C53C4EE65CB@c3commsystems.com>
Date: Mon, 4 Nov 2019 11:04:44 -0500
To: USRP-users <USRP-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310
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
Content-Type: multipart/mixed; boundary="===============8046823863791414128=="
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


--===============8046823863791414128==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_313BDADB-118A-403E-8953-555A6CF1B794"


--Apple-Mail=_313BDADB-118A-403E-8953-555A6CF1B794
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,=20

We are trying to run UHD examples on E310. The process we took are as =
the following.

1. Flash a fresh SDcard using the dev image located at =
http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/ =
<http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/>

2. Cross-compile UHD source code on a development machine and install =
the build on to the E310 device using sshfs. Note that this is a =
different from what is proposed in AN-311. We installed UHD 3.14 onto =
the device directly.

3. Running /usr/bin/uhd_find_devices, we got the following output, looks =
normal.

[INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.1-0-g0347a6d8
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 31819A1
    name:=20
    node: /dev/axi_fpga
    product: E3XX SG3
    type: e3x0


However, we ran into the following problems, which seem to be related.

1. We cannot run /usr/bin/uhd_usrp_probe, because of the FPGA =
compatibility. Specifically, the error messages are

Error: RuntimeError: Expected FPGA compatibility number 255.x, but got =
14.0:
The FPGA build is not compatible with the host code build.
Please run:

 "/usr/lib/uhd/utils/uhd_images_downloader.py"


2. But running the above python script gives us the following error =
messages.

-sh: /usr/lib/uhd/utils/uhd_images_downloader.py: =
/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/python2: =
bad interpreter: No such file or directory/


Note that the python script is looking for the SDK, which should be on =
the development machine, instead of the device itself.

Would really appreciate it if anyone knows how to handle above issues in =
E310 device itself?

Thanks,
Arnold


--Apple-Mail=_313BDADB-118A-403E-8953-555A6CF1B794
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">We are trying to run UHD examples on E310. The process we =
took are as the following.</div><div class=3D""><br class=3D""></div><div =
class=3D"">1. Flash a fresh SDcard using the dev image located =
at&nbsp;<a =
href=3D"http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/"=
 =
class=3D"">http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg=
3/</a></div><div class=3D""><br class=3D""></div><div class=3D"">2. =
Cross-compile UHD source code on a development machine and install the =
build on to the E310 device using sshfs. Note that this is a different =
from what is proposed in AN-311. We installed UHD 3.14 onto the device =
directly.</div><div class=3D""><br class=3D""></div><div class=3D"">3. =
Running /usr/bin/uhd_find_devices, we got the following output, looks =
normal.</div><div class=3D""><br class=3D""></div><div class=3D""><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: #34bc26" =
class=3D"">[INFO] [UHD] </span><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">linux; GNU C++ version 4.9.2; =
Boost_105700; UHD_3.14.1.1-0-g0347a6d8</span></div><div style=3D"margin: =
0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" =
class=3D"">--------------------------------------------------</span></div>=
<div style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">-- UHD =
Device 0</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">--------------------------------------------------</span></div>=
<div style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Device =
Address:</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; serial: 31819A1</span></div><div style=3D"margin:=
 0px; font-stretch: normal; line-height: normal; font-family: =
&quot;Courier New&quot;; color: rgb(244, 244, 244); background-color: =
rgba(0, 0, 0, 0.85098);" class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D"">&nbsp; &nbsp; =
name:&nbsp;</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; node: /dev/axi_fpga</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">&nbsp; =
&nbsp; product: E3XX SG3</span></div><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp; &nbsp; type: =
e3x0</span></div><div class=3D"">
<br class=3D""></div></div><div class=3D""><br class=3D""></div><div =
class=3D"">However, we ran into the following problems, which seem to be =
related.</div><div class=3D""><br class=3D""></div><div class=3D"">1. We =
cannot run /usr/bin/uhd_usrp_probe, because of the FPGA compatibility. =
Specifically, the error messages are</div><div class=3D""><br =
class=3D""></div><div class=3D""><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">Error: RuntimeError: Expected FPGA =
compatibility number 255.x, but got 14.0:</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">The =
FPGA build is not compatible with the host code build.</span></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">Please =
run:</span></div><div style=3D"margin: 0px; font-stretch: normal; =
line-height: normal; font-family: &quot;Courier New&quot;; color: =
rgb(244, 244, 244); background-color: rgba(0, 0, 0, 0.85098); =
min-height: 16px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""></span><br class=3D""></div><div =
style=3D"margin: 0px; font-stretch: normal; line-height: normal; =
font-family: &quot;Courier New&quot;; color: rgb(244, 244, 244); =
background-color: rgba(0, 0, 0, 0.85098);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;"/usr/lib/uhd/utils/uhd_images_downloader.py"</span></div=
></div><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">2. But running the above python script =
gives us the following error messages.</div><div class=3D""><br =
class=3D""></div><div class=3D""><div style=3D"margin: 0px; =
font-stretch: normal; line-height: normal; font-family: &quot;Courier =
New&quot;; color: rgb(244, 244, 244); background-color: rgba(0, 0, 0, =
0.85098);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">-sh: =
/usr/lib/uhd/utils/uhd_images_downloader.py: =
/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/python2: =
bad interpreter: No such file or directory/</span></div></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Note that the python script is looking for the SDK, which =
should be on the development machine, instead of the device =
itself.</div><div class=3D""><br class=3D""></div><div class=3D"">Would =
really appreciate it if anyone knows how to handle above issues in E310 =
device itself?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks,</div><div class=3D"">Arnold</div><div class=3D""><br =
class=3D""></div></body></html>=

--Apple-Mail=_313BDADB-118A-403E-8953-555A6CF1B794--


--===============8046823863791414128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8046823863791414128==--

