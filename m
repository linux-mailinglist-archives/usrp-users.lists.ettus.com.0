Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5777C3C3
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2019 15:39:43 +0200 (CEST)
Received: from [::1] (port=39860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsopP-00082q-P5; Wed, 31 Jul 2019 09:39:39 -0400
Received: from mail-pf1-f179.google.com ([209.85.210.179]:34889)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mitch.grabner@gmail.com>)
 id 1hsopL-0007wz-Vf
 for usrp-users@lists.ettus.com; Wed, 31 Jul 2019 09:39:36 -0400
Received: by mail-pf1-f179.google.com with SMTP id u14so31915555pfn.2
 for <usrp-users@lists.ettus.com>; Wed, 31 Jul 2019 06:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9r2MbWmH0e48sQYOukEw2u+9Vtx24srrzGl4dD7adyM=;
 b=q2RAA8FfEmEfM9ehyJeMjAeiW7AlPPFIgAjPPXBuphAs2e6HeKNjEcATzVANWYhcW4
 Rh5KX63DMAgqCZWX75b2BhkAOOnLgFYxRzJNo1OUaLj7GpDJ7EHmpAos7vTYi4mZbZw9
 xJPxKFHPXRw6w7u9L8HHo6QC9RvuJm1xRneza1iEQSvZRpBoycnUFy7N4LUWnoo/TjEz
 wu9VpAAgXd/lzjXvgapR4TTKAVcYs27IoWYpVX7igXjbrco8MZWq30rIDAzEFw6kcI4R
 zTCtfEuZG+Mwpkb0Fu6p1mPJ2TaX0jnMpoqQjl0vUxZrIdAgQWy3cbXQRDWzoD/VD17F
 SSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9r2MbWmH0e48sQYOukEw2u+9Vtx24srrzGl4dD7adyM=;
 b=CaR/rXA08IQHsK7sBiKVNX5qRLcqHjfKW23BpSaeeaVBfV/jUQ6x8vKcf1OSf1CDVq
 alENIVNWcL6chR9fgU3ijttvDsYKaCpxP0bSmDUkeePPo77v2xJhWK/Xgrv+loVS+xgy
 LVG2sgYJDTw/EcMihHPNwDIPELcazl2lp1iAcX+w4s1oVxjALoI50ULM1gKRW+8xPYBz
 hIAqzPLc4vng4jBQI4AiW7a8AbHvIQcnQutOdznagl77eH1+opJHtrprhUkftWv0Bi9k
 f4lEQoKtz8a17FOcPL/SiSW3iqLCaJy8eFmAOOgInw+0MKP4YnMUx9kmWZhA88kq+8aa
 qksQ==
X-Gm-Message-State: APjAAAU5s11fwwhZTNATBt9ufIwaxbDCpJd0qFtpbPJrO3U7boz3wz63
 5SQxrB1WCB3r31e6Z2X3SzB8bRqcnN/vhQgoUiurPT2/RtE=
X-Google-Smtp-Source: APXvYqxxX6Rhe0VnJiN+mJsnRGqQdjhGdwho7qJO/g5BE+JdhxG9hjyhNxGnwdYd77nQDP9qjOnPq8PUMyJBELUYIhY=
X-Received: by 2002:a65:4505:: with SMTP id n5mr16583516pgq.301.1564580334683; 
 Wed, 31 Jul 2019 06:38:54 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 31 Jul 2019 09:38:43 -0400
Message-ID: <CAGXuw=gpxavTSx2MES=wip=nSo7Ge0OuE+8MT0mgp+omPCoe=A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Phase coherent UBX160s on multiple X310s
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
From: Mitch Grabner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mitch Grabner <mitch.grabner@gmail.com>
Content-Type: multipart/mixed; boundary="===============4952693417460469164=="
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

--===============4952693417460469164==
Content-Type: multipart/alternative; boundary="000000000000124a4d058efa3fca"

--000000000000124a4d058efa3fca
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to achieve a constant phase offset with multiple X310s each
using a UBX160 daughter card. My procedure is as follows:
1) All X310s have a 10MHz reference and PPS fed via an octoclock
2) each device FPGA time is aligned on the PPS edge
3) each device sets their LO to the same frequency at the same time using
timed FPGA commands
4) each device transmits an orthogonal PN sequence using timed transmit and
the phase of each is measured on a x310 which is also initialized using the
previous procedure

The behavior I have seen is that the phase difference between radios is
constant only when using a low center frequency (tested on 40 MHz fc, 1 MHz
Fs). At 2.4 GHz and 920 Mhz the phase drifts between runs. Does anyone have
any insight into why this would be the case?

Things I have tried:
- Integer-n and fractional-n tuning
- manual and automatic tuning policies

The UHD version is source built 3.13.0
<https://github.com/EttusResearch/uhd/commit/f114cfa0ddf70228d10462758c2b8e878c993f5d>
from git and I have rebuilt the FPGA image with these commits added:
https://github.com/EttusResearch/fpga/commit/205747dee8e73ec15f521e9363337c8c03582d91
https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d
I'm also going to try using the most up-to-date 3.14.1.0 release.

Thanks,
-- 

*Mitchell J Grabner, PhD*
*Member, IEEE Communications Society*

*IEEE-HKN Lambda Zeta Chapter*
*------------------------------------------------*
My Linkedin <http://www.linkedin.com/pub/mitch-grabner/43/23b/bb5>

--000000000000124a4d058efa3fca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m trying to ach=
ieve a constant phase offset with multiple X310s each using a UBX160 daught=
er card. My procedure is as follows:</div><div>1) All X310s have a 10MHz re=
ference and PPS fed via an octoclock</div><div>2) each device FPGA time is =
aligned on the PPS edge</div><div>3) each device sets their LO to the same =
frequency at the same time using timed FPGA commands</div><div>4) each devi=
ce transmits an orthogonal PN sequence using timed transmit and the phase o=
f each is measured on a x310 which is also initialized using the previous p=
rocedure</div><div><br></div><div>The behavior I have seen is that the phas=
e difference between radios is constant only when using a low center freque=
ncy (tested on 40 MHz fc, 1 MHz Fs). At 2.4 GHz and 920 Mhz the phase drift=
s between runs. Does anyone have any insight into why this would be the cas=
e?</div><div><br></div><div>Things I have tried:</div><div>- Integer-n and =
fractional-n tuning</div><div>- manual and automatic tuning policies</div><=
div><br></div><div>The UHD version is source built 3.13.0<code></code><a hr=
ef=3D"https://github.com/EttusResearch/uhd/commit/f114cfa0ddf70228d10462758=
c2b8e878c993f5d" class=3D"gmail-muted-link"><code></code></a> from git and =
I have rebuilt the FPGA image with these commits added:</div><div><a href=
=3D"https://github.com/EttusResearch/fpga/commit/205747dee8e73ec15f521e9363=
337c8c03582d91">https://github.com/EttusResearch/fpga/commit/205747dee8e73e=
c15f521e9363337c8c03582d91</a></div><div><a href=3D"https://github.com/Ettu=
sResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d">https://git=
hub.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d<=
/a></div><div>I&#39;m also going to try using the most up-to-date 3.14.1.0 =
release.</div><div><br></div><div>Thanks,<br></div><div>-- <br><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<b>Mitchell J Grabner, PhD<br></b><div><div><i>Member, IEEE Communications =
Society</i></div><div><i>IEEE-HKN Lambda Zeta Chapter<br></i></div><div><i>=
------------------------------------------------</i></div><a href=3D"http:/=
/www.linkedin.com/pub/mitch-grabner/43/23b/bb5" target=3D"_blank">My Linked=
in</a></div></div></div></div></div></div></div></div></div></div></div>

--000000000000124a4d058efa3fca--


--===============4952693417460469164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4952693417460469164==--

