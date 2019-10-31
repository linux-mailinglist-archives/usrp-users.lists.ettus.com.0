Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAC4EA928
	for <lists+usrp-users@lfdr.de>; Thu, 31 Oct 2019 03:14:17 +0100 (CET)
Received: from [::1] (port=38534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPzyV-0005Pi-0Y; Wed, 30 Oct 2019 22:14:11 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:38491)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zcao@c3commsystems.com>)
 id 1iPzyR-0005M2-B6
 for usrp-users@lists.ettus.com; Wed, 30 Oct 2019 22:14:07 -0400
Received: by mail-qt1-f180.google.com with SMTP id t26so6386383qtr.5
 for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2019 19:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:mime-version:subject:message-id:date:to;
 bh=qzDCetG9g0pJ1L98S+T4RaLIEr32RJz9iRvTGN96AEo=;
 b=gmJNX0Siy0rUo3Drpt4hfE3RUq1d4slQDf6lkiIOshT3cV8Z7B4WXIDEn22+i119P0
 nZFJp7f4Tl0VMNExxJlRw+Vi3SBb9jiQm1sivQcXEqibe4uG6La+QfXXkkkOKyzhlRPQ
 iguCUBz4XqCcx3dFem6Lb6cbIo8xpybCPhgz56PNG3Gwx97UWySIpxo55Uws2MZ2SUZz
 EcIbG8RV8Z3i57Hpd7VyrjBFE6oeFr9XP0JUujWlAEZE2PD2tceuJmhC0niSg6M9D1oN
 qHwdBYZH1bLQfRCm8SYrCazMYL9zeda5h3WmnemHPr76jEVxkszRjawFbLHI2ntBGl3J
 e6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
 bh=qzDCetG9g0pJ1L98S+T4RaLIEr32RJz9iRvTGN96AEo=;
 b=X2TSmtp6FCiEO0W8+qTWqG4l/tpWDx33Qq3c6s4cRCT8cJUdEwTIQpL/HAwQKM9a5z
 OGXnsSJ/ValswzHD0ocY24v5GLjoU92NmIb88DZniKYvDPyt2nmbNC69hnlwRWj4eZlH
 d+vaG1h7BHAKBfPYGmXXQIGEMtkLi6CR0D+zuBYFGaHWhdP5BboGYsgSziaYxuGn2ssi
 EQZWVYMvhAJ9RqL0mLnCRh9Z21iGqwtrrNH3iFarST7YBfd80AAyE0lHF7J31u2ht0xG
 BJIKHSYLki8EwVM5C5v9XGmIqAaGQZxwL8Upg9f5/8voUZnNAlDNmJeLDr14qIjPNw30
 Icxw==
X-Gm-Message-State: APjAAAUZET2gLmxsk32JJ7T4EKn/h3cL1k2GXIMnWw+cam6fR5dk/ipP
 un2m+a/UdY/CTTqsvlXZplnlNH94wNk=
X-Google-Smtp-Source: APXvYqwm40Kg40/pLGHnWMfWfvE4fTyElNfcirFdybBI41ngOORX08Ejeg5wzNLdy1ev/MYu/K0hlg==
X-Received: by 2002:aed:24c1:: with SMTP id u1mr3451944qtc.29.1572488006157;
 Wed, 30 Oct 2019 19:13:26 -0700 (PDT)
Received: from [192.168.2.138] (pool-173-66-203-125.washdc.fios.verizon.net.
 [173.66.203.125])
 by smtp.gmail.com with ESMTPSA id x133sm961586qka.44.2019.10.30.19.13.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 19:13:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <85CE420D-AD7B-4844-818B-9A300B01F267@c3commsystems.com>
Date: Wed, 30 Oct 2019 22:13:25 -0400
To: USRP-users <usrp-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [USRP-users] GNURadio with E310?
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
Content-Type: multipart/mixed; boundary="===============8962044121346681514=="
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


--===============8962044121346681514==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C285231A-F0CE-46E3-ACBA-134E04AA325C"


--Apple-Mail=_C285231A-F0CE-46E3-ACBA-134E04AA325C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

I have a couple high level questions here related with using GNURadio =
with E310. I would really appreciate it if someone can give us a quick =
feedback. Thanks.

1. Can we use E310 just like other non-embedded USRP platforms, with =
which we run GNURadio models in a host computer and send I/Q samples to =
E310 via an Ethernet connection?

2. Are there gr-uhd blocks that expose the control of AD9361and DDC/DUC =
in the FPGA, in which we can configure channel bandwidth, filter =
settings, register settings, ADC/DAC sampling rate and sampling rate =
change by DDC/DUC?=20

Regards,
Arnold

C-3 Comm Systems, LLC
3100 Clarendon Blvd., Suite 200
Arlington, VA 22201
Phone: (703) 829-0588
Email : zcao@c3commsystems.com <mailto:zcao@c3commsystems.com>

--Apple-Mail=_C285231A-F0CE-46E3-ACBA-134E04AA325C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><br class=3D""></div><div class=3D"">I =
have a couple high level questions here related with using GNURadio with =
E310. I would really appreciate it if someone can give us a quick =
feedback. Thanks.</div><div class=3D""><br class=3D""></div><div =
class=3D"">1. Can we use E310 just like other non-embedded USRP =
platforms, with which we run GNURadio models in a host computer and send =
I/Q samples to E310 via an Ethernet connection?</div><div class=3D""><br =
class=3D""></div><div class=3D"">2. Are there gr-uhd blocks that expose =
the control of AD9361and DDC/DUC in the FPGA, in which we can configure =
channel bandwidth, filter settings, register settings, ADC/DAC sampling =
rate and sampling rate change by DDC/DUC?&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">Regards,</div><div =
class=3D"">Arnold</div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div class=3D""><b class=3D"">C-3 Comm Systems, =
LLC</b></div><div class=3D"">3100 Clarendon Blvd., Suite 200</div><div =
class=3D"">Arlington, VA 22201</div><div class=3D"">Phone: (703) =
829-0588</div><div class=3D"">Email :<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:zcao@c3commsystems.com" =
class=3D"">zcao@c3commsystems.com</a></div></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_C285231A-F0CE-46E3-ACBA-134E04AA325C--


--===============8962044121346681514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8962044121346681514==--

