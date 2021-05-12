Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 732FC37B830
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 10:39:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDED1384180
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 04:39:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=itsystems.it header.i=@itsystems.it header.b="pSYSIkhm";
	dkim-atps=neutral
Received: from www.itsystems.it (mx1.itsystems.it [62.94.30.103])
	by mm2.emwd.com (Postfix) with ESMTPS id 9196C38403F
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 04:38:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=itsystems.it; s=x; h=Content-Type:MIME-Version:Date:Message-ID:Subject:From
	:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ruI6o9v0uiYsAT7sDumVXPAFc9XaejfTDIjJ/oXvTq4=; b=pSYSIkhmVv1kqkujCqiv0nFvdd
	vg1nEPov480n4aPMLRt+djga2mzX0mgMsDAEG/BRvINtnqoye0KpTOdKN7uMs4f6G2eczEEHwbQSG
	CYNka28g9q2ILnPzz1dS47SqFvs2NwPGFiAd0OXSeL1R2NNCs1+H3sbw1FIN8pm+Fo24=;
Received: from 77-32-13-19.dyn.eolo.it ([77.32.13.19] helo=[192.168.178.108])
	by www.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.90_1)
	(envelope-from <p.palana@itsystems.it>)
	id 1lgkNq-0004DH-GI
	for usrp-users@lists.ettus.com; Wed, 12 May 2021 08:38:31 +0000
To: usrp-users@lists.ettus.com
From: Paolo Palana <p.palana@itsystems.it>
Message-ID: <a727fc16-1130-7c5c-8063-805745cb4f93@itsystems.it>
Date: Wed, 12 May 2021 10:38:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi to all the mailing list. I'm trying to compile libuhd-3.15
    in order to get the static version of this library, but I've problems. The
    platform I'm using in ubuntu 18.04 x86_64 the cmake command I use is: cmake
    -DENABLE_STATIC_LIBS=ON -DENABLE_LIBERIO=OFF -DENABLE_USB=OFF -DENABLE_B100=OFF
    -DENABLE_B200=OFF -DENABLE_E300=OFF -DENABLE_USRP1=OFF -DENABLE_USRP2=OFF
    -DENABLE_N23 [...]
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 TVD_RCVD_IP            Message was received from an IP address
  0.0 HTML_MESSAGE           BODY: HTML included in message
Message-ID-Hash: J7FLL4OSLUNEVVI2QKRJFND25RYSXPJ3
X-Message-ID-Hash: J7FLL4OSLUNEVVI2QKRJFND25RYSXPJ3
X-MailFrom: p.palana@itsystems.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] libuhd-3.15 static compilation problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J7FLL4OSLUNEVVI2QKRJFND25RYSXPJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4163175752378863903=="

This is a multi-part message in MIME format.
--===============4163175752378863903==
Content-Type: multipart/alternative;
 boundary="------------81C2BF8FEAB969AA0E6B7108"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------81C2BF8FEAB969AA0E6B7108
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi to all the mailing list.

I'm trying to compile libuhd-3.15 in order to get the static version of
this library, but I've problems. The platform I'm using in ubuntu 18.04
x86_64

the cmake command I use is: cmake -DENABLE_STATIC_LIBS=3DON
-DENABLE_LIBERIO=3DOFF -DENABLE_USB=3DOFF -DENABLE_B100=3DOFF
-DENABLE_B200=3DOFF -DENABLE_E300=3DOFF -DENABLE_USRP1=3DOFF
-DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF -DENABLE_MPMD=3DOFF -DENABLE_E32=
0=3DOFF
-DENABLE_OCTOCLOCK=3DOFF -DENABLE_DPDK=3DOFF ../

The compilation process seems to be ok, but I get from the linker the
error: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a(operations.o):
relocation R_X86_64_PC32 against symbol ......

If I run the command VERBOSE=3D1 make I can see that the linker command
issued to=C2=A0 generate of libuhd.so try to link libbost_*.a files in or=
der
to genertate the libuhd.so file. To be plain I'm not very familiar with
this kind of problems, but I think this is not correct. I did many try
and guess to solve the issue and I found that commenting the line
set(Boost_USE_STATIC_LIBS ${ENABLE_STATIC_LIBS}) in
cmake/Modules/UHDBoost.cmake seems to solve the problem, both libuhd.so
and libuhd.a are generated.

But now another problem arise, when I compile my static application I
get other link errors like:

usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-linux-gnu/libdl.a(dlerror.=
o):
In function `dlerror':
(.text+0x1): undefined reference to `__dlerror'

Because the same application is succesfully compiled on the same system
(so system libraries are exactly the same) using libuhd 3.10.3 I think
these errors could be related with something wrong I did in compiling
libuhd-3.15. Of course every time I need to change libuhd version I
uninstall (through make uninstall) the undesired library.

So my question is, what is wrong with libuhd-3.15 or, better, what I did
wrong?

Thank you for your kindness.

Paolo




--------------81C2BF8FEAB969AA0E6B7108
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi to all the mailing list.</p>
    <p>I'm trying to compile libuhd-3.15 in order to get the static
      version of this library, but I've problems. The platform I'm using
      in ubuntu 18.04 x86_64<br>
    </p>
    <p>the cmake command I use is: <font size=3D"-1">cmake
        -DENABLE_STATIC_LIBS=3DON -DENABLE_LIBERIO=3DOFF -DENABLE_USB=3DO=
FF
        -DENABLE_B100=3DOFF -DENABLE_B200=3DOFF -DENABLE_E300=3DOFF
        -DENABLE_USRP1=3DOFF -DENABLE_USRP2=3DOFF -DENABLE_N230=3DOFF
        -DENABLE_MPMD=3DOFF -DENABLE_E320=3DOFF -DENABLE_OCTOCLOCK=3DOFF
        -DENABLE_DPDK=3DOFF ../</font></p>
    <p>The compilation process seems to be ok, but I get from the linker
      the error: <font size=3D"-1">/usr/lib/x86_64-linux-gnu/libboost_fil=
esystem.a(operations.o):
        relocation R_X86_64_PC32 against symbol ......</font></p>
    <p>If I run the command VERBOSE=3D1 make I can see that the linker
      command issued to=C2=A0 generate of libuhd.so try to link libbost_*=
.a
      files in order to genertate the libuhd.so file. To be plain I'm
      not very familiar with this kind of problems, but I think this is
      not correct. I did many try and guess to solve the issue and I
      found that commenting the line set(Boost_USE_STATIC_LIBS
      ${ENABLE_STATIC_LIBS}) in cmake/Modules/UHDBoost.cmake seems to
      solve the problem, both libuhd.so and libuhd.a are generated.</p>
    <p>But now another problem arise, when I compile my static
      application I get other link errors like:</p>
    <p><font size=3D"-1">usr/lib/gcc/x86_64-linux-gnu/7/../../../x86_64-l=
inux-gnu/libdl.a(dlerror.o):
        In function `dlerror':<br>
        (.text+0x1): undefined reference to `__dlerror'</font></p>
    <p>Because the same application is succesfully compiled on the same
      system (so system libraries are exactly the same) using libuhd
      3.10.3 I think these errors could be related with something wrong
      I did in compiling libuhd-3.15. Of course every time I need to
      change libuhd version I uninstall (through make uninstall) the
      undesired library.</p>
    <p>So my question is, what is wrong with libuhd-3.15 or, better,
      what I did wrong?</p>
    <p>Thank you for your kindness.</p>
    <p>Paolo<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------81C2BF8FEAB969AA0E6B7108--

--===============4163175752378863903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4163175752378863903==--
