Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAAB144339
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 18:29:50 +0100 (CET)
Received: from [::1] (port=34524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itxLY-0005Rj-ER; Tue, 21 Jan 2020 12:29:48 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:46806)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1itxLV-0005HE-Dc
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 12:29:45 -0500
Received: by mail-qk1-f180.google.com with SMTP id r14so3466177qke.13
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 09:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=3khoJEzri61Pp4HjDOuB5hTpgkPDweIxYszXRpLODZ8=;
 b=nrPX2rUiC+pveZ7TkrzQHiEdGUQw2FSA00P2Bl/p/HHEjqD2aYrfEBSxT1SPj/smpg
 wsWOV0Xf4keHDkLN/koqm108QLaiIieVGImNVTdTvhQ7Qb3JJwz0QLB8iE6nbzNv5fNa
 ZgXrOHJd76Tne4yMOa5YVBBnRiBLyXo0qHsvVYQzgstnlGWb00OUEGKkSsBE0lxJSF82
 9GVruJsYhEOXLPPo3yFGqvb7vG/2MRgEDL6QRDQQNMP/KrKQiIZwBXDUfq0fUyethGtF
 gajRrmDVtnqnfbs/qysZTwO3FNWtMPV/A7rZt1tY7uxL21S4+HNofaTMBtgAvSXJDUSh
 yyjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=3khoJEzri61Pp4HjDOuB5hTpgkPDweIxYszXRpLODZ8=;
 b=qnUtwe0tC8Or0+UI8uiVyS+xn9unj5ZofQJGQ4jKDg1HPgmspkp70ThfD3ZwjEM4ML
 2Ch5ntJ66oL0DJeb0H8gL17BM2+auWPWRpP9SgS25USmlU5SE1ZwY7NlPcz3+Qi/2y64
 2j0c/7NmRHQsnd2JvsbLsn0exScvKVtXANTgT45w5ex3zYPLflM6DZZChNT7D7QS8Tje
 q/FnxEvN6gcCXd2rDXwwU/2J3jPoPWK6o2HQscPwe4hhyyCb/ncgldIr1qcon2JwEz6t
 DaL6eyPPP926Lpu6zVcMH4/G+m3/pH08C9KJyKQRvjfx/9gKMQ5IhNkeokLX4+hix98y
 1R3Q==
X-Gm-Message-State: APjAAAWjDO5BuUakHXpVU0XQ40ibhdavwbZLqQm+Auc/QZCKAKXrvype
 U+3kpNmjfSbYGo0sIUxrox44f4FlJ3c=
X-Google-Smtp-Source: APXvYqyST94/zZqQzh0J99yzVYh6KeuTXsVRGIVm/tAz+sS6v74O6haG9hsY7SmCWddVJuyZoikLVw==
X-Received: by 2002:a37:ac12:: with SMTP id e18mr5745269qkm.94.1579627744539; 
 Tue, 21 Jan 2020 09:29:04 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id j4sm18812485qtv.53.2020.01.21.09.29.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jan 2020 09:29:04 -0800 (PST)
Message-ID: <5E2734DF.50106@gmail.com>
Date: Tue, 21 Jan 2020 12:29:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANzM3hyO-Gf3hOnBes9avnOoXxL5epFaW5tqsWrLafssBTqEmQ@mail.gmail.com>
In-Reply-To: <CANzM3hyO-Gf3hOnBes9avnOoXxL5epFaW5tqsWrLafssBTqEmQ@mail.gmail.com>
Subject: Re: [USRP-users] 12 bits I/Q samples
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 01/21/2020 05:06 AM, Arash Jafari via USRP-users wrote:
> Hello Everybody,
>
> according to FPGA implementation of my board which a USRP-b200, the 
> Least significant 4bits of I or Q samples are always 0 (0x???0), which 
> in turn means the recorded sample as short complex 16 bits (sc16) cpu 
> format should have four zero at LSB.
> But almost 10% of recorded samples do not obey this rule!!!!
> Any comment is highly appreciated!
>
> Kind regards,
>
>
This is because the FPGA implementation always scales the ADC values to 
whatever is appropriate for the wire format, which by default
   is 16-bits.

The idea is to make the sample formats somewhat independent from the ADC 
of whatever hardware you happen to be using.  This happens
   both implicitly, by virtue of the way a fixed-point DDC operates, and 
explicitly by scaling code in the FPGA.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
