Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF28691A31
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 01:09:25 +0200 (CEST)
Received: from [::1] (port=52266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzUIb-0004yw-Uk; Sun, 18 Aug 2019 19:09:21 -0400
Received: from sonic311-28.consmr.mail.gq1.yahoo.com ([98.137.65.209]:46597)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hzUIX-0004v5-OX
 for usrp-users@lists.ettus.com; Sun, 18 Aug 2019 19:09:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1566169716; bh=rTYUxLB28HRjOj83iEvXB046ge8jydM4ibm2Y9qiwlE=;
 h=Subject:From:To:Date:From:Subject;
 b=g6cNtfuHa4mP7L0WpjVAGq3lRRe0YssvhRJveEln/3MgbJEVETVGebQHGDT8c/2RjbRKkTb29AeJ08YWfFKjqyeWnAl+9gZTbBtLpv8q5s41uc/5eLB6RAy5gOxEQ6k4wCePQnj9dbHKG72TJp3UkBHd3lH9Mfq1hI8UTuWuWn9MFDKfJ8J5WxyCkxUhD8wCCmqKXM57DI4qwo04CVsgq4GAzzQhfjSm/njUE4OShBw/mJ62GbuO/T3BOp4+zWqo+utMvJiD+0IxsOeJMhFTuRATn8BYjqUadLb8MLqM6M0iL8Z+/jdLjiLrMSUqgs5MI6DBLqdJfeCFAvDYrEveHw==
X-YMail-OSG: mrwNaH0VM1mhGwku4UKmz7QqrW4FYW2zdwO08yE2y7pLwUiccmBYHl5NUrXV30h
 NCsxb35zaIaPI8n2WdgI.rcRtXT9XgAXjGL6E2_HuaiYQ2wSB9jcyQR5NmJ8J_0m3NtSnh3ZGIcT
 qf3oP9EWEeMHCk1I1wzO5v.zQOnFkBsz7UpbX76nqFR_g7qv1TfVkL4PyJPgJOP0SGxTaxsLYKVN
 fS0MCJQ1.OJ4uAeFV8RPh8rGh5kRQms_7D7SaElfQQbQdvzywb83bFq9F.SuLiepqtcmFAGBC3jK
 qlJTN2dEjlsWI5LMP0FC1Av2gHDmnabiCXXyS8cyfc5kAM52.BplvpT3Y9gfzlSPr8Tj4FndZO6e
 Yrhzg0xD__tHYIe0D6rI3D2irYRGBCZ6bG4qPFvaLjC_90Ze.QRgGq29L6SM7xS3zRHIO5ruYAnN
 67kP74mqbJieojRkAioLkz_63AY_FXzFkNUYoLhUsLoRdwtV82fa7.F9ohHm8He1l6doVgDHNGy_
 IgMLMSZotAUmEe3s1LnqT7jR1ZQ24NOeoEsYBeMD0teGVydKBvBZr0V5n7PtDmSw49M0lLZ1nIpV
 7GvnedA7dHp83aKdih5oPX9tmDkavkoCnXGYJ12nooYF.32.0qUXtlfZaLhitKv7BiUxeobaZRRx
 8UnUSPXVoUbL2mOK7mwEBOTqjDMolwpKSoG1fUorZ3L6EUj4M9OHTKshGgaUqdj.gNXvJVFxaNJF
 PNElg7eKnzhXZGi6Wyhr9XOeiNDV02agCvMVA__4UWKQTWacwgQdtvNW5UtHer.VlQka1P2mKjFh
 DldKp5jPep3KdXuMSo_yJ0WQyilqWqan68.Shj3_0VB7ksPvmzDjivaEscXtcX4McVm_yGdqq51D
 WM8k4QoNqaGSfd.fOvzKpH5xX7i0rvTQLws9I36RYkLFto6vStWJtEkujvKJb9bJZKkdRpFL2BnU
 QsvyLsU0KtzipMbAcE3ClOUIMvMiBk3dQ5Cf_m4jVsWgn3gigl_iBvitCUa_Gd4amvS4kbPQBmWd
 jrcT743_9vJSwYyoZjersxj.D_yB.2mUmnfd0tTGSW3E.jSpP6dq4EOKwgrpsh2YA8SztKw732ep
 NP4ykroKB6sBqlUc.T1Y.3ahrJBPPg0gJw7LeGzFXBCO8ooTbpTn3_F1aRGQ2PU7IBtOrbYsWrnY
 hrcRoGmjJYw_fCCXCBsDPbQX9.a9_igIy7qFWu9Az88jKOYhCw6Y34dUizua6hptj79HaDthd6.v
 e8LdpDxLX_g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.gq1.yahoo.com with HTTP; Sun, 18 Aug 2019 23:08:36 +0000
Received: by smtp413.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID e99c81a61878b6e6484a13a67b0977ef; 
 Sun, 18 Aug 2019 23:08:31 +0000 (UTC)
Message-ID: <10760fa52b6077a60e3ac83ad63871ce3c9885aa.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sun, 18 Aug 2019 18:08:29 -0500
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] rfnoc smallest-footprint integrator+decimator for E310
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

I'm trying to get 10 pounds of processing in a 5-pound radio. I have a
homemade signal conditioning block that (should) allow for integration
and decimation suitable for low-rate reporting. I've been placing my
block between the radio and the stock DDC but the DDC does more than I
need and takes a lot of space. There's no room left to add anything
else. I tried both the fir and moving average blocks with keep-one-in-n 
block but those combinations are even bigger than the ddc and don't
leave room for my block. I'm guessing that there's some overhead in
building a stand-alone block and the DDC has been refined quite a bit.
Can anyone suggest a lighter-weight integrator+decimator? I'm looking
to get 2 channels at full native rate (30 MHz) compressed down to
somewhere around 1 MHz or a little less for transport over Ethernet.

Also, is there any chance that the compatibility mode is somehow
overriding the block order? I've noticed that in Gnuradio I can ask for
radio sample rates lower than I should be able to even though my block
is between the radio and the ddc and the output data looks suspiciously
as though the ddc has been placed before rather than after my block
despite UHD_LOG_CONSOLE_LEVEL=trace detailed reporting that the blocks
are connected in the right order. It's difficult to debug since I can't
save full-rate data to be sure exactly what is coming in. I probably
need to test with an rfnoc replay block to feed it known data.

Thanks, as always.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
