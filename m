Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7C56C3AF
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 01:55:15 +0200 (CEST)
Received: from [::1] (port=52756 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hntlR-0004Ha-PW; Wed, 17 Jul 2019 19:55:13 -0400
Received: from sonic311-55.consmr.mail.gq1.yahoo.com ([98.137.65.237]:44198)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hntlO-0004Bo-2Y
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 19:55:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1563407669; bh=5mwiOj8tCCAw5LpwtJjh8uxm5GCkGZFdCI1tziXXd48=;
 h=Subject:From:To:Date:From:Subject;
 b=Lc4zTeRY8xVkcawHBXjbdsrNKANdEX0RtoZokDO7C75NLte/wUWR0DsSeUSYtmmC3Q/2DmSW7F78/7GNjYQsZPn4a1ZC8YIeimKGa5DBqDnYWjfq3Hk+H7JsQLophVjK+NdCq2TjBklk+qVu1bpZYnyC6rt7d6kRcVyF/ycn0bjlaPQKxJ0xyFqoegwEtUFpnItANg82JESOh6Xo9itfq48Qeeflo1g4hAKVj5hu1PY6lpfE72fCcsvMR3sq2O03A3PgWaxPWNjfzzygwAktoCfM8NqThj993iL6ab+NMtrd++BTcgT6bIp9dOYEy7fJIq59MCCKryCPeH0lKh9rrQ==
X-YMail-OSG: iE0Q8MsVM1mBqfF6QD3t5S_kN4VRCYdl4KICK24N6JIBsqWJMLprpHb0dtylIt1
 9fLoEnWbtmDvsJNRAzZDoalR8MAS0UJPrXg8i39fXezY-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.gq1.yahoo.com with HTTP; Wed, 17 Jul 2019 23:54:29 +0000
Received: by smtp405.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 9fd3f8ce0bd9f913bdc6d15eed65f4a2; 
 Wed, 17 Jul 2019 23:52:28 +0000 (UTC)
Message-ID: <a519d5312182cbaa69431cf9edda62ba8604f7f1.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 17 Jul 2019 23:52:26 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] E310 Channel 0 dead
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

I've been testing RFNoC Blocks on the E310 using the SD image from 
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
and a recent pull from git: commit
6563c53743617215a18542db7d7050a04a0d409d (HEAD, tag: v3.15.0.0-
e310_prerelease).

I got my RFNoC images doing what I want them to do on the test bench
and switched to open air. That's when I noticed that the first channel
on the radio appears to be dead. I reverted to the standard FPGA image
and the usrp interface and example programs to make sure I wasn't
messing anything up. The first channel produces nothing but noise: it's
as if it's got no gain or no antenna. I'm sending the gain, antenna,
and frequency commands to both channels and reading them back. The
correct antenna LEDs light up, but I put antennas on all ports just to
be sure. Using RFNoC I swapped the channels and output ports so that
Channel 0 was directed out of Port 1 and vice versa:

    stream_args.args["block_id0"] = radio_ctrl->get_block_id();
    stream_args.args["block_port0"] = "1";
    stream_args.args["block_id1"] = radio_ctrl->get_block_id();
    stream_args.args["block_port1"] = "0";

and confirmed that Port 1 was now dead and Port 0 works fed from
Channel 0. It looks like a radio connection or command issue.

I reverted the same E310 back to an older SD image and both channels
work again with the same software but RFNoC is seriously messed up 
with that version of UHD. This SD image and UHD version was a huge
improvement, but I need both radio channels working! Can anyone think
of a reason and a fix?


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
