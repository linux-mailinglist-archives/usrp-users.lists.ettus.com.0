Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 295B311485F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2019 21:47:35 +0100 (CET)
Received: from [::1] (port=52376 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icy24-000303-Ec; Thu, 05 Dec 2019 15:47:28 -0500
Received: from sonic314-19.consmr.mail.bf2.yahoo.com ([74.6.132.193]:37148)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1icy20-0002vI-BU
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 15:47:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1575578803; bh=mGW4Zf2xpaAx578NtSfdslA5z3qhGYeRs0N0X1/P1ZQ=;
 h=Subject:From:To:Date:In-Reply-To:References:From:Subject;
 b=KzaXOJydEb1quFSbmHFkYF2HXAKsmGIIWTrR0h1Oq3jpF4Q9QyLvX26vDqLvqCsUHwNOhWNVnDUdN1O+gbUz7nZm7BUUf5oePLUDu37+GZfzpo0ohwJSfQzeuiX/yBu0L6gUF3WvmVJbR6jFk7PybyC8P9bAA8pIQ0xK283iiEsowJ1v7CxEP6LsNA50TZZ1bo7qfihK3nWYlGo0YhIJD49bU6ZrhDOBROtZQkZpGk2a675TEqpz8YjiM/DtstC1r2+3Ij44UpsQM5vaRTvulDrr+D5Y6Lm6MAIKSoaqco108O50IW4Mi+KEk2MmlSvaSMGKqEehyR0msPm7RGaYkQ==
X-YMail-OSG: PtpO9zwVM1m1Pup7j3PSUB4NF1fao_OMsH4UKeaksV7RF1wwXkjLFJ.Zwe.NYpD
 OLcTzXgmcsptuwy1ihMhBsE7tcaKNgEIYPF3Yi95xrXEizcVxbowPBHZsZiUnN5.PGkLH1z.wIiq
 nf3CqxGYNwfNEfu4LBYb7Evi.rqNKBgdIFohSHcJdnm7Ue1noGrP6PDv2vdP26dTws5cuhnOIwjm
 5Pg4iacgWWN0JU85RPSTChttH.4uDnlnTlIlWOQcCLcLdLIY75eXK4w3nwyEWHnj3EFWHl3guqSD
 7buWhAKk3QxrGeM.zNsZFT6MRca3wpVu4IGCl7ua6O9m3.7Lx8BrNXtUPsIc_I2A_q4Duv6qqoSa
 4ofmclHH7d5p7VWBfwpPHZBcdBW9XEgO6XRBvuSOembyosuQ2Zl1jQB2ZLoyhF9gS5Ywb2K43iJP
 gaJevXoPt4GMGRg5QsqMGlXboM7qV8rkwMY44tSDlPeIY77Fo2ES4EXsY62PVYGtDSPt.9iNQYyB
 ml2igW6LDIprBRnhgr8YLrdKqI3VgV0GQSHlmwbviPVzdxCBr6rLGkXZtDKZY3d61Yphhdl6lTjN
 L3t2BgsNxeR_LsD3rJnkIDdrSu7eSmv.7iJLXgTghsxVGMan1NIg0UNoQhhC01gKYKPRF2d0fsbO
 hNBZcuwf2P1qSwEoZPwlc.sLTm5Xnw718gVihVej1nDj_9KCkMYQddq0UQIn1s6_C3zRzNyY6_7e
 iwDJs9D_OplS4WYLrAoSApIGd.5iyBREnhPJoDyxXc2qOxXOV6uDBvP6GmI8G3CyQFV4XvpN8RED
 10i_Rw6jb80C9fxCwM.yltLsCr_jbMQgIv0ixVpqD95XzNPdQZ.6.S.pFQ5l0RfaggGo_RXqLawr
 FOSifufx.wSKQ56mST.ZVybu9BhICsuFN4Tx75gsbovsyCPQPnO9PgGBj3MRvASAmGgZ18R6tDw6
 SUBL8hmBRJ2vLW01Pftk2nBshWWOPFxdJby3LW85IutUJQPqjKVVaSRp.8JVNMVoQaucFVV69ulR
 cFr1xOQiyeW1RPQBhirc6r7.cOZ3Fb9EE4CTxH6rDFfaePbDRvGN1u.hGVt7_N07W2Fmh9nmJHcR
 oUbZrg24DkbCKE876AdjfWdpPbPt6unMj50A.EnKn6vjuSgKVyPFnGZBBzYvpHDnGkT2J9imHX4W
 w8AAywiWCK4nico8WMKRF3nBclg89nPGc6zI2Vz1D5AqaN1voH0eOTIu4SIPCUDL9VQAQvNxOKaU
 cE9s9dcbZm47CIQIB6pkh65OVYgCzul_tqg.zwnxmLA9RlHtsJyTWyxxWdBOqKTVNQPBNaoAU_z6
 6EdumCGzDcVRfynRQU2zyFztN9pKVFJNisdraCtrbVnYrx0A61HhpjpBcHZG2fLAogAeXNBYBa_X
 6
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.bf2.yahoo.com with HTTP; Thu, 5 Dec 2019 20:46:43 +0000
Received: by smtp426.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID e66124a558b4fd4d6cbab5ea2f17df10; 
 Thu, 05 Dec 2019 20:46:42 +0000 (UTC)
Message-ID: <6837cd4db510b7939937ab14f13df37f85552494.camel@sbcglobal.net>
To: etus list <usrp-users@lists.ettus.com>
Date: Thu, 05 Dec 2019 20:46:40 +0000
In-Reply-To: <6fa462218f8ff4ad02063d2a6e5c4a768ec313a1.camel@sbcglobal.net>
References: <6fa462218f8ff4ad02063d2a6e5c4a768ec313a1.camel@sbcglobal.net>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-Mailer: WebService/1.1.14728 hermes Apache-HttpAsyncClient/4.1.4
 (Java/1.8.0_181)
Subject: Re: [USRP-users] RFNoC time-allign 2-channel TwinRX -- timed
 commands?
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

Nothing beats the doctor's office effect. In case anyone else has been
looking for this I just got it:


in c++: 
:
stream_cmd.stream_now = false; //true; //change this line
stream_cmd.time_spec = radio_ctrl->get_time_now()+1.5; //or prob. less
rx_stream->issue_stream_cmd(stream_cmd); //existing line

the thing that was confusing to me was that the radio owns time and the
rx_stream understands that time. I would have thought that the streamer
would own the time.

in Gnuradio:

after the last of the streamer stuff and before QT stuff

self.uhd_rfnoc_streamer_radio_0.set_command_time(self.uhd_rfnoc_streame
r_radio_0.get_time_now()+uhd.time_spec_t(.1))

The thing that was confusing to me here was that I don't know where the
equivalent of issue_stream_cmd happens in grc so didn't know where to
put this but this works.

Does anyone know of a way to get gnuradio-companion to add this line?
Now I'm keeping an editor window open, pasting the new line back in
every time I mess with the flowgraph, and running the python from the
command line. It's similar to what I have to do to get rfnoc siggen
working. I'd bet that it wouldn't be too hard for someone who
understands grc to get it to add these lines. I thought of using the
"import" block but that puts the line at the very top before the
streamer is defined.



On Thu, 2019-12-05 at 16:47 +0000, d.des wrote:
> I'm trying to process multi-channel RFNoC streams in Gnuradio but
> would
> settle for using the c++ API if necessary. I'm using just one of the
> two TwinRX card in an X310. The simplest example of the alignment
> issue
> is seem by comparing 2-channel recordings made at a 1 MHz sample rate
> on an aperiodic pulsed signal:
> 
> (1) 2-channel usrp->ddc->two file sinks
> and
> (2) 2-channel RFNoC radio->DDC->two file sinks
> 
> The usrp example records time-synchronized data regardless of "Synch"
> option built into the block (internal or gps). The RFNoC example,
> however, shifts one of the outputs by 10s of microseconds. This seems
> like quite a trick since I'm sure that the TwinRX is delivering the
> samples synchronized. I thought that it might be something in the
> file
> streaming so I tested with a stock addsub block that works correctly
> in
> the testbench. If I connect
> 
> radio->DDC->addsub->two file sinks
> 
> and compare data from addsub and a separate receiver I can see that
> the
> sum and difference signals are obviously ingesting out-of-sync data.
> This confirms that the random delay is being added between the RFNoC
> DDC and addsub blocks, letting Gnuradio transport off the hook.
> 
> I've searched a lot and seen suggestions to use timed commands but
> haven't figured out how how to do that in RFNoC with Gnuradio (even
> editing Python). I'm also having no luck with creating a 2-channel
> c++
> recorder based on rfnoc_rx_to_file.cpp: it fails with "Invalid recv
> stream command - stream now on multiple channels in a single streamer
> will fail to time align." but I can't figure out how to get or set
> the
> streamer time without a usrp object.
> 
> 
> I'm using UHD 3.14.1 because I'm also working with E310s but could
> update if necessary.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
