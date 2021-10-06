Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A2488423C71
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 13:16:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E040384528
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 07:16:04 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 956FD383A9A
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 07:15:16 -0400 (EDT)
Date: Wed, 6 Oct 2021 11:15:16 +0000
To: usrp-users@lists.ettus.com
From: arjan.feta@unifi.it
Message-ID: <kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CVCYSIXKVNNPGBFPF4GG27T6O3EGT5G7
X-Message-ID-Hash: CVCYSIXKVNNPGBFPF4GG27T6O3EGT5G7
X-MailFrom: arjan.feta@unifi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CVCYSIXKVNNPGBFPF4GG27T6O3EGT5G7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9136186292538395600=="

This is a multi-part message in MIME format.

--===============9136186292538395600==
Content-Type: multipart/alternative;
 boundary="b1_kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ
Content-Type: text/plain; charset=us-ascii

Hi all,

I am trying to calibrate a twinrx (rx direction) using uhd_power_cal.py. This script generates a outputfile.pickle. How is this file passed in order to be able to set a power reference level?

I deduce it needs the calibration data for setting the power reference level since I get this error:

***radio_block.set_rx_power_reference(-4.0,0)***

*Traceback (most recent call last):*

  *File "<ipython-input-5-092ddd34efe0>", line 1, in <module>*

    *radio_block.set_rx_power_reference(-4.0,0)*

*RuntimeError: RuntimeError: Attempting to set power for key x3xx_pwr_twinrx_rx_rx1, but no cal data available!*

Regards,

Arjan

--b1_kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>I am trying to calibrate a twinrx (rx direction) using uhd_power_cal.py. This script generates a outputfile.pickle. How is this file passed in order to be able to set a power reference level?</p><p>I deduce it needs the calibration data for setting the power reference level since I get this error:</p><p><em><strong>radio_block.set_rx_power_reference(-4.0,0)</strong></em></p><p><em>Traceback (most recent call last):</em></p><p><em>  File "&lt;ipython-input-5-092ddd34efe0&gt;", line 1, in &lt;module&gt;</em></p><p><em>    radio_block.set_rx_power_reference(-4.0,0)</em></p><p><em>RuntimeError: RuntimeError: Attempting to set power for key x3xx_pwr_twinrx_rx_rx1, but no cal data available!</em></p><p>Regards,</p><p><br></p><p>Arjan</p>


--b1_kW9pVYx8m772lqgtfBe7cMwxjorQbwQyeBq4lKHjxQ--

--===============9136186292538395600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9136186292538395600==--
