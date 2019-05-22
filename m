Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C641025EB8
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2019 09:35:31 +0200 (CEST)
Received: from [::1] (port=41590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTLma-00018n-Gv; Wed, 22 May 2019 03:35:28 -0400
Received: from mail-wm1-f48.google.com ([209.85.128.48]:50180)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <246tnt@gmail.com>) id 1hTLm3-00011A-39
 for usrp-users@lists.ettus.com; Wed, 22 May 2019 03:35:25 -0400
Received: by mail-wm1-f48.google.com with SMTP id f204so1063519wme.0
 for <usrp-users@lists.ettus.com>; Wed, 22 May 2019 00:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mVgxQrsfxOI7DcgakClgWtiBD8b89Y3nEI1GD/y3mZI=;
 b=msLD4pdy9VCkgmdDAlvNGgHUEPs5yYfxwPcJw2L/SBx5n9SR+bIJoRYM4PyirXH+uf
 TaAqhjc1s5mIsHG0RrI+lLhjrDJiM4GCFZnbyQvi77fjTQ8MaCYOJKVP/I6qvxalEhrc
 D/ZihNkOlfrznwcCSn30XLzghNNxRFaszkRxjnOIouDXGjQ5aM7nHwYTXOpRv1TFDXJp
 w/NauO56rNj2vTBj/FlJcU9sZP25EEtGN3XT5qAJBqJ+GXOSrkSIdBJO21/lcOIihIKg
 XrfJrXgWN3kYG+KmCAvP96iCMxWSD+5Z4UVw6aVopHB6croUJpF1BsMXGKeSBmzzRc2I
 1YSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mVgxQrsfxOI7DcgakClgWtiBD8b89Y3nEI1GD/y3mZI=;
 b=jgbN6KNbBBoAyWd8EXcHqh2iRm/j06TEAEaovRrHl4eLFusGVYKTEmMT5RQdnjRx0G
 qe8ekRTZyiSyUCuq7I+ArhiL1opBRfokAvIKbyXN+1glsLUc1Kgw1oHJ7geXFOsBaFJs
 lE8cPSOlAMZ53goTFhU0CDn56J8HiAJzP6XBMMrHDQ/G4IZO9Z8BSMRPn7U3bxNNrz4r
 bxIrLcuc4xslMcsOBf2+wVyVOcIe0y0nFvc/F/+4OQgjqK+KUWQOBUlvEoGEUTaaZbey
 USv71DiCjsSQRxnq7MmqrF8hPe9ZRzNZkL1HcWyDjYibOGCWM5iLwhZYdCgrUylsScw8
 0uRQ==
X-Gm-Message-State: APjAAAUxgrYkmh3sDviY5J2iXJZkeTRxLwhyxLxgxciB0G61oR8hp5Mz
 G9+gzDQDmgL280DFYQzlwAi6tHo5q4Ni2Sl+5zE=
X-Google-Smtp-Source: APXvYqxfhHgp1Mu8G7f1P7GKz170wEQuEHJ6m+JJU9Zo/Ot5P/X3P1eGldAo18srW5b7XGL9BcnrLKQAmTtD4pNqKTY=
X-Received: by 2002:a7b:c939:: with SMTP id h25mr6860965wml.7.1558510453832;
 Wed, 22 May 2019 00:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <0104e380-0a7d-7fa6-acb0-105a97aef28b@gohm.com.tr>
 <855b8f3d-82d4-da13-0d6b-a0a133394bbd@balister.org>
 <CAHL+j08ae65mjteEWQwQpEPAinFzwjF0rJ8Fp1Oy8hZKV9=biQ@mail.gmail.com>
 <ad523e90-d470-9052-d224-aacb74e895d9@balister.org>
 <1fd7cf58-f0d0-9e47-0310-48b5ef034f11@gohm.com.tr>
In-Reply-To: <1fd7cf58-f0d0-9e47-0310-48b5ef034f11@gohm.com.tr>
Date: Wed, 22 May 2019 09:34:29 +0200
Message-ID: <CAHL+j09azL05WBCMrftQc9jxC0OXKOxK_WBQn63US7JAd8QWmA@mail.gmail.com>
To: =?UTF-8?Q?Ramazan_=C3=87etin?= <ramazan.cetin@gohm.com.tr>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Connect Eth Phy to FPGA
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
From: Sylvain Munaut via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sylvain Munaut <246tnt@gmail.com>
Cc: Philip Balister <philip@balister.org>,
 usrp-users <usrp-users@lists.ettus.com>,
 Ettus Research Support <support@ettus.com>
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

> This task should be performed in B210 (I guess, ethernet MAC is drived
> by FPGA in here).

The B210 is a USB3 device ... there is no ethernet anywhere in there.

> So, how can i start to this task ? Where can i find an
> example or some information to drive built-in ethernet MAC in FPGA ? It
> will be appreciated, if you can give a point to start.

Hire someone ...
Sorry, but it's one of those "If you have to ask, you're not
qualified". You're going to need FPGA design experience, embedded
software experience including linux kernel, electronics design
experience ...
That's easily a few man-month of work for an engineer already
experienced in all those domains.

Cheers,

     Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
