Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C331F4C2E3
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 23:22:28 +0200 (CEST)
Received: from [::1] (port=34818 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdi2B-0000DU-IL; Wed, 19 Jun 2019 17:22:23 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:45004)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hdi28-00008X-VS
 for USRP-users@lists.ettus.com; Wed, 19 Jun 2019 17:22:21 -0400
Received: by mail-io1-f45.google.com with SMTP id s7so263762iob.11
 for <USRP-users@lists.ettus.com>; Wed, 19 Jun 2019 14:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=5jupzGZ2hTFZtqkEX2L2jm4W9RcfyOx+hLlvBSfZ9po=;
 b=EtxOjxYtLy+9W1ak5wtYqFE50o1czv2QQ4raEaQM1SOS8SorzTI0mc1aQCCg1HwHpy
 Q/Wja8A9opX7RiNQQFI4wXKh8LGKo9TKob1Tkn9kiY8B5U4k2SEMifvbjiTHSYBy7dOS
 RmjFLcko43fhg7/NfPxDtoREuLrT9jsL06I3nsrqe6Dh9SkA1i6R6znVXQxKaRrwKRkW
 aWKtiEeTA5UuqirA2V0a0EQrwgyvywuqLvBW/as285ixgEgPZfTHJuEoKebzEnjzJrJC
 4cxYOiAkHGV2xHUvp67AN0Sv28T0BO6QEVqqGsq7Cdpb+02/PnN4DPTX83dAdGFKe/3O
 3ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=5jupzGZ2hTFZtqkEX2L2jm4W9RcfyOx+hLlvBSfZ9po=;
 b=nP/p69OZOxrDJao64V4VFOzetsloVvTaDLgk3VtYOcMvIZt+mR/nt5t3BftTXV8PF6
 tQU8Azsq5UuVV3KqCLgwr2synEZCaysz31NCouRno83Ohqm59ff+aIo1HrbVhwOUymJh
 yoxbB+f1t2yuKyzzDiFBpwuyjdcjraHTYcv1QD0Y3bWvzh8osjBkMSsd1eC1hI1TwomA
 IeAM/9XizikRDHIJDUMP2zb0RDyqxbdF7aCSz8h04QPxjnNjxXo1OlZzYpWids2HccwV
 g19DEVTmJnIUnutry95d5TyBA2+h0UNWXxdpvgqEG4XKvX372q8c3P+EWAACxtUzaTAV
 dPuw==
X-Gm-Message-State: APjAAAXhFaI8kx5mnRBWhXPlO+vgEr7Lg43SZmMPB9dPvOvAMzRUijhN
 sH7D/eGyAvr6/oq00aZQrn/CQhjxcEZ1n7fSCmaI9g==
X-Google-Smtp-Source: APXvYqz5AQL0Ab+A0QevCkng6APb8Bn92VoIvG9gMvc6OuMbmTVjXZA2z3zhWorxaWlnAgAXtHQwK30i5bZdmv0PcWs=
X-Received: by 2002:a5e:9241:: with SMTP id z1mr28194701iop.39.1560979300126; 
 Wed, 19 Jun 2019 14:21:40 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 19 Jun 2019 14:18:31 -0700
Message-ID: <CA+JMMq8Vjq3sKBwAE11FBBKD0ZoSFS=McV-5njkL3U7LbskzYg@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] Receiving response packets via UHD
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Content-Type: multipart/mixed; boundary="===============5163212454469504304=="
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

--===============5163212454469504304==
Content-Type: multipart/alternative; boundary="000000000000af969c058bb3d028"

--000000000000af969c058bb3d028
Content-Type: text/plain; charset="UTF-8"

Hi all,

I've created an RFNoC block which sends back a response to indicate whether
a transmission successfully occurred or not, via the cmdout interface of
noc_shell. The Verilog is all fine and the testbench works using
pull_resp_pkt() to retrieve the data. I'm wondering how to receive that
same data in my host-side application. Do I need to create an rx streamer
for the block? This block doesn't send any sample data back to the host,
just the command response.

Any examples where I can see this done?

Thanks!
Nick

--000000000000af969c058bb3d028
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><br><div>I&#39;ve created an RFNoC block=
 which sends back a response to indicate whether a transmission successfull=
y occurred or not, via the cmdout interface of noc_shell. The Verilog is al=
l fine and the testbench works using pull_resp_pkt() to retrieve the data. =
I&#39;m wondering how to receive that same data in my host-side application=
. Do I need to create an rx streamer for the block? This block doesn&#39;t =
send any sample data back to the host, just the command response.<br></div>=
<div><br></div><div>Any examples where I can see this done?</div><div><br><=
/div><div>Thanks!<br></div><div>Nick<br></div></div>

--000000000000af969c058bb3d028--


--===============5163212454469504304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5163212454469504304==--

