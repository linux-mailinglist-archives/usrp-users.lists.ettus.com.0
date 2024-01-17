Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6409830EA1
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 22:28:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AA9F384E7A
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 16:28:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705526910; bh=ECrJw5IamtvAu+5oeZYwuoqWOK2IvEuyGtPxiDXUR+c=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=07MrKJFIWIMTkKITMNTmYFTzTV1y3Wp3MkXfKLQdWnL/R3QboKc1iVeiqUYvXqSB4
	 bqQLfdRHQUKDZAMDZePFI+lTgxQQQUemSSSL+qlYbc2slsd1sEesGPDB2VMM0fjNkp
	 UBNa5m0SHHefGh1Y3bTx/4AZZw5XQTj+oNRzz26eKN7NLoVZSY0yUTAh+1myIvFl0g
	 KJ05cD/kC4wUcgAXrxp6aTBUNpOGYbxt8mA3lxlnOWuWWUHUqyAfgBE29yacuxetsH
	 pyH5OXEs18IK2txvEmtKHK4Y3tdi0eJRA0v8AYc7tQ/I1Yy0QOKSBdcvWJGnYbzYZZ
	 BUh/mEXNphjdQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35E10380E39
	for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 16:27:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705526849; bh=YvEb/BBC0TMc3mrF4NngrmkhqtaMe/SJv7oQGYjloK4=;
	h=Date:To:From:Subject:From;
	b=SAt+hYJTR68N3cZ0CELr7Zul4LrpNUZWeXgIN/xGqVKZRYVchOk2syU9rBU27t1Vn
	 MSbMjdNezKst7bzG2Yb4Fa/NZD0KlX/CpQMJFqFMKEsbLMfhcFATmnAI/x5drTHqb7
	 Vtzm84S7X8BDZUb+2UFJnX8XocaHRrWNd05HjDHX8B8j0YOz0iSNLVXZsTcgrawwfy
	 Hn6VOCRikXsF0nQXGCn9UUM1vfEjRQtyOYWkG0PeH5Q+ITSls+V3IqPW5uVkOZQMwf
	 YJpVswEechhWi1fqK+t3wi835zdRVgBXSVtU1JBYbOKRp+NjVJ8MWgmq9DSOpK4+Tm
	 TFTv0SSZl8+dQ==
Date: Wed, 17 Jan 2024 21:27:29 +0000
To: usrp-users@lists.ettus.com
From: mgannet@gmail.com
Message-ID: <NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ZBRKKWLVPD3XG2D5AD2PJX7OUK7N3DPR
X-Message-ID-Hash: ZBRKKWLVPD3XG2D5AD2PJX7OUK7N3DPR
X-MailFrom: mgannet@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x310 BasicRX Daughterboard GPIO pins in Ethernet Payload
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZBRKKWLVPD3XG2D5AD2PJX7OUK7N3DPR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3139736810855553947=="

This is a multi-part message in MIME format.

--===============3139736810855553947==
Content-Type: multipart/alternative;
 boundary="b1_NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Greetings,

With the UHD 4.x and the radio being a block in the RFNOC, is there a way=
 to write the signals input to the GPIO pins of a BasicRX daughterboard t=
o the Ethernet payload?  I understand they can be used to control the rad=
io, but I=E2=80=99d like to see their state in an output binary stream (s=
uch as chA.dat) on a host machine.

In UHD 3.9, our FPGA source was modified to accomplish this.  That source=
 was significantly different as it appears to pre-date the RFNOC.  The gp=
io_atr module was a submodule instantiated under the radio module all ins=
ide the x300_core.  But now it appears the gpio_atr instantiation is outs=
ide of the rfnoc_radio_block instance.

Thank you,

Mark Gannet

--b1_NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Greetings,</p><p>With the UHD 4.x and the radio being a block in the R=
FNOC, is there a way to write the signals input to the GPIO pins of a Bas=
icRX daughterboard to the Ethernet payload?  I understand they can be use=
d to control the radio, but I=E2=80=99d like to see their state in an out=
put binary stream (such as chA.dat) on a host machine.</p><p>In UHD 3.9, =
our FPGA source was modified to accomplish this.  That source was signifi=
cantly different as it appears to pre-date the RFNOC.  The gpio_atr modul=
e was a submodule instantiated under the radio module all inside the x300=
_core.  But now it appears the gpio_atr instantiation is outside of the r=
fnoc_radio_block instance.</p><p>Thank you,</p><p>Mark Gannet</p>


--b1_NKqr4WAlcMvkqFZYOGKlfxhx6BDM2GMqLct2TeGsOIg--

--===============3139736810855553947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3139736810855553947==--
