Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 675EB256ADB
	for <lists+usrp-users@lfdr.de>; Sun, 30 Aug 2020 02:07:53 +0200 (CEST)
Received: from [::1] (port=36178 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCAsu-0005Kp-Iz; Sat, 29 Aug 2020 20:07:48 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:38246)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <eb@comsec.com>) id 1kCAsr-0004xy-1S
 for usrp-users@lists.ettus.com; Sat, 29 Aug 2020 20:07:45 -0400
Received: by mail-io1-f52.google.com with SMTP id h4so2676603ioe.5
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 17:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comsec-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=0ssEGD7ed/uU4wX0ssMqqlqTKTxw9EbSC82QY2xidRs=;
 b=GVwnAkOkDU56AFkOxQWNn2kSXMueUivbpFrNjBwqP9tj99v9AC543TFXn0fF05Kc/C
 YZQ7zTQPt+IeodC+hBkdbJfGHZaXV6JdZa3NuQ236kXpwKrgxzQ/VbWsjjL5nfophXsj
 aQ6Pypsbyq9Hc5r7bd1VtWTiw//Ie8FTpFLOnWg63cccJU1uQDd1Y+xfKbgsdG2/btie
 BJmDktTOcM6HzLbbz/YMUcnQn/SwDHIxOquueDr2AK9RkitqhknD+uLMx+b22sjMRSWp
 wKSnDHOArhLNENbNYHKwkshGX1R5YTfz6TABTYXh3sKDb6TKiB9BEr7JMl4aE9gBXqFv
 kKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0ssEGD7ed/uU4wX0ssMqqlqTKTxw9EbSC82QY2xidRs=;
 b=moLHJ1V0C2kcrmg9WeJrzFUKhY5ewHJIanGp2UVt838ma5pgo/HPvML9KYw6I9OgNY
 Pd9inlyPY7oMYEMkustkfX+Ahp9/GKViffyCkUHxqVZ24GWLbXAUFCzBLCLigrczVkvy
 rJyG0pQ4I3rIoXsfaklVpIB4+9Oa6QJ0trocnH+/fQRuEHhl1Ocul5Mmt/bFNd/Hvp5d
 ZprWH5pa+tUyBFRZgm/+BSjh9bVujJ5VX3JNoEQFBk6ERqn8k++JOD2zl8qssy3jmNID
 T3YuP9BDsVNz+Ydl6V6DmRRp0yo9lTHspesuShX+935lbiuV8PrCGtv5PBtyEyiXfEnP
 qiQg==
X-Gm-Message-State: AOAM531hyQUR6tbf/6cVf6WA7PZjLxwKhL3xHfCXGUGRHrD2EmABRv6y
 R1t5AuPQh84KMijKxb/GmUrfqejf324GX/uLnAnQE3tBilo=
X-Google-Smtp-Source: ABdhPJwWW9bUhDJUQJQp3qB+3tUsyPdvoVr9KRgQoWtkWBvMfVyGxQm6b84O9QVvnt0mn0cRH2sC0wOJbN6F708D8Ig=
X-Received: by 2002:a5e:d514:: with SMTP id e20mr3863800iom.183.1598746023913; 
 Sat, 29 Aug 2020 17:07:03 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 29 Aug 2020 17:06:53 -0700
Message-ID: <CAJF_3i7gu0QMiY3pVc7Qt7pyG2NNBsXjut292g_4E4HEV_t6wg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Speeding up build of usrp3 fpga code??
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Eric Blossom via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Eric Blossom <eb@comsec.com>
Content-Type: multipart/mixed; boundary="===============3593611898528157383=="
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

--===============3593611898528157383==
Content-Type: multipart/alternative; boundary="000000000000d782dc05ae0d106f"

--000000000000d782dc05ae0d106f
Content-Type: text/plain; charset="UTF-8"

Hi Folks,

I'm in the midst of building the fpga code for the x310 on master.  I'm
building on a 24-thread xeon with plenty of memory.
Is there a magic flag, setting, etc that enables parallelism in generating
the ip (the invocations of viv_generate_ip.tcl)??
I tried make -j4 to no avail.

I really like how the build system regenerates the ip for different
families and part numbers.  NIcely done!

Thanks!
Eric

--000000000000d782dc05ae0d106f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Folks,<div><br></div><div>I&#39;m in the midst of build=
ing the fpga code for the x310 on master.=C2=A0 I&#39;m building on a 24-th=
read xeon with plenty of memory.</div><div>Is there a magic flag, setting, =
etc that enables parallelism in generating the ip (the invocations of viv_g=
enerate_ip.tcl)??</div><div>I tried make -j4 to no avail.</div><div><br></d=
iv><div>I really like how the build system regenerates the ip for different=
 families and part numbers.=C2=A0 NIcely done!</div><div><br></div><div>Tha=
nks!</div><div>Eric</div><div><br></div></div>

--000000000000d782dc05ae0d106f--


--===============3593611898528157383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3593611898528157383==--

