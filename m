Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C08618BC1A7
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 17:28:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E76538512D
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2024 11:28:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714922910; bh=t5zmeU36ycb8J+jOYF0yBaCp+rpYBkhtkwcC+PhIjX0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ngqj0brZU1dIOAn51ojSlxmU8IcxacRkAQrmoVcO/IYrAePcsW8psc0+MuH7mUMnp
	 GRb/cUhOoECoS5CfRMDxMzZr2KNvjiLEw0Q4VD+GvkOutFmchgPNcPcG1XWw2rgEWu
	 UVYKLnp2SF4MUEYBPFNp/EO49a8mL6o3JEalC9V49LqMKza9t0y76r/BCgYL7miTjh
	 YFLQtI7OZDeafSqRQUhwGWET3Z4YSSCI0aV9iyEz3aEmYd6EhrNSIwn7+qKXnojIuJ
	 tloXiS7SD87ZGcV2xKMzqg7TbOa5PEd3FzrhkubyxG77u9hMQAaR3wdfKwtoT6vk27
	 xqxOod7c+QFmA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C5BD3849B6
	for <usrp-users@lists.ettus.com>; Sun,  5 May 2024 11:27:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714922852; bh=Wong/qnQ8ZaS72h/XEMAj9kFh9f7j8EL7gBFV8mFr7I=;
	h=Date:To:From:Subject:From;
	b=RboaKlRPPmoN3viasIzNfsAHQeKmzTBxmLo5OWtm0CB6LuEPKTLRrXVdMDw8P7t/U
	 InXexmV/OxgRMA4YagAmEbFy6Q+dPw10c4fLr5L7u0tzF1fk86C6UPXUgFBe4qAvRw
	 VXXJR+uqRfMZjOHpiOoIcBAl6sGadlfmXQp1NPY1urALCLH+aST7m0CcdVw0AGuIZg
	 k7NkBm4bcidskqT4Em7FlzQafzQoE+LBtlWEvxCZ8yG/M/47VJH0uqytuttqqPJNgZ
	 1nlSl+Fg5i8Sd73FWs4Hk0NjS7kqqqlBOu3oEFYSjrqYu6sbokarIppRO641MKZ7SH
	 ZBwnGxlkeivtg==
Date: Sun, 5 May 2024 15:27:32 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6CBYIBFMFAQJWXIAFQKGN4SSGL7DZCK4
X-Message-ID-Hash: 6CBYIBFMFAQJWXIAFQKGN4SSGL7DZCK4
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sharing one UHD device across multiple hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6CBYIBFMFAQJWXIAFQKGN4SSGL7DZCK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7258287812774469082=="

This is a multi-part message in MIME format.

--===============7258287812774469082==
Content-Type: multipart/alternative;
 boundary="b1_VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am wondering if it is possible to allow another host device to start a =
session with an x410 after it already has a session with a different host=
 device. In other words, multiple devices sharing one USRP device at the =
same time.

I know it is possible to =E2=80=9Chijack=E2=80=9D a session to perform so=
me mpm functions, but I would like to stream separate channels on the x41=
0 device across separate host devices.

Thanks

Joe

--b1_VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am wondering if it is possible to allow another host de=
vice to start a session with an x410 after it already has a session with =
a different host device. In other words, multiple devices sharing one USR=
P device at the same time.</p><p>I know it is possible to =E2=80=9Chijack=
=E2=80=9D a session to perform some mpm functions, but I would like to st=
ream separate channels on the x410 device across separate host devices.</=
p><p><br></p><p>Thanks</p><p>Joe</p>


--b1_VULdau3WpJoUrqZUJXWIJAj1F1uG6S8Yd17gPfqx8--

--===============7258287812774469082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7258287812774469082==--
