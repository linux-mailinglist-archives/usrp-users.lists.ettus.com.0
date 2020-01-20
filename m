Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1715F14211E
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jan 2020 01:50:27 +0100 (CET)
Received: from [::1] (port=48234 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itLGn-00055P-NE; Sun, 19 Jan 2020 19:50:21 -0500
Received: from mail-lf1-f50.google.com ([209.85.167.50]:42646)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jmcrossen80@gmail.com>)
 id 1itLGk-0004zH-AF
 for usrp-users@lists.ettus.com; Sun, 19 Jan 2020 19:50:18 -0500
Received: by mail-lf1-f50.google.com with SMTP id y19so22641289lfl.9
 for <usrp-users@lists.ettus.com>; Sun, 19 Jan 2020 16:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=MeEt4U1nFKazI5GhL9arwaCQy5uOStpmSoY1qUYV5Pc=;
 b=iBEHtfOUAwYZLXzkc2ZozfuoAlCQ4LF1DUOHxK5EV6Fnueh0LHHRhgSIqrRyBQA7Kq
 WPmMnRB3n49SeSlYk4ulbyfDEA9XjsxM2GdNvzQtbgYCqSvV8qv9Zlhypf8J4KSgPI45
 aoffAh9gC/9Ko69uBKAPeXu0N19MXzzUQ8TNBvNdrSfqMyM5W1cE/hkvuYSVpIJWvhJE
 DybFzUFBPifGb0DyeQA0lXIYmXabx37YcYldtIb22JC3zTehU5nDMPFTrrIpfo6fH6UA
 FeCc7KUcahyQJkrexzFR3+W2YiWUpIky93dO+/tmpy3aqgLRLZnoWkuVeQ+ir5nCvD95
 wEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MeEt4U1nFKazI5GhL9arwaCQy5uOStpmSoY1qUYV5Pc=;
 b=K4mbTDw+P5qDdn8ezLaRo1uPmXkIl/opdK+J+GD0LLiVG7bNbh4BcVuvPsAiQs5a5e
 WyGwFLllsuKG5I2CpQAZfbBVpFIx+ilQPdEMKhRY+raVrmgP7jQmP5dvVGQAufTL9srH
 IFP8YxHSqLVNfEeMvxElM8B2fmH/5/ZahOBHSAwuKkFDyylAH9/5sfIrM44R8jp5mjPj
 HDsoujvZunNj3h9z+mADS7GeQqcBl+QkkKUQCJQfZsxXeIqicNt4SKKNVqTuOau56dcJ
 B5j6tzbF2jLCCsTGa5VOqgQyUbyCp02JmzxECKmg4X4ggb9i7YKbzmf0XMxUFe0z6z0A
 PUuw==
X-Gm-Message-State: APjAAAU/5P61aWM8Zb04sS+Ds1IjY8j8b8ZLGkatqo9UD/yyoImxscvO
 EqAUU/P8qMjeLYQvAc1n6qFt92vBmxiOCUJqSCV1iUCp
X-Google-Smtp-Source: APXvYqw3VnEYrlR73pgqK/l12axxXRZWa5vBeHP7Fp7bFJn6GwwgDruzb0rlMcEDYtvh1I6BmK5c4KOICCIjjKaTFw0=
X-Received: by 2002:ac2:4476:: with SMTP id y22mr11732105lfl.169.1579481376414; 
 Sun, 19 Jan 2020 16:49:36 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 11:19:24 +1030
Message-ID: <CAEnX9dG3dQqn9QyMw+gr6aw-HaQOb+aoZ6zYpQeFowrMZyoF9A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] uhd_find_devices - No UHD Devices Found
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Joe crossen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe crossen <jmcrossen80@gmail.com>
Content-Type: multipart/mixed; boundary="===============7870482941329007728=="
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

--===============7870482941329007728==
Content-Type: multipart/alternative; boundary="0000000000005eddf7059c87aa8b"

--0000000000005eddf7059c87aa8b
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have 2 USRP E312 devices.
- one has a GNU Radio image
- one has a Redhawk SDR image -
https://geontech.com/redhawk-sdr-and-an-ettus-e310/

With both devices turned on, I am attempting to locate them using
uhd_find_devices (and also the probe command), but it says No UHD devices
Found. I have 2 host PCs, one running Ubuntu, one running CentOS.

Everything is on the same network. Everything can ping everything.

I have used Wireshark, and noticed that the uhd_find_devices command
broadcasts a UDP package throughout the network, but there is no response.

However, I have noticed that all UHD driver versions are different:
- USRP1 (redhawk image) = 3.11.0.1-0
- USRP2 (gnuradio image) = 003.009.002
- Ubuntu PC = 3.14.1
- CentOS PC = 003.010.001.000-0
Would this be the problem? if so, how do I go about installing specific
versions of UHD on my PCs? (or possible the USRP devices - though I would
rather not mess with the images)

Thanks in advance everyone!
Joe

--0000000000005eddf7059c87aa8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I have 2 USRP E=
312 devices.</div><div>- one has a GNU Radio image <br></div><div>- one has=
 a Redhawk SDR image - <a href=3D"https://geontech.com/redhawk-sdr-and-an-e=
ttus-e310/">https://geontech.com/redhawk-sdr-and-an-ettus-e310/</a></div><d=
iv></div><div><br></div><div>With both devices turned on, I am attempting t=
o locate them using uhd_find_devices (and also the probe command), but it s=
ays No UHD devices Found. I have 2 host PCs, one running Ubuntu, one runnin=
g CentOS.</div><div><br></div><div><div>Everything is on the same network. =
Everything can ping everything. </div></div><div><br></div><div>I have used=
 Wireshark, and noticed that the uhd_find_devices command broadcasts a UDP =
package throughout the network, but there is no response. <br></div><div><b=
r></div><div><div>However, I have noticed that all UHD driver versions are =
different:</div><div>- USRP1 (redhawk image) =3D 3.11.0.1-0</div><div>- USR=
P2 (gnuradio image) =3D 003.009.002</div><div>- Ubuntu PC =3D 3.14.1</div><=
div>- CentOS PC =3D 003.010.001.000-0</div><div></div><div>Would this be th=
e problem? if so, how do I go about installing specific versions of UHD on =
my PCs? (or possible the USRP devices - though I would rather not mess with=
 the images)</div><div><br></div><div>Thanks in advance everyone!</div><div=
>Joe<br></div></div></div>

--0000000000005eddf7059c87aa8b--


--===============7870482941329007728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7870482941329007728==--

