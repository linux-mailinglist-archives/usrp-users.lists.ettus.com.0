Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F139A5EC
	for <lists+usrp-users@lfdr.de>; Fri, 23 Aug 2019 05:10:58 +0200 (CEST)
Received: from [::1] (port=39340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i0zyZ-0002vi-Oe; Thu, 22 Aug 2019 23:10:55 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:35465)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <kailash.kain@gmail.com>)
 id 1i0zyW-0002og-Ch
 for usrp-users@lists.ettus.com; Thu, 22 Aug 2019 23:10:52 -0400
Received: by mail-ot1-f44.google.com with SMTP id g17so7493801otl.2
 for <usrp-users@lists.ettus.com>; Thu, 22 Aug 2019 20:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=YgfxZ45zMbPeR/zL9NmffqnZk1fzJkyAS1DowCrG+5U=;
 b=My6iUDkTmFlqZPqW7RSoCJ1LPNnttF0vgfAQmxZt8hbk6g2Npnf6Y9BUveN/Vp5bZV
 Tnx/6XqZlu1z51RwX2yMptNxM53qP9tbs/yn7+B8EO8Oifu3fm2IevVeKzFMLthPZwiL
 Bg4BQU2yXD/+ZkXq52BSTk+MCUM/oBTZj3wvFqwezl4xHHWrles7fQaVgiBYpJPCpby0
 tomR4OO4m/cGD6zP3sBa1trdfEJ9qQPqZ8JvmPv3F9dxzVXFOVK1TguSGuIOjd6Lz3Xl
 R3ODnVgka/M/zTEKuHIFTO1rSILY8X4w9sWlcF/PM8SOUDYs+dUEIVE5X/39sz+4QDdw
 E5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=YgfxZ45zMbPeR/zL9NmffqnZk1fzJkyAS1DowCrG+5U=;
 b=dSP7Qa11rvKci8GBn5E/O3XTpc7xEX4sEtPP3fdi5eT6j9rAUF8sJa5tLUjCRlYj6L
 O6kfLvZ4T8L2KzHVgUN5mfJAQW0PrUlWi3yLnAZYtlCT7rHl3x48xjzhUrEOSXWNCsO3
 aHtTGD0ovgQAiXrE0x66ntnDb9tJcF0Tm7BujYI3X2QrMN+0fhyfwRX0D61TgioJa6yA
 pRRneEEFB7iyCuhlNYsspgmrZPF20+5zClqHSY5ZNsoNjN7dTT0KE9R9HnNJp1hMtzUH
 Tdoh+Kwj2Iz1MvDj4qGoph77nZphphCoc0pGOEN8v79+oGz/qWuhZo6hq7qfmGPNcYYP
 MyQw==
X-Gm-Message-State: APjAAAVTRpAINSlQij8jmP2IR/S8hNeZL6ahu2hKlXlrNBWO93mPRyaD
 mxWlMR7zD3dhXrov4rhANEFvCWPA4N32AbL7hU/HIKfX
X-Google-Smtp-Source: APXvYqztzcYTb/AWnhkgW9vSvkcuzegopiRhaBW39GuGtip9zTYRsJJN0Lfzt2kCd+M4zOsfEGgmzku/MxwvUoJg5KY=
X-Received: by 2002:a05:6830:18ce:: with SMTP id
 v14mr2362825ote.199.1566529811361; 
 Thu, 22 Aug 2019 20:10:11 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 23 Aug 2019 08:39:45 +0530
Message-ID: <CAAMvqVG6ai0anEO5s0WU9RXoC4KOY40XS8jB=phpEjohBXa=Pg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Packet drop during frequency hopping observed with B210
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
From: kailash kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: kailash kumar <kailash.kain@gmail.com>
Content-Type: multipart/mixed; boundary="===============2976658917979150632=="
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

--===============2976658917979150632==
Content-Type: multipart/alternative; boundary="000000000000efb5cf0590c024c6"

--000000000000efb5cf0590c024c6
Content-Type: text/plain; charset="UTF-8"

Hi,

I am testing frequency hopping in a loopback mode on B210 using external RF
loopback cable.
For First slot Tx/Rx is done at freq 562 Mhz. Subsequent slot is at 582 Mhz.
I have observed Rx packet loss when Tx is done for entire slot duration.

Please let me know if this is expected or if some configuration is required
for this.

[INFO] [UHD] linux; GNU C++ version 9.1.1 20190716 gcc-9-branch@273504;
Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45
[INFO] [B200] Detected Device: B210

Slot duration - 1 second
Rx gain : 20.000000
Tx soft gain : -12.000000
Tx gain : 40.000000

Testing results:
sentBytes 7225 recvBytes 7225 -> After sparing 50ms in 1st Tx slot at freq
562 MHz.
sentBytes 7390 recvBytes 7390 -> Rest bytes in next Tx slot at freq 582 Mhz.
sentBytes 7390 recvBytes 7390 -> No more Tx
sentBytes 7390 recvBytes 7390
sentBytes 7390 recvBytes 7390

sentBytes 7390 recvBytes 7375 -> Utilize fully 1st Tx slot at freq 562 MHz.
Rx drop observed.
sentBytes 7390 recvBytes 7375 -> No more Tx/Rx at 582 Mhz.
sentBytes 7390 recvBytes 7375

Thanks & Regards
Kailash

--000000000000efb5cf0590c024c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I=
 am testing frequency hopping in a loopback mode on B210 using external RF =
loopback cable.</div><div>For First slot Tx/Rx is done at freq 562 Mhz. Sub=
sequent slot is at 582 Mhz.</div><div>I have observed Rx packet loss when T=
x is done for entire slot duration.</div><div><br></div><div>Please let me =
know if this is expected or if some configuration is=C2=A0required for this=
.</div><div><br></div><div><div>[INFO] [UHD] linux; GNU C++ version 9.1.1 2=
0190716 gcc-9-branch@273504; Boost_106800; UHD_3.13.1.HEAD-0-gbbce3e45</div=
><div>[INFO] [B200] Detected Device: B210</div></div><div><br></div><div><d=
iv>Slot duration - 1 second</div><div>Rx gain : 20.000000</div><div>Tx soft=
 gain : -12.000000</div><div>Tx gain : 40.000000</div><div><br></div><div>T=
esting results:</div><div>sentBytes 7225 recvBytes 7225 -&gt; After sparing=
 50ms in 1st Tx slot at freq 562 MHz.</div><div>sentBytes 7390 recvBytes 73=
90 -&gt; Rest bytes in next Tx slot at freq 582 Mhz.</div><div>sentBytes 73=
90 recvBytes 7390 -&gt; No more Tx</div><div>sentBytes 7390 recvBytes 7390<=
/div><div>sentBytes 7390 recvBytes 7390</div><div><br></div><div>sentBytes =
7390 recvBytes 7375 -&gt; Utilize fully 1st Tx slot at freq 562 MHz. Rx dro=
p observed.</div><div>sentBytes 7390 recvBytes 7375 -&gt; No more Tx/Rx at =
582 Mhz.</div><div>sentBytes 7390 recvBytes 7375</div></div><div><br></div>=
<div>Thanks &amp; Regards</div><div>Kailash</div></div></div></div>

--000000000000efb5cf0590c024c6--


--===============2976658917979150632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2976658917979150632==--

