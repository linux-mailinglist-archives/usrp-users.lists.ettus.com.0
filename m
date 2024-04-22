Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6608AC6D6
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 10:23:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96399385798
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 04:23:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713774229; bh=hcBVJaZSTGBvKKy9Vu9oUduhzsh/isUzG8SjS5pJvpw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bj/0v0g+o3QK2IcJvpBkQWYbh8+zdQ2GfXXyLq4KCJkTlRq10NzMFIFiaryrecB8n
	 /GmWFvkOXZ7kxkqV4WU9jydqdK9QhLj+sj0xgklJnByd5jqOYyq3HY0xJaiCAWOWTa
	 iZzmPfoj/DHP8OVRC0xB2DfQglDwR9aJ8JnCsfx0ChAvXj/a6IlGfNt6F2kqwoLhTp
	 co0ecm3JWRO5ilX++hsYGX/vPk+nW+I01dWlpO6UmPrvkj8MbxpdAi0zMGZKn1YAU3
	 edgvLynGpxOeGCQlpnhCSYmHAPt8qhnVqGyO6S/oTFymRPxl69e6UUs/4plaCip1AQ
	 xW1ZOMCJAL4eQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB66F385650
	for <usrp-users@lists.ettus.com>; Mon, 22 Apr 2024 04:23:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713774213; bh=aejUk2DHY1bezvD4TnzXFhb5xjVU4n/SfyZRm29rnyU=;
	h=Date:To:From:Subject:From;
	b=OxYbT87sZWEaETTDStawdd52oPXpT9now1oTHhIZFjfzLYtqDKMrBfFWykLuYh6RZ
	 TQvTw51/OOEpTUM0OKWoHo5GbKxrlSGLnk1IQnA9k0KWNnhZ32OtUbGR2aeQrlQ4aj
	 SnuPpxMJaQUXGmbgE+dRoIUO+UPOf+zC8tBRUJw1Wu2dSRJ1rDY2o/27QWP6XG9Er3
	 zF2ZEesGi7wvctxT/UUGKYb2+3wMJlWKWQIdf0EDJn/7U4YVfAhAweNcva1fD85iFS
	 Fs0aRxVrseCn9kD0aWMyDsHu+aq2+8EY9FwQEFVlJy7qzfkju1VutE72e0LqBWCysV
	 mYF6V5Q/krQjQ==
Date: Mon, 22 Apr 2024 08:23:33 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7OKRVYSARR56RTT2OQL3K6V64Z6FKD34
X-Message-ID-Hash: 7OKRVYSARR56RTT2OQL3K6V64Z6FKD34
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] About Two E320's Synchronization using GPSDO's
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7OKRVYSARR56RTT2OQL3K6V64Z6FKD34/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7644396803754030358=="

This is a multi-part message in MIME format.

--===============7644396803754030358==
Content-Type: multipart/alternative;
 boundary="b1_zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg
Content-Type: text/plain; charset=us-ascii

We have a setup with two USRP devices, attempting to acquire signals' time of arrival (TOA) with matched filters. We can observe stable and accurate TOA using USB-driven devices (i.e., B210's) with a single external PPS and 10MHz feed.

However, when testing the design with two E320's using their integrated GPSDO as the clock and timing source, we could not achieve a steady TOA anywhere close to the clock performance specified [here](https://www.ettus.com/wp-content/uploads/2019/01/USRP_E320_Datasheet.pdf "https://www.ettus.com/wp-content/uploads/2019/01/USRP_E320_Datasheet.pdf"). A constant drift over time (i.e., +50 ns over \~120 seconds) was observed on one E320 device with respect to the other for each run. We are almost certain that neither of the devices is damaged (they are fresh out of the box), also we are aware of [this](https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNCBELU3F?hash=4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK "https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNCBELU3F?hash=4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK") issue.

The setup includes one source signal symmetrically fed to the devices from the same RF channels. The E320 devices share the same GPS antenna, which is an externally fed active GPS antenna while the E320 GPSDO's ports are DC blocked.

We are yet to try:

1. Observing the behavior with another pair of E320 devices.

2. Feeding the source signal from the other RF ends.

3. Synchronizing the E320's with an external clock and timer, as we have done with the B210 devices.

We are wondering if there are any software tricks applicable specific to the E320 devices that we should be employing. Any help will be appreciated!

--b1_zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>We have a setup with two USRP devices, attempting to acquire signals' ti=
me of arrival (TOA) with matched filters. We can observe stable and accurat=
e TOA using USB-driven devices (i.e., B210's) with a single external PPS an=
d 10MHz feed.</p><p class=3D"">However, when testing the design with two E3=
20's using their integrated GPSDO as the clock and timing source, we could =
not achieve a steady TOA anywhere close to the clock performance specified =
<a href=3D"https://www.ettus.com/wp-content/uploads/2019/01/USRP_E320_Datas=
heet.pdf" title=3D"https://www.ettus.com/wp-content/uploads/2019/01/USRP_E3=
20_Datasheet.pdf">here</a>. A constant drift over time (i.e., +50 ns over ~=
120 seconds) was observed on one E320 device with respect to the other for =
each run. We are almost certain that neither of the devices is damaged (the=
y are fresh out of the box), also we are aware of <a href=3D"https://lists.=
ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNCBELU3F?hash=3D4KGAPCNGJL=
6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK" title=3D"https://l=
ists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNCBELU3F?hash=3D4KGAP=
CNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK">this</a> issu=
e.</p><p>The setup includes one source signal symmetrically fed to the devi=
ces from the same RF channels. The E320 devices share the same GPS antenna,=
 which is an externally fed active GPS antenna while the E320 GPSDO's ports=
 are DC blocked.</p><p>We are yet to try:</p><ol><li><p>Observing the behav=
ior with another pair of E320 devices.</p></li><li><p>Feeding the source si=
gnal from the other RF ends.</p></li><li><p>Synchronizing the E320's with a=
n external clock and timer, as we have done with the B210 devices.</p></li>=
</ol><p>We are wondering if there are any software tricks applicable specif=
ic to the E320 devices that we should be employing. Any help will be apprec=
iated!</p>

--b1_zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg--

--===============7644396803754030358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7644396803754030358==--
