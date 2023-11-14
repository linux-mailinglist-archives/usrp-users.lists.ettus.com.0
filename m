Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CEB7EB57A
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 18:24:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 510CC3830EC
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 12:24:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699982665; bh=9myGhiNLhpGbE5iYXRpgI9ptJ/8mWfd9wx6mLgGOBvg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=myJpXf4DJu6N2DwizBhzEU7mqQ/ric9bfjflyy9VFqYDAWjpOT9JqPlSs5pfFx/Et
	 gdx6nE238Pk/CGHe1PRWMCRz3Q+69EWf6iYAuDVVEKBKgnevcDqcM0UE8pO4ST/6Or
	 rA44PwAI13SGvyGxUg/xBBCUL1P0okEP0Xgkh6SoG+PLtB8SbHcrqhbNWyl9MotxKH
	 1qAzspJRsbcezK9VaUo7pLxUueiV1AmUQDo2Rq41YElGEgkZ/rOKy9/zgEQUppDpGn
	 P70ZYnfSAmkY2YxHRuHJS7nOAi8jHy+yL0h4BCcC2+Y2k6LiR8+CSTRcYaYVutOqxs
	 YK3mw2OuSwZdg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0EECB3830EC
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 12:24:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699982649; bh=tymCiqfeXRiqpLAz8XVLOwJCUpk5vewM04NuWbA0ynM=;
	h=Date:To:From:Subject:From;
	b=rrfl2/XCarqy9vmcaXWz0C3lN1vPZFBTudcr0SiPjdK52rzrHRZavfMd89yre3e+H
	 P/bKIXzAiZ5EK54XRrc9P7SGjOTw6Qe/M5PBmSP1K1xQAPxUEjwcvebLdSHngXwZuo
	 V+9y+H6+qYAdbgrCCInSH9hYHx66eo2GFZguP16JHyfiXLS2v2zAyrScRSNdk12RqW
	 4qtbBJm0KyCQk/DSRzpHr4zmT4DOKwXzcC/dnwn0A9evQ+ID1bJJxZPVaPsRuIFYxL
	 UgTxGFWU6M3Q/XRDoFAm031IHXEYyz+0yYewhB1Ev9DokPp79zGIIOZGtlUxy6E9OX
	 c21pKjAwkYz2Q==
Date: Tue, 14 Nov 2023 17:24:09 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <8bT31hH6EcNx7Ht8eBdazGg65oh0gGQLBhAt7ZdGM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: I57W36XWPG6W7ULFKAPWFWVTFJKRRWZK
X-Message-ID-Hash: I57W36XWPG6W7ULFKAPWFWVTFJKRRWZK
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 stuck in reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I57W36XWPG6W7ULFKAPWFWVTFJKRRWZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0959168380719437568=="

This is a multi-part message in MIME format.

--===============0959168380719437568==
Content-Type: multipart/alternative;
 boundary="b1_8bT31hH6EcNx7Ht8eBdazGg65oh0gGQLBhAt7ZdGM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8bT31hH6EcNx7Ht8eBdazGg65oh0gGQLBhAt7ZdGM
Content-Type: text/plain; charset=us-ascii

Hello,

I recently tried to update the x410 FPGA over SSH. However, I was met with a strange error, and now when I try to log into the x410, even over console JTAG, I am unable to. It appears the x410 is caught in a reboot loop.

Below is the message I got when trying to update the x410.

\[ERROR\] \[UHD\] An unexpected exception was caught in a task loop.The task loop will now exit, things may not work.rpc::timeout: Timeout of 10000ms while calling RPC function 'reclaim'

\[ERROR\] \[UHD\] Exception caught in safe-call.

  in \~mpmd_mboard_impl

  at /home/workarea/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:322

dump_logs(); _claimer_task.reset(); if (not rpc->request_with_token<bool>("unclaim")) { uhd::_log::log(uhd::log::warning, "/home/frosty/workarea/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 324, "MPMD", std::this_thread::get_id()) << "Failure to ack unclaim!";; } -> rpc::timeout: Timeout of 10000ms while calling RPC function 'get_log_buf'

Error: rpc::timeout: Timeout of 120000ms while calling RPC function 'update_component'

Thanks

Joe

--b1_8bT31hH6EcNx7Ht8eBdazGg65oh0gGQLBhAt7ZdGM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I recently tried to update the x410 FPGA over SS=
H. However, I was met with a strange error, and now when I try to log into =
the x410, even over console JTAG, I am unable to. It appears the x410 is ca=
ught in a reboot loop.</p><p><br></p><p>Below is the message I got when try=
ing to update the x410.</p><p>[ERROR] [UHD] An unexpected exception was cau=
ght in a task loop.The task loop will now exit, things may not work.rpc::ti=
meout: Timeout of 10000ms while calling RPC function 'reclaim'</p><p>[ERROR=
] [UHD] Exception caught in safe-call.</p><p>  in ~mpmd_mboard_impl</p><p> =
 at /home/workarea/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:322</p><p>du=
mp_logs(); _claimer_task.reset(); if (not rpc-&gt;request_with_token&lt;boo=
l&gt;("unclaim")) { uhd::_log::log(uhd::log::warning, "/home/frosty/workare=
a/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 324, "MPMD", std::this_thre=
ad::get_id()) &lt;&lt; "Failure to ack unclaim!";; } -&gt; rpc::timeout: Ti=
meout of 10000ms while calling RPC function 'get_log_buf'</p><p>Error: rpc:=
:timeout: Timeout of 120000ms while calling RPC function 'update_component'=
</p><p>Thanks</p><p>Joe</p>

--b1_8bT31hH6EcNx7Ht8eBdazGg65oh0gGQLBhAt7ZdGM--

--===============0959168380719437568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0959168380719437568==--
