Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5A111F02C
	for <lists+usrp-users@lfdr.de>; Sat, 14 Dec 2019 04:50:52 +0100 (CET)
Received: from [::1] (port=40476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifyS8-0001MX-Fv; Fri, 13 Dec 2019 22:50:48 -0500
Received: from mout.gmx.net ([212.227.17.22]:50627)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1ifyS4-0001HC-SU
 for usrp-users@lists.ettus.com; Fri, 13 Dec 2019 22:50:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576295403;
 bh=pd9qqqSJj5B8eI4CYtzEreWOB2JjSoMtC3TyY9IOg1Q=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=K/RE7dS2OHqmh1XKwbZCS3vsvbUa6mzvGJyZA/b3Ebnp5MOxx3zzuUJ6mH8MjPGWF
 1olYcULaECCPg1IZDuCX6L5HhBOk4vTsuDe26hs96/kt8IGI7rcvtIUAyCGULj82Hf
 hNlJy1bkhqaLKtGn+S703Heu0+wx0nkEtORPyBLo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.42.146] ([67.216.42.146]) by web-mail.gmx.net
 (3c-app-gmx-bs40.server.lan [172.19.170.92]) (via HTTP); Sat, 14 Dec 2019
 04:50:03 +0100
MIME-Version: 1.0
Message-ID: <trinity-6c4af0fa-52cb-4d53-9353-13491cb25809-1576295403539@3c-app-gmx-bs40>
To: usrp-users@lists.ettus.com
Date: Sat, 14 Dec 2019 04:50:03 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:j3hnWWsL14yLm3FlibDXWQy1lX1IFJrxxFE6dc1vJu/s3wXc7kcrUizfC8mFbV0uF6swR
 zYXdz5vdJDVFMIONv//iXWUgB/JjhOs50zjC9bh3Jg6r329uwLlDKVUWjR8iwJ7BfpVPa/RFeQVf
 tcfTQ2V1JPIp8KReEYWLcm5lM8NyAJI/VM9EuYwUYgTxnfnRIfpxECMPK83VYSSxFr5jtFN0qlVh
 Rn9XwHfjiSu0VByxUp7ttkxzIEq5XVIU/HWSRDmvAgll6BHxi8cKRr1WC93j8idrHqEKLETdoG0k
 QY=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XKc9jZHfI/U=:aGiQ5WzXMnVSKiygbkbFN4
 /NjW1JSGuQqsd5VXsIVafihyqXEsHlRK6tcjxC0MbpRM9ePKVjCzs5djmw79C8IztSw2U0uq5
 Y4Ds0sBSNH6SLHJWXPhRvqUi6pyuVPVTlvSxdgYYb3lAjIDxiK2dGV7CFOI/H0f5VOlcTyiLc
 08T1dHYRToiaUpLgAAFxgSktCtYQfbfvw6xBr/e29YBHXmRHLGplA5a2qvZyzEd4tTcjX6fj5
 8pjj2ReQh0QEkZvbFfeC4fCVIUmu09xpBoyLx3HtYpZ1auTFUO5yM0f3u2YddPSo8kAXhug/Z
 QgayGkBBlbMhZJF+6qyAVDlte1md9tL7KVyjA/SeMGzMHul53YkqHxHpgEDl/M8O7JWDqPCGX
 sQ58W+Zx8A/eDAyeSPPnqj6yHofPDQ/XHVSy1NJ1FyiNijAco+GQA/x1hnXr/z7JAckE893Cn
 DGfBTWHK5JPd9rx3mHV4FnOfDZYDHqJn7qgEzlYeeW32bO7z5SRbr+stJgNE/vMfU38hqLQyZ
 mh95DmMO9guVOpmzMmfcvHhhOsYLsz3XeqGNzL8ExOzHUzbGN8tLqozbhdQQSYsjUtZhSYxVO
 I+pEDAcHx3mU3yg2y5Qyf+Hg0jAKkCIsECrJX/4mY2UoaWfAa6zIGWiCLZv9cmK/6/c3a3pf9
 ZxZCt9iD4APbBU2bk5SMM0bcWX9KeKYFeYpaGJKojgHUrDg==
Subject: [USRP-users] Config USRP Source/Sink integer-N mode and timed
 commans via messages
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi,

The UHD interface supports messages to change center frequency etc [1].
I would want to send the following commands via messages to the USRP Sink and USRP Source, respectively:

now = self.uhd_usrp_sink_0.get_time_now()
timeStamp = now + uhd.time_spec(0.1)

tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
self.uhd_usrp_sink_0.set_command_time(timeStamp)
res1 = self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
self.uhd_usrp_sink_0.clear_command_time()

tune_req_rx = uhd.tune_request(2*fcenter)
tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
now = self.uhd_usrp_sink_0.get_time_now()
self.uhd_usrp_source_0.set_command_time(timeStamp)
res2 = self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
self.uhd_usrp_source_0.clear_command_time()

The first issue is that the "tune_request" described in [1] is a simple pair. However, the real uhd::tune_request_t is more comprehensive and includes the "args" element that I need to set to "mode_n=integer", "int_n_step=1000e3" for integer N PLL.

The second issue is the timed command. It seems usrp_block::set_command_time translates into "time" with "timestamp" and usrp_block::clear_command_time translates into "time" with PMT_NIL. However, how to I obtain the current UHD time (uhd_usrp_sink_0.get_time_now)?

Thanks,
Luke


[1] https://www.gnuradio.org/doc/doxygen/page_uhd.html



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
