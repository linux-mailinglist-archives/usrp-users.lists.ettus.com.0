Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCB1A016F8
	for <lists+usrp-users@lfdr.de>; Sat,  4 Jan 2025 22:49:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB3F9385EEC
	for <lists+usrp-users@lfdr.de>; Sat,  4 Jan 2025 16:49:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736027348; bh=1drmEUc+zg8UmvE9a4s+h7+gw6umQ1vjb5Mlbq2a7DU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nnYjiSrY+Lwda7ih6qJyLtdRY9KFZ1cQDy6NFhf9bBDalKM5nknHUWy1YIbBM9V7W
	 flasxzDg57F8mhlvgktIsFSDv84fVv5F2+1+khvXJciMCZGXdwkCTvJ14FToKBlFQq
	 LuqwLOIU2mt5BZSzF4+k3zfWS2w/zHxtPzl0MBTemGOecDLWIGSrqOs+RZdPBe28v0
	 GEV8qXgrUTmPXxxpKfTON+DBhN67uQEIcmzwKkg/8xBZvBX3gAGmimi75NKP1Z70iy
	 ihaXpZJ2oq1459m83OduozUUdihRFtI95CV4JC+tON6Fjk8QHKnWeFfBYy/caJ6M6S
	 EvkL+t4KGf2cQ==
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 83F4B385F2B
	for <usrp-users@lists.ettus.com>; Sat,  4 Jan 2025 16:49:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ch5A/zWN";
	dkim-atps=neutral
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3cddfa9a331so3786335ab.3
        for <usrp-users@lists.ettus.com>; Sat, 04 Jan 2025 13:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1736027341; x=1736632141; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SccGhHHGAq3knjUjkw5q/oSfm1BKrP6Bfb/TZxCIBbE=;
        b=ch5A/zWNX7ObrQTtverw/PExt6VW1+wAGJx2Wi4XspsrpGtVj9ojJCNQdj7G3rM3RN
         40X75QIj7haPk0neCu1Jgc7ObYFL+iM0rBBOG357nOql+qJmKuf2rok7iArjyCky9Dl9
         qZTMuh5yUwCRlRdoh5at3IVKnw4gI07/xO5kj2v1U4XNyJ2AKnOxxgTr8K0JkGLWtEYG
         iGY2UK8FYLj7RlETgtV3YSqwzSekqokn8EFD0tGOEd7Cpk30RBF0tsoKB5ojIlGqxblj
         AWWs9W03R710c2rEZbdAtvHY/QpjVPFDm3MNVhsrocJtiFW5Zufc73sIeiVvi2zch/tP
         8CZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736027341; x=1736632141;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SccGhHHGAq3knjUjkw5q/oSfm1BKrP6Bfb/TZxCIBbE=;
        b=dnkB3D2a/CtMv+9r4OPkMlG1dX59jZ1Jl/RnOFRngPv+rY3XxGzQwwPBIlWQmVsB+e
         2+7WlVbykJWNYKOYylq0c6ZTTTtFK1uKNLTEhh+Wo8U9hQpO+xc9Q/ELnb4sg8tXBSPP
         lKtuprurNM9jmmDiZKvWXdW6Rz2b3rOrw4d+x2pKrpvP0fHsrp+TlV54V4KfUP4m3A+h
         m3m4P2Jv3nmWDi4etwyMSVWYESWFAVUv+5MgllDMubb4eEwmMEuRFa6yemHkRrZAK7VE
         /ScX20zuTEdcT++J/JuKD/sMJI+WdxNOWv1mjArY7iHKtW3rxiabtLduTWig5U9pX21Y
         eQxg==
X-Gm-Message-State: AOJu0YyXb3w9In8sZyKfsc4e3hXGRxj3R40ysLEkAJQq3csYrzER32VV
	+C0Q2C3dq6Zg9VyUl4b/Q/Pxq265QmJElQ7asPJn8Wwl6mHGN50a7/R2+KEuUS4INECKfSe5SSG
	jK8E6t01eKJYuLi/FRLLWJYLrjMIy90KtxFWCRUJHo6dAiULZRiLuyQ==
X-Gm-Gg: ASbGncs0nLXys6cHypI0q+Y8t+Kma+Ia5x1b/kEOPIc/DvZD+fpi9wjwNJCDzoCZRBi
	S/G0uyEnLod8MuU3WcCtXD+OFpDtyTIWFGpFotQ==
X-Google-Smtp-Source: AGHT+IH7Y2HFCI4IRJen1IhhoJs3qPP0FcWUDcxUMBGrxtKY0ic7YsFPhiG/hl7jgBZrRwCp8uaVnAgVakxqm2agy7Q=
X-Received: by 2002:a05:6e02:12cb:b0:3a7:d792:d6ad with SMTP id
 e9e14a558f8ab-3c2d5918ac8mr334929335ab.22.1736027341407; Sat, 04 Jan 2025
 13:49:01 -0800 (PST)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sat, 4 Jan 2025 15:48:25 -0600
Message-ID: <CACaXmv8_fvhC0758MjTs_KFHY+CRwkOunHobYV7BqREaHwmcTQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: OWIP2AATQYHURLLS4M5TXXWFILAW2TYW
X-Message-ID-Hash: OWIP2AATQYHURLLS4M5TXXWFILAW2TYW
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Save-the-Date: NEWSDR 2025 at WPI on May 29-30
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWIP2AATQYHURLLS4M5TXXWFILAW2TYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2207505435850263491=="

--===============2207505435850263491==
Content-Type: multipart/alternative; boundary="000000000000016af4062ae85dda"

--000000000000016af4062ae85dda
Content-Type: text/plain; charset="UTF-8"

We would like to announce the 15th annual New England Workshop on Software
Defined Radio (NEWSDR) event on Friday May 30, to be hosted in-person at
Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.
There will also be a set of tutorials and workshops on Thursday May 29.

Registration is required, but is completely free, and will open soon.

Please see our website for more information about the event:


*https://newsdr.org/workshops/newsdr-2025/
<https://newsdr.org/workshops/newsdr-2025/>*
The Call for Participation will open soon.

We will be looking for poster presentations, exhibitors, and sponsors.

We look forward to seeing you all at the event!

--000000000000016af4062ae85dda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_default" style=3D""><font face=3D=
"verdana, sans-serif">We would like to announce the 15th annual New England=
 Workshop on Software Defined Radio (NEWSDR) event on Friday May 30, to be =
hosted in-person at Worcester Polytechnic Institute (WPI), in Worcester, Ma=
ssachusetts, USA.=C2=A0 There will also be a set of tutorials and workshops=
 on Thursday May 29.</font></div><font face=3D"verdana, sans-serif"><br>Reg=
istration is required, but is completely free, and will open soon.<br><br>P=
lease see our website for more information about the event:<br><br><b><a hr=
ef=3D"https://newsdr.org/workshops/newsdr-2025/">https://newsdr.org/worksho=
ps/newsdr-2025/</a><br></b><br>The Call for Participation will open soon.<b=
r><br>We will be looking for poster presentations, exhibitors, and sponsors=
.<br><br>We look forward to seeing you all at the event!<br clear=3D"all"><=
/font></div><div><br></div></div>

--000000000000016af4062ae85dda--

--===============2207505435850263491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2207505435850263491==--
