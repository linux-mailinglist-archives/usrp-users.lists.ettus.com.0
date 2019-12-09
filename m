Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 283F7117714
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 21:12:35 +0100 (CET)
Received: from [::1] (port=56404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iePOT-0005so-ME; Mon, 09 Dec 2019 15:12:33 -0500
Received: from mout.gmx.net ([212.227.17.21]:55493)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <lukashaase@gmx.at>) id 1iePOP-0005n0-Nn
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 15:12:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575922308;
 bh=k4XsmsofcPJXG0qqoUjAJFkJE2Crz5n0YX9JOPwpNBw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=hSnUWCnEtOmY80a1J5Y5BXKtlzbbW+FMlCCa7nQI8zksPIIyHmlYKC8OJTWBiMixN
 LOPgSRSfnQugot3k+I0hP8RTjq7Lncty6qWov7nhNnbO3R5QRuRCf2J1DLXC3wONvh
 /fBzG5X4ztM9hZMTtCRkXCoaON4vq2loRgmA6Bp4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap48.server.lan [172.19.172.118]) (via HTTP); Mon, 9 Dec 2019
 21:11:48 +0100
MIME-Version: 1.0
Message-ID: <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Mon, 9 Dec 2019 21:11:48 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5DEEA426.1020108@gmail.com>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:L3i2TeVV9Jp1Ass6r0yeKTiOYz60LZ4mFzZDJtocCoMN7U3HloUzk3tikRsZh3WGYKIH8
 d7RtN5QnRXe1w9pnapVHTDGcBEaLO56b8cxiuGVFew41suQ6BOO9Q/GzTgE1Rcm6kq/RK2OIdbp1
 ZLMVmsqKiDov+M5PnBeaWj6LkC/KoSqu7IHruYgNQeW7ZwAVBnzEKVmfrZ6+2JoTlx4ka7vFgvlu
 tDDh1+VylFI8b5OMBg0WF7WmvhVNEKDgsB/UEv08B8iRD4PFvRKyB7w+ivnO2R3XvT8Z5QHF3OjV
 w4=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EzdjgqcGkp0=:rElYmSOhO8MRFlDzPf5geH
 LzfEMN6DFapLQkQ5N6cVmzxXIc2fme10+SoCp9E9xoZREORByGfnXNJ6yLcAI7cpxZBr9X8fx
 pi4LbpTAp9Vv94P3JOdQqC8teDIjphgrnlpCVWuCxXks4lkGEj2uoxaiobJQDJZkJdueeAGxm
 EJfIPAbdiLy9rydNM2o6tAJcukuaw/sCyb64Nq6+60crJDhNcMJ2pmOnM42n1z4xcTU3ATf9Y
 rkT+cgnaB/HH8CDDTeikcgjsqBotTAGAtpRdBgMQ4Q/c+8gF3b1QslEYsVKEAPWdvMFFTazBL
 FrAuIKdLupxTSnSSyhNtKFxiXza9+gVgsdi1k6b7LrO1NcdgyzoTZbVny+sNly9bAJf3fbT/7
 6ZX1pLAJZE1mHSivayStidJ+iK7nLX96DgdF5FPOOgix2LYak5EgI8g8EF8N81f5rK6cNOMSC
 hThJpFInf+UC4uewfyhV4ZSnZaKQx7nsLGERMpHvUQ74EO7APcpn01wITO9TvYyfjc0eSWX7I
 1IdpKT4zNj46nRT/J0mIX9T6xHj5yogIySsOEZjPY5iZXz7SA4AWd5AJcrBctpT/JDx082pWP
 JDmc7l/K1vkbOk0dbmele6uwsm7+5lvmXwBiTVZjNBVLIHn83Ed46J/lsDCg8DSMmXOG5fK1F
 lEw41gxn5Li/OowysxsI7cVl73XsPANnPYIv5480XBRcySA==
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Hi Marcus,

> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
>
> On 12/09/2019 02:38 PM, Lukas Haase wrote:
> >
> > Precicely.
> >
> >> What frequencies are involved here?
> > Example: Transmit 900 Mhz (USRP Sink).
> > Receive 1800 MHz (USRP Source).
> >
> > The received signal will have arbitrary phase phi1.
> To make sure we're on the same page, you're measuring the phase offset
> between the two RX channels, correct?

No, I only have one RX channel at the moment.
--> One TX @ f and one RX @ 2f.
The phase relation between this TX+RX should stay constant/coherent once both TX+RX tune to a different f and back.

Let me know if the setup is clear, otherwise I'll try to draw a block diagram/equations or I can also send the GRC screenshots.

Thanks,
Luke



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
