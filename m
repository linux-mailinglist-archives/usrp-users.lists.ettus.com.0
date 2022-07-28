Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B81583E4D
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 14:06:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B3D0383DB5
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 08:06:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659010017; bh=5KWeNkvEMZkG6nWWHVIkOhsPm8QwIL5o24mJHfIUBeo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YzWsnMvmtFNsB6s5JiOs0SUpUe1Ao2sCeRHOPDglOsNsK2nlGMFB1gVcs656dxSCD
	 /IQgUWDLJzkFN2kR9raNBWri/keR7NdOZTHfuMGzOMe0S3/nuShvYQTzqwCQVIrthw
	 4FmKdq+PDGT5mo7+uegJ8dzYZ6gnjilr6LlS4EVEy8yW5vRTPMNhNQqiaQt2atA/+4
	 aVJqTCPZSnsIu4HLu/HxUmdW87aCY7fty1xCNXxZAaAWdVgk9SNIrhp75mBbHUsqJm
	 CCp5s3Iip60iLIOVx5pr2eQTeVUd06RUNsbzm1By+tuLQGRFWCSIjzRIXWhPba/CXJ
	 fMtM2C+/hMB3Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C23EE383907
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 08:05:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659009943; bh=+SjnAg4gNxZzFQBFstKLiUNwbR0xKoyDG4wEX+VEQYU=;
	h=Date:To:From:Subject:From;
	b=BHCLwsoGz9lk+p94XQeHinne7I/jc5vTbYWT4FY5lh90vn9RZrMR+anqHs9h9BXfw
	 Ud5IyoAJsSiwvNp4HH3WPxZqzMzmT+Iz6NqFmYUnQyJKW1n0ZG1CIMozp++RZ1Pt84
	 +a3xYXFoDfm8Ol+FAWunFtv7UvWzub8tP78nRvAHogVYyWmTyrnHy/A9ONV6eg5cP5
	 wa8RjN3qYKWCBjOGWZRXmL0F6+gDwCZ+M9wpBfUijWYkhMAjp+b+B0uLPXa9NPAor7
	 Vpk3/P9B1rTDkfSStLHgPZG2XwmWIini5cEJXEzsy4t9YzdYX/tdUCTDw3vrAMq7Pj
	 J/UVkfqb+Dkmw==
Date: Thu, 28 Jul 2022 12:05:43 +0000
To: usrp-users@lists.ettus.com
From: meni.dali@sabra-microsystems.com
Message-ID: <a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ZMVNCLMFK6KPN4TOKGOGAGSWRH3XP65F
X-Message-ID-Hash: ZMVNCLMFK6KPN4TOKGOGAGSWRH3XP65F
X-MailFrom: meni.dali@sabra-microsystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK 21.11
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZMVNCLMFK6KPN4TOKGOGAGSWRH3XP65F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5303620139490442204=="

This is a multi-part message in MIME format.

--===============5303620139490442204==
Content-Type: multipart/alternative;
 boundary="b1_a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk
Content-Type: text/plain; charset=us-ascii

Hi 

I use UHD version 4.2 and x410.

So far, I have been using DPDK version 18.11. Now I'm trying to upgrade the DPDK to version 21.11.

I have successfully installed the DPDK, However, when I compile the UHD library I get the following error:

 53%\] Linking CXX executable test_pps_input

/usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined reference to \`lcore_config'

/usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined reference to \`rte_eal_get_configuration'

collect2: error: ld returned 1 exit status

Does anyone have a clue what could be causing the error?

Best regards

Meni

--b1_a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk
Content-Type: text/html; charset=us-ascii

<p>Hi </p><p>I use UHD version 4.2 and x410.</p><p>So far, I have been using DPDK version 18.11. Now I'm trying to upgrade the DPDK to version 21.11.</p><p>I have successfully installed the DPDK, However, when I compile the UHD library I get the following error:</p><p> 53%] Linking CXX executable test_pps_input</p><p>/usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined reference to `lcore_config'</p><p>/usr/bin/ld: ../lib/libuhd.so.4.2.0: undefined reference to `rte_eal_get_configuration'</p><p>collect2: error: ld returned 1 exit status</p><p>Does anyone have a clue what could be causing the error?</p><p>Best regards</p><p>Meni</p>


--b1_a5UBBoRJzi8SUxyWksl9yEQwogaeWxQVRWE4VTDYQk--

--===============5303620139490442204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5303620139490442204==--
