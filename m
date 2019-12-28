Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA97312BD46
	for <lists+usrp-users@lfdr.de>; Sat, 28 Dec 2019 11:25:43 +0100 (CET)
Received: from [::1] (port=44338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1il9Hw-0003NW-0h; Sat, 28 Dec 2019 05:25:40 -0500
Received: from mail-wm1-f53.google.com ([209.85.128.53]:36639)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1il9Hs-0003GL-8D
 for usrp-users@lists.ettus.com; Sat, 28 Dec 2019 05:25:36 -0500
Received: by mail-wm1-f53.google.com with SMTP id p17so10254001wma.1
 for <usrp-users@lists.ettus.com>; Sat, 28 Dec 2019 02:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=TCy9e6Jg/FlBM0m6MZbR+HDTbXizLw0K14fI9gI1xMs=;
 b=n7aGwk7Le9UxqeiahwRGX77hENvVcQ23U8KI1w1v399b/9pEgy4Wt0wSmNu8WL7yIL
 ZpBKspraCilYhBVNRHhAEKeUrOM2lRscHr7caPIASTLO9cxR4ltqYEOIkbwtB+qsmQC6
 eFUdgbBS3dUGhwotR0bamBzp2GDaYvudMWrxHobdfbYFi+fQ3ZCmbOGAUu9jX+KiJdOz
 VS9XJOjhlZyaCRWFo5mJMa7aDVMtkznc33YrI6N7YLjX4U9fY9sWQR1OVeGs0RpiNRpq
 lI4FqQ3cGQrK70F7U8aPAR/O4emPJMR/7CIIZavxikoBYr4UoifUdhltDxPwhKKe4xFY
 YtTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=TCy9e6Jg/FlBM0m6MZbR+HDTbXizLw0K14fI9gI1xMs=;
 b=HFAhaCLc5ZI5o8xrig3EhADEZMGT1FtY6FMD6FeM4sX948KOaGoGK8SWv7X+WdJKLO
 gZrI2RcCpxdPJXcp0LIzlWixQXrfXmMTuVYLviwQrBkj1I7UrPZ2pfRpBSiZ7Gb2Capg
 N0BInVSClajfDlqZcceOxGeyn58TpMQSlW75h4XUm3h3ByC3lsTq7mqgKnx4jTkUgwUd
 ZC7JrNqQ9xYWdFiTNGo2BiXtfE493RFC2dEf7Y2pJ9FEC+d/XxUjq5rsuuYS89ite75k
 T+VraKKXlCfWofMmrga0gl33jYjKDMlJEmz3GQ5d4IUFIZ3a9Cw/zVuHEqAbKLZjNnGk
 QtKw==
X-Gm-Message-State: APjAAAXzLFjSOsLGP2+VNyVO9P3nly6NPUIy2RpPAoNlrtKLYOJx/Raf
 TO/XnOr4ysd9ebUAqYLU7Cx2Wi/Z
X-Google-Smtp-Source: APXvYqzH7mH34K2kCfvirlbkG+LIwsQpdOOHeW8KovUKfQ/p1FxYcyj1SORwu8VVuumxLJux5FsU5g==
X-Received: by 2002:a1c:44d5:: with SMTP id
 r204mr24306764wma.122.1577528695291; 
 Sat, 28 Dec 2019 02:24:55 -0800 (PST)
Received: from racer ([46.183.103.8])
 by smtp.gmail.com with ESMTPSA id g2sm37039877wrw.76.2019.12.28.02.24.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 02:24:54 -0800 (PST)
Message-ID: <17619db1745c39948f1054296df2f9764dc959ce.camel@ettus.com>
To: Snehasish Kar <snehasish.cse@live.com>, "Marcus D. Leech via USRP-users"
 <usrp-users@lists.ettus.com>
Date: Sat, 28 Dec 2019 11:24:51 +0100
In-Reply-To: <BMXPR01MB394408F89BBBADCA47FAD4FC882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
References: <BMXPR01MB3944A65A50C00946F7389A26882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
 , <5DFF9D8C.9090906@gmail.com>
 <BMXPR01MB394408F89BBBADCA47FAD4FC882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] uhd error
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

Hi Snehasish,

Custom or stock FPGA image?
Is upgrading your UHD an option?

Best regards,
Marcus the second
 
On Sun, 2019-12-22 at 16:51 +0000, Snehasish Kar via USRP-users wrote:
> Hello Marcus
> 
> I am running at a sample rate of 2e6. What I am doing is tuning the
> usrp and streaming samples for 1 sec and then stopping the stream and
> re-tuning to another frequency and doing the same. My ethernet
> controller details are as follows: Realtek Semiconductor Co., Ltd.
> RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07).
> 
> Regards
> Snehasish
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> Sent: Sunday, December 22, 2019 10:15 PM
> To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] uhd error
>  
> On 12/22/2019 11:15 AM, Snehasish Kar via USRP-users wrote:
> > Hello 
> > 
> > Does anyone have a idea why the following error occurs
> > terminate called after throwing an instance of 'uhd::io_error'
> >   what():  EnvironmentError: IOError: [0/Radio_1] sr_write()
> > failed: EnvironmentError: IOError: Block ctrl (CE_02_Port_50) no
> > response packet - AssertionError: bool(buff)
> >   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool,
> > double) [with uhd::endianness_t _endianness =
> > (uhd::endianness_t)0u; uint64_t = long unsigned int]
> >   at /home/snehasish/dsp_dev/uhd-
> > 3.14.1.1/host/lib/rfnoc/ctrl_iface.cpp:142
> > 
> > Aborted (core dumped)
> > 
> > I am using uhd-3.14.1.1 with NI USRP 2955.
> > 
> > Regards
> > Snehasish
>  What sample rate are you running at?  Why type of network card do
> you have?   There are some Intel network chips that drop packets
>   silently, and that can cause this problem.
> 
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
