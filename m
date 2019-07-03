Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B19345E869
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jul 2019 18:08:32 +0200 (CEST)
Received: from [::1] (port=54694 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiho5-0001o6-0Y; Wed, 03 Jul 2019 12:08:29 -0400
Received: from mail.dynamicware.de ([62.116.178.137]:41668)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <erik.heinz@supracon.com>)
 id 1hiho1-0001gR-Ez
 for usrp-users@lists.ettus.com; Wed, 03 Jul 2019 12:08:25 -0400
Received: from localhost (localhost [127.0.0.1])
 by mail.dynamicware.de (Postfix) with ESMTP id B932BB63C23
 for <usrp-users@lists.ettus.com>; Wed,  3 Jul 2019 18:07:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mail.dynamicware.de
Received: from mail.dynamicware.de ([127.0.0.1])
 by localhost (mail.dynamicware.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 53aCboyieeFe for <usrp-users@lists.ettus.com>;
 Wed,  3 Jul 2019 18:07:42 +0200 (CEST)
Received: from mailsrv.supracon.local (unknown [109.73.25.41])
 (Authenticated sender: info@supracon.com)
 by mail.dynamicware.de (Postfix) with ESMTPSA id 42B8FB64014
 for <usrp-users@lists.ettus.com>; Wed,  3 Jul 2019 18:07:39 +0200 (CEST)
Received: from mailsrv.supracon.local (fc03::10:3:1:102) by
 mailsrv.supracon.local (fc03::10:3:1:102) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Wed, 3 Jul 2019 18:07:38 +0200
Received: from mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e]) by
 mailsrv.supracon.local ([fe80::a500:2209:bd91:b56e%12]) with mapi id
 15.00.1365.000; Wed, 3 Jul 2019 18:07:38 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC multi-driven nets
Thread-Index: AQHVJV5gLVP6cNIzaU+MlL/IXpgYLKajOlHugBXqv7k=
Date: Wed, 3 Jul 2019 16:07:38 +0000
Message-ID: <1562170057716.63450@supracon.com>
References: <4ae5b15d06564dc5d1df676f52c389a2b5c9a8ac.camel@silverblocksystems.net>,
 <861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
In-Reply-To: <861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.3.1.20]
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC multi-driven nets
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
From: Erik Heinz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Erik Heinz <erik.heinz@supracon.com>
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


Same error here for an usrp_x310_fpga_RFNOC_HG image and fpga-master.
I built it successful with fpga-f6890f227b40687b356c1e6c10d9eec2184691d0 and Vivado 2017.4

But now my uhd version is too new:

   Error: RuntimeError: Expected FPGA compatibility number 35, but got 36:
   The FPGA image on your device is not compatible with this host code build.
   Download the appropriate FPGA images for this version of UHD.

What to do now? Downgrading uhd would probably break GNU radio...

Erik


________________________________________
Von: USRP-users <usrp-users-bounces@lists.ettus.com> im Auftrag von Mitch Davis via USRP-users <usrp-users@lists.ettus.com>
Gesendet: Mittwoch, 19. Juni 2019 19:13
An: Roberto Michio Marques Kagami
Cc: usrp-users@lists.ettus.com
Betreff: Re: [USRP-users] RFNoC multi-driven nets

Roberto,

Just to clarify, the commit that I used that resulted in successful
build is f6890f227b40687b356c1e6c10d9eec2184691d0

This requires Vivado 2017.4

Did you try f6890f22 or 118a45d63?

I don't have the bandwidth to spare with any bisection to determine
what the actual fault may be.  I've found f6890f22 to yield
satisfactory results.

This is built in a CentOS 7 native install (with EPEL and some other
extra repos enabled).

Regards,

Mitch

On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
> Hello, Mitch!
>
> I've faced the same problem.
> I've tried the first commit after f6890f22 including Vivado version
> 2018.3 and the error is the same.
> Did you received any reply for this failure?
> I would appreciate any information.
> Thanks!
>
> Regards,
> Roberto Kagami
> De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
> Davis via USRP-users <usrp-users@lists.ettus.com>
> Enviado: segunda-feira, 17 de junho de 2019 15:44:07
> Para: usrp-users@lists.ettus.com
> Assunto: Re: [USRP-users] RFNoC multi-driven nets
>
> My apologies for not connecting this message to the OP, I didn't
> register this email account to the list until after the post.
> However,
> Peter had posted that he was having issues building the latest X310
> RFNOC image (with an RFNOC block) with an error of multiple-drivers
> on
> two nets (ce_clk and ce_rst):
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html
>
> I too encountered this same error.
>
> On a hunch, I reverted the repo to the commit just before the Vivado
> 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
>
> I was able to build the X310 RFNOC image with an RFNOC block using
> that
> commit without failure.
>
> I haven't attempted a bisection yet.  Is there anyone else that has
> observed similar build failures?
>
>
> Regards,
>
> Mitch Davis
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
