Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5F1257E1
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 20:57:57 +0200 (CEST)
Received: from [::1] (port=52656 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT9xP-0003pn-PY; Tue, 21 May 2019 14:57:51 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:38140)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <246tnt@gmail.com>) id 1hT9wr-0003jA-QD
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 14:57:47 -0400
Received: by mail-wm1-f54.google.com with SMTP id t5so3943201wmh.3
 for <usrp-users@lists.ettus.com>; Tue, 21 May 2019 11:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8jI4INeSkrWOK4Sw01z1K2wsFJqtrh0juc2HqCxEXW4=;
 b=YlMKBcXmtAtuv55E0iChPoUjpIqnoMzcLwuFwAibx5SsIhADZLGEIsYJmzq0rb1p6l
 JzpIcCE6/vZy9Hkyywj9gtftQ+DW3Hayc8Eeiu1/7ZDiYU4gKQXfiT/aApuOWAy50fSj
 x0j6jcG6xB5uVaWThIx/kIdFlnc5F6SXGnusYkwhGoV13l8UiSqFJk7CoyYXqmEU8+Q/
 9LKi4Mxn4QnFLK7e0tqnBPM2o2OXhkiKCVlJLYjQbl03vfIuCv29zxVCO9xmp/Wn+DBu
 Y+R7Ljc5WKoa9iEUtx+DlP2Z52z32HLXkqzOPq6gJIaOms2i9MBz3GD6JG6eqn+ZgDkg
 0G8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8jI4INeSkrWOK4Sw01z1K2wsFJqtrh0juc2HqCxEXW4=;
 b=fZKPhZx1kd8UTdRU+prCBA+ChojrkzJH77cIOcflKnvmlDdT24kKQQuu5K1FX2OwBM
 MLBqkK2qrwIRQKLpgTMfkE4AkAMttHjGiGsFqfgeNfafquad+XBm2MEKUJOkF+smWMIx
 CgRXbow1yq26f4Jesmji+5KleJ+1MwPWx1b702VG0/Wbc6/fp/giyn1xDXU16oo1a+9O
 gpKo3lCUE1kQsAv6ckStZsIFMmsqSgyQrrrZNGWLo0QmNx6PUPimZKle67OrDxg1oPXh
 TivQ/w/7hFjXVRmKB2YJkHBG1uyRzYZntv8Q6Cd3y27jM1w5wGn8rkdVg4rjORf38W+z
 hexA==
X-Gm-Message-State: APjAAAWYqPuen49wdJ5dJUGofkEk4FljcNqecy83m4BO7T1Y0lP97jQU
 m9PMRsj6bzGck0/2EviIvak2lWuS+Xf8BoGnZRA=
X-Google-Smtp-Source: APXvYqwZXDPCAGcn68iaQaSx8C4Q8B8lB05zZbLKFzLAh/9hJ+PO0UUuBj2Qc+Kb4DV3c8Wkb3XZX0QLp/Km/9il5AU=
X-Received: by 2002:a7b:cb85:: with SMTP id m5mr4588874wmi.85.1558464996709;
 Tue, 21 May 2019 11:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <0104e380-0a7d-7fa6-acb0-105a97aef28b@gohm.com.tr>
 <855b8f3d-82d4-da13-0d6b-a0a133394bbd@balister.org>
In-Reply-To: <855b8f3d-82d4-da13-0d6b-a0a133394bbd@balister.org>
Date: Tue, 21 May 2019 20:56:51 +0200
Message-ID: <CAHL+j08ae65mjteEWQwQpEPAinFzwjF0rJ8Fp1Oy8hZKV9=biQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
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
Cc: Ettus Research Support <support@ettus.com>,
 usrp-users <usrp-users@lists.ettus.com>,
 =?UTF-8?Q?Ramazan_=C3=87etin?= <ramazan.cetin@gohm.com.tr>
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

Yes, it's connected to the PS and not the PL.
_However_ ... you could just remove the ethernet driver from the linux
side, then drive the built-in ethernet mac from the FPGA by just
acting as an AXI master.

None of this is trivial however ...


Cheers,

    Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
