Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF8D3DD450
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 12:49:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5E4338454F
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 06:49:34 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97D5738415B
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 06:48:46 -0400 (EDT)
Date: Mon, 2 Aug 2021 10:48:46 +0000
To: usrp-users@lists.ettus.com
From: fabien.cuny7@orange.fr
Message-ID: <SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: NJ5B6L6U2U5ZWDRDWAL6EAKES3GGOUAI
X-Message-ID-Hash: NJ5B6L6U2U5ZWDRDWAL6EAKES3GGOUAI
X-MailFrom: fabien.cuny7@orange.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 with ODR tools
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NJ5B6L6U2U5ZWDRDWAL6EAKES3GGOUAI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6872225541010158321=="

This is a multi-part message in MIME format.

--===============6872225541010158321==
Content-Type: multipart/alternative;
 boundary="b1_SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo
Content-Type: text/plain; charset=us-ascii

Hello everyone,\
I have been using a USRP B210 for 6 months now transmitting a home DAB+ mux (with Open Digital Radio tools), and since this yesterday, I'm stuck with this error and unable to broadcast again :\
\
\[INFO\] \[UHD\] linux; GNU C++ version 8.2.0; Boost_106700; UHD_3.13.1.0-3\
\[INFO\] \[B200\] Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...\
\[INFO\] \[B200\] Detected Device: B210\
\[INFO\] \[B200\] Loading FPGA image: /usr/share/uhd/images/usrp_b210_fpga.bin...\
\[INFO\] \[B200\] Operating over USB 2.\
\[INFO\] \[B200\] Detecting internal GPSDO.... \
\[INFO\] \[GPS\] No GPSDO found\
\[INFO\] \[B200\] Initialize CODEC control...\
Error: RuntimeError: \[ad9361_device_t\] TX charge pump cal failure\
\
I've tried with USB3 and USB2, second TX output, same problem.\
As anyone had encountered this before ? It seems like a DC-to-DC failure ?\
I post the question here as it seems more USRP related problem than ODR. Even if I run the uhd_usrp_probe command, the same error is displayed.\
Any explanation/help is welcome :)\
\
Fabien Cuny

--b1_SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello everyone,<br>I have been using a USRP B210 for 6 months now transm=
itting a home DAB+ mux (with Open Digital Radio tools), and since this yest=
erday, I'm stuck with this error and unable to broadcast again :<br><br>[IN=
FO] [UHD] linux; GNU C++ version 8.2.0; Boost_106700; UHD_3.13.1.0-3<br>[IN=
FO] [B200] Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex..=
.<br>[INFO] [B200] Detected Device: B210<br>[INFO] [B200] Loading FPGA imag=
e: /usr/share/uhd/images/usrp_b210_fpga.bin...<br>[INFO] [B200] Operating o=
ver USB 2.<br>[INFO] [B200] Detecting internal GPSDO.... <br>[INFO] [GPS] N=
o GPSDO found<br>[INFO] [B200] Initialize CODEC control...<br>Error: Runtim=
eError: [ad9361_device_t] TX charge pump cal failure<br><br>I've tried with=
 USB3 and USB2, second TX output, same problem.<br>As anyone had encountere=
d this before ? It seems like a DC-to-DC failure ?<br>I post the question h=
ere as it seems more USRP related problem than ODR. Even if I run the uhd_u=
srp_probe command, the same error is displayed.<br>Any explanation/help is =
welcome :)<br><br>Fabien Cuny</p>

--b1_SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo--

--===============6872225541010158321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6872225541010158321==--
