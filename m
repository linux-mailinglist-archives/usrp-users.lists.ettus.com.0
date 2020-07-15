Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A04220E7D
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 15:54:01 +0200 (CEST)
Received: from [::1] (port=60834 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvhrB-0006pd-Nd; Wed, 15 Jul 2020 09:53:57 -0400
Received: from mail-qv1-f48.google.com ([209.85.219.48]:44376)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jvhr8-0006h9-01
 for usrp-users@lists.ettus.com; Wed, 15 Jul 2020 09:53:54 -0400
Received: by mail-qv1-f48.google.com with SMTP id di5so885243qvb.11
 for <usrp-users@lists.ettus.com>; Wed, 15 Jul 2020 06:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=FGBCREvT2UgCyXB/pCrhYXMMRlnFB3oMMKzJS+e7HBQ=;
 b=a/EG0d1CeAvOdQIoLXv9o4ki/K6CibTLN0+cnnPar7BZcdR+nYo58bOb3V9wITrYEM
 jy4wMN35wyol/pKdwzMiluwwnOOj2x5s6aa0rgxmwjqC/Kz/COnvz4+d+n3g41vG1rbE
 pSFg79oWUNdDf1FATFSJsvtQuBE3osPeXXKZ3awjovYiZ2q5bTY51Qi2luuCsHhIiQUn
 ZKmOD40yaO6d5vM/4D4HQOgCmiQSDm1G1WDDI4NHoUgb6KdR+Twn2rD6vqzvsIMbOJ6d
 pWn/gxrAOcoBDV3qaigAMuNynf1nDOYt1nlXWUKQBg+6tZMzUdyPCwG9orXFqMQdA/KD
 gXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=FGBCREvT2UgCyXB/pCrhYXMMRlnFB3oMMKzJS+e7HBQ=;
 b=UeHiIYsvrybJYMmbwOAUhlGQao93efn1BPJ1bMyDLXBvUR4k5Phucbf9z5GkjHV9Ok
 jpvHFROhQlpGpFdjmgIcwfzEiGYaejQ9FZgHeioaDz8tVJrEsBpNr25XuRJyaEDAq5he
 8h/tl0y49umpd+4fWtg47V1GDJ2gyMJx16ijvcTkpjXSRMZWQijmhEXoWjEyfDrj3MfM
 +L+wNmY5R8EmlKN8kqR2eiVncf+SNUYcIf8UXR0JW9OYCdUKz8EitMwSCQw0G8O8h14I
 hpFPsrLF6OXJUFFpBeWGTkxfCqRjZG5R5Ufzp/F0s9rbMyLz4JEiWGhbs6KchwBwWUXi
 1q+A==
X-Gm-Message-State: AOAM53119aUQYoIzBpciE5QyDotFAGxfDUvaZKfjIzRHEheBNq8Kw2Kh
 gNTKAy2IYF6tLOFs/jdSQNk0P4RA
X-Google-Smtp-Source: ABdhPJxW4YEiVyirOG85qdUvRSPLCdevwbJQzQgO2t6rOYmHOdMcxKBV9xrZXTnXWi6vQfG/eTcSYA==
X-Received: by 2002:a0c:e048:: with SMTP id y8mr9926206qvk.11.1594821193053;
 Wed, 15 Jul 2020 06:53:13 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id l1sm3251942qtk.18.2020.07.15.06.53.12
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jul 2020 06:53:12 -0700 (PDT)
Message-ID: <5F0F0A47.3020100@gmail.com>
Date: Wed, 15 Jul 2020 09:53:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
In-Reply-To: <CAMVZM+-xgHc1dGUM9T2BncCPVcLuC7j1uPqVLQeFvPmhf3FE2A@mail.gmail.com>
Subject: Re: [USRP-users] error at updating the filesystem for usrp n310
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

On 07/15/2020 08:12 AM, Pavlos Basaras via USRP-users wrote:
> Dear community,
>
> i am using the usrp n310 device. I am following the start up guide 
> from 
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection
> for the initial setup of the usrp.
>
> I completed the installation instructions for the host from 
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux 
> <https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux>
> everything seemed ok.
>
> I can connect to the device through both ssh and by the serial port.
>
> I am trying to use mender to update the filesystem at the usrp device.
>
> I executed the command: sudo uhd_images_downloader -t mender -t n3xx --yes
> at the host  to obtain usrp_n3xx_fs.mender, which i then copied to the 
> usrp.
>
> At the usrp i am using the command: mender -rootfs 
> /home/root/usrp_n3xx_fs.mender
> to start the update of the system but i have the following 
> incompatibility issue :
>
> ERRO[0000] Installation failed: installer: failed to read and install 
> update: installer: image (device types [ni-sulfur-rev6-mender 
> ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender 
> ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not 
> compatible with device ni-sulfur-rev11-mender  module=rootfs
> ERRO[0000] installer: failed to read and install update: installer: 
> image (device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender 
> ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6 
> ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with 
> device ni-sulfur-rev11-mender  module=main
>
>
> How can i resolve this?
>
>
> Details on the UHD intalled on both the host and the usrp device"
>
> HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; 
> Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8
> USRP uhd:   [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600; 
> UHD_3.14.1.1-0-g0347a6d8
>
>
> all the best,
> Pavlos.
>
This seems a bit odd.

Two things:

(A)  How did you copy the .mender file over to the usrp?
(B) (This seems really dumb, and I apologize in advance) are you sure 
that you're running the mender command ON the USRP?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
