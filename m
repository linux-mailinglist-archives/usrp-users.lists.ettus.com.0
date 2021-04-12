Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4951B35CAD0
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 18:07:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8696E384EAA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 12:07:34 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 618A2384AA8
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 12:06:41 -0400 (EDT)
Date: Mon, 12 Apr 2021 16:06:41 +0000
To: usrp-users@lists.ettus.com
From: paradis@kwesst.com
Message-ID: <JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: VJKO7O4VDKXUTEIJDCCXTGODTEIP3LBW
X-Message-ID-Hash: VJKO7O4VDKXUTEIJDCCXTGODTEIP3LBW
X-MailFrom: paradis@kwesst.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJKO7O4VDKXUTEIJDCCXTGODTEIP3LBW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8396450189366961219=="

This is a multi-part message in MIME format.

--===============8396450189366961219==
Content-Type: multipart/alternative;
 boundary="b1_JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg
Content-Type: text/plain; charset=us-ascii

Hi everyone, I'm just starting out with the USRP B205 mini-i, and I'm having some issues.

I'm running Ubuntu 20.04 LTS, I've also installed the UHD toolchain using the instructions on the Ettus website (Building and Installing the USRP Open-Source toolchain (UHD and GNURadio) on Linux. The UHD version is v4.0.0.0.

So, after installing UHD and running the 'make test' diagnostic, everything passes 100%, so it seems like everything is working correctly. I've also made sure that the 'uhd-usrp.rules' file has been copied to the /etc/udev/rules.d directory.

When I plug in the B205 mini and do a 'lsusb', it finds a device with the VID/PID of 2500:0022 called "Cypress WestBridge". This is the B205 because when I unplug and run 'lsusb' it disappears, then if I plug it back in it reappears. Great!

So next I try 'uhd_find_devices' and it finds nothing. It returns with: 

\[INFO\] \[UHD\] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062

No UHD Devices Found

Questions:

1) Should the uhd-usrp.rules have a specific entry for the B205? 

2) Is is correct that the B205 comes up as a "Cypress WestBridge"? I know it's the B205 because when I unplug it, it disappears, and when I plug it back in, it reappears.

3) uhd_find_devices does not throw any errors, it just doesn't find the device, could there be a hardware problem?

Any help is appreciated, thanks!

--b1_JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone, I'm just starting out with the USRP B205 mini-i, and I'm ha=
ving some issues.</p><p>I'm running Ubuntu 20.04 LTS, I've also installed t=
he UHD toolchain using the instructions on the Ettus website (Building and =
Installing the USRP Open-Source toolchain (UHD and GNURadio) on Linux. The =
UHD version is v4.0.0.0.</p><p>So, after installing UHD and running the 'ma=
ke test' diagnostic, everything passes 100%, so it seems like everything is=
 working correctly. I've also made sure that the 'uhd-usrp.rules' file has =
been copied to the /etc/udev/rules.d directory.</p><p>When I plug in the B2=
05 mini and do a 'lsusb', it finds a device with the VID/PID of 2500:0022 c=
alled "Cypress WestBridge". This is the B205 because when I unplug and run =
'lsusb' it disappears, then if I plug it back in it reappears. Great!</p><p=
>So next I try 'uhd_find_devices' and it finds nothing. It returns with: </=
p><p>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEA=
D-0-g90ce6062</p><p>No UHD Devices Found</p><p>Questions:</p><p>1) Should t=
he uhd-usrp.rules have a specific entry for the B205? </p><p>2) Is is corre=
ct that the B205 comes up as a "Cypress WestBridge"? I know it's the B205 b=
ecause when I unplug it, it disappears, and when I plug it back in, it reap=
pears.</p><p>3) uhd_find_devices does not throw any errors, it just doesn't=
 find the device, could there be a hardware problem?</p><p>Any help is appr=
eciated, thanks!</p>

--b1_JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg--

--===============8396450189366961219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8396450189366961219==--
