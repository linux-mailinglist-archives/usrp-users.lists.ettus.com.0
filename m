Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94829A2A87
	for <lists+usrp-users@lfdr.de>; Fri, 30 Aug 2019 01:08:22 +0200 (CEST)
Received: from [::1] (port=56912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3TWZ-0003kz-9O; Thu, 29 Aug 2019 19:08:15 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:45905)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <steve@astranis.com>) id 1i3TWU-0003fB-Rm
 for usrp-users@lists.ettus.com; Thu, 29 Aug 2019 19:08:10 -0400
Received: by mail-io1-f54.google.com with SMTP id t3so10237821ioj.12
 for <usrp-users@lists.ettus.com>; Thu, 29 Aug 2019 16:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astranis-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=FnD/fmcansGZ1sg8/wWhErb0itLBkuDmCuxYCeJclhY=;
 b=Su44nnQGvjhu+RFXPTEJ/+tsSDMJfJFHchhFJMLlLebfYe4MEFcjvl2wFCPcf3rOiK
 pAn4qypuFcxyqFyL4b1YqeBLBmpB0RQjop2KDuh35/g1+QaLGZoJUg2X3eHIwrWSb119
 +3hxfz4/GxI0UyuNJQ5cBX0S8xuiFnTFmMgxxG/i3/MyVqO8ZYFt7ELhxDUOMvyBKb+j
 bC6zhioCFLk8Aa588SVcxc+akdVAvE7rapg42HHR7X8UgKlcCaD8U8J+z/7AYfnAk5nu
 tmlBbE1t+7xB8JSJgqGNjrpk3oD2xs4575DCZITQVg0zkJW01fbIeoys8gxX8D/wO2Rr
 Q0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=FnD/fmcansGZ1sg8/wWhErb0itLBkuDmCuxYCeJclhY=;
 b=FKsPFMTsku/2yLTfICCdJe+y5w4jvT9gOiz/UZ1AlyAt+DE40cCBbzLah8PmX5E4UL
 YNHZsfarvLdKrAE/+wj1zvZOF1kSrw6EPf0HLYhPFhx11EMtSn823KguBOtYYx9cq6Uu
 aDQgmPIdw4MRMkCPYxuJdFWroDs0DwsrO9Nv9TAiVC9+UYkZHtj+e92rXLjqdUJBPKsD
 2pEyiMWuymWJInEBGqVxja/EnSDFRe0IULjfXwJkC6r1OF0BJioaEOVyaydCUCXbqblA
 KZ7Pnz3Lm+tENH2wYeVyMaCUMIAwPZfCg8Jc+uSq+0wMpKiIkDtizNd+k4zK7HgvuybQ
 cePg==
X-Gm-Message-State: APjAAAVp2lW/rM03vFG930nDloWEkcY5pRtcSlUHzHl88/dm7pwkzmOY
 yLNS1bRdJtSEkjgKxymX6+wRhfyRK0m9g26+XSP/2M0kbFWpWg==
X-Google-Smtp-Source: APXvYqzsFjZn72vSC2G5aPNsWSf1ttp4lCWs/ovU9LA/WrbQAG5+evRd/PDXjRsGnRlnQpu3tizf6CF7CwgZVY4OZSE=
X-Received: by 2002:a6b:b590:: with SMTP id
 e138mr14323748iof.278.1567120049623; 
 Thu, 29 Aug 2019 16:07:29 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 29 Aug 2019 16:07:13 -0700
Message-ID: <CAJeJnJA26S7PhXrUrG+HuULXxsNMhATYKJWaRAdPpgdQnHGqZQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Hiring Radio Enthusiasts at Astranis
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
From: Steve Joseph via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Steve Joseph <steve@astranis.com>
Content-Type: multipart/mixed; boundary="===============5358749553420645791=="
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

--===============5358749553420645791==
Content-Type: multipart/alternative; boundary="000000000000e0e9630591499109"

--000000000000e0e9630591499109
Content-Type: text/plain; charset="UTF-8"

Let me know if you're interested in building new radios for space! We're
looking for both full time and interns with a background in digital
communications. We actually flew an Ettus E310 about 18 months ago, but now
we're building a couple SDRs of our own. Here's our website:
 https://www.astranis.com/

A few things we're *currently *using gnuradio for:
1.  custom waveform and modem design for a low throughput, high reliability
radio (for spacecraft control, telemetry, and ranging). The radio is
custom, software defined hardware platform.
2. ultra wide band channelization, equalization, etc. for a high
throughput, high reliability radio. The radio is also a fully custom,
software defined hardware platform.
3. network modelling, optimization, and planning to maximize network
capacity for a range of use cases around the globe.

A few things we're *going to *use gnuradio for in the slightly longer term
(12+ months out),
1. ultra high-rate DVB-S2x modem design
3. significantly expand and evolve our SDRs processing bandwidth and
architecture
And much more...plenty of digital communications and signal processing work
going forward!

If this sounds interesting to you, shoot me an email and apply online:
https://www.astranis.com/

Thanks,
Steve Joseph
Astranis

--000000000000e0e9630591499109
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Let me know if you&#39;re interested in building new radio=
s for space! We&#39;re looking for both full time and interns with a backgr=
ound in digital communications. We actually flew an Ettus E310 about 18 mon=
ths ago, but now we&#39;re building a couple SDRs of our own. Here&#39;s ou=
r website:<div>=C2=A0<a href=3D"https://www.astranis.com/">https://www.astr=
anis.com/</a>=C2=A0=C2=A0<br><br>A few things we&#39;re=C2=A0<b>currently=
=C2=A0</b>using gnuradio for:<br>1. =C2=A0custom waveform and modem design =
for a low throughput, high reliability radio (for spacecraft control, telem=
etry, and ranging). The radio is custom, software defined hardware platform=
.<br>2. ultra wide band channelization, equalization, etc. for a high throu=
ghput, high reliability radio. The radio is also a fully custom, software d=
efined hardware platform.<br>3. network modelling, optimization, and planni=
ng to maximize network capacity for a range of use cases around the globe.=
=C2=A0<br><br>A few things we&#39;re=C2=A0<b>going to=C2=A0</b>use gnuradio=
 for in the slightly longer term (12+ months out),=C2=A0=C2=A0<br>1. ultra =
high-rate=C2=A0DVB-S2x=C2=A0modem design<div>3. significantly expand and ev=
olve our SDRs processing bandwidth and architecture</div><div>And much more=
...plenty of digital communications and signal processing work going forwar=
d!<br></div><div><div><br>If this sounds interesting to you, shoot me an em=
ail and apply online:=C2=A0<a href=3D"https://www.astranis.com/">https://ww=
w.astranis.com/</a>=C2=A0=C2=A0<br></div></div><div><br></div><div>Thanks,<=
/div><div>Steve Joseph</div><div>Astranis</div></div></div>

--000000000000e0e9630591499109--


--===============5358749553420645791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5358749553420645791==--

