Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF2D93B0B9
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 13:50:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6170385A33
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 07:50:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721821806; bh=UGMQSZnmaXJ6j5JehkFxZ5J24PC1DCH7Ma5sr8mVGAc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DwfT4nCM7HfETQebQ/G8/Sd0FqcxOnJRvmpwKwxHOMd/zIosv+9bwmtu01h6HxUu5
	 zobELQDOeKnfh0YhKMjjfSa7sEXL+sRHCMUXP/udoR84AoFnH8C1YREY6LvJ8sXjbl
	 g2TcDa/QTjsBQCZjulFqcsk3URQQl49eDEwba0l+tt1TULtUa0eH0lEJLHuJErgv35
	 /Pxgxd0Ruz33gDNqm2pUPIY9+EaqOPgqhDBmxYeX9crTGijSsQrHXZHXhUnuYW7rZ7
	 8BBpisCQVUJoXhvSsUJd3yGZjsJPo8KcpDB7t/hqjkSc79Lbdxg+yaRb+B+arGt/LS
	 FcqQGrzFkjRWA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CABA03853E5
	for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 07:49:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721821753; bh=V+fQ+5sjA0obMuEh0lARdydekkuVmZzVscCvYCYRExw=;
	h=Date:To:From:Subject:From;
	b=QtYXDOHaR8SGBTZ/mtTAxu7i+8etyqm0LQwZzLjoGsNA7tg+PgazZC+M5K7O59QyN
	 aWg4CkfHI9/1WjZRBTITUSf93Bp8bVgaXthyEI4knvpv1kO3Gt2P2nkcozTmZi8hji
	 w5KBUCZ1odN+KHSaI+qu4s2fhq3L8dThaFjxuxTlCthVO1ZAznSi69cUWd1G/v9Ti6
	 WP+UhNUh81eDxk4ysOcb1j/Pof9Xh4QGs+ZGexK+lJeNS38cIisjB+ysTXi+Bq3kfI
	 FJ8ypWq+Hv34mWH/3/CRT1PzcGaCHzRHh3dQS32Goimu1iTPNxBfZosVHXYBf0K8bq
	 2KQ2qKn681gjA==
Date: Wed, 24 Jul 2024 11:49:13 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <pVG3GS3qlKoNONgdwfbYFJsCVX3yFgViPvNFRp60@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: RGDSKLTQQS374WIUMY36FB427BHW6GPP
X-Message-ID-Hash: RGDSKLTQQS374WIUMY36FB427BHW6GPP
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building Dissector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RGDSKLTQQS374WIUMY36FB427BHW6GPP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4817566408307960386=="

This is a multi-part message in MIME format.

--===============4817566408307960386==
Content-Type: multipart/alternative;
 boundary="b1_pVG3GS3qlKoNONgdwfbYFJsCVX3yFgViPvNFRp60"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pVG3GS3qlKoNONgdwfbYFJsCVX3yFgViPvNFRp60
Content-Type: text/plain; charset=us-ascii

Hi All,

I would like to try use the dissector with Wireshark and have run into some hassle building it, see error below.

thank you,

Marino

```
Scanning dependencies of target rfnoc64
```

```
[ 14%] Building C object epan/rfnoc/CMakeFiles/rfnoc64.dir/plugin.c.o
```

```
[ 28%] Building CXX object epan/rfnoc/CMakeFiles/rfnoc64.dir/packet-rfnoc.cpp.o
```

```
[ 42%] Building CXX object epan/rfnoc/CMakeFiles/rfnoc64.dir/home/gssltest/git/uhd/host/lib/exception.cpp.o
```

```
[ 57%] Building CXX object epan/rfnoc/CMakeFiles/rfnoc64.dir/home/gssltest/git/uhd/host/lib/rfnoc/chdr_types.cpp.o
```

```
[ 71%] Building CXX object epan/rfnoc/CMakeFiles/rfnoc64.dir/home/gssltest/git/uhd/host/lib/rfnoc/chdr_packet_writer.cpp.o
```

```
make[2]: *** No rule to make target '/usr/lib/x86_64-linux-gnu/libgcrypt.so', needed by 'epan/rfnoc/epan/rfnoc64.so'. Stop.
```

```
make[1]: *** [CMakeFiles/Makefile2:94: epan/rfnoc/CMakeFiles/rfnoc64.dir/all] Error 2
```

```
make: *** [Makefile:130: all] Error 2
```

--b1_pVG3GS3qlKoNONgdwfbYFJsCVX3yFgViPvNFRp60
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p>I would like to try use the dissector with Wireshark and h=
ave run into some hassle building it, see error below.</p><p>thank you,</p>=
<p>Marino</p><pre><code>Scanning dependencies of target rfnoc64</code></pre=
><pre><code>[ 14%] Building C object epan/rfnoc/CMakeFiles/rfnoc64.dir/plug=
in.c.o</code></pre><pre><code>[ 28%] Building CXX object epan/rfnoc/CMakeFi=
les/rfnoc64.dir/packet-rfnoc.cpp.o</code></pre><pre><code>[ 42%] Building C=
XX object epan/rfnoc/CMakeFiles/rfnoc64.dir/home/gssltest/git/uhd/host/lib/=
exception.cpp.o</code></pre><pre><code>[ 57%] Building CXX object epan/rfno=
c/CMakeFiles/rfnoc64.dir/home/gssltest/git/uhd/host/lib/rfnoc/chdr_types.cp=
p.o</code></pre><pre><code>[ 71%] Building CXX object epan/rfnoc/CMakeFiles=
/rfnoc64.dir/home/gssltest/git/uhd/host/lib/rfnoc/chdr_packet_writer.cpp.o<=
/code></pre><pre><code>make[2]: *** No rule to make target '/usr/lib/x86_64=
-linux-gnu/libgcrypt.so', needed by 'epan/rfnoc/epan/rfnoc64.so'. Stop.</co=
de></pre><pre><code>make[1]: *** [CMakeFiles/Makefile2:94: epan/rfnoc/CMake=
Files/rfnoc64.dir/all] Error 2</code></pre><pre><code>make: *** [Makefile:1=
30: all] Error 2</code></pre>

--b1_pVG3GS3qlKoNONgdwfbYFJsCVX3yFgViPvNFRp60--

--===============4817566408307960386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4817566408307960386==--
