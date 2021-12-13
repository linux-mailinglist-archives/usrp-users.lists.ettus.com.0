Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E764731CC
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 17:28:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B91173854B2
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 11:28:30 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D76D384829
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 11:27:26 -0500 (EST)
Date: Mon, 13 Dec 2021 16:27:26 +0000
To: usrp-users@lists.ettus.com
From: iw1fnw@gmail.com
Message-ID: <XN3OYnjdN0SfaRuMFAYmSflwqRzyG19Q2YDhki7l7o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTS=Hc9KcGSOhdYrFLP2NnuTzLKgPLFJ1fs+UwyLnUpe=A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: HMDDIW4PQXMMDGRAWVEF2VYLKB5GXRKB
X-Message-ID-Hash: HMDDIW4PQXMMDGRAWVEF2VYLKB5GXRKB
X-MailFrom: iw1fnw@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMDDIW4PQXMMDGRAWVEF2VYLKB5GXRKB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8559200277724651885=="

This is a multi-part message in MIME format.

--===============8559200277724651885==
Content-Type: multipart/alternative;
 boundary="b1_XN3OYnjdN0SfaRuMFAYmSflwqRzyG19Q2YDhki7l7o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XN3OYnjdN0SfaRuMFAYmSflwqRzyG19Q2YDhki7l7o
Content-Type: text/plain; charset=us-ascii

Thanks Rob.

About versions, indeed I mean 2.7 (I think this was the old one) and now is 3.8. The UHD version is the default one that comes with Ubuntu 18 LTS.

```
abusso@ttclabsdr:~$ uhd_usrp_probe --version
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
```

I can upgrade to the latest one, just to check if it works. The problem with GNU-Radio was that if GNU-Radio is not compiled with same UHD version from which the FPGA image has been taken, it does not work. This is why I had to change the image.

Concerning your 3 points, I confirm all of them

```
abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2" --fpga-path="/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
```

I will try to use the latest UHD to see what happens. And if it does not work, I will try to flash the 1G image as you suggested.

Thanks!

--b1_XN3OYnjdN0SfaRuMFAYmSflwqRzyG19Q2YDhki7l7o
Content-Type: text/html; charset=us-ascii

<p>Thanks Rob.</p><p>About versions, indeed I mean 2.7 (I think this was the old one) and now is 3.8. The UHD version is the default one that comes with Ubuntu 18 LTS.</p><pre><code>abusso@ttclabsdr:~$ uhd_usrp_probe --version
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
<br></code></pre><p>I can upgrade to the latest one, just to check if it works. The problem with GNU-Radio was that if GNU-Radio is not compiled with same UHD version from which the FPGA image has been taken, it does not work. This is why I had to change the image.</p><p>Concerning your 3 points, I confirm all of them</p><pre><code>abusso@ttclabsdr:~$ uhd_image_loader --args "type=x300,addr=192.168.30.2" --fpga-path="/usr/share/uhd/images/usrp_x310_fpga_XG.bit"
linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

Unit: USRP X310 (31D7872, 192.168.30.2)
FPGA Image: /usr/share/uhd/images/usrp_x310_fpga_XG.bit
failed.
Error: RuntimeError: Device reported an error during initialization.
<br></code></pre><p>I will try to use the latest UHD to see what happens. And if it does not work, I will try to flash the 1G image as you suggested.</p><p>Thanks!</p><p><br></p><p><br></p><p><br></p>


--b1_XN3OYnjdN0SfaRuMFAYmSflwqRzyG19Q2YDhki7l7o--

--===============8559200277724651885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8559200277724651885==--
