Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 313A5B831F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 23:10:03 +0200 (CEST)
Received: from [::1] (port=38132 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iB3gf-0001iH-9X; Thu, 19 Sep 2019 17:10:01 -0400
Received: from mail-yw1-f52.google.com ([209.85.161.52]:33581)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1iB3gb-0001bf-PA
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 17:09:57 -0400
Received: by mail-yw1-f52.google.com with SMTP id i188so1345026ywf.0
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 14:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=RZLZb3JUztL7wJHd8/RjkIf3xLEVf+P7D82pHA4BTkM=;
 b=h9Up172B3Ascs3eUDQsgUB9RyCoGQRy3cKxwM5j2dh+tYtddSQiidy49wHzt4jLJWK
 T32VoDuEbasfu9SO3wJfSM3fQb3H7f3Q2vKAToXANWUkdXLYmgbMuxLr/ehfDVaP2xaN
 NOHhBp/vX3PlcfxwCZVhNP+7mKUbGohBmoEw3hEH9gCPYrp0HnEtRSsGq7e/BLKwhUpf
 /K2d5Bjm5i47nY3xtxzptgRW9qBG2T2kFXjRxfkeIRcZzWrJH8Gs9grZbTEAmOau0Djw
 QL0ZwMa3NXPgonOs6z065XnaGnyw8MuK9PybzmHHMvpHt7L+u4N0YmPU/Q2i7/3lUGWP
 J92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=RZLZb3JUztL7wJHd8/RjkIf3xLEVf+P7D82pHA4BTkM=;
 b=XF6wIcbmNXFs1OxagwLmn39Zh8OCDqjida/GYiCpHNKHdNhyDJ+3v8weKBNx+UyVTm
 UH8iqu89WTsPMAaMUeQCIXuTLDLmPBSfOGt8pc7Qbfi1BHiGhtcpLO+aSYITJwfXCc3l
 oZv5g7asEnXhZge88eGq7a9ySrXdgVU8eXHXmJDlN0Uz9tTCQSJJV51AGySq1Iki5DnW
 8Gk7jrF4ZAPN+IFKVZ55436zrKbrP8AAzjX93ZQcNC84BD3AyF0iL3W9inCAVSoDE8v2
 nltqzzaDEAgb/Vmayt4ycQNm3jMs5dKCfN0e7aCwoHQPv0ZDCvTL/W5/i7xlzZ30uX/m
 ZAfQ==
X-Gm-Message-State: APjAAAXWSt/yTzMAa9yOTZMZEdPhkIeBD6HuQM9PSqBaR+YLfbYSLL6k
 x7zp4Hh3F8rKUDElbyyCz0y4UP0X
X-Google-Smtp-Source: APXvYqxX5WY+9RmLOK9QuIPTnj4aaBiAkoD+VhJG+hR9wwtAsXjn4d1XdJ7Y4cKGo2ejCt7USV2VIA==
X-Received: by 2002:a81:7182:: with SMTP id
 m124mr10356698ywc.197.1568927357137; 
 Thu, 19 Sep 2019 14:09:17 -0700 (PDT)
Received: from racer.hostalia.de (d47-69-20-194.try.wideopenwest.com.
 [69.47.194.20])
 by smtp.gmail.com with ESMTPSA id 83sm2094469ywd.51.2019.09.19.14.09.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 14:09:16 -0700 (PDT)
Message-ID: <23e06c72779ec0a7bc4ee3ff197ce04c19e04b56.camel@ettus.com>
To: David Smay <dsmay.public@gmail.com>, usrp-users@lists.ettus.com
Date: Thu, 19 Sep 2019 16:09:16 -0500
In-Reply-To: <CAL8PJZ8B_CSoEPxKJJ8Rv7RLxXFgehfhtWCFN8ELJAV+RJQNMA@mail.gmail.com>
References: <CAL8PJZ8B_CSoEPxKJJ8Rv7RLxXFgehfhtWCFN8ELJAV+RJQNMA@mail.gmail.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] uhd example programs - weird environment variable
 issue?
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

Hi David, 


the version string printed by benchmark_rate shows that you've also got
an old UHD 3.10.3.0 installation on your system.

Make sure there's only one installation of UHD.

Best regards,
Marcus

On Thu, 2019-09-19 at 16:55 -0400, David Smay via USRP-users wrote:
> Hello,
> 
> I recently did a clean installation of UHD 3.14.1 and gnuradio
> 3.7.13.5 on Ubuntu 18.04 LTS, following the steps outlined in the
> Ettus knowledge base for installation from source.
> 
> The installation worked great, and I started experimenting with the
> example programs installed with UHD (located in
> /usr/lib/uhd/examples/).  At first they ran correctly and I was able
> to run the gpio and benchmark_rate programs without issue, getting
> the normal expected output for my b205mini-i.
> 
> Without making any changes to the system, and in the same shell
> session, all of a sudden the example programs all started
> consistently generating errors when I tried to run them:
> 
> dsmay4@UbuntuPrecision7530:/usr/lib/uhd/examples$ ./benchmark_rate --
> rx_rate 10e6
> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-
> unknown
> 
> 
> 
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image:
> usrp_b200_fw.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or
> follow the below instructions to download the images package.
>     Please run:
>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
> Creating the usrp device with: ...
> 
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image:
> usrp_b200_fw.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or
> follow the below instructions to download the images package.
>     Please run:
>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
> Error: LookupError: KeyError: No devices found for ----->
> Empty Device Address
> 
> This is quite strange as my uhd_images_downloader isn't installed to
> that directory, but it does run just fine.  uhd_find_devices and
> uhd_usrp_probe run fine and indicate no problems with the radio
> itself.  Other sdr apps using the b205 work just fine - the problem
> seems to only impact these example programs.
> 
> I tried rebooting, as well as uninstalling and reinstalling UHD
> (which reinstalled the example programs) but the problem persists. 
> I'm mostly interested in figuring out what caused the spontaneous
> change in system behavior.  I can't for the life of me figure out why
> just these apps can't find the fpga images but everything else works
> just fine...
> 
> TIA,
> 
> Dave
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
