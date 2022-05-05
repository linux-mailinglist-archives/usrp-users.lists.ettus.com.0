Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 428D551C28D
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 16:27:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FB00384405
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 10:27:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651760832; bh=ytxlykhKFqYo0QL1Z0nQMfGvLCURT4t8Vysw3V2b8xE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VMhHC6lj1mubo/zMd0qMQJQPi/rI0APr+o1zSRlUNE/F3CikBLA70+tri+EMHoCLi
	 KBI26Qax4nXGdxHBC84sXN2FOhHQzuEpE1hehEV+LRa0DXc5ysW1CgSMqkM89Js2rO
	 GnbLWWh+RxnukPKrwm4ObDiB8BQDzIm7ti2unqK0QnKu6taw8natk6MecF/gd8sPfP
	 Fhng6t0kUGZiPVyVQtsLXQKcRqAvZXoATmunay5NSBwzmIBYqklKM7AJDfQy7BYFS0
	 11uFvgNs+YbcYcOqU7V5poId8yKJCKslIVZQU5mG6RS4NvUN9E+uIsltBAEXgDspT0
	 cew1U8YMXFh0w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D80E8384BD6
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 10:26:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651760767; bh=CNytOx3HmsRjQHdwQIaax+BNw4oZNFrtxzHvWfAZnJk=;
	h=Date:To:From:Subject:From;
	b=Eclr747SNn7gA8497C6n8Qub3/b+golf8LonEfSQHB/Bzf8wPU92+d9b7qq6GNILP
	 gzL6RA7ONFz8P9a0T2W4VMGV6TvJfIIlBwsDfXCSx7yZ2tZQU4zfJooV4izEVSTnuT
	 4A8l18jmV5nSPF5pb1DIPqjNQ1co12L7pXlp7BqU4TTFmLxPtyGuI5HF0An4ekZJOs
	 D+GTt/QamEhsCVwMFIqU6ifUNgI/VnV5t4OmOab36F3vaMdzGIScWYBbbGJRdnjuRM
	 qCooLo/O8TVVC1l99qUQqIeL+c4OhVDd4YzwnAVB9mlCNPS5vD6WhYdIdT9tmjSu7r
	 5rSDqUpHn79lA==
Date: Thu, 5 May 2022 14:26:07 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ASDIB5XJ22X6NK3GRMHVKVB3ZKLJUJ6Z
X-Message-ID-Hash: ASDIB5XJ22X6NK3GRMHVKVB3ZKLJUJ6Z
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Dropped samples in sync across channels?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ASDIB5XJ22X6NK3GRMHVKVB3ZKLJUJ6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4250166257618651216=="

This is a multi-part message in MIME format.

--===============4250166257618651216==
Content-Type: multipart/alternative;
 boundary="b1_JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I wanted to verify something to make sure I understand how things work.  =
It seems to me that when using an X310 or N320 (the two USRPs I happen to=
 be messing with), that when I am using both RX channels, if I change fre=
quencies on on one channel, both will produce time tags in Gnu Radio.  I=E2=
=80=99ve looked through the uhd and FPGA source code and haven=E2=80=99t =
seen anywhere where the two channels are linked together on a freq change=
; but I suspect that I missed something and wanted to verify.

Also, it seems like when I change frequencies, I may, or may not, drop sa=
mples.  This makes sense and is more prevalent when I am using a higher s=
ample rate.  What is weird to me is that it looks like when I again chang=
e the freq on a single channel, both channels will drop (or not drop) the=
 same number of samples.  I assume that this is to keep the streams in sy=
nc, but again I wanted to verify that.

--b1_JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I wanted to verify something to make sure I understand how things work=
.  It seems to me that when using an X310 or N320 (the two USRPs I happen=
 to be messing with), that when I am using both RX channels, if I change =
frequencies on on one channel, both will produce time tags in Gnu Radio. =
 I=E2=80=99ve looked through the uhd and FPGA source code and haven=E2=80=
=99t seen anywhere where the two channels are linked together on a freq c=
hange; but I suspect that I missed something and wanted to verify.</p><p>=
Also, it seems like when I change frequencies, I may, or may not, drop sa=
mples.  This makes sense and is more prevalent when I am using a higher s=
ample rate.  What is weird to me is that it looks like when I again chang=
e the freq on a single channel, both channels will drop (or not drop) the=
 same number of samples.  I assume that this is to keep the streams in sy=
nc, but again I wanted to verify that.</p>


--b1_JzMv7LC6STKbiZZnY4edY1dlA8xuLgAbuXH4WB1Zw--

--===============4250166257618651216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4250166257618651216==--
