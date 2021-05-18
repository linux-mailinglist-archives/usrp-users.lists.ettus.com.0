Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A5D387BD5
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 17:00:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB1DB385FA5
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 11:00:09 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51F9F3840A6
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 10:59:14 -0400 (EDT)
Date: Tue, 18 May 2021 14:59:14 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BC3FD243-13BA-4782-B6C4-2CE4920597E1@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 7AZSKM5GJPQJX3YFDLFYHTTLPHTZ5V5Y
X-Message-ID-Hash: 7AZSKM5GJPQJX3YFDLFYHTTLPHTZ5V5Y
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: setting up gr-fosphor on uhd 4
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AZSKM5GJPQJX3YFDLFYHTTLPHTZ5V5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1759478707062133073=="

This is a multi-part message in MIME format.

--===============1759478707062133073==
Content-Type: multipart/alternative;
 boundary="b1_YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ
Content-Type: text/plain; charset=us-ascii

Hi, 

Thanks I did that and I do not have that error anymore, but now the GUI doe not show and the program terminates with (return error -11).

`[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff`

`[INFO] [X300] X300 initialization sequence...`

`[INFO] [X300] Maximum frame size: 8000 bytes.`

`[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a`

`[INFO] [X300] Radio 1x clock: 200 MHz`

`[WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this device.`

`gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...`

`[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.`

`gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...`

`gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...`

`gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...`

`>>> Done (return code -11)`

--b1_YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi, </p><p><br></p><p>Thanks I did that and I do not have that error any=
more, but now the GUI doe not show and the program terminates with (return =
error -11).</p><p><br></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.3.=
0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff</code></p><p><code>[INFO] [X300] =
X300 initialization sequence...</code></p><p><code>[INFO] [X300] Maximum fr=
ame size: 8000 bytes.</code></p><p><code>[INFO] [GPS] Found an internal GPS=
DO: LC_XO, Firmware Rev 0.929a</code></p><p><code>[INFO] [X300] Radio 1x cl=
ock: 200 MHz</code></p><p><code>[WARNING] [0/Radio#0] Setting RX IQ Balance=
 is not possible on this device.</code></p><p><code>gr::log :DEBUG: rfnoc_r=
x_streamer0 - Committing graph...</code></p><p><code>[WARNING] [0/Radio#0] =
Attempting to set tick rate to 0. Skipping.</code></p><p><code>gr::log :DEB=
UG: rfnoc_rx_streamer1 - Committing graph...</code></p><p><code>gr::log :DE=
BUG: rfnoc_rx_streamer1 - Sending start stream command...</code></p><p><cod=
e>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...</cod=
e></p><p><code>&gt;&gt;&gt; Done (return code -11)</code></p><p><br></p>

--b1_YwdNQ6wXm2BuEIY6hlFMMfcuO6sPkcx0EwVCNNnzyeQ--

--===============1759478707062133073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1759478707062133073==--
