Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B7990BC42
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 22:38:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21090385312
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 16:38:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718656684; bh=T14MzFcSMirPorotpt6Xz7VvMB6co861JerflgQOKII=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=S9wuAM+TBCCy0ab5O4UswsyjsW6Mmkhf8JfoBAoHhs4ZD0ewIt+6md5VJTVnfBG9r
	 SYtpJWlWPrrMup8g+xqKbbD+SX83LMfWPky/I2UD45OO29lbGbIwBofTIi/Uq4t7N7
	 Pzexx0zbogjIe3EXfjUcYy3mic8B1BZQJusgn61KC4OUFBztT9E4/tEBnU0mODRzJO
	 g5mftIaldXvZpeMkEJVnxvsWYtsummXRewFwzQJw6HzWXd/umc8vt2+Rj9I03hfbAj
	 tV98mE2BoZu3rkpChb4uIpVnxe4oW7oQZCVMtHIIpx4lpPLwrw/s1oITtRbjdnYxqw
	 1Hg30exu9wBVg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF81D3830EC
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 16:37:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718656669; bh=/3lPzau/WiqJyGo/gxE7a0hzpDP6cZsEIBJhM8VkORk=;
	h=Date:To:From:Subject:From;
	b=bOtsALyIh8KO12gIYR/hs4dp550Kd5inrnHvSYjNoPO9LQzj5rqW5PipqgAmPuvvR
	 8FqnJgwuFes4G/5VPAEbL+gawk+Zzapl2tDwZaCK/QjwYv9i7azQwqjEjxjGL8/z1o
	 HBOuOUv3Ucviof1jXAjGiPBy4vnyxun5D6lng1mNoir+fCLifBJXTp4lEILEW+YP/V
	 P5d9DJHJkvuaELfngefE3pv1uijlxs6qLlPUqfUE24t39Q+UpU9N4fimARWOR+f2cR
	 HmvoUb7G2Q3EdAvd+j2M6Wx1mE7ez6eAHkRA8dkt+SJYGboc0gi+f4z7sIPVXcrXyu
	 3OGnr+gLtwAsw==
Date: Mon, 17 Jun 2024 20:37:49 +0000
To: usrp-users@lists.ettus.com
From: hoosac19@hotmail.com
Message-ID: <3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4OZ4KXQNNCBT7OEQWQYNDL6SLDL7OLGR
X-Message-ID-Hash: 4OZ4KXQNNCBT7OEQWQYNDL6SLDL7OLGR
X-MailFrom: hoosac19@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] My new N210 does not recognize updated UHD driver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4OZ4KXQNNCBT7OEQWQYNDL6SLDL7OLGR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8493769205521299951=="

This is a multi-part message in MIME format.

--===============8493769205521299951==
Content-Type: multipart/alternative;
 boundary="b1_3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I used Pybombs to install the UHD and the GNURadio on my PC running Ubunt=
u v23.10, the terminal screen indicated that these installations complete=
d successfully, however the terminal did not recognize my =E2=80=9Cuhd_us=
rp_probe=E2=80=9D command.  Pinging the N210 via Ethernet using the corre=
ct static IP address worked ok.

Going by the Ettus UHD installation guide, I then typed: "sudo add-apt-re=
pository ppa:ettusresearch/uhd", followed by "sudo apt-get update", follo=
wed by "sudo apt-get install libuhd-dev uhd-host". This process then appe=
ared to run to completion.\
\
I then typed: "uhd_usrp_probe" again. A run-time error was then displayed=
: "Expected FPGA compatibility number 11, but got 10: The FPGA build is n=
ot compatible with the host code build"\
\
Since I just purchased my N210 from NI (shipped just last week), I really=
 would like to verify that it works as shipped with the current FPGA buil=
d that was loaded at the factory before messing with it.  Could someone p=
lease advise me on how to properly install the UHD driver version that is=
 compatible with my new N210=E2=80=99s factory FPGA build?  I=E2=80=99m o=
k with updating the FPGA image later, but want to make sure that the hard=
ware is functional on arrival first.\
\
I am new to Linux, so thank you very much for your help!

--b1_3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I used Pybombs to install the UHD and the GNURadio on my PC running Ubun=
tu v23.10, the terminal screen indicated that these installations completed=
 successfully, however the terminal did not recognize my =E2=80=9Cuhd_usrp_=
probe=E2=80=9D command.  Pinging the N210 via Ethernet using the correct st=
atic IP address worked ok.</p><p>Going by the Ettus UHD installation guide,=
 I then typed: "sudo add-apt-repository ppa:ettusresearch/uhd", followed by=
 "sudo apt-get update", followed by "sudo apt-get install libuhd-dev uhd-ho=
st". This process then appeared to run to completion.<br><br>I then typed: =
"uhd_usrp_probe" again. A run-time error was then displayed: "Expected FPGA=
 compatibility number 11, but got 10: The FPGA build is not compatible with=
 the host code build"<br><br>Since I just purchased my N210 from NI (shippe=
d just last week), I really would like to verify that it works as shipped w=
ith the current FPGA build that was loaded at the factory before messing wi=
th it.  Could someone please advise me on how to properly install the UHD d=
river version that is compatible with my new N210=E2=80=99s factory FPGA bu=
ild?  I=E2=80=99m ok with updating the FPGA image later, but want to make s=
ure that the hardware is functional on arrival first.<br><br>I am new to Li=
nux, so thank you very much for your help!</p>

--b1_3rerUmFqA60LESwgoUom5sWmLd3B9UA9NpFKMmTOWVY--

--===============8493769205521299951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8493769205521299951==--
