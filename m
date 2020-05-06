Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 641891C6709
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2020 06:44:33 +0200 (CEST)
Received: from [::1] (port=53338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWBv4-00064Q-FV; Wed, 06 May 2020 00:44:30 -0400
Received: from mout.gmx.net ([212.227.17.20]:55479)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jWBv0-0005xl-G4
 for usrp-users@lists.ettus.com; Wed, 06 May 2020 00:44:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588740225;
 bh=VKt17t4Ez4GZCL6CH5VQi4aIT/tpcFGjGXZDxqQQfoY=;
 h=X-UI-Sender-Class:From:To:Subject:Date:References;
 b=Id5uDHO8MjmH1e9MfZD74GEVNjSKsPREE4dTSEShlS5rokewQ0USO0GqFjarawWFH
 OdDcA8i9kzcuItGpI1C/ME+evtHPo9W+gxb5wdY7GAgX0HZWNMprAFFCikWAG1bWt+
 A6prhyUEyfwCARWc68gKSFs9UtxOvHiccMKi9rqU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.49.189] ([67.216.49.189]) by web-mail.gmx.net
 (3c-app-gmx-bap08.server.lan [172.19.172.78]) (via HTTP); Wed, 6 May 2020
 06:43:45 +0200
MIME-Version: 1.0
Message-ID: <trinity-13cff8cd-abe5-4de4-8e97-026745d9e269-1588740225402@3c-app-gmx-bap08>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Wed, 6 May 2020 06:43:45 +0200
Importance: normal
Sensitivity: Normal
References: <trinity-a20a75c1-d648-476d-b9a3-d88b8484965c-1588731499457@3c-app-gmx-bap08>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:FB1368j709G0Af/B5NKpw4XAVZzDXe0DX1+2aP88waIkEj7RwlFR5wQNi58Rg3t7zlqUl
 cvHI+ObnrgIf58B1AzRR3oiw8/5P5JvgPRmdznYD3pInKTFyZ+qFcu2CkGjSr3fX2JldvcCVqnyU
 TDsyXoEJzLAuzeJJS/akSiT8Yc3iQGmdADFoLmDlpb9lWoGv1pU3OBuJNoKPR2azzRBi7uow0NZj
 UXpUJAp7gkmxplJPvxcEguTP5W+SxLnvJeWCkwijDwtAKP1CHh4cWWsTfdCykVx9IZKN+ccstQ3h
 9s=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e3E/uaqMvkM=:SNnLVmLQcJBp8rmELUGtne
 eqgwBUSvyWcaHBf7xdi8y+S4K0eErWyteJoeXIMYIRol3hK19rXeOf71Y3ehOIVzq2lMY62Iy
 TpAg8Wr6Gzni/cqrR0rzz5ouRXgnzhWgAGJmJtLJh4fnjfPlt0sm+Pd4uXuqh4YCGDJImfS68
 7VrqCpVwtdBgxFpLzTEP20lLGC3bQV9G8zJAnEaWF8QVP4QGGedh9IqWGMazaDGMpKvTOTP2M
 /4+4DLP4KN33xUa8pJao62vsYZQl1Fx7IanOHq7TUXlp1zeCCgeT0PMJgn2aT6RZxGgnS24I0
 kzXoBDNqpssKvWDK9jjSiafSIaDrDlBUal4s4LlyoI6PUZ8BTUPw3v2QY7RJwcM0Yiwa2/tNR
 t/mUqOhzgADnVxTJS/8m5t725nS8pyiSywY9pVi5lVQ/6NH7MitayQ0aKzRJSUBIBDqH/Ouxz
 6+r5RiGpBSAtVwTO4keytkUb7OVVMU/2KrvvYQ1IwBePltlNHiB/CdXdc+XgFc9+fIYuQAEW8
 uKghrb88W3gzh+5N8rPd8JUdmi0H8ARPkCpqCOiy7O3th6NbHyuxjxIqN+qq3sypsJV5e2Bd4
 fzQ1G45iQbWNcwuMitX0xdXrjw/Qlooa1lYklkyyw5EA0KON80peBq20j6otfRqT4SRabZwhd
 5XOdJMLSniuS2XZ5QSvMFk9MdMpSI46Hf3aMd2Gr3nLEPGUAxBNyYVY5QP5LAFhiQGPc=
Subject: Re: [USRP-users] Unpredictable delays in loopback configuration
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

After lot of debugging I have some progress:
1.) Having multiple channels is not enough since it only sets _stream_now=FALSE but not _start_time. Consequently both Source+Sink use get_time_now()+0.1 which may be different
2.) set_unknown_pps only sets the the time to zero at next pps
3.) "Sync: Unknown PPS" (set_unknown_pps) has to be only set in either USRP Source or Sink since they share the common motherboard. (having it in both still seems to work but takes longer to start because setting time is done twice, I think)
4.) set_start_time *has* to be called on *both* USRP Source/Sink. This can't be done via grc and requires py edits.

Now comes the part that I don't understand. When I use:

        self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(1.0))
        self.uhd_usrp_source_0.set_start_time(uhd.time_spec(1.0))

I always get a string of "L" and the flowgraph is stuck. No matter which number I put here. After long time I figured out that the start time for USRP Sink has to be at least 100ms later. This works:

        self.uhd_usrp_sink_0.set_start_time(uhd.time_spec(1.1))
        self.uhd_usrp_source_0.set_start_time(uhd.time_spec(1.0))

1.0001 does not work and neither does 1.001, 1.01 etc. But any number larger than 1.1 does.

WHY is this the case?

Also, why do we need to wait so long (100ms does not work, I get "WARN: USRP Source Block caught rx error code: 2" and "U")? What exactly has to happen within this one second and what are the cases when this one second may not be enough?

Lukas



> Hello,
>
> I am using USRP X310+UBX+gnuradio for an application where my transmitted signal (TX) is reflected and received (RX).
> For my tests I use the simple loopback config (TX -> 30dB Attn -> RX), transmit a pulse and plot both on the same plot (triggered in the TX pulse).
>
> The response comes around a whopping 38ms later!
> I added a delay block before plotting the TX signal but the delay is still random each time I restart the flowgraph (residual time delays up to 700us).
>
> I wonder if I can achieve sample-accurate alignment that is consistent across flowgraph runs (maybe even USRP power cycles).
>
> RX+TX Streaming starts at the same time to my understanding because both my USRP Source+Sink have two ports and I use the setting "Sync: Unknown PPS" as discussed some time on this list.
>
>
> Thanks,
> Lukas
>
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
