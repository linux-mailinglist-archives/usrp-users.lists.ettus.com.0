Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 153E691C543
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 19:58:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8B9F3853DE
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 13:58:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719597504; bh=eqpBmNO+Y2vkRIDXaNI/G4Iz259V3DGfix3SKV05Jv4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=yCs1bBtOxOLSdHPmFRfgNLbgKBZujRkaFVGDtok0u1BQVgt8Pq66v85gNrvwVMI4a
	 c+sLy2wYKDwu/8MpRjUXZ3iYfeQAxlUHBGGgcMWgIcnZ3iLsenkj1Pw9uF5mPKOhx3
	 CNKglv/KZYtYB6MXwBfbztvroii+7vPG0ArjfBdt3xF2yeLInGIdCKtXzUA4vaOW4a
	 HeKZyAlOr/ug/kMjOhIm2lthIyugDd2Ncu+RQ15iNX3Qc9z61Xi5iip6PRe+fan0nT
	 ymup7Wgzqyb483YDMMRdBSfSkwj3tkK+eRghPHuy879g3UxueQCbC/1kyCVSvT0Xf3
	 B19XptRVyZgQg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 232EF38592F
	for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 13:57:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719597462; bh=VQZoUZ5mhciPmfWPcXN34/PM+aubZ0gw9GdB3uP3Ryo=;
	h=Date:To:From:Subject:From;
	b=n6n14oCpRzhy1gDtArY7+UHXOeQfg/n3BLZcIDJ05FtBJxhcVGJQNfou2VOtCDx9W
	 aNATB2mVjQQB2diLWtxvoSL1HrnJ6JuXPCTdKkxbXqRgpVr9EkQMyGsfTYazK4/N4P
	 ypzIybpc23xMkC7Lo34yFlaNcKVNordp41VRwbwzZhTdvudze6MIZJ+JV+XAU8JkbO
	 fFOO8/x1TE+0zDwGTKxFuOyhvZbP5JwleRbdUUgS6X/G2JNxEN9GoSqxvd1YiU99ul
	 rcVR9EK/OA3YN6OpwlFZKGAq8CQuOLPkXMm5qDijvMwfaoojm13mhKk4CAmLGTEeHh
	 IOz/mhYUKAk0A==
Date: Fri, 28 Jun 2024 17:57:42 +0000
To: usrp-users@lists.ettus.com
From: hoosac19@hotmail.com
Message-ID: <JGWHrMKb1VW6ZKydjsPqpQg2tHD6Im70qgJHXKcrk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MSPTFG6QVCTDLQM2CLHWFX7SSKIHMLAX
X-Message-ID-Hash: MSPTFG6QVCTDLQM2CLHWFX7SSKIHMLAX
X-MailFrom: hoosac19@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Cannot find N210 FPGA images in Ubuntu uhd installation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MSPTFG6QVCTDLQM2CLHWFX7SSKIHMLAX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2433060899016214919=="

This is a multi-part message in MIME format.

--===============2433060899016214919==
Content-Type: multipart/alternative;
 boundary="b1_JGWHrMKb1VW6ZKydjsPqpQg2tHD6Im70qgJHXKcrk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JGWHrMKb1VW6ZKydjsPqpQg2tHD6Im70qgJHXKcrk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

(having trouble with 2 attachments, will try to reply to this new thread)

I can=E2=80=99t find the default FPGA images for my N210 in my Ubuntu uhd=
 installation, could someone please assist me?  Here are the steps I perf=
ormed to install the uhd:

I installed Ubuntu version 24.04 in my Lenovo X220 laptop (SSD wiped clea=
n for Linux only, not dual boot).

I installed the UHD driver into that laptop using these commands (from th=
e Ettus Research USRP Hardware Driver and USRP Manual website):

sudo add-apt-repository ppa:ettusresearch/uhd

sudo apt-get update

sudo apt-get install libuhd-dev uhd-host

Each of these processes completed without errors.

I successfully pinged the N210 at its address:  192.168.10.2.

I executed the uhd_usrp_probe command, the first screenshot attached show=
s the result, indicating that the device firmware and FPGA images needed =
updating.

I entered the following command to update the FPGA image:

uhd_image_loader --args=3D"type=3Dusrp2,addr=3D<IP address>,reset".

The actual command string that I typed was:

uhd_image_loader --args=3D=E2=80=9Ctype=3Dusrp2,addr=3D192.168.10.2,reset=
=E2=80=9D, where I used the IP address for the N210 specified in the Ettu=
s Research N Series quick start daughterboard installation guide.

The second attached screenshot shows the terminal dialog result for this =
step.

Evidently the following two files are missing from my uhd installation:

usrp_n210_fw.bin

usrp_n210_r4_fpga.bin

and it cannot find the images directory.

The terminal prompt in the second screenshot is asking me to run the foll=
owing command:

"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py",

but I didn't see a "uhd" subdirectory in my "/lib/x86_64-linux-gnu" folde=
r.

I tried using the Linux "find" command to look for the "uhd" subdirectory=
 somewhere else in my Ubuntu installation, but I couldn't get the find co=
mmand syntax to work properly with hidden folders.

Could someone please advise where the FPGA images should be located in my=
 installation?  Thank you.

--b1_JGWHrMKb1VW6ZKydjsPqpQg2tHD6Im70qgJHXKcrk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>(having trouble with 2 attachments, will try to reply to this new thread=
)</p><p>I can=E2=80=99t find the default FPGA images for my N210 in my Ubun=
tu uhd installation, could someone please assist me?  Here are the steps I =
performed to install the uhd:</p><p>I installed Ubuntu version 24.04 in my =
Lenovo X220 laptop (SSD wiped clean for Linux only, not dual boot).</p><p>I=
 installed the UHD driver into that laptop using these commands (from the E=
ttus Research USRP Hardware Driver and USRP Manual website):</p><p>sudo add=
-apt-repository ppa:ettusresearch/uhd</p><p>sudo apt-get update</p><p>sudo =
apt-get install libuhd-dev uhd-host</p><p>Each of these processes completed=
 without errors.</p><p>I successfully pinged the N210 at its address:  192.=
168.10.2.</p><p>I executed the uhd_usrp_probe command, the first screenshot=
 attached shows the result, indicating that the device firmware and FPGA im=
ages needed updating.</p><p>I entered the following command to update the F=
PGA image:</p><p>uhd_image_loader --args=3D"type=3Dusrp2,addr=3D&lt;IP addr=
ess&gt;,reset".</p><p>The actual command string that I typed was:</p><p>uhd=
_image_loader --args=3D=E2=80=9Ctype=3Dusrp2,addr=3D192.168.10.2,reset=
=E2=80=9D, where I used the IP address for the N210 specified in the Ettus =
Research N Series quick start daughterboard installation guide.</p><p>The s=
econd attached screenshot shows the terminal dialog result for this step.</=
p><p>Evidently the following two files are missing from my uhd installation=
:</p><p>usrp_n210_fw.bin</p><p>usrp_n210_r4_fpga.bin</p><p>and it cannot fi=
nd the images directory.</p><p>The terminal prompt in the second screenshot=
 is asking me to run the following command:</p><p>"/lib/x86_64-linux-gnu/uh=
d/utils/uhd_images_downloader.py",</p><p>but I didn't see a "uhd" subdirect=
ory in my "/lib/x86_64-linux-gnu" folder.</p><p>I tried using the Linux "fi=
nd" command to look for the "uhd" subdirectory somewhere else in my Ubuntu =
installation, but I couldn't get the find command syntax to work properly w=
ith hidden folders.</p><p>Could someone please advise where the FPGA images=
 should be located in my installation?  Thank you.</p>

--b1_JGWHrMKb1VW6ZKydjsPqpQg2tHD6Im70qgJHXKcrk--

--===============2433060899016214919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2433060899016214919==--
