Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C4F11A847
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 10:53:10 +0100 (CET)
Received: from [::1] (port=49322 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieyg7-00026L-Ng; Wed, 11 Dec 2019 04:53:07 -0500
Received: from mail-wr1-f46.google.com ([209.85.221.46]:39369)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <246tnt@gmail.com>) id 1ieyg3-0001zC-NM
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 04:53:03 -0500
Received: by mail-wr1-f46.google.com with SMTP id y11so23267415wrt.6
 for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2019 01:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P8brWVpo0Vnydy224d1o9j4BzAiGOKLkogiMZVT7eGs=;
 b=OINI3HlTrDzgcn0LvGVrbPU6296AaQbYyMtpU+rzi41HuxebMszHlV19rHjcnxc41S
 05Le9sJJLGMzKN4BqT7aIBnxHNf8FMDk0QcS2acfm6Lnb8VhP0SDBKujr+GBGdgIl/o2
 Rn5z9LFIPPonZ8unTHCEJUA5u+KjfLg3G01CfJ07/rwl4ezG3sSXbESvrnKRXwJ1FDEW
 LFselm5u259P/bbmG7CjbCduQ4ngJJGmXmB3lvsYU+2Y6cawN5vSG5FsX8mc7KS5Cn3s
 l9iiTiL9Keqz19BLhlkv5IVcSHPqN4TZxL9WwV5cKLjaFhY+gj+tgM5bpnox4FkHQlV0
 lkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P8brWVpo0Vnydy224d1o9j4BzAiGOKLkogiMZVT7eGs=;
 b=moSd9ZRFGHUX5xbgoeZkI9XCSCdrDCEjI1azYZ34WfMWEOTb0S8olP/h6GZUW1lKIs
 BOEthqcc1UNIZnHEAioMRnNrCeoq1rDNLExcQK/tvypt6jlddnWugn8wQwxiA4suYX6j
 2KIwVy47+23KLjK1ly06NQUrq+prscq95u0SAyMjdHykVIgpQHI7UJoQ2/SXkcx0s7A5
 u+SnfxbW6R07MvQmU4OJSRrOGd6XHCd055j6DEzxrqKNqnvkELzRGkoP1h2QSA2Bsk3u
 T5vJHvE6+HeRqz7DJ4dFpqAkBxzgARigGsox0ei0OZ3HO0UZGppkAca9/z17ACAyZOkX
 3+eQ==
X-Gm-Message-State: APjAAAX01qvoWTwdsmC59Ijhxsr1uF5D6hrOd8QYxgpfq5LCpr6aC4L7
 SwWP62aKwlii34jTOanmRlXzx6dVOBedvTuaffrohYfc
X-Google-Smtp-Source: APXvYqyrJcDjCMqrqpY0YGtyxwACdqoLatuauX+MGm/7cWMaWgU34IQSzERXC+B6MQJ/NxgDxsh44PZsK407/7UCzEY=
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr2661493wrp.110.1576057942631; 
 Wed, 11 Dec 2019 01:52:22 -0800 (PST)
MIME-Version: 1.0
References: <77a16772b0384a0994c0d4e7b7e7f0ee@supracon.com>
In-Reply-To: <77a16772b0384a0994c0d4e7b7e7f0ee@supracon.com>
Date: Wed, 11 Dec 2019 10:52:51 +0100
Message-ID: <CAHL+j08EZ7kCjE_Mw9N_U8uO18YBBLE03Vnn38mi1_a0PcogyQ@mail.gmail.com>
To: Erik Heinz <erik.heinz@supracon.com>
Subject: Re: [USRP-users] B210: LO and noise issues
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
From: Sylvain Munaut via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sylvain Munaut <246tnt@gmail.com>
Cc: USRP-users <usrp-users@lists.ettus.com>
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

> I wonder if there is an operation mode where TX and RX use the SAME LO, or some trick to achieve this. Probably not?

The AD9361 itself allows for external LO injection ( RX_EXT_LO_IN ,
TX_EXT_LO_IN ), but that's not broken out in anyway on a B2xx.
You'd need serious rework skill to get to them. They are on the edge
of the BGA, so it's doable ...

> The difference between using one LO for TX and RX and using two separate synthesizers, even if they are phase-synchronous and set to the same frequency, is that two synthesizers have independent 1/f noise introduced by the PLL. If using one LO, and feeding TX back to RX, this noise is canceled by the mixing and does not show up in the base band signal.

How about using a direct cross connect from the second TX channel
(transmitting a DC tone) to the second RX channel. Wouldn't that allow
you to cancel out the noise mathematically ?

Cheers,

    Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
