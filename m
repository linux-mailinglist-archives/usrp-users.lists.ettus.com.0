Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A83A9387E
	for <lists+usrp-users@lfdr.de>; Fri, 18 Apr 2025 16:17:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6425738631F
	for <lists+usrp-users@lfdr.de>; Fri, 18 Apr 2025 10:17:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744985854; bh=K+LR67VNOMDY87Z455zJUE6Pe1kj659QCeRQ6lxnZoI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oTmib68CYzmAcJ23tM1+7yxwJ0XdIu1x0RGuFGxOaU+dsfsjOP3psK8TcRh9SumQE
	 7nls6zQkF6q3Pu/YuJPfzT7OFK9nEhwhzQYUEXH3IhE3ms0V+01ZsImGGLlkh6EKTx
	 5BheYQir5Ds34zEgE5bEmUQRIC4xShvJUAelYiiUFCx+77J0HPXvu8jpIWljK7Ft03
	 K2II44gvyadq6NZ8a0MQsmbYJ7vxRFArutKLsUCll+hbQT6v+MuSKQGJBJBE4cov/K
	 ed5V73l8ETajAoUW0YHBmQ/q00rP5LW1KAwP4jCs814kz4WR3oTBte9zOikCDVh3Fj
	 0U4LpnN9pCdnQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90363385CED
	for <usrp-users@lists.ettus.com>; Fri, 18 Apr 2025 10:16:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744985816; bh=uyFoHwdiT9Wl+Q56yXe8GEKPgOHItpXq5zNHX1Z583Q=;
	h=Date:To:From:Subject:From;
	b=w0RI3ueeuqjlDigMWpotbOuhMFwS33G/zGaL9afE8hO74RX9ZoevLVHLm0IwpoyG/
	 aMhSBy2QsNDP6KUAj4wful9xmYZ1v5KfS54LKcb7HHFDNZWDoiDVjUxoQTGN3a6VDS
	 gFBSI4fj2suaC6nUXEFl+Y+JXP5BFQ2YxunneurOiZ3TexbdC/a+DF8miWE1+YXpX5
	 A0lfWbF6YXKcM0T8bXoHN9q+Fv7vob6D1jKZ0tdN0BHqZCWzDVrfIWkC30VViNhWYI
	 pf/+5/xGlj/5x9kG968EpNwMePt8iZGI6REzK2nQyq4sXB/tA3bQBg1rPCaowSQsHI
	 7lUvEoepyZCBA==
Date: Fri, 18 Apr 2025 14:16:56 +0000
To: usrp-users@lists.ettus.com
From: seckinoncu8070@gmail.com
Message-ID: <CC50537qwhfUzfTAbCZKEdeJrcBSA6d8VQvN5Fpc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HU5V7E6BTVAQUKRT2AT5P3DVJZCCEZ2Q
X-Message-ID-Hash: HU5V7E6BTVAQUKRT2AT5P3DVJZCCEZ2Q
X-MailFrom: seckinoncu8070@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Python API Setting Sample Rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HU5V7E6BTVAQUKRT2AT5P3DVJZCCEZ2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4953958435332097191=="

This is a multi-part message in MIME format.

--===============4953958435332097191==
Content-Type: multipart/alternative;
 boundary="b1_CC50537qwhfUzfTAbCZKEdeJrcBSA6d8VQvN5Fpc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CC50537qwhfUzfTAbCZKEdeJrcBSA6d8VQvN5Fpc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am using the UHD Python API to stream live data from a USRP=C2=A0N320, =
and I need to adjust the sample rate on the fly without interrupting the =
stream. However, when I call `set_rx_rate()` during an active session, I =
encounter an error and the streaming stops.

In GNU=C2=A0Radio I can switch the N320=E2=80=99s sample rate very quickl=
y during runtime, but I haven=E2=80=99t found an equivalent workflow in t=
he Python API. Could you please advise:

1. Is it possible to change the RX sample rate on a MultiUSRP instance wh=
ile it is actively streaming?

2. If so, what sequence of UHD commands or stream=E2=80=91control calls a=
re required to do this safely?

3. Are there any hardware or driver limitations on the N320 that prevent =
sample=E2=80=91rate changes mid=E2=80=91stream?

Thank you for your guidance.

Best regards,\
Seckin

--b1_CC50537qwhfUzfTAbCZKEdeJrcBSA6d8VQvN5Fpc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am using the UHD Python API to stream live data from a =
USRP&nbsp;N320, and I need to adjust the sample rate on the fly without i=
nterrupting the stream. However, when I call <code>set_rx_rate()</code> d=
uring an active session, I encounter an error and the streaming stops.</p=
><p>In GNU&nbsp;Radio I can switch the N320=E2=80=99s sample rate very qu=
ickly during runtime, but I haven=E2=80=99t found an equivalent workflow =
in the Python API. Could you please advise:</p><ol><li><p>Is it possible =
to change the RX sample rate on a MultiUSRP instance while it is actively=
 streaming?</p></li><li><p>If so, what sequence of UHD commands or stream=
=E2=80=91control calls are required to do this safely?</p></li><li><p>Are=
 there any hardware or driver limitations on the N320 that prevent sample=
=E2=80=91rate changes mid=E2=80=91stream?</p></li></ol><p>Thank you for y=
our guidance.</p><p>Best regards,<br>Seckin</p>


--b1_CC50537qwhfUzfTAbCZKEdeJrcBSA6d8VQvN5Fpc--

--===============4953958435332097191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4953958435332097191==--
