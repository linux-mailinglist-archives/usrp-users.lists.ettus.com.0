Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F224E81F4
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 17:38:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 848D33849C9
	for <lists+usrp-users@lfdr.de>; Sat, 26 Mar 2022 12:38:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648312737; bh=sPBOThUFvMbcwD9nqlVApnxfyS+SkxSX0Luw5GO+otE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ojKK+LsPDcBXd3IyrJ3OUdKH6B3IzfQtAy4SLJ51/6VtU+GpJcwy0jKugFQGXfpSp
	 xUJ7J0KYJTjh5rhYtnbEx+4M2fIPOUt6zyIG3YVwZEafNEqnJqFhIGqTHy5JXZSOaJ
	 Y0g5r+gLA5lfzmnuMEhA4hyOsfbyfva7cHRG2mP0LLUPinzWLW6ITt5fLgzTBpqZHD
	 /l6nSDMGK5TlaOCq1kBLhKCPL9+wO6ClNQRwdyHJjl2dxmubHdW/uzExZ28sgxQ6Bi
	 BdzTb2t9+tZddX/TGSnnilD6O0wyDOFmpQxU2YyXlRVCeaAh1cLQ5Nc5l9Ljhtmbiy
	 Mrk2OkCXt5TbQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0F0638494E
	for <usrp-users@lists.ettus.com>; Sat, 26 Mar 2022 12:37:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648312679; bh=DQWqHIUCmbmGQZtcBg1UZSWk7ctyGkNJWwk4qhd9kfA=;
	h=Date:To:From:Subject:From;
	b=VlJx2NPVMCcfFdX2JzrJmG0gggiTBxOlreUG945MAH11IweAkxfMD6JmDiE7aOP6l
	 iL/gbWJm35+SRoYYX461Z/4U2bFxRlluO41zJTgkZV4dRupqEzumZtFGETNtqo4cUT
	 wtQaAzQwN7QDTzGTAP55tYC+K7C7FYKbZ4ulZJgXVBQpAD6mkVR3s13budM3LWSrec
	 jX/azgHN0pVEOiNgk0YJJVTqzk0p2a1/sASttoUEH/ZB8Jgx+1GmNzMPBTtvNhIiMx
	 FkMsCFzK1w4ZyckeLwtYIict03iQrOdcbhJxxNvzvd94WD+MoQ72Xgxgk1ZmzY84jM
	 MUZr7Gr+0pK0A==
Date: Sat, 26 Mar 2022 16:37:58 +0000
To: usrp-users@lists.ettus.com
From: don@commlargo.com
Message-ID: <KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4JYFJU6ZL2UNO7WK5GO6MVUFF2OTICPS
X-Message-ID-Hash: 4JYFJU6ZL2UNO7WK5GO6MVUFF2OTICPS
X-MailFrom: don@commlargo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD_IMAGES_DIR and Ubuntu 20.04.3 LTS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4JYFJU6ZL2UNO7WK5GO6MVUFF2OTICPS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0459493228161338578=="

This is a multi-part message in MIME format.

--===============0459493228161338578==
Content-Type: multipart/alternative;
 boundary="b1_KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have been fighting this problem for two months; sometimes able to work =
for a couple of days, and then it breaks again.  It occurs on multiple ha=
rdware platforms. =20

@SDR1000:\~/SDR/uhd/host/build/examples$ sudo -E ./benchmark_rate --args =
type=3Db200,fpga=3D/usr/local/share/uhd/images/usrp_b200mini_fpga.bin --r=
x_rate 10e6 --tx_rate 10e6

results in:

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.gi=
t-435-g220710b1

\[WARNING\] \[B200\] EnvironmentError: IOError: Could not find path for i=
mage: usrp_b200_fw.hex

Using images directory: <no images directory located>

Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow the=
 below instructions to download the images package.

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

the environment variable is set in \~/.bashrc as shown below

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

@SDR1000:\~/SDR/uhd/host/build/examples$ echo $UHD_IMAGES_DIR=20

/usr/local/share/uhd/images/

jericho@SDR1000:\~/SDR/uhd/host/build/examples$ sudo -E uhd_find_devices

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.gi=
t-435-g220710b1

\--------------------------------------------------

\-- UHD Device 0

\--------------------------------------------------

Device Address:

    serial: xxxxxxxxx

    name: B200mini

    product: B200mini

    type: b200

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94

I was briefly able to have the command working benchmark_rate work last w=
eek by adding the args, but now it is failing again.  It fails with sudo =
-E or plain sudo.  And also fails without the args.  How do I get past th=
is?  Thanks!

--b1_KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I have been fighting this problem for two months; sometimes able to work=
 for a couple of days, and then it breaks again.  It occurs on multiple har=
dware platforms.  </p><p>@SDR1000:~/SDR/uhd/host/build/examples$ sudo -E ./=
benchmark_rate --args type=3Db200,fpga=3D/usr/local/share/uhd/images/usrp_b=
200mini_fpga.bin --rx_rate 10e6 --tx_rate 10e6</p><p>results in:</p><p>=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p>[INF=
O] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.git-435-g220=
710b1</p><p>[WARNING] [B200] EnvironmentError: IOError: Could not find path=
 for image: usrp_b200_fw.hex</p><p>Using images directory: &lt;no images di=
rectory located&gt;</p><p>Set the environment variable 'UHD_IMAGES_DIR' app=
ropriately or follow the below instructions to download the images package.=
</p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94</p><=
p>the environment variable is set in ~/.bashrc as shown below</p><p>=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94</p><p>@SDR1=
000:~/SDR/uhd/host/build/examples$ echo $UHD_IMAGES_DIR </p><p>/usr/local/s=
hare/uhd/images/</p><p><br></p><p>jericho@SDR1000:~/SDR/uhd/host/build/exam=
ples$ sudo -E uhd_find_devices</p><p>[INFO] [UHD] linux; GNU C++ version 9.=
4.0; Boost_107100; UHD_4.2.0.git-435-g220710b1</p><p>----------------------=
----------------------------</p><p>-- UHD Device 0</p><p>------------------=
--------------------------------</p><p>Device Address:</p><p>    serial: xx=
xxxxxxx</p><p>    name: B200mini</p><p>    product: B200mini</p><p>    type=
: b200</p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94</p><p>I was briefly able to have the command working benchmark_ra=
te work last week by adding the args, but now it is failing again.  It fail=
s with sudo -E or plain sudo.  And also fails without the args.  How do I g=
et past this?  Thanks!</p><p><br></p>

--b1_KeT0Jm27fU244jTA7sL2Y6FUM0aamdfHEDywIXxK08--

--===============0459493228161338578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0459493228161338578==--
