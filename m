Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 231CA19E6CD
	for <lists+usrp-users@lfdr.de>; Sat,  4 Apr 2020 19:40:25 +0200 (CEST)
Received: from [::1] (port=37466 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jKmm5-0001MA-00; Sat, 04 Apr 2020 13:40:05 -0400
Received: from mail-il1-f182.google.com ([209.85.166.182]:40487)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jKmm1-0001Ch-QQ
 for usrp-users@lists.ettus.com; Sat, 04 Apr 2020 13:40:01 -0400
Received: by mail-il1-f182.google.com with SMTP id j9so10631757ilr.7
 for <usrp-users@lists.ettus.com>; Sat, 04 Apr 2020 10:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=99OK3+CGs9kIPzGIf+nKN3ieUrLy/I4nh3lTWDa//qg=;
 b=Nm54c3Y8lCgKt2cExlN0bdhqAoBTT7w6KxvToWuaAEhI+wETtZgkz/cV7OEDD+TB22
 N5zKp98bWwxMFwCkKLZc7yQQmtZMYdgPiQ5LVWfJqliqR+lq8Ca+9uzM6Qh8Vussm8hT
 kytXC2ELZbPrKEil6i/JdJFRVIO3AlZG0JzSXEty6V6QT3Tkr8LgzAj9twkZpnm9AybV
 iUYP5R3uL4t2BVAFjSMmGqBnZS23XJ5UxvvNr7PBy2691GW6rd4vYC0z1VxOruo5ngIw
 FyjfkwOqkC1d3aLNBP/i67fq4IcMBek0NKHQ2duHGBINNht7Mt89fp9FRNAtLOaa1eQw
 HpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=99OK3+CGs9kIPzGIf+nKN3ieUrLy/I4nh3lTWDa//qg=;
 b=NrQjQ/ODbMDXoYrFnkW0KASgOJgbULuaX2toa+I+XVE4kaZpeJdmmvQciflu59rKLt
 hZ4vRX0CXYOZkGDNBFtobIYnrcuvCiAAP0IaGmqU0bhqnmypmc1BmEZQnjqIKvBIYzTp
 s7N+BkZ2iVPDEbf3lX2Hv82DgzgZVc0KnP3U+fjzPsd8Jol0+PYusA/SeMeCwo/2wAqf
 7NwfuNbE0xB8VwNgxrH94Yr5/SGvnk6w9OFk/pSNDvqV89+ihEPMwPRTnA2Kupeybvyp
 OmwaqGH6VpAH3z4iODX5BceRKSnlcXFZq0aaLNCF9PHAhjmlmLboEATbRb5evPR4+Y4Y
 Sh1Q==
X-Gm-Message-State: AGi0PuZjLyiFRRJaIdNAfTpuNPQRkLF0CNyJuSc4MilTmGCtBI6XZZQh
 Q09AhI1NZmdY+Rc846nfFj9Hyf2JR9AQTb+VRxrJT8ERh5g=
X-Google-Smtp-Source: APiQypJIJmv0ax6s2dlCHeGg710MPgP54G+LLcVOJdgL9V8b5GCnQwL82ZoE/LqenxeeL/Qev9j4Erk8YTH2gmRSXqM=
X-Received: by 2002:a92:350a:: with SMTP id c10mr12544268ila.12.1586021960997; 
 Sat, 04 Apr 2020 10:39:20 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 4 Apr 2020 20:39:10 +0300
Message-ID: <CAPRRyxu2JFofL0pDvrm46YEv-FMgdhf=sG7=nUgo1E-JdArhWQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] Recieve on two channels simultaneously USRP E310
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============2080159546590438628=="
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

--===============2080159546590438628==
Content-Type: multipart/alternative; boundary="000000000000975fb305a27a83f8"

--000000000000975fb305a27a83f8
Content-Type: text/plain; charset="UTF-8"

Hello. Can I create a binary file with two fft blocks and two window blocks
for usrp E310 for rfnoc? And if so, how ? The idea is to receive a signal
from two channels simultaneously.

--000000000000975fb305a27a83f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline"><span style=
=3D"font-family:arial,sans-serif;font-size:28px;white-space:pre-wrap;backgr=
ound-color:rgb(248,249,250)">Hello. Can I create a binary file with two fft=
 blocks and two window blocks for usrp E310 for rfnoc? And if so, how ? The=
 idea is to receive a signal from two channels simultaneously.</span><br></=
div>

--000000000000975fb305a27a83f8--


--===============2080159546590438628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2080159546590438628==--

