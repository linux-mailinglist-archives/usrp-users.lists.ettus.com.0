Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 400D5375B6C
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 21:08:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F472384461
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 15:08:40 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AA1A3842A8
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 15:07:41 -0400 (EDT)
Date: Thu, 6 May 2021 19:07:41 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7XM2LD325D4IXFP7HVPWQGX6YOHG52KK
X-Message-ID-Hash: 7XM2LD325D4IXFP7HVPWQGX6YOHG52KK
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7XM2LD325D4IXFP7HVPWQGX6YOHG52KK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2524623877529882141=="

This is a multi-part message in MIME format.

--===============2524623877529882141==
Content-Type: multipart/alternative;
 boundary="b1_ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg
Content-Type: text/plain; charset=us-ascii

Hi all,

I went through the device recovery process explained here: https://kb.ettus.com/X300/X310_Device_Recovery, but I get the following error:

`[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff`

`Unit: USRP X310 (3176C83, 192.168.30.2)`

`FPGA Image: /usr/local/share/uhd/images/usrp_x310_fpga_XG.bit failed.`

`Error: RuntimeError: Device reported an error during initialization.`

I checked the error online and suggested to perform the recovery steps from the host itself (no switch in between) which I did but still getting the same error. 

Has anyone know how to fix this issue?

Thanks,

Julian

--b1_ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p><br></p><p>I went through the device recovery process explained here: https://kb.ettus.com/X300/X310_Device_Recovery, but I get the following error:</p><p><br></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-ge520e3ff</code></p><p><code>Unit: USRP X310 (3176C83, 192.168.30.2)</code></p><p><code>FPGA Image: /usr/local/share/uhd/images/usrp_x310_fpga_XG.bit failed.</code></p><p><code>Error: RuntimeError: Device reported an error during initialization.</code></p><p><br></p><p>I checked the error online and suggested to perform the recovery steps from the host itself (no switch in between) which I did but still getting the same error. </p><p>Has anyone know how to fix this issue?</p><p><br></p><p>Thanks,</p><p>Julian</p>


--b1_ViCEOT9iRMookujUNaN0GbtKEjNLq7GtpQjjVkzJDg--

--===============2524623877529882141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2524623877529882141==--
