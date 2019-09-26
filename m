Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF519BF3D4
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 15:14:30 +0200 (CEST)
Received: from [::1] (port=34208 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDTbD-0000Ss-TV; Thu, 26 Sep 2019 09:14:23 -0400
Received: from mail-wm1-f48.google.com ([209.85.128.48]:50403)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <246tnt@gmail.com>) id 1iDTbA-0000Ny-T2
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 09:14:20 -0400
Received: by mail-wm1-f48.google.com with SMTP id 5so2742879wmg.0
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 06:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZgAEAZTmTsWOxKnlKQslhmeQkfntG69GjMmwm9RHYTI=;
 b=IhlhV426ZGSArz7UfgfRy9AqCiMo6es/DsmAQ1f3EokG1Scz/BC7tIIK0Xd5XTquL7
 RkQcZhlR0NBZx8dWmodfn+mpRKtc6TtucN8pAr2bBn/E5mdQ00w1mel+0FD6PsFv57Hc
 oLhNPcWXvo/Qt6qWIwfCdhIYl8+v0/B7gFGdwUlvtoGLcPSM9miG91SceQNTeBrQvGen
 fy5CqjESSuNDtjC5TRf1BWCE3I01ge/BvmDnsDS6bNu4uDUJwGmjQzT/PZAl9QFUoJqi
 sIOM5+GixBPd8jdNaEVMxwM5asGXAxGW67NJPLQP7aK3Npdgr3yBq9DEzMrc56w5BIHx
 v+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZgAEAZTmTsWOxKnlKQslhmeQkfntG69GjMmwm9RHYTI=;
 b=mIBPI+qWcbZ9sOrzgPyocAtKstYiE94mew+Ys9AEN/SopHAGr8t7r6eDN8UMZLiKRX
 +YjN9TUGYRTspmVFQZ4I4wetMF+4qCEE2q2WblyK+P7+faXfauTsrOIb1SHNJTVWVP1f
 SngDBHqIQAItc1l7F8B7gG+UoCSbhgtRKQewf2n9w4whk7P8cvjEUjWTeHP/MUuEnkO6
 KQ11ge1nyFzdb7f0dRYdwmnQaCpDUU03uHxJjf2T+P0L3G7fnczSayeg/TZyFGecyrhq
 w00kZ45GZP22v/NwFMjPXmZEckGydQbuZqFtbnpL6HiulvKBvHfzntKXarcNQbq7Ujaw
 rFsw==
X-Gm-Message-State: APjAAAW6ra2dzsT9fLruxJ3GM9C/ZcOt/lARxz3VmdqZOR0eBpshk55C
 JTtjrZdrL0rKqeFvc5OmHTcSnGSdIGTjPYaYcRI=
X-Google-Smtp-Source: APXvYqwFgBaEnFDKHzI/16IzgePhO6ul/ZyXtdjZLmfQ9hEGSUP5R40D0EIALEvXKVH1kq/HMeAoMCyRezTp3Txmfak=
X-Received: by 2002:a7b:c764:: with SMTP id x4mr3061030wmk.138.1569503619682; 
 Thu, 26 Sep 2019 06:13:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAB50+dSYrKzjKpSVLCQYEpg-9hrE04qDvkpCkjesDkH7dz-dag@mail.gmail.com>
In-Reply-To: <CAB50+dSYrKzjKpSVLCQYEpg-9hrE04qDvkpCkjesDkH7dz-dag@mail.gmail.com>
Date: Thu, 26 Sep 2019 15:13:59 +0200
Message-ID: <CAHL+j08A26oN8M9HEMGjTD3TAf8t-KcunasYC3Aauy8mnu13mg@mail.gmail.com>
To: Andrew Payne <wandrewp@gmail.com>
Subject: Re: [USRP-users] USRP B205 Mini FPGA Slow Loading Issue
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
Cc: usrp-users <usrp-users@lists.ettus.com>
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

Hi

> When I plug in the B205 and go to run it for the first time, it takes a minute or more to download the stock fpga image to the unit.  From that point forward, each subsequent run it doesn't have to download the FPGA image.  But when I disconnect it from USB and re-connect, it must be downloaded again.

Are you connecting it to a USB 2 port ?
Loading the FX3 firmware and FPGA image takes some time but more than
a minute sounds very slow.

> Is it possible to get the B205 to permanently store the fpga image onboard so that it boots right up and is ready to go?

No, it doesn't have any on board flash.

Cheers,

    Sylvain Munaut

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
