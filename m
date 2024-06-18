Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC1590C0E2
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 03:03:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EE6B385501
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 21:03:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718672616; bh=L1oGqcc6aOFRXrtgL4tC2jjjM9OQc+wh7gi8s1My7ek=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e1/RoIEZymIvryhfTWdEhFmYDUhIvKowvqEEhC2tR2QSRIoycKkzM9N5eDjGDp9kX
	 BxdG0HUJ/7Pelm3Nxtkzx0pXsBu0m6kGt5bl1fUhv9zIYqW5vVSdYDxnwk4Hy0Erts
	 tw9Vb5hva5J+QjCpYZlhPYgagt/j6Eui0D+NhXNnoaoozDjjznCsz5ZAvHDGnDK73b
	 IyNcXj76Pj44c1Vxpbnf2zSOE+QefDKKHegsnyiknOg0NUDs0ZiRWiQUJ3N3DNbpf2
	 3fRt/aYzokiCGdZM09ZYktzOFGKgJWu9qdA6Kc4SYUaylK0wUNkTy73kYbDhBhbF+o
	 ez7JDR/pGWOjw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0648E3854D9
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 21:03:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718672600; bh=vljx48auyA2Gc/ZZ+iEk8g6+ypPKsMV8V7iF2EyqT8c=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gzleTSfmAgkj05nSj16q18F23CFlpQyp8hHhIlBa8a62T+UJtsk/7kx6/ZvPPBr5j
	 mxv7w2kn0IDk87Ex3ZXmrlOPZY1fUvgfIkhjj0gBCPvocrndzQm7CVH9WEosi87yCp
	 wwlkScn88YmRbt23Wh5MqgrSKWFfpW9QNbYHi4zgnXUPstCo+M47G+7jdOSJ38vdSO
	 1MJGOj85r6GSIlHaRQCGtjMsY5iy/LwFoayNG6ViKJnYxkkXNfQLcFiXy+Kr1L57mu
	 4T5CvcG1FSfrbTmhTtGkHiESwXQt9MBdhMwTo168LK+uuOoMqJQII+s1jIwX/atQfW
	 CiiL3/N7DcXGg==
Date: Tue, 18 Jun 2024 01:03:20 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <Q6aZvIiHC1e0pKN6JDnnyyxSv9h1XRHCo56HqjLmJwY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 4e9892d2-863e-4464-87ab-36d23df2dc19@gmail.com
MIME-Version: 1.0
Message-ID-Hash: G3RD3QQHG7RACSSNJTVRCNTSPFPSMTTJ
X-Message-ID-Hash: G3RD3QQHG7RACSSNJTVRCNTSPFPSMTTJ
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G3RD3QQHG7RACSSNJTVRCNTSPFPSMTTJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3320790782248533177=="

This is a multi-part message in MIME format.

--===============3320790782248533177==
Content-Type: multipart/alternative;
 boundary="b1_Q6aZvIiHC1e0pKN6JDnnyyxSv9h1XRHCo56HqjLmJwY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Q6aZvIiHC1e0pKN6JDnnyyxSv9h1XRHCo56HqjLmJwY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Actually, you can probably expect that the ping -s with jumbo frames to f=
ail, since the FPGA stack is very limited and most likely hasn=E2=80=99t =
implemented ICMP for jumbo frames.

However, the limitation of 8000 seems to be an artificial limit of the UH=
D code, as it I have been able to demonstrate it can send > 8000, but not=
 at my requested value due to the way the driver is written.  You can see=
 in the packet trace (if you do a tcpdump) is sends larger than 8000.

See =E2=80=9Cstatic const size_t DATA_FRAME_MAX_SIZE =3D 8000; // CHDR pa=
cket size in bytes=E2=80=9D in x300_defaults.hpp and what appears to be s=
ome bad logic in determine_max_frame_size() (setting packet size to min(t=
x,rx)).\
I hacked the code and have seen the Tx >=3D 8136, but don=E2=80=99t under=
stand it enough yet.

You might also need to reach out to the FPGA team to actually see what th=
e limitation is or is not.  Documentation says to set MTU to 9000, but UH=
D driver has some issues in implementation.

--b1_Q6aZvIiHC1e0pKN6JDnnyyxSv9h1XRHCo56HqjLmJwY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Actually, you can probably expect that the ping -s with jumbo frames t=
o fail, since the FPGA stack is very limited and most likely hasn=E2=80=99=
t implemented ICMP for jumbo frames.</p><p>However, the limitation of 800=
0 seems to be an artificial limit of the UHD code, as it I have been able=
 to demonstrate it can send &gt; 8000, but not at my requested value due =
to the way the driver is written.  You can see in the packet trace (if yo=
u do a tcpdump) is sends larger than 8000.</p><p>See =E2=80=9Cstatic cons=
t size_t DATA_FRAME_MAX_SIZE =3D 8000; // CHDR packet size in bytes=E2=80=
=9D in x300_defaults.hpp and what appears to be some bad logic in determi=
ne_max_frame_size() (setting packet size to min(tx,rx)).<br>I hacked the =
code and have seen the Tx &gt;=3D 8136, but don=E2=80=99t understand it e=
nough yet.</p><p>You might also need to reach out to the FPGA team to act=
ually see what the limitation is or is not.  Documentation says to set MT=
U to 9000, but UHD driver has some issues in implementation.</p><p><br></=
p>


--b1_Q6aZvIiHC1e0pKN6JDnnyyxSv9h1XRHCo56HqjLmJwY--

--===============3320790782248533177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3320790782248533177==--
