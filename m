Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61661A1D30D
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 10:08:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0245385A20
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 04:08:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737968934; bh=1LjpZXXAIbD9zUu7LSuGKGs+BpSd3UxEc9IlSIw1U3Y=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZtbkrjounPlBhn6unTYFd+PzWlIvKMjhyvdabLi78x5q64Xi9ymEKmfTCO4n8crGA
	 BoS/ItE25FogOLJZzC1SD9QtWow8oeco/C2CLfRU8szui/UjCxOkp+zjJGXUsFHknm
	 45jy5hy9tFUKIK5eyPPGYqNWFmJZeen4Nt/bWKycJTGCkjTMNgkNz3LxgqG4xq8wZ8
	 hs1D4LgAC2ULrfNyabdengHaJ/QcvCSn7NofOWz03i6gxyt0uZEF88j/UKGHEWlS01
	 9BCN7FDhEaYrge4NeG6uG2UIhhTdMEoQ5Vls3JoiZNYK6T+ugheAhqIfoVcpGtspkZ
	 xk6oHUqymQnJQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06D943851BB
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 04:08:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737968893; bh=TXH+NxsjrUnX6UOi90qBOcgAYsVPPXD1D9opV4GdUfQ=;
	h=Date:To:From:Subject:From;
	b=VWEMfuNZY8kwbG7d1ZMVzfzionxxXt5QC0NNYy76mt/WIDjJNXFOp1oYnL6fFTLSr
	 ZyM0YyxPN7P4vOC+tmXn7aeOVqRjITRYLUDNeNCThHx85TPnFi5UF2Ql7p5/8GnvH0
	 ey9atDI++t5nWIL/6pWslmDjFiKEuvrpjzHDsmmKbgfEdbSOOaT+9lo0X2mjWk5HHJ
	 HKpocdejuv9SOR+Hx3nH3d4XU3ocTf/Tu6LqbCPAYduVNcRtaLZ8xfp0A8k7Gux37g
	 F/jsYojS6z1U8ePIdFg8I3CkUc+5SiRigu4wCsEfzToduBNj8Z5R6aYMMOgkY4zL4d
	 18npN4U5n6c6w==
Date: Mon, 27 Jan 2025 09:08:13 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CJYYINJRYOJ563QFUILEC4OFYLCDBCKP
X-Message-ID-Hash: CJYYINJRYOJ563QFUILEC4OFYLCDBCKP
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sample alignment between 2x UBX160 using USRP-2794
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CJYYINJRYOJ563QFUILEC4OFYLCDBCKP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7469445631093700456=="

This is a multi-part message in MIME format.

--===============7469445631093700456==
Content-Type: multipart/alternative;
 boundary="b1_J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ettus=20

We are having a real challenge trying to align two identical streams feed=
ing the ubx160 on a usrp-2974. It is a problem we have had for a long tim=
e.

The data entering the axi bus is aligned but at the output it can be misa=
ligned by 5 to 15ns or so.

Is it possible to completely bypass this bus and feed the DACs directly? =
 FYI, We have tried this but other stuff doesn=E2=80=99t function quite r=
ight, as you may expect.  It was just to experiment.  Definitely somewher=
e between we get misaligned.=20

Any tips would be appreciated=20

thank you for your help

Marino

--b1_J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Ettus </p><p>We are having a real challenge trying to align two ide=
ntical streams feeding the ubx160 on a usrp-2974. It is a problem we have=
 had for a long time.</p><p>The data entering the axi bus is aligned but =
at the output it can be misaligned by 5 to 15ns or so.</p><p>Is it possib=
le to completely bypass this bus and feed the DACs directly?  FYI, We hav=
e tried this but other stuff doesn=E2=80=99t function quite right, as you=
 may expect.  It was just to experiment.  Definitely somewhere between we=
 get misaligned. </p><p>Any tips would be appreciated </p><p>thank you fo=
r your help</p><p>Marino</p>


--b1_J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw--

--===============7469445631093700456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7469445631093700456==--
