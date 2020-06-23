Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04604205B3B
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 20:56:38 +0200 (CEST)
Received: from [::1] (port=53298 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jno5y-0004LD-H3; Tue, 23 Jun 2020 14:56:34 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:44155)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jno5u-0004EF-VQ
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 14:56:31 -0400
Received: by mail-oi1-f176.google.com with SMTP id x202so19768500oix.11
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 11:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=ax6KOmijLG28TdIhEpN4MdKoQAfifZAgh59AwcMKCvM=;
 b=Y33nGABJMP+Ub8HCU1xqkZebWN4y3A/B57lK76NPmOo9N49+kgK4iwZeoefqJrafaX
 tmRkIbxn9G6WFsagw0q4h+o+IhwfihP1AMgtoWCn6i/f9fQS2tfjpzQONa7ka4tPA1BZ
 fn1lwp9f+V+JJe2j29MjBv0Qkrf8M1lnM6CvNbnlKnYuN1BXiyShMTpFZu7cUP8T0ZGC
 Ywkx6acs0rfnEh3LxESYZT2+IxhwcnadviCXfPSCv9oQAS63wmlKwGNiwXehHYgTYON1
 LxDx+SI1+gJsx8xKpC9LkLALyer1LR8rDroCy6Q8sf/BjVXe/z1QO4R3so0AoOVtyBEE
 4o3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ax6KOmijLG28TdIhEpN4MdKoQAfifZAgh59AwcMKCvM=;
 b=auvVa5F1ufhRXpF6D5ckAkz7wBfxjvAZhxPk3FuLgZ3d+a9rzWLkpPEFjTl+h//33E
 9b91Wo/IDnr/Gh/6gDzd8r3qLE8TIvR+LyMDN73XFjOeicHaGR0EA6W9kHr5t/7gHjx8
 BGDm+MRN/gEKnt1BGfErxeAkS2ZqQSR6hkOKYUbllJTIC71BhB/w+6CfQnR/bVDIWwJh
 zhtfv8TlUAJ+2x8lhhVujEyK7RULhkcHJrg85b49hxTScF/MAue1vjD43+O7EN+e65M3
 Z4jV8LQ0TMctkMN8Vy4+UtAyjcWoJYhelM6IH+xP/ddngxYIh9bUFK1WPORwwI/L9JAB
 Mp8g==
X-Gm-Message-State: AOAM530A/jgl0NF3OSZY2DKRRU+OXyOnbVFRrvUsP3IYM0zu5Kkx+F6Y
 WXwG/BSVh73qCJIYF3mkRT9fl3DNDSSHdN5Lrry7VDlbSQM=
X-Google-Smtp-Source: ABdhPJxtJuiEIQ1GJmg0FVxZbN35jG2qxKqeKDHJ6l1pIG+7P0mvLx6Rz7rAoyPRM2CG98TIyQ/kvpzQNADJ14x8U/Q=
X-Received: by 2002:a05:6808:157:: with SMTP id
 h23mr15076025oie.57.1592938550050; 
 Tue, 23 Jun 2020 11:55:50 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 13:55:39 -0500
Message-ID: <CACxOa3ZHn3FTvAJvX7Uwy2Lg77aXghXt-g301x9J6q-8=+D2Rg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] n3xx cross compile toolchain installation differences
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
From: Colby Boyer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Colby Boyer <colbyboyer@genxcomminc.com>
Content-Type: multipart/mixed; boundary="===============8255254896981047102=="
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

--===============8255254896981047102==
Content-Type: multipart/alternative; boundary="0000000000006cd62205a8c4e862"

--0000000000006cd62205a8c4e862
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have a question regarding some small differences in the n3xx tool chain
installation flow. Mainly, I see musleabi replace gnueabi in a few places.
I am checking to see if this will cause a subtle issue down the line.

I followed the flow in the 'Obtaining an SDK' and 'SDK Usage' from
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuild to get the
cross compile toolchain setup.

I notice the extracted toolchain has some differences than what is listed
in the guide. For example the environment setup script is
'environment-setup-cortexa9t2hf-neon-oe-linux-musleabi' instead of
'environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi'.

'echo $CC' on my machine gives below

arm-oe-linux-musleabi-gcc -march=armv7-a -mthumb -mfpu=neon
-mfloat-abi=hard -mcpu=cortex-a9 -mmusl
--sysroot=/opt/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi

and '$CC -dumpmachine' prints out arm-oe-linux-gnueabi.

On a N310, I run 'gcc -dumpmachine' and 'get arm-oe-linux-musleabi' instead
of arm-oe-linux-gnueabi.

I was able to do a basic hello world cross-compile and run on the N310
without an issue.

Thanks
Colby

--0000000000006cd62205a8c4e862
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All, <br></div><div><br></div><div>I have a questi=
on regarding some small differences in the n3xx tool chain installation flo=
w. Mainly, I see musleabi replace gnueabi in a few places. I am checking to=
 see if this will cause a subtle issue down the line. <br></div><div><br></=
div><div>I followed the flow in the &#39;Obtaining an SDK&#39; and &#39;SDK=
 Usage&#39; from <a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.h=
tml#n3xx_fsbuild">https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_f=
sbuild</a> to get the cross compile toolchain setup. <br></div><div><br></d=
iv><div>I notice the extracted toolchain has some differences than what is =
listed in the guide. For example the environment setup script is &#39;envir=
onment-setup-cortexa9t2hf-neon-oe-linux-musleabi&#39; instead of &#39;envir=
onment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi&#39;. <br></div><div><br></=
div><div>&#39;echo $CC&#39; on my machine gives below<br></div><div><br></d=
iv><div>arm-oe-linux-musleabi-gcc -march=3Darmv7-a -mthumb -mfpu=3Dneon -mf=
loat-abi=3Dhard -mcpu=3Dcortex-a9 -mmusl --sysroot=3D/opt/oe/sysroots/corte=
xa9t2hf-neon-oe-linux-musleabi</div><div><br></div><div>and &#39;$CC -dumpm=
achine&#39; prints out arm-oe-linux-gnueabi. <br></div><div><br></div><div>=
On a N310, I run &#39;gcc -dumpmachine&#39; and &#39;get arm-oe-linux-musle=
abi&#39; instead of=20
arm-oe-linux-gnueabi. <br></div><div><br></div><div>I was able to do a basi=
c hello world cross-compile and run on the N310 without an issue. <br></div=
><div><br></div><div>Thanks</div><div>Colby<br></div></div>

--0000000000006cd62205a8c4e862--


--===============8255254896981047102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8255254896981047102==--

