Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C73404DC53
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 23:16:46 +0200 (CEST)
Received: from [::1] (port=40250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1he4QB-0000I4-Db; Thu, 20 Jun 2019 17:16:39 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:46295)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1he4Q6-0008VE-Pg
 for usrp-users@lists.ettus.com; Thu, 20 Jun 2019 17:16:35 -0400
Received: by mail-wr1-f44.google.com with SMTP id n4so4402068wrw.13
 for <usrp-users@lists.ettus.com>; Thu, 20 Jun 2019 14:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:references:from:in-reply-to:message-id:date:to
 :content-transfer-encoding:mime-version;
 bh=NzzIFCoXqNMdGZYDoZ84KybX+F5t7Z0vkLAFzDub9yU=;
 b=hYYf5lRCvatAKB5aBaIM6LR6oELxYT2XZVMx+BB4qmad+YKEYbI0USCttAk1hJ+4Y8
 f/K2Kj0WxAKVbicYcweY+oHXxWZUlO1RTygwQdUOJvVCmCWRxhegyXLZDi9rMSq02Jrl
 NkO6IOQh7gcvmihl1rm4L//Wz0JUP6fC6HA/9h7zd+bO8HJGJtx7ZBZp9cHd1khP3MoH
 jSFTZx00DRKmtg66GAiGlxQ7Y8xDrQhPHKuab1YAY06dplJfwkXRKL5ZS66AONRnANzS
 P+w3TiZbusR17AnNW9B7rwD+8femYYwYVOObysEqF7xRjzjujd3+BBRykeauq6a2RVM+
 MfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:references:from:in-reply-to:message-id
 :date:to:content-transfer-encoding:mime-version;
 bh=NzzIFCoXqNMdGZYDoZ84KybX+F5t7Z0vkLAFzDub9yU=;
 b=MhiXh4b/bGt/fF+WPJ1Bfw6AQUQbUKejfEhZ86ok0sZNKOyqKtc0FYh6nGHkovzNoP
 dZwqSUgfAf/4FK7PAjOSU8Jd4THHyWGcoDluUIWG1tlR3o2GnBwDl3j8YdD2TxEIO/hf
 Bx5Y2H33kN3sPDBoCCuFbiaBgd63Zb3SLPcB13DhNfQvsOpwu3PQiaqBnn5JNekIGnDf
 FyNjnKkKpgOhHMRyn/OG+rb3n7ppr4NucmGkUQ+XHaIq0dMFNKhoDfdTiz8wljrjbuJh
 vfroxHctZ6SbmEGcNmg8xS7VFjh5KChjs1Oef4rJYD+loFodCTG7WoIigLeZ60Pj/ROV
 6Myg==
X-Gm-Message-State: APjAAAU67At0YpvYfXhjBXCmTr0DemVD17mYImMHT0UcIWAfvYw2aEtT
 v7/MYmmt3omjUupZftSPMM26s75+lRQ=
X-Google-Smtp-Source: APXvYqxy5Sk4UPNaIoWeK3CYargJNSgT3z80VgUYPnGYbAGGK1Qx3RVD0ccrBZ4gJ8iBsCLKp86TLw==
X-Received: by 2002:adf:b78c:: with SMTP id s12mr29471400wre.264.1561065353022; 
 Thu, 20 Jun 2019 14:15:53 -0700 (PDT)
Received: from [192.168.0.2]
 (cpc105060-sgyl40-2-0-cust480.18-2.cable.virginm.net. [81.111.13.225])
 by smtp.gmail.com with ESMTPSA id v2sm568423wrn.30.2019.06.20.14.15.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 14:15:52 -0700 (PDT)
References: <mailman.63.1561046404.5844.usrp-users_lists.ettus.com@lists.ettus.com>
X-Mailer: iPhone Mail (14G60)
In-Reply-To: <mailman.63.1561046404.5844.usrp-users_lists.ettus.com@lists.ettus.com>
Message-Id: <B8D7301E-35A2-4178-9C14-34F2C07F4EED@gmail.com>
Date: Thu, 20 Jun 2019 22:15:50 +0100
To: usrp-users@lists.ettus.com
Mime-Version: 1.0 (1.0)
Subject: Re: [USRP-users] USRP-users Digest, Vol 106, Issue 21
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
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
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

Dear Sir/Madam,

I am a student in Heriot-Watt University.
I am working with X310 on Simulink and GNU radio, but I would work with Vivado.
On the Ettus Research web site, I did not find a tutorial o demo about how to connect the USRP with Vivado.
Also, I did not find the constraint file to generate the bitstream.
Could you help me?

Thank you in advance.
Best Regards,

Simona 

> Il giorno 20 giu 2019, alle ore 17:00, usrp-users-request@lists.ettus.com ha scritto:
> 
> Send USRP-users mailing list submissions to
>    usrp-users@lists.ettus.com
> 
> To subscribe or unsubscribe via the World Wide Web, visit
>    http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
>    usrp-users-request@lists.ettus.com
> 
> You can reach the person managing the list at
>    usrp-users-owner@lists.ettus.com
> 
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
> 
> 
> Today's Topics:
> 
>   1. E320 with larger SD card (Jason Matusiak)
>   2. Re: E320 with larger SD card (Marcus D. Leech)
>   3. Re: E320 with larger SD card (Jason Matusiak)
>   4. Re: E320 with larger SD card (Nate Temple)
>   5. Re: RFNoC multi-driven nets (Mitch Davis)
>   6. Re: Registering Block Controllers to UHD (Christian Valledor)
>   7. Re: RFNoC multi-driven nets (Roberto Michio Marques Kagami)
>   8. Re: Waveform Shape Not Accurate (Marcus D. Leech)
>   9. RX/TX on 4 channels on N310 (Jessica Iwamoto)
>  10. Re: RX/TX on 4 channels on N310 (Nate Temple)
>  11. Re: RX/TX on 4 channels on N310 (Ali Dormiani)
>  12. Receiving response packets via UHD (Nick Foster)
>  13. Re: E320 with larger SD card (Chris Gobbett)
>  14. Re: E320 with larger SD card (Jason Matusiak)
>  15. Re: E320 with larger SD card (Chris Gobbett)
>  16. Re: E320 with larger SD card (Jason Matusiak)
>  17. USRP gain refers to which amplifier (Koyel Das (Vehere))
>  18. unsubscribe (Fabian Schwartau)
>  19. Re: USRP gain refers to which amplifier (Marcus D. Leech)
>  20. Re: E320 with larger SD card (Jason Matusiak)
>  21. unsubscribe (Zhihong Luo)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Wed, 19 Jun 2019 16:29:38 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: Ettus Mail List <usrp-users@lists.ettus.com>
> Subject: [USRP-users] E320 with larger SD card
> Message-ID:
>    <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
>    
> Content-Type: text/plain; charset="iso-8859-1"
> 
> I wanted to use a larger SD card than the one that as supplied, but I am having issues.  I loaded up the card, and then extended the data partition to use up the rest of the free space (about 100GB).  But then it doesn't boot.
> 
> 
> I am wondering if the change to a partition size screwed up something in a config file somewhere.  Is there a way to fix this without rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the smaller data partition (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/python packages, so I need to use the older image).
> 
> 
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/8b9fdfc4/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 2
> Date: Wed, 19 Jun 2019 12:33:11 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID: <5D0A63C7.7080004@gmail.com>
> Content-Type: text/plain; charset="windows-1252"; Format="flowed"
> 
>> On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
>> 
>> I wanted to use a larger SD card than the one that as supplied, but I 
>> am having issues.  I loaded up the card, and then extended the data 
>> partition to use up the rest of the free space (about 100GB). But then 
>> it doesn't boot.
>> 
> What steps did you take to extend the partition?
> 
> 
>> 
>> I am wondering if the change to a partition size screwed up something 
>> in a config file somewhere.  Is there a way to fix this without 
>> rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the 
>> smaller data partition (UHD 3.14.1.0 has a larger data partition, but 
>> doesn't include any GR/python packages, so I need to use the older image).
>> 
>> 
>> Thanks.
>> 
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/15fd5a32/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 3
> Date: Wed, 19 Jun 2019 16:44:02 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: "Marcus D. Leech" <patchvonbraun@gmail.com>
> Cc: Ettus Mail List <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <BL0PR12MB2340261564BEEC740712C9BCAFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
>    
> Content-Type: text/plain; charset="iso-8859-1"
> 
> I used bmaptool to write the image and I used gparted to extend it.  I just tried again and still no dice.
> 
> 
> I just tried to boot with the serial terminal on and I see this on the screen (no LED ever comes on):
> 
> 
> U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)
> mmc boot
> Trying to boot from MMC1
> reading u-boot.img
> reading u-boot.img
> 
> 
> U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)
> 
> Model: NI Ettus Research Project NEON SDR
> DRAM:  ECC disabled 1 GiB
> MMC:   sdhci@e0100000: 0
> 
> 
> 
> 
> 
> ________________________________
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> Sent: Wednesday, June 19, 2019 12:33 PM
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] E320 with larger SD card
> 
> On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
> 
> I wanted to use a larger SD card than the one that as supplied, but I am having issues.  I loaded up the card, and then extended the data partition to use up the rest of the free space (about 100GB).  But then it doesn't boot.
> 
> What steps did you take to extend the partition?
> 
> 
> 
> 
> I am wondering if the change to a partition size screwed up something in a config file somewhere.  Is there a way to fix this without rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the smaller data partition (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/python packages, so I need to use the older image).
> 
> 
> Thanks.
> 
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/6087cb21/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 4
> Date: Wed, 19 Jun 2019 09:53:11 -0700
> From: Nate Temple <nate.temple@ettus.com>
> To: Jason Matusiak <jason@gardettoengineering.com>
> Cc: "Marcus D. Leech" <patchvonbraun@gmail.com>, Ettus Mail List
>    <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <CAL263ixsgxh+N9fO0YH8ELC2ChMQJ18RQGRrmZpHxDt84xZBfw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
> 
> Hi Jason,
> 
> I have some instructions I will send you off list for adding an additional
> partition you can try. I wrote them for the E310, but have not yet tested
> them on E320, however, it should be a similar process.
> 
> Regards,
> Nate Temple
> 
> On Wed, Jun 19, 2019 at 9:44 AM Jason Matusiak via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> 
>> I used bmaptool to write the image and I used gparted to extend it.  I
>> just tried again and still no dice.
>> 
>> 
>> I just tried to boot with the serial terminal on and I see this on the
>> screen (no LED ever comes on):
>> 
>> 
>> U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)
>> mmc boot
>> Trying to boot from MMC1
>> reading u-boot.img
>> reading u-boot.img
>> 
>> 
>> U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)
>> 
>> Model: NI Ettus Research Project NEON SDR
>> DRAM:  ECC disabled 1 GiB
>> MMC:   sdhci@e0100000: 0
>> 
>> 
>> 
>> 
>> 
>> ------------------------------
>> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
>> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
>> *Sent:* Wednesday, June 19, 2019 12:33 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] E320 with larger SD card
>> 
>> On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
>> 
>> I wanted to use a larger SD card than the one that as supplied, but I am
>> having issues.  I loaded up the card, and then extended the data partition
>> to use up the rest of the free space (about 100GB).  But then it doesn't
>> boot.
>> 
>> What steps did you take to extend the partition?
>> 
>> 
>> 
>> I am wondering if the change to a partition size screwed up something in a
>> config file somewhere.  Is there a way to fix this without rebuilding a
>> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
>> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
>> any GR/python packages, so I need to use the older image).
>> 
>> 
>> Thanks.
>> 
>> 
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/050ac803/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 5
> Date: Wed, 19 Jun 2019 13:13:52 -0400
> From: Mitch Davis <mitch@silverblocksystems.net>
> To: Roberto Michio Marques Kagami <robertomk@inatel.br>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoC multi-driven nets
> Message-ID:
>    <861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
>    
> Content-Type: text/plain; charset="UTF-8"
> 
> Roberto,
> 
> Just to clarify, the commit that I used that resulted in successful
> build is f6890f227b40687b356c1e6c10d9eec2184691d0
> 
> This requires Vivado 2017.4
> 
> Did you try f6890f22 or 118a45d63?
> 
> I don't have the bandwidth to spare with any bisection to determine
> what the actual fault may be.  I've found f6890f22 to yield
> satisfactory results.
> 
> This is built in a CentOS 7 native install (with EPEL and some other
> extra repos enabled).
> 
> Regards,
> 
> Mitch
> 
>> On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
>> Hello, Mitch!
>> 
>> I've faced the same problem.
>> I've tried the first commit after f6890f22 including Vivado version
>> 2018.3 and the error is the same.
>> Did you received any reply for this failure?
>> I would appreciate any information.
>> Thanks!
>> 
>> Regards,
>> Roberto Kagami
>> De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
>> Davis via USRP-users <usrp-users@lists.ettus.com>
>> Enviado: segunda-feira, 17 de junho de 2019 15:44:07
>> Para: usrp-users@lists.ettus.com
>> Assunto: Re: [USRP-users] RFNoC multi-driven nets
>> 
>> My apologies for not connecting this message to the OP, I didn't
>> register this email account to the list until after the post. 
>> However,
>> Peter had posted that he was having issues building the latest X310
>> RFNOC image (with an RFNOC block) with an error of multiple-drivers
>> on
>> two nets (ce_clk and ce_rst):
>> 
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html
>> 
>> I too encountered this same error.
>> 
>> On a hunch, I reverted the repo to the commit just before the Vivado
>> 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
>> 
>> I was able to build the X310 RFNOC image with an RFNOC block using
>> that
>> commit without failure.
>> 
>> I haven't attempted a bisection yet.  Is there anyone else that has
>> observed similar build failures?
>> 
>> 
>> Regards,
>> 
>> Mitch Davis
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> 
> 
> 
> ------------------------------
> 
> Message: 6
> Date: Wed, 19 Jun 2019 13:14:17 -0400
> From: Christian Valledor <cavalledor@gmail.com>
> To: Nick Foster <bistromath@gmail.com>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Registering Block Controllers to UHD
> Message-ID:
>    <CACV8bbfLvEX5UF+yor_YifbiwnokjxR5A=yi2nCYvMHHXJjW+w@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
> 
> That was it!
> 
> Looks like there was some linker magic going on. So once I added the
> --whole-archive option it worked.
> 
> Thanks,
> -Christian
> 
> 
>> On Wed, Jun 19, 2019 at 9:46 AM Nick Foster <bistromath@gmail.com> wrote:
>> 
>> This thread might be helpful:
>> 
>> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html
>> 
>> Nick
>> 
>> On Wed, Jun 19, 2019 at 6:35 AM Christian Valledor via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> 
>>> Hi All,
>>> 
>>> I'm developing a few custom RFNoC Blocks for a UHD application I'm
>>> working on, and I've hit a snag getting UHD to work with my block
>>> controllers. Note that I went the C++ route instead of using nocscript and
>>> the default block controller to handle some more complex cases.
>>> 
>>> The only way I have been able to get my application to work is if I move
>>> my custom controller files into the UHD directory, and re-compile.
>>> Otherwise it sees my block and XML, but doesn't register a key, and loads
>>> the default block controller.
>>> 
>>> Is there another way to get UHD to play nice with my block without
>>> re-compiling it each time?
>>> 
>>> thanks,
>>> -Christian
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> 
>> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/61a76c1f/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 7
> Date: Wed, 19 Jun 2019 17:56:48 +0000
> From: Roberto Michio Marques Kagami <robertomk@inatel.br>
> To: Mitch Davis <mitch@silverblocksystems.net>
> Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoC multi-driven nets
> Message-ID:
>    <BY5PR02MB6019B8459D7FAAC62880BBF5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com>
>    
> Content-Type: text/plain; charset="us-ascii"
> 
> Hi, Mitch
> 
> 
> I've tested the 118a45d63. Failed (multiple-drivers).
> 
> The f6890f22 is good, but only for XG build.
> 
> HG option generates another type of error (4 missing pin LOC constraints).
> 
> My OS is Ubuntu 16.04.
> 
> 
> Regards,
> 
> Roberto
> 
> ________________________________
> De: Mitch Davis <mitch@silverblocksystems.net>
> Enviado: quarta-feira, 19 de junho de 2019 10:13:52
> Para: Roberto Michio Marques Kagami
> Cc: usrp-users@lists.ettus.com
> Assunto: Re: [USRP-users] RFNoC multi-driven nets
> 
> Roberto,
> 
> Just to clarify, the commit that I used that resulted in successful
> build is f6890f227b40687b356c1e6c10d9eec2184691d0
> 
> This requires Vivado 2017.4
> 
> Did you try f6890f22 or 118a45d63?
> 
> I don't have the bandwidth to spare with any bisection to determine
> what the actual fault may be.  I've found f6890f22 to yield
> satisfactory results.
> 
> This is built in a CentOS 7 native install (with EPEL and some other
> extra repos enabled).
> 
> Regards,
> 
> Mitch
> 
>> On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
>> Hello, Mitch!
>> 
>> I've faced the same problem.
>> I've tried the first commit after f6890f22 including Vivado version
>> 2018.3 and the error is the same.
>> Did you received any reply for this failure?
>> I would appreciate any information.
>> Thanks!
>> 
>> Regards,
>> Roberto Kagami
>> De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
>> Davis via USRP-users <usrp-users@lists.ettus.com>
>> Enviado: segunda-feira, 17 de junho de 2019 15:44:07
>> Para: usrp-users@lists.ettus.com
>> Assunto: Re: [USRP-users] RFNoC multi-driven nets
>> 
>> My apologies for not connecting this message to the OP, I didn't
>> register this email account to the list until after the post.
>> However,
>> Peter had posted that he was having issues building the latest X310
>> RFNOC image (with an RFNOC block) with an error of multiple-drivers
>> on
>> two nets (ce_clk and ce_rst):
>> 
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html
>> 
>> I too encountered this same error.
>> 
>> On a hunch, I reverted the repo to the commit just before the Vivado
>> 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
>> 
>> I was able to build the X310 RFNOC image with an RFNOC block using
>> that
>> commit without failure.
>> 
>> I haven't attempted a bisection yet.  Is there anyone else that has
>> observed similar build failures?
>> 
>> 
>> Regards,
>> 
>> Mitch Davis
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/dfa72556/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 8
> Date: Wed, 19 Jun 2019 14:13:46 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Waveform Shape Not Accurate
> Message-ID: <5D0A7B5A.4010807@gmail.com>
> Content-Type: text/plain; charset="windows-1252"; Format="flowed"
> 
>> On 06/19/2019 08:24 AM, Simona Sibio via USRP-users wrote:
>> In attachment, there is the flowgraph on GNU radio.
>> In the previous email, I meat that the result is the same regarding 
>> the amplitude accuracy, not regarding the value.
>> When I change the amplitude or the gain on GNU radio, also the 
>> amplitude changes in the oscilloscope.
>> 
>> Thank you for your time.
>> 
>> Simona
> What happens if, instead of using a constant, using a 10kHz tone, and 
> offset your Fc by 10kHz, does it look better then?
> 
> 
>> 
>> Il giorno mer 19 giu 2019 alle ore 13:00 Nick Foster 
>> <bistromath@gmail.com <mailto:bistromath@gmail.com>> ha scritto:
>> 
>>    Can you post the flowgraph you're using again? If you changed
>>    transmit gain and amplitude, the result should have changed in
>>    amplitude, while the image you just sent has the fame magnitude
>>    the last one did.
>> 
>>    On Wed, Jun 19, 2019, 5:03 AM Simona Sibio <ssibio2@gmail.com
>>    <mailto:ssibio2@gmail.com>> wrote:
>> 
>>        Thank you very much.
>>        I tried to send a signal with this features, but the result is
>>        the same (IMG_6590).
>>        I tried with every amplitude and every gain (Screenshot from
>>        2019).
>>        Before, I thought that it was a problem of reference signal
>>        and I changed it but the situation is not changed.
>> 
>>        Thank you in advance for your help.
>> 
>>        Best Regards,
>> 
>>        Simona
>> 
>>        Il giorno mar 18 giu 2019 alle ore 18:06 Nick Foster
>>        <bistromath@gmail.com <mailto:bistromath@gmail.com>> ha scritto:
>> 
>>            Turn up the transmit gain on the USRP sink. Start with
>>            ~40dB and transmit amplitude 0.3.
>> 
>>            Nick
>> 
>>            On Tue, Jun 18, 2019 at 9:40 AM Simona Sibio
>>            <ssibio2@gmail.com <mailto:ssibio2@gmail.com>> wrote:
>> 
>>                Thank you for the assistance.
>>                I tried to change the amplitude but the amplitude and
>>                frequency are not accurate in the oscilloscope yet.
>>                If I lower the amplitude, the S/N is lowered then it
>>                is worst.
>> 
>>                Best Regards,
>> 
>>                Simona
>> 
>> 
>>                Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster
>>                <bistromath@gmail.com <mailto:bistromath@gmail.com>>
>>                ha scritto:
>> 
>>                    Waveform source amplitude is too high. Turn it
>>                    down to <0.4.
>> 
>>                    On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via
>>                    USRP-users <usrp-users@lists.ettus.com
>>                    <mailto:usrp-users@lists.ettus.com>> wrote:
>> 
>>                        Hi Michael,
>> 
>>                        thank you for your interest.
>> 
>>                        I have two N200 and each one have two
>>                        daughterboard UBX-40; the transmitters are
>>                        connected by coaxial cable to an oscilloscope
>>                        (Rhode&Schwarz RTO2064) to check the waveform.
>>                        The version of UHD is 3.13.0.
>> 
>>                        I tried to send a constant signal using the
>>                        flowgraph (Screenshot from 2019-06-18
>>                        14-56-57) in attachment on GNU radio Companion
>>                        3.7.13.4, and on the oscilloscope I saw this
>>                        "IMG_6586".
>>                        Also, I tried to generate a constant signal in
>>                        Simulink model (16-42-17 & 16-14-04) on Matlab
>>                        R2019a but, on the oscilloscope, I saw this
>>                        "IMG_6584".
>> 
>>                        I tried to send a sine signal with the
>>                        Simulink model in attachment (16-46-10) and,
>>                        on the oscilloscope, I saw this "IMG_6583".
>>                        Also I tried to generate the sine signal with
>>                        GNU radio (17-08-58) and I saw this "IMG_6588".
>> 
>>                        It is possible to see how the amplitude and
>>                        frequency change in every case, I need to
>>                        obtain an accurate signal because I have to
>>                        measure the amplitude and phase in a
>>                        particular point in the circuit.
>>                        And in the previous email, I added that the
>>                        problem increases when I lower the carrier
>>                        frequency. All these measures were taken with
>>                        a carrier frequency at 3 GHz, but if I change
>>                        the fc at 1 GHz the shape is worst, e.g. IMG_6589.
>> 
>>                        Thank you in advance.
>> 
>>                        Best Regards,
>> 
>>                        Simona
>> 
>> 
>>                        Il giorno mar 18 giu 2019 alle ore 15:34
>>                        Michael Dickens <michael.dickens@ettus.com
>>                        <mailto:michael.dickens@ettus.com>> ha scritto:
>> 
>>                            Hi Simona - Can you please educate us as
>>                            to a few items?
>> 
>>                            * your setup: you have an N200 + some
>>                            daughterboard (which one) + some spectrum
>>                            analyzer (which one), connected ?somehow?
>>                            -> are you doing actual wireless Tx -> Rx,
>>                            or do you have a cable hooked up between
>>                            the N200 & spectrum analyzer?
>> 
>>                            * what waveform you're trying to generate,
>>                            and what is the actual flowgraph you're
>>                            using for GNU Radio? how are you
>>                            generating the waveform in MATLAB?
>> 
>>                            * which version of GNU Radio and UHD are
>>                            you trying to use?
>> 
>>                            * which version of MATLAB and it's UHD are
>>                            you trying to use?
>> 
>>                            The above might help someone to diagnose
>>                            your issue ... without it, we can make
>>                            some guesses but not much in the way of
>>                            specifics.
>> 
>>                            Please remember to "reply all", so that
>>                            others can see your response and be able
>>                            to chime in to provide help. - MLD
>> 
>>                            On Tue, Jun 18, 2019, at 8:42 AM, Simona
>>                            Sibio via USRP-users wrote:
>>>                            Dear Sir/Madam,
>>> 
>>>                            I am Simona Sibio, a student in Heriot
>>>                            Watt University.
>>>                            I am working with USRPs both on Matlab
>>>                            and on Gnuradio, and with both softwares
>>>                            I have the same problem: the shape
>>>                            (generated by N200+daughterboard 10 MHz
>>>                            to 6 GHz) is not accurate, in attacched
>>>                            some photos.
>>>                            At 1 GHz, the shape is worst than when
>>>                            the carrier frequency is 3GHz.
>>>                            It is not possible to measure the
>>>                            amplitude and frequency because, also at
>>>                            3 GHz, it is not stable.
>>>                            Could you help me?
>>> 
>>>                            Thank you in advance.
>>> 
>>>                            Best Regards,
>>> 
>>>                            Simona
>> 
>>                        _______________________________________________
>>                        USRP-users mailing list
>>                        USRP-users@lists.ettus.com
>>                        <mailto:USRP-users@lists.ettus.com>
>>                        http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> 
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/b18f9eed/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 9
> Date: Wed, 19 Jun 2019 19:04:43 +0000
> From: Jessica Iwamoto <jessica.iwamoto@aero.org>
> To: usrp-users <usrp-users@lists.ettus.com>
> Subject: [USRP-users] RX/TX on 4 channels on N310
> Message-ID:
>    <SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com>
>    
> Content-Type: text/plain; charset="us-ascii"
> 
> Hello,
> 
> I am getting a lot of underflows when trying to use dual RX/TX on 4 channels on the N310. My application creates one multi_usrp object and 8 streamers (4 RX, 4 TX) each on a different thread. Samples are received from the RX threads, put into buffers, and then transmitted in the TX threads. I can run it on 1 channel and 2 channels, but when I try using more channels, I get a ton of underflows. When I use 2 channels, I also have to specify the subdevice as "A:0 B:0 A:1 B:1", otherwise I will get a lot of underflows with the default subdevice spec of "A:0 A:1 B:0 B:1". I have tried the txrx_loopback_to_file example with 4 channels and it works fine, although this example only uses 2 streamers, each controlling 4 channels. Any suggestions on what to try to make this work? I am using UHD v3.13.1.0-rc1.
> 
> Thanks,
> 
> Jessica Iwamoto
> Member of Technical Staff
> The Aerospace Corporation
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/72ae6914/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 10
> Date: Wed, 19 Jun 2019 12:21:04 -0700
> From: Nate Temple <nate.temple@ettus.com>
> To: Jessica Iwamoto <jessica.iwamoto@aero.org>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RX/TX on 4 channels on N310
> Message-ID:
>    <CAL263iz3nDc_eKtbT5gMP-i+dMB_CxFkqxstGV8Bad1m1os2ZQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
> 
> Hi Jessica,
> 
> What sample rate are you trying to run at per channel?
> 
> I would suggest to use DPDK as it will remove a considerable overhead from
> the Linux networking stack.
> 
> I can follow up with you off the list with some notes I have on getting
> DPDK going, we have a pending app note that will be published soon on the
> topic.
> 
> Regards,
> Nate Temple
> 
> 
> On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> 
>> Hello,
>> 
>> 
>> 
>> I am getting a lot of underflows when trying to use dual RX/TX on 4
>> channels on the N310. My application creates one multi_usrp object and 8
>> streamers (4 RX, 4 TX) each on a different thread. Samples are received
>> from the RX threads, put into buffers, and then transmitted in the TX
>> threads. I can run it on 1 channel and 2 channels, but when I try using
>> more channels, I get a ton of underflows. When I use 2 channels, I also
>> have to specify the subdevice as ?A:0 B:0 A:1 B:1?, otherwise I will get a
>> lot of underflows with the default subdevice spec of ?A:0 A:1 B:0 B:1?. I
>> have tried the txrx_loopback_to_file example with 4 channels and it works
>> fine, although this example only uses 2 streamers, each controlling 4
>> channels. Any suggestions on what to try to make this work? I am using UHD
>> v3.13.1.0-rc1.
>> 
>> 
>> 
>> Thanks,
>> 
>> 
>> 
>> Jessica Iwamoto
>> 
>> Member of Technical Staff
>> 
>> The Aerospace Corporation
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/f8ea8838/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 11
> Date: Wed, 19 Jun 2019 12:52:53 -0700
> From: Ali Dormiani <sdormian@eng.ucsd.edu>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RX/TX on 4 channels on N310
> Message-ID:
>    <CANaxSipH1Jbs+utqwhbxWVsnzEvDjRv5tzS4oyXPWV5mT8-WaQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
> 
> What does your network setup look like? Could you please provide the SFP+
> card and the motherboard you are using on the host side?
> 
> Alternatively, if you are using some adapters (SFP+ to cat 6 RJ45 to
> thunderbolt) please provide that as well or instead.
> 
> Thanks,
> 
> Ali
> 
> On Wed, Jun 19, 2019 at 12:21 PM Nate Temple via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> 
>> Hi Jessica,
>> 
>> What sample rate are you trying to run at per channel?
>> 
>> I would suggest to use DPDK as it will remove a considerable overhead from
>> the Linux networking stack.
>> 
>> I can follow up with you off the list with some notes I have on getting
>> DPDK going, we have a pending app note that will be published soon on the
>> topic.
>> 
>> Regards,
>> Nate Temple
>> 
>> 
>> On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> 
>>> Hello,
>>> 
>>> 
>>> 
>>> I am getting a lot of underflows when trying to use dual RX/TX on 4
>>> channels on the N310. My application creates one multi_usrp object and 8
>>> streamers (4 RX, 4 TX) each on a different thread. Samples are received
>>> from the RX threads, put into buffers, and then transmitted in the TX
>>> threads. I can run it on 1 channel and 2 channels, but when I try using
>>> more channels, I get a ton of underflows. When I use 2 channels, I also
>>> have to specify the subdevice as ?A:0 B:0 A:1 B:1?, otherwise I will get a
>>> lot of underflows with the default subdevice spec of ?A:0 A:1 B:0 B:1?. I
>>> have tried the txrx_loopback_to_file example with 4 channels and it works
>>> fine, although this example only uses 2 streamers, each controlling 4
>>> channels. Any suggestions on what to try to make this work? I am using UHD
>>> v3.13.1.0-rc1.
>>> 
>>> 
>>> 
>>> Thanks,
>>> 
>>> 
>>> 
>>> Jessica Iwamoto
>>> 
>>> Member of Technical Staff
>>> 
>>> The Aerospace Corporation
>>> 
>>> 
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/da5dfb3c/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 12
> Date: Wed, 19 Jun 2019 14:18:31 -0700
> From: Nick Foster <bistromath@gmail.com>
> To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
> Subject: [USRP-users] Receiving response packets via UHD
> Message-ID:
>    <CA+JMMq8Vjq3sKBwAE11FBBKD0ZoSFS=McV-5njkL3U7LbskzYg@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
> 
> Hi all,
> 
> I've created an RFNoC block which sends back a response to indicate whether
> a transmission successfully occurred or not, via the cmdout interface of
> noc_shell. The Verilog is all fine and the testbench works using
> pull_resp_pkt() to retrieve the data. I'm wondering how to receive that
> same data in my host-side application. Do I need to create an rx streamer
> for the block? This block doesn't send any sample data back to the host,
> just the command response.
> 
> Any examples where I can see this done?
> 
> Thanks!
> Nick
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/104f73f9/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 13
> Date: Thu, 20 Jun 2019 08:56:28 +1000
> From: "Chris Gobbett" <gobbo@tpg.com.au>
> To: "Jason Matusiak" <jason@gardettoengineering.com>, "Ettus Mail
>    List" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <d69386c0f5b0f1339eee9da920334aed03a817ac@new-postoffice.tpg.com.au>
> Content-Type: text/plain; charset="utf-8"
> 
> ?
> Hi Jason,
> I've had luck with the following:- backup/clone the original SDCard
> image to disk and/or larger SDCard (using dd or otherwise)- on the new
> card, resize/shift the data partion to the end of the card (using
> gparted)- resize the two filesystem/kernel partitions to fill in the
> empty space in the middle, but they need to be the same size (using
> gparted)
> Read up on Mender for more info on the partition layout
> (https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout).
> It's a pain that they went with Mender for the default E320 card; it
> cuts the 'usable' file system space in half, at the benefit of having
> 2 independent filesystem partitions... I haven't had time to fiddle
> around and ditch the mender for a 'normal' partition layout, but I'd
> assume it's possible.
> Cheers,Chris
> 
> ----- Original Message -----
> From: "Jason Matusiak" 
> To:"Ettus Mail List" 
> Cc:
> Sent:Wed, 19 Jun 2019 16:29:38 +0000
> Subject:[USRP-users] E320 with larger SD card
> 
>    I wanted to use a larger SD card than the one that as supplied, but I
> am having issues.? I loaded up the card, and then extended the data
> partition to use up the rest of the free space (about 100GB).? But
> then it doesn't boot. 
> 
>    I am wondering if the change to a partition size screwed up something
> in a config file somewhere.? Is there a way to fix this without
> rebuilding a docker image?? I am using the UHD 3.14.0.0. that has the
> smaller data partition (UHD 3.14.1.0 has a larger data partition, but
> doesn't include any GR/python packages, so I need to use the older
> image). 
> 
>    Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/3b4fd1f1/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 14
> Date: Wed, 19 Jun 2019 23:12:40 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: Chris Gobbett <gobbo@tpg.com.au>
> Cc: Ettus Mail List <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>
> Content-Type: text/plain; charset="utf-8"
> 
> Chris, thanks for the tips.
> 
> So I put a fresh load on a card, then used gparted to extend the data partition to fill things out. That isn't enough, and your instructions certainly show more steps. But I don't understand what you mean with the partitions in the middle.
> 
> I'll read up on Mender and see if that answers it for me. Thanks again.
> On Jun 19, 2019, at 6:56 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:gobbo@tpg.com.au>> wrote:
> 
> Hi Jason,
> 
> I've had luck with the following:
> - backup/clone the original SDCard image to disk and/or larger SDCard (using dd or otherwise)
> - on the new card, resize/shift the data partion to the end of the card (using gparted)
> - resize the two filesystem/kernel partitions to fill in the empty space in the middle, but they need to be the same size (using gparted)
> 
> Read up on Mender for more info on the partition layout (https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout). It's a pain that they went with Mender for the default E320 card; it cuts the 'usable' file system space in half, at the benefit of having 2 independent filesystem partitions... I haven't had time to fiddle around and ditch the mender for a 'normal' partition layout, but I'd assume it's possible.
> 
> Cheers,
> Chris
> 
> 
> 
> ----- Original Message -----
> From:
> "Jason Matusiak" <jason@gardettoengineering.com>
> 
> To:
> "Ettus Mail List" <usrp-users@lists.ettus.com>
> Cc:
> 
> Sent:
> Wed, 19 Jun 2019 16:29:38 +0000
> Subject:
> [USRP-users] E320 with larger SD card
> 
> 
> 
> I wanted to use a larger SD card than the one that as supplied, but I am having issues.  I loaded up the card, and then extended the data partition to use up the rest of the free space (about 100GB).  But then it doesn't boot.
> 
> 
> I am wondering if the change to a partition size screwed up something in a config file somewhere.  Is there a way to fix this without rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the smaller data partition (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/python packages, so I need to use the older image).
> 
> 
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/3d56798d/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 15
> Date: Thu, 20 Jun 2019 10:21:08 +1000
> From: "Chris Gobbett" <gobbo@tpg.com.au>
> To: "Jason Matusiak" <jason@gardettoengineering.com>, "Ettus List"
>    <usrp-users@lists.ettus.com>
> Cc: "Ettus Mail List" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <89fd7840a5b67527cbfe0709d2cbcf0ccc3c9311@new-postoffice.tpg.com.au>
> Content-Type: text/plain; charset="utf-8"
> 
> ?
> My understanding of the partiitons on the card are (in order);
> 
> Mender allows you to boot from one of the A/B partitions as your
> primary filesystem (mounted as /), plus the persistent data (mounted
> as /home/ or /data or similar).?
> My experience is if you perform resizing while keeping the partitions
> contiguous (no free space between them), and have the A and B
> partitions identical in size, it "just works". So my steps in the
> previous reply would look like:? ?? # original image on large SD
> Card? ?? # shift persistent data to the end? ?? # maximise A/B
> partitions, keeping A and B the same size
> Rather than extending the data partition, I wanted to add new
> libraries and applications in /usr, which is located on the A/B
> partitions. Hence my instructions involve me resizing those partitions
> instead of the data partition.?
> If you're simply extending the size of the persistent data partition
> without shifting it's start point (while leaving the other partitions
> alone) I'm at a loss as to why it wouldn't work. But when you do this
> you may need some extra linux-fu to shift your new binary/library
> locations to that partition rather than the default /usr.
> Cheers,Chris
> 
> ----- Original Message -----
> From: "Jason Matusiak" 
> To:"Chris Gobbett" 
> Cc:"Ettus Mail List" 
> Sent:Wed, 19 Jun 2019 23:12:40 +0000
> Subject:Re: [USRP-users] E320 with larger SD card
> 
> Chris, thanks for the tips.
> 
> So I put a fresh load on a card, then used gparted to extend the data
> partition to fill things out. That isn't enough, and your instructions
> certainly show more steps. But I don't understand what you mean with
> the partitions in the middle. 
> 
> I'll read up on Mender and see if that answers it for me. Thanks
> again. On Jun 19, 2019, at 6:56 PM, Chris Gobbett  wrote:  ? 
> Hi Jason, 
> I've had luck with the following:  - backup/clone the original SDCard
> image to disk and/or larger SDCard (using dd or otherwise)  - on the
> new card, resize/shift the data partion to the end of the card (using
> gparted)  - resize the two filesystem/kernel partitions to fill in the
> empty space in the middle, but they need to be the same size (using
> gparted)  
> Read up on Mender for more info on the partition layout
> (https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout).
> It's a pain that they went with Mender for the default E320 card; it
> cuts the 'usable' file system space in half, at the benefit of having
> 2 independent filesystem partitions... I haven't had time to fiddle
> around and ditch the mender for a 'normal' partition layout, but I'd
> assume it's possible.  
> Cheers,  Chris  
> 
> ----- Original Message ----- 
> From:  "Jason Matusiak"   
> To:  "Ettus Mail List"  
> Cc:  
> Sent:  Wed, 19 Jun 2019 16:29:38 +0000 
> Subject:  [USRP-users] E320 with larger SD card 
> 
>    I wanted to use a larger SD card than the one that as supplied, but I
> am having issues.? I loaded up the card, and then extended the data
> partition to use up the rest of the free space (about 100GB).? But
> then it doesn't boot. 
> 
>    I am wondering if the change to a partition size screwed up something
> in a config file somewhere.? Is there a way to fix this without
> rebuilding a docker image?? I am using the UHD 3.14.0.0. that has the
> smaller data partition (UHD 3.14.1.0 has a larger data partition, but
> doesn't include any GR/python packages, so I need to use the older
> image). 
> 
>    Thanks.      
> 
> Links:
> ------
> [1] mailto:gobbo@tpg.com.au
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/60106c14/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 16
> Date: Thu, 20 Jun 2019 00:32:30 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: Chris Gobbett <gobbo@tpg.com.au>
> Cc: Ettus List <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <ee9bf2f5-4fa1-4fa2-b213-c3da7cc1dacb@gardettoengineering.com>
> Content-Type: text/plain; charset="utf-8"
> 
> OK, I see now what you were doing different. I think I could deal with leaving the /data partition the same size and increasing the two filesystems. I was just trying to save myself the hassle of performing a mender update down the road and forgetting that the data in ~/ wasn't persistent.
> 
> I guess it is something to try for now (tomorrow), and then flesh out the /data problem after having a better understanding of what is going on (hopefully).
> On Jun 19, 2019, at 8:21 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:gobbo@tpg.com.au>> wrote:
> 
> My understanding of the partiitons on the card are (in order);
> 
> <boot><filesystem+kernel A><filesystem+kernel B><persistent data><empty space>
> 
> Mender allows you to boot from one of the A/B partitions as your primary filesystem (mounted as /), plus the persistent data (mounted as /home/ or /data or similar).
> 
> My experience is if you perform resizing while keeping the partitions contiguous (no free space between them), and have the A and B partitions identical in size, it "just works". So my steps in the previous reply would look like:
>   <boot><filesystem+kernel A><filesystem+kernel B><persistent data><----------empty space--------------->  # original image on large SD Card
>   <boot><filesystem+kernel A><filesystem+kernel B><-------------empty space------------><persistent data>  # shift persistent data to the end
>   <boot><----------filesystem+kernel A---------><----------filesystem+kernel B---------><persistent data>  # maximise A/B partitions, keeping A and B the same size
> 
> Rather than extending the data partition, I wanted to add new libraries and applications in /usr, which is located on the A/B partitions. Hence my instructions involve me resizing those partitions instead of the data partition.
> 
> If you're simply extending the size of the persistent data partition without shifting it's start point (while leaving the other partitions alone) I'm at a loss as to why it wouldn't work. But when you do this you may need some extra linux-fu to shift your new binary/library locations to that partition rather than the default /usr.
> 
> Cheers,
> Chris
> 
> ----- Original Message -----
> From:
> "Jason Matusiak" <jason@gardettoengineering.com>
> 
> To:
> "Chris Gobbett" <gobbo@tpg.com.au>
> Cc:
> "Ettus Mail List" <usrp-users@lists.ettus.com>
> Sent:
> Wed, 19 Jun 2019 23:12:40 +0000
> Subject:
> Re: [USRP-users] E320 with larger SD card
> 
> 
> Chris, thanks for the tips.
> 
> So I put a fresh load on a card, then used gparted to extend the data partition to fill things out. That isn't enough, and your instructions certainly show more steps. But I don't understand what you mean with the partitions in the middle.
> 
> I'll read up on Mender and see if that answers it for me. Thanks again.
> On Jun 19, 2019, at 6:56 PM, Chris Gobbett < gobbo@tpg.com.au<mailto:gobbo@tpg.com.au>> wrote:
> 
> Hi Jason,
> 
> I've had luck with the following:
> - backup/clone the original SDCard image to disk and/or larger SDCard (using dd or otherwise)
> - on the new card, resize/shift the data partion to the end of the card (using gparted)
> - resize the two filesystem/kernel partitions to fill in the empty space in the middle, but they need to be the same size (using gparted)
> 
> Read up on Mender for more info on the partition layout (https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout). It's a pain that they went with Mender for the default E320 card; it cuts the 'usable' file system space in half, at the benefit of having 2 independent filesystem partitions... I haven't had time to fiddle around and ditch the mender for a 'normal' partition layout, but I'd assume it's possible.
> 
> Cheers,
> Chris
> 
> 
> 
> ----- Original Message -----
> From:
> "Jason Matusiak" <jason@gardettoengineering.com>
> 
> To:
> "Ettus Mail List" <usrp-users@lists.ettus.com>
> Cc:
> 
> Sent:
> Wed, 19 Jun 2019 16:29:38 +0000
> Subject:
> [USRP-users] E320 with larger SD card
> 
> 
> 
> I wanted to use a larger SD card than the one that as supplied, but I am having issues.  I loaded up the card, and then extended the data partition to use up the rest of the free space (about 100GB).  But then it doesn't boot.
> 
> 
> I am wondering if the change to a partition size screwed up something in a config file somewhere.  Is there a way to fix this without rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the smaller data partition (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/python packages, so I need to use the older image).
> 
> 
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/3ce8841b/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 17
> Date: Thu, 20 Jun 2019 10:48:40 +0000
> From: "Koyel Das (Vehere)" <koyel.das@vehere.com>
> To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
> Subject: [USRP-users] USRP gain refers to which amplifier
> Message-ID:
>    <BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM>
>    
> Content-Type: text/plain; charset="windows-1252"
> 
> Hi,
> 
> 
> When we set the gain of USRP does that mean we are increasing the gain of amplifier just after the antenna or the gain is spread across various amplifiers in the chain?
> 
> 
> Regards,
> 
> Koyel Das
> Senior ? Product Engineer
> 
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.com<http://www.vehere.com/>
> 
> [unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnamed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.facebook.com/VehereIndia/>
> 
> Vehere is the proud recipient of the Fastest Growing Technology Company Awards in India & Asia since 2012!
> 
> The content of this e-mail is confidential and intended solely for the use of the addressee. The text of this email (including any attachments) may contain information, which is proprietary and/or confidential or privileged in nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are not the addressee, or the person responsible for delivering it to the addressee, any disclosure, copying, distribution or any action taken or omitted to be taken in reliance on it is prohibited and may be unlawful. If you have received this e-mail in error, please notify the sender and remove this communication entirely from your system. The recipient acknowledges that no guarantee or any warranty is given as to completeness and accuracy of the content of the email. The recipient further acknowledges that the views contained in the email message are those of the sender and may not necessarily reflect those of Vehere Interactive Pvt Ltd. Before opening and accessing the attachment please check and scan for virus. WARNING: Computer viruses can be transmitted via email. The recipient should check this email and any attachments for the presence of viruses. The company accepts no liability for any damage caused by any virus transmitted by this email.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/fbcbea02/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 18
> Date: Thu, 20 Jun 2019 13:19:22 +0200
> From: Fabian Schwartau <fabian@opencode.eu>
> To: usrp-users <usrp-users@lists.ettus.com>
> Subject: [USRP-users] unsubscribe
> Message-ID: <82c62871-038f-5676-1c5e-c1c2adecde88@opencode.eu>
> Content-Type: text/plain; charset=utf-8; format=flowed
> 
> 
> 
> 
> ------------------------------
> 
> Message: 19
> Date: Thu, 20 Jun 2019 10:08:41 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] USRP gain refers to which amplifier
> Message-ID: <5D0B9369.5050401@gmail.com>
> Content-Type: text/plain; charset="windows-1252"; Format="flowed"
> 
>> On 06/20/2019 06:48 AM, Koyel Das (Vehere) via USRP-users wrote:
>> 
>> Hi,
>> 
>> 
>> When we set the gain of USRP does that mean we are increasing the gain 
>> of amplifier just after the antenna or the gain is spread across 
>> various amplifiers in the chain?
>> 
>> 
>> Regards,
>> 
>> Koyel Das
>> Senior ? Product Engineer
>> 
>> Vehere | Proactive Communications Intelligence & Cyber Defence
>> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: 
>> www.vehere.com <http://www.vehere.com/>/
>> /
> /It depends very much on exactly which USRP and daughterboard is in use.
> 
> By default, the set-gain function will make "sensible" decisions about 
> distributing gain over the various elements in whatever hardware
>   it's dealing with.
> 
> See:
> 
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049ed3d0f5fc96e87b2a
> 
> and:
> 
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675aa796e030bd8a03e
> 
> and:
> 
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11
> 
> 
> /
>> //
>> /unnamed 
>> <https://www.linkedin.com/company/vehere-interactive-p-ltd>unnamed (1) 
>> <https://twitter.com/VehereIndia>unnamed (2) 
>> <https://www.facebook.com/VehereIndia/>
>> 
>> Vehere is the proud recipient of the Fastest Growing Technology 
>> Company Awards in India & Asia since 2012!/
>> 
>> The content of this e-mail is confidential and intended solely for the 
>> use of the addressee. The text of this email (including any 
>> attachments) may contain information, which is proprietary and/or 
>> confidential or privileged in nature belonging to Vehere Interactive 
>> Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you 
>> are not the addressee, or the person responsible for delivering it to 
>> the addressee, any disclosure, copying, distribution or any action 
>> taken or omitted to be taken in reliance on it is prohibited and may 
>> be unlawful. If you have received this e-mail in error, please notify 
>> the sender and remove this communication entirely from your system. 
>> The recipient acknowledges that no guarantee or any warranty is given 
>> as to completeness and accuracy of the content of the email. The 
>> recipient further acknowledges that the views contained in the email 
>> message are those of the sender and may not necessarily reflect those 
>> of Vehere Interactive Pvt Ltd. Before opening and accessing the 
>> attachment please check and scan for virus. WARNING: Computer viruses 
>> can be transmitted via email. The recipient should check this email 
>> and any attachments for the presence of viruses. The company accepts 
>> no liability for any damage caused by any virus transmitted by this email.
>> 
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/f5c18a69/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 20
> Date: Thu, 20 Jun 2019 14:24:36 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: Chris Gobbett <gobbo@tpg.com.au>, Ettus List
>    <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>    <BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40@BL0PR12MB2340.namprd12.prod.outlook.com>
>    
> Content-Type: text/plain; charset="iso-8859-1"
> 
> OK, I thought I had it, but it is still not working.  Here are some new details though.
> 
> 
> I load up a fresh SD card (I've tried both bmaptools as well as dd).  I toss it into my E320 and it boots up happy as pie.  I do a proper shutdown and put it back into my host PC.  I unmount and then using gparted I extend the data partition. I put the SD card back into the E320 and it boots up fine.  dh is showing that the partition is the new larger size and uhd_find_devices works, so I am happy there.  I reboot and all is gravy.  I shutdown -h now and power-up and all is gravy.
> 
> 
> I then create a folder in /data called localinstall.  Shutdown and then boot up, all is fine.
> 
> 
> I install my cross-compiled uhd into that folder.  I issue a shutdown -h now command and it seems to shutdown fine.  Then it never powers up again.  It really feels like even though the partition shows up as the new size on the device, that I am overwriting the small partition size and screwing things up...
> 
> 
> ________________________________
> From: Chris Gobbett <gobbo@tpg.com.au>
> Sent: Wednesday, June 19, 2019 8:21 PM
> To: Jason Matusiak; Ettus List
> Cc: Ettus Mail List
> Subject: Re: [USRP-users] E320 with larger SD card
> 
> 
> My understanding of the partiitons on the card are (in order);
> 
> <boot><filesystem+kernel A><filesystem+kernel B><persistent data><empty space>
> 
> Mender allows you to boot from one of the A/B partitions as your primary filesystem (mounted as /), plus the persistent data (mounted as /home/ or /data or similar).
> 
> My experience is if you perform resizing while keeping the partitions contiguous (no free space between them), and have the A and B partitions identical in size, it "just works". So my steps in the previous reply would look like:
>   <boot><filesystem+kernel A><filesystem+kernel B><persistent data><----------empty space--------------->  # original image on large SD Card
>   <boot><filesystem+kernel A><filesystem+kernel B><-------------empty space------------><persistent data>  # shift persistent data to the end
>   <boot><----------filesystem+kernel A---------><----------filesystem+kernel B---------><persistent data>  # maximise A/B partitions, keeping A and B the same size
> 
> Rather than extending the data partition, I wanted to add new libraries and applications in /usr, which is located on the A/B partitions. Hence my instructions involve me resizing those partitions instead of the data partition.
> 
> If you're simply extending the size of the persistent data partition without shifting it's start point (while leaving the other partitions alone) I'm at a loss as to why it wouldn't work. But when you do this you may need some extra linux-fu to shift your new binary/library locations to that partition rather than the default /usr.
> 
> Cheers,
> Chris
> 
> ----- Original Message -----
> From:
> "Jason Matusiak" <jason@gardettoengineering.com>
> 
> To:
> "Chris Gobbett" <gobbo@tpg.com.au>
> Cc:
> "Ettus Mail List" <usrp-users@lists.ettus.com>
> Sent:
> Wed, 19 Jun 2019 23:12:40 +0000
> Subject:
> Re: [USRP-users] E320 with larger SD card
> 
> 
> Chris, thanks for the tips.
> 
> So I put a fresh load on a card, then used gparted to extend the data partition to fill things out. That isn't enough, and your instructions certainly show more steps. But I don't understand what you mean with the partitions in the middle.
> 
> I'll read up on Mender and see if that answers it for me. Thanks again.
> On Jun 19, 2019, at 6:56 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:gobbo@tpg.com.au>> wrote:
> 
> Hi Jason,
> 
> I've had luck with the following:
> - backup/clone the original SDCard image to disk and/or larger SDCard (using dd or otherwise)
> - on the new card, resize/shift the data partion to the end of the card (using gparted)
> - resize the two filesystem/kernel partitions to fill in the empty space in the middle, but they need to be the same size (using gparted)
> 
> Read up on Mender for more info on the partition layout (https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout). It's a pain that they went with Mender for the default E320 card; it cuts the 'usable' file system space in half, at the benefit of having 2 independent filesystem partitions... I haven't had time to fiddle around and ditch the mender for a 'normal' partition layout, but I'd assume it's possible.
> 
> Cheers,
> Chris
> 
> 
> 
> ----- Original Message -----
> From:
> "Jason Matusiak" <jason@gardettoengineering.com>
> 
> To:
> "Ettus Mail List" <usrp-users@lists.ettus.com>
> Cc:
> 
> Sent:
> Wed, 19 Jun 2019 16:29:38 +0000
> Subject:
> [USRP-users] E320 with larger SD card
> 
> 
> 
> I wanted to use a larger SD card than the one that as supplied, but I am having issues.  I loaded up the card, and then extended the data partition to use up the rest of the free space (about 100GB).  But then it doesn't boot.
> 
> 
> I am wondering if the change to a partition size screwed up something in a config file somewhere.  Is there a way to fix this without rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the smaller data partition (UHD 3.14.1.0 has a larger data partition, but doesn't include any GR/python packages, so I need to use the older image).
> 
> 
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/bade3764/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 21
> Date: Thu, 20 Jun 2019 10:29:40 -0400
> From: Zhihong Luo <zhluo@umich.edu>
> To: Zhihong Luo via USRP-users <USRP-users@lists.ettus.com>
> Subject: [USRP-users] unsubscribe
> Message-ID:
>    <CAH4wXLrjq=fk5ad7y-t_LLVDj90Xa4o12Z6poPWoVXhBSNwCPw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
> 
> 
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/36e503ce/attachment-0001.html>
> 
> ------------------------------
> 
> Subject: Digest Footer
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
> 
> ------------------------------
> 
> End of USRP-users Digest, Vol 106, Issue 21
> *******************************************

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
