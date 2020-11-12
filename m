Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2E92B0C88
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 19:26:04 +0100 (CET)
Received: from [::1] (port=59892 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdHIF-00081D-QW; Thu, 12 Nov 2020 13:25:59 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:33998)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kdHIB-0007uk-Mu
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 13:25:55 -0500
Received: by mail-qt1-f173.google.com with SMTP id 7so4708051qtp.1
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 10:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=pyj1g/ZbeBlTN/qJvmFsAY2KQW9XsynHpVfXnA0Ss8k=;
 b=RU/chCrIXPQPSaQSus4Osh9oroY/ZVzCjaCGdShoWvbLIDQisn6qetSbUfrCJc/oSe
 /EcP3sB/r7l+BwCfi2BKji7XGTWPZEUlfBmkqwvMgDQmwPLyRrmPl318AVIk7dkFRKQp
 IwI/k47Y7DIgbMNUtBCBub8XUabukgwtg2fM8pdkgUDQoDb9+ISRRsxOr8p1LtC3RAgm
 oSoE4VvXqCPeDLyqsSMdxsw3MsCmm13pFIJ7B5eZot8k12Lg/EhdYTwawKpd02P6IchY
 nhIhyhu7wzoU5qoWthYsGmnJGffDkJ90zYMiUdRh4CW01JJDG71+4pJFUGwUB/gqJJ+u
 YTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=pyj1g/ZbeBlTN/qJvmFsAY2KQW9XsynHpVfXnA0Ss8k=;
 b=X+CDXsdpcEEZyfqV3G8Edh/sysJQ7DKj1Ci4LAY+40anR+J/F518e5zHzCHKjUYzmj
 Ew0U2Kh5jLWw6ESw4fnk1TclIN50YDf2GUQLNkMaq2tFQ3eQe3Op2lp7vCHwSR5D0a3T
 DvLBuUrwKVJ2bCGuKthQGFmN94A4Mm5VY5LO/uAJQsk45ob1RfLOmx+FIBkQhPyUYC00
 0KWFYMXx4Q3kggVBDlwsG3o4jaWuahY6zbxOQdypwWCbzDn26etBBZjnFRcd08rcaTE3
 wlwpgtMojZGHjBTbXw479S11VsT19kK+8wDBkmUpElqyeYtcJj2zpC9LI+2itY6bYYJn
 NsdA==
X-Gm-Message-State: AOAM5333W+gORVnV9fY5msHdGkV5n4SBPTxcnUk+RkCR4Tk2tHEqW7zj
 ukny7iRq3+pjlg26zaBP/bdxT+Fl0mk=
X-Google-Smtp-Source: ABdhPJzZGRzyLh5b/ZF1TTg+rtTEKUjto/ZogSjti6BCvroa2nDCInkxNEsMiZMNTaUPWhwezIAszw==
X-Received: by 2002:ac8:7593:: with SMTP id s19mr425977qtq.243.1605205515069; 
 Thu, 12 Nov 2020 10:25:15 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id v204sm5504212qka.4.2020.11.12.10.25.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Nov 2020 10:25:14 -0800 (PST)
Message-ID: <5FAD7E0A.6000100@gmail.com>
Date: Thu, 12 Nov 2020 13:25:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Dustin Widmann <dw2zq@virginia.edu>, usrp-users@lists.ettus.com
References: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>			
 <5FAC37FA.1060605@gmail.com>		
 <4150ed6df83730bba2cbc5ef916af8064c284edf.camel@virginia.edu>		
 <5FAC8763.1090904@gmail.com>	
 <d66ce8deb5691b545bcdeb65fabf69b55306c692.camel@virginia.edu>	
 <5FAC94F5.6060909@gmail.com>
 <774356b186ed10a2ee114b00cbb480473e30f77d.camel@virginia.edu>
In-Reply-To: <774356b186ed10a2ee114b00cbb480473e30f77d.camel@virginia.edu>
Subject: Re: [USRP-users] twinrx consistent phase offset
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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

On 11/11/2020 11:11 PM, Dustin Widmann wrote:
> Hi Marcus
>
> I've given this a try, unfortunately I'm running into a problem with
> that. I've always gotten strange crashes with UHD 3.15 with this
> codebase (probably my fault, but I'm not sure why yet).
> I can collect around ~200 datapoints-ish (about 20-ish retunes of the
> receiver), before it crashes with one of these errors:
>
> *****
> terminate called after throwing an instance of 'uhd::io_error'
>    what():  EnvironmentError: IOError: [0/DDC_1] sr_write() failed:
> EnvironmentError: IOError: Block ctrl (CE_04_Port_70) no response
> packet - AssertionError: bool(buff)
>    in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
> [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t =
> long unsigned int]
>    at /home/sdrdev/uhd-3.15/host/lib/rfnoc/ctrl_iface.cpp:151
>
> [1]    193504 abort (core dumped)  LD_LIBRARY_PATH=/opt/qt-
> 5.15.1/lib:/opt/uhd-3.15/lib:/opt/boost-1.74.0/lib
> *****
>
> *****
> Receiver error:  "ERROR_CODE_TIMEOUT" , continuing...
> 21:45:08.166 ## default.fatal ## static void UhdSdrVna::uhdLogger(),
> uhdsdrvna.cpp:866
> [x300_fw_ctrl.cpp:53] [X300] 192.168.40.2: x300 fw communication
> failure #1
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [1]    193622 abort (core dumped)
> *****
>
> Each time it errors out, a hard reset of the device is required, else
> it will error out immediately after the application is restarted with
> the second error above. This makes automation difficult. Nevertheless,
> I've run it several times focusing on areas that looked problematic in
> the previous dataset. Many (not all) of those problematic areas seemed
> unproblematic here, though they were only tried once so its difficult
> to say for sure. On the other hand, frequencies that were giving me
> invalid results before (no tone at the expected IF frequency on one or
> both of the channels, cell background color highlighted red in the
> attached files) are still problematic here however.
>
> https://u.pcloud.link/publink/show?code=XZ7KnzXZgqYQElUagKRRKSfugQPJ4yy65ToX
>
> Dustin
>
>
Sigh, OK, so let's stick with UHD 4.0.

I'll note that given the numbers you've provided, you're only observing 
for about 10 samples/frequency.  That's not enough time
   for the hardware to "settle"--at least given the 100Msps you're 
using.  The command-time for tuning is the time at which
   tuning will be *initiated*--there'll be some latency due to things 
like SPI/I2C bus latency, and the vagaries of analog hardware
   changing equilibrium, PLLs locking into place, etc.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
