Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CBD52803
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 11:26:25 +0200 (CEST)
Received: from [::1] (port=43078 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hfhiT-0003Xo-Vf; Tue, 25 Jun 2019 05:26:18 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:32771)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1hfhiP-0003Rf-ER
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 05:26:13 -0400
Received: by mail-io1-f48.google.com with SMTP id u13so163870iop.0
 for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2019 02:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1btsU5q8OUmJiJu9wacNcoep0gA2WH6cClIZ6PeunPU=;
 b=Me4ArPH8MhPFtW805TxT6Pb7lJNSBdk9aBZ5bpYV4ImHpqtTw8Y2vJMwjPeubO7RSo
 aOFA7BRRhCAxOIwK2g73l/EKg1j0CntxQ2LQUbmfVsBj3V1BWgLZ2PUEfreQs1DHukBE
 CO4Qqlfmw6I4EgezxgkU2Siy3oJ/F9H6A7a8k9hEmbzRX+Nbv/pV56Yf+hHiMVGcFSKq
 qJ9dtvfDJVf+phxIsxtZL74j3UJ5NaqjZfpsPSyvok/HJ2QXWZ/pSPoGu+ppF40BzHKz
 6bWWRsvM+VvrzN7Mj/Amw/Gples5u/gXWKCLTYYypk0dlbnsNIUiewmtLeV4/Lc7zAlb
 KJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1btsU5q8OUmJiJu9wacNcoep0gA2WH6cClIZ6PeunPU=;
 b=tbzEBXDoTeZynOG+GsQGY5oGmdq5tUUiDrOpje+urS6VELiXtg5S8PHCIj0xoIaxUv
 R99laLhjuGIqj803E5RtWz0ruULWE5a2IqdPGvwyEwT8JLn2dxMw7/w0QZRM67MVMgNm
 JMMAjaGyyUxna2WGjzcu6KcBJD1BeXICJrcE2FIjPzalS30dD8iGKpKnjF93HAK8Fb7V
 HGcpCNq+rsKqGV1vXvANucAJRn+gCl3VVc1iIsGpLBqxH3K+EiGmDNKlpRTmjC9/YZ/4
 pjb/MtZn0fVUSRHjAmC/PtENmUoShx7UyaoQhbHoiMlRk7iKQiKmvatWCjjrsPfRwFKg
 uVlA==
X-Gm-Message-State: APjAAAWx54lRx4U6NLfvmgQPQxh6FjMavW2lkJ5unN9JD7/JLQ/xlmKe
 vIXvFkAWIRfvyCb8O0Bi1aRJkpOUPxrTvFAm6ak55w==
X-Google-Smtp-Source: APXvYqwYqBkZ0zsw2mrNVKDv7I9qUTSY6TG9uZnxYQeZtJf8d3NX8Gyn7+oLbUGDMy+R9myarkJWfOmTgnJnsIx13a8=
X-Received: by 2002:a6b:f00c:: with SMTP id w12mr6715713ioc.280.1561454732139; 
 Tue, 25 Jun 2019 02:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.63.1561046404.5844.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQHLo3kztZeL3GcTL-_WoKL9pQ4JEQqkfV3N448MnO9epA@mail.gmail.com>
 <BL0PR12MB23401D2716A25615D51A1868AFE70@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23401D2716A25615D51A1868AFE70@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Tue, 25 Jun 2019 10:24:38 +0200
Message-ID: <CALSxwQEZsdfWzG39zhCo6w4PBs4++zc+gdhs9X_j=AroxQMRXA@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
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
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2177737285652883315=="
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

--===============2177737285652883315==
Content-Type: multipart/alternative; boundary="000000000000a461d4058c22828c"

--000000000000a461d4058c22828c
Content-Type: text/plain; charset="UTF-8"

Dear Jason,

Thank you for your reply and sorry for second email.
I thought that with first email, I had made a mistake and for this reason,
I sent other email.

Is there a way to get the licence for Design Edition or System Edition for
student?
And, the project in Vivado corrisponds at the image?

Thank you in advance, and sorry again.

Best Regards,

Simona

Il giorno ven 21 giu 2019 alle ore 12:50 Jason Matusiak <
jason@gardettoengineering.com> ha scritto:

> Simona,
>
> I suggest sending just the one email and then waiting on a response.  It
> could take hours or a few days, but people on here generally are super
> helpful where they can.
>
> Do you have a Vivado license?  You are definitely going to need one for
> the X310 build (the webpack won't work).
>
> Have you read through this link, it is very helpful:
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
>
>
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Friday, June 21, 2019 7:43 AM
> *To:* USRP Users
> *Subject:* Re: [USRP-users] USRP-users Digest, Vol 106, Issue 21
>
> Dear all,
>
> I would work on the X310 with Vivado Xilinx.
> I have dowloaded all requirements but when I tried with make
> X310_RFNOC_HG, I have the following error message:
>
> make X310_RFNOC_HG
> make -f Makefile.x300.inc bin NAME=X310_RFNOC_HG ARCH=kintex7
> PART_ID=xc7k410t/ffg900/-2 BUILD_1G=1 BUILD_10G=1 SFP0_1GBE=1 SFP1_10GBE=1
>  RFNOC=1 X310=1 TOP_MODULE=x300 EXTRA_DEFS="BUILD_1G=1 BUILD_10G=1
> SFP0_1GBE=1 SFP1_10GBE=1  RFNOC=1 X310=1"
> make[1]: Entering directory
> '/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300'
> BUILDER: Checking tools...
> * GNU bash, version 4.4.19(1)-release (x86_64-pc-linux-gnu)
> * Python 2.7.15rc1
> * Vivado v2018.3 (64-bit)
> ========================================================
> BUILDER: Building IP ten_gig_eth_pcs_pma
> ========================================================
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location:
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
> BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/tools/scripts/viv_generate_ip.tcl
> -log ten_gig_eth_pcs_pma.log -nojournal
> WARNING: [Device 21-436] No parts matched 'xc7k410tffg900-2'
> ERROR: [Coretcl 2-106] Specified part could not be found.
> [00:00:06] Current task: Initialization +++ Current Phase: Starting
> [00:00:06] Current task: Initialization +++ Current Phase: Finished
> [00:00:06] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           1
> Critical Warnings:  0
> Errors:             1
>
> BUILDER: Releasing IP location:
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma
> /home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/ip/ten_gig_eth_pcs_pma/Makefile.inc:41:
> recipe for target
> '/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out'
> failed
> make[1]: ***
> [/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out]
> Error 1
> make[1]: Leaving directory
> '/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300'
> Makefile:112: recipe for target 'X310_RFNOC_HG' failed
> make: *** [X310_RFNOC_HG] Error 2
>
>
> Could you help me?
> Is it a licence problem?
> I have installed the WebPACK 2018.3.
>
> Thank you in advance.
> Best Regards,
>
> Simona
>
> Il giorno gio 20 giu 2019 alle ore 17:00 <
> usrp-users-request@lists.ettus.com> ha scritto:
>
> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>    1. E320 with larger SD card (Jason Matusiak)
>    2. Re: E320 with larger SD card (Marcus D. Leech)
>    3. Re: E320 with larger SD card (Jason Matusiak)
>    4. Re: E320 with larger SD card (Nate Temple)
>    5. Re: RFNoC multi-driven nets (Mitch Davis)
>    6. Re: Registering Block Controllers to UHD (Christian Valledor)
>    7. Re: RFNoC multi-driven nets (Roberto Michio Marques Kagami)
>    8. Re: Waveform Shape Not Accurate (Marcus D. Leech)
>    9. RX/TX on 4 channels on N310 (Jessica Iwamoto)
>   10. Re: RX/TX on 4 channels on N310 (Nate Temple)
>   11. Re: RX/TX on 4 channels on N310 (Ali Dormiani)
>   12. Receiving response packets via UHD (Nick Foster)
>   13. Re: E320 with larger SD card (Chris Gobbett)
>   14. Re: E320 with larger SD card (Jason Matusiak)
>   15. Re: E320 with larger SD card (Chris Gobbett)
>   16. Re: E320 with larger SD card (Jason Matusiak)
>   17. USRP gain refers to which amplifier (Koyel Das (Vehere))
>   18. unsubscribe (Fabian Schwartau)
>   19. Re: USRP gain refers to which amplifier (Marcus D. Leech)
>   20. Re: E320 with larger SD card (Jason Matusiak)
>   21. unsubscribe (Zhihong Luo)
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
>         <
> BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com
> >
>
> Content-Type: text/plain; charset="iso-8859-1"
>
> I wanted to use a larger SD card than the one that as supplied, but I am
> having issues.  I loaded up the card, and then extended the data partition
> to use up the rest of the free space (about 100GB).  But then it doesn't
> boot.
>
>
> I am wondering if the change to a partition size screwed up something in a
> config file somewhere.  Is there a way to fix this without rebuilding a
> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> any GR/python packages, so I need to use the older image).
>
>
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/8b9fdfc4/attachment-0001.html
> >
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
> On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
> >
> > I wanted to use a larger SD card than the one that as supplied, but I
> > am having issues.  I loaded up the card, and then extended the data
> > partition to use up the rest of the free space (about 100GB). But then
> > it doesn't boot.
> >
> What steps did you take to extend the partition?
>
>
> >
> > I am wondering if the change to a partition size screwed up something
> > in a config file somewhere.  Is there a way to fix this without
> > rebuilding a docker image?  I am using the UHD 3.14.0.0. that has the
> > smaller data partition (UHD 3.14.1.0 has a larger data partition, but
> > doesn't include any GR/python packages, so I need to use the older
> image).
> >
> >
> > Thanks.
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/15fd5a32/attachment-0001.html
> >
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
>         <
> BL0PR12MB2340261564BEEC740712C9BCAFE50@BL0PR12MB2340.namprd12.prod.outlook.com
> >
>
> Content-Type: text/plain; charset="iso-8859-1"
>
> I used bmaptool to write the image and I used gparted to extend it.  I
> just tried again and still no dice.
>
>
> I just tried to boot with the serial terminal on and I see this on the
> screen (no LED ever comes on):
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
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus
> D. Leech via USRP-users <usrp-users@lists.ettus.com>
> Sent: Wednesday, June 19, 2019 12:33 PM
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] E320 with larger SD card
>
> On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
>
> I wanted to use a larger SD card than the one that as supplied, but I am
> having issues.  I loaded up the card, and then extended the data partition
> to use up the rest of the free space (about 100GB).  But then it doesn't
> boot.
>
> What steps did you take to extend the partition?
>
>
>
>
> I am wondering if the change to a partition size screwed up something in a
> config file somewhere.  Is there a way to fix this without rebuilding a
> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> any GR/python packages, so I need to use the older image).
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
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/6087cb21/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 4
> Date: Wed, 19 Jun 2019 09:53:11 -0700
> From: Nate Temple <nate.temple@ettus.com>
> To: Jason Matusiak <jason@gardettoengineering.com>
> Cc: "Marcus D. Leech" <patchvonbraun@gmail.com>, Ettus Mail List
>         <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>         <
> CAL263ixsgxh+N9fO0YH8ELC2ChMQJ18RQGRrmZpHxDt84xZBfw@mail.gmail.com>
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
> > I used bmaptool to write the image and I used gparted to extend it.  I
> > just tried again and still no dice.
> >
> >
> > I just tried to boot with the serial terminal on and I see this on the
> > screen (no LED ever comes on):
> >
> >
> > U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)
> > mmc boot
> > Trying to boot from MMC1
> > reading u-boot.img
> > reading u-boot.img
> >
> >
> > U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)
> >
> > Model: NI Ettus Research Project NEON SDR
> > DRAM:  ECC disabled 1 GiB
> > MMC:   sdhci@e0100000: 0
> >
> >
> >
> >
> >
> > ------------------------------
> > *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> > Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> > *Sent:* Wednesday, June 19, 2019 12:33 PM
> > *To:* usrp-users@lists.ettus.com
> > *Subject:* Re: [USRP-users] E320 with larger SD card
> >
> > On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:
> >
> > I wanted to use a larger SD card than the one that as supplied, but I am
> > having issues.  I loaded up the card, and then extended the data
> partition
> > to use up the rest of the free space (about 100GB).  But then it doesn't
> > boot.
> >
> > What steps did you take to extend the partition?
> >
> >
> >
> > I am wondering if the change to a partition size screwed up something in
> a
> > config file somewhere.  Is there a way to fix this without rebuilding a
> > docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> > partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> > any GR/python packages, so I need to use the older image).
> >
> >
> > Thanks.
> >
> >
> > _______________________________________________
> > USRP-users mailing listUSRP-users@lists.ettus.comhttp://
> lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/050ac803/attachment-0001.html
> >
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
>         <
> 861fdd8b6fef8a1f7af3efa3784be59a47e4c882.camel@silverblocksystems.net>
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
> On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
> > Hello, Mitch!
> >
> > I've faced the same problem.
> > I've tried the first commit after f6890f22 including Vivado version
> > 2018.3 and the error is the same.
> > Did you received any reply for this failure?
> > I would appreciate any information.
> > Thanks!
> >
> > Regards,
> > Roberto Kagami
> > De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
> > Davis via USRP-users <usrp-users@lists.ettus.com>
> > Enviado: segunda-feira, 17 de junho de 2019 15:44:07
> > Para: usrp-users@lists.ettus.com
> > Assunto: Re: [USRP-users] RFNoC multi-driven nets
> >
> > My apologies for not connecting this message to the OP, I didn't
> > register this email account to the list until after the post.
> > However,
> > Peter had posted that he was having issues building the latest X310
> > RFNOC image (with an RFNOC block) with an error of multiple-drivers
> > on
> > two nets (ce_clk and ce_rst):
> >
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html
> >
> > I too encountered this same error.
> >
> > On a hunch, I reverted the repo to the commit just before the Vivado
> > 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
> >
> > I was able to build the X310 RFNOC image with an RFNOC block using
> > that
> > commit without failure.
> >
> > I haven't attempted a bisection yet.  Is there anyone else that has
> > observed similar build failures?
> >
> >
> > Regards,
> >
> > Mitch Davis
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
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
>         <CACV8bbfLvEX5UF+yor_YifbiwnokjxR5A=
> yi2nCYvMHHXJjW+w@mail.gmail.com>
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
> On Wed, Jun 19, 2019 at 9:46 AM Nick Foster <bistromath@gmail.com> wrote:
>
> > This thread might be helpful:
> >
> > https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html
> >
> > Nick
> >
> > On Wed, Jun 19, 2019 at 6:35 AM Christian Valledor via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> >
> >> Hi All,
> >>
> >> I'm developing a few custom RFNoC Blocks for a UHD application I'm
> >> working on, and I've hit a snag getting UHD to work with my block
> >> controllers. Note that I went the C++ route instead of using nocscript
> and
> >> the default block controller to handle some more complex cases.
> >>
> >> The only way I have been able to get my application to work is if I move
> >> my custom controller files into the UHD directory, and re-compile.
> >> Otherwise it sees my block and XML, but doesn't register a key, and
> loads
> >> the default block controller.
> >>
> >> Is there another way to get UHD to play nice with my block without
> >> re-compiling it each time?
> >>
> >> thanks,
> >> -Christian
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/61a76c1f/attachment-0001.html
> >
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
>         <
> BY5PR02MB6019B8459D7FAAC62880BBF5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com
> >
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
> On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:
> > Hello, Mitch!
> >
> > I've faced the same problem.
> > I've tried the first commit after f6890f22 including Vivado version
> > 2018.3 and the error is the same.
> > Did you received any reply for this failure?
> > I would appreciate any information.
> > Thanks!
> >
> > Regards,
> > Roberto Kagami
> > De: USRP-users <usrp-users-bounces@lists.ettus.com> em nome de Mitch
> > Davis via USRP-users <usrp-users@lists.ettus.com>
> > Enviado: segunda-feira, 17 de junho de 2019 15:44:07
> > Para: usrp-users@lists.ettus.com
> > Assunto: Re: [USRP-users] RFNoC multi-driven nets
> >
> > My apologies for not connecting this message to the OP, I didn't
> > register this email account to the list until after the post.
> > However,
> > Peter had posted that he was having issues building the latest X310
> > RFNOC image (with an RFNOC block) with an error of multiple-drivers
> > on
> > two nets (ce_clk and ce_rst):
> >
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/060013.html
> >
> > I too encountered this same error.
> >
> > On a hunch, I reverted the repo to the commit just before the Vivado
> > 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0
> >
> > I was able to build the X310 RFNOC image with an RFNOC block using
> > that
> > commit without failure.
> >
> > I haven't attempted a bisection yet.  Is there anyone else that has
> > observed similar build failures?
> >
> >
> > Regards,
> >
> > Mitch Davis
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/dfa72556/attachment-0001.html
> >
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
> On 06/19/2019 08:24 AM, Simona Sibio via USRP-users wrote:
> > In attachment, there is the flowgraph on GNU radio.
> > In the previous email, I meat that the result is the same regarding
> > the amplitude accuracy, not regarding the value.
> > When I change the amplitude or the gain on GNU radio, also the
> > amplitude changes in the oscilloscope.
> >
> > Thank you for your time.
> >
> > Simona
> What happens if, instead of using a constant, using a 10kHz tone, and
> offset your Fc by 10kHz, does it look better then?
>
>
> >
> > Il giorno mer 19 giu 2019 alle ore 13:00 Nick Foster
> > <bistromath@gmail.com <mailto:bistromath@gmail.com>> ha scritto:
> >
> >     Can you post the flowgraph you're using again? If you changed
> >     transmit gain and amplitude, the result should have changed in
> >     amplitude, while the image you just sent has the fame magnitude
> >     the last one did.
> >
> >     On Wed, Jun 19, 2019, 5:03 AM Simona Sibio <ssibio2@gmail.com
> >     <mailto:ssibio2@gmail.com>> wrote:
> >
> >         Thank you very much.
> >         I tried to send a signal with this features, but the result is
> >         the same (IMG_6590).
> >         I tried with every amplitude and every gain (Screenshot from
> >         2019).
> >         Before, I thought that it was a problem of reference signal
> >         and I changed it but the situation is not changed.
> >
> >         Thank you in advance for your help.
> >
> >         Best Regards,
> >
> >         Simona
> >
> >         Il giorno mar 18 giu 2019 alle ore 18:06 Nick Foster
> >         <bistromath@gmail.com <mailto:bistromath@gmail.com>> ha scritto:
> >
> >             Turn up the transmit gain on the USRP sink. Start with
> >             ~40dB and transmit amplitude 0.3.
> >
> >             Nick
> >
> >             On Tue, Jun 18, 2019 at 9:40 AM Simona Sibio
> >             <ssibio2@gmail.com <mailto:ssibio2@gmail.com>> wrote:
> >
> >                 Thank you for the assistance.
> >                 I tried to change the amplitude but the amplitude and
> >                 frequency are not accurate in the oscilloscope yet.
> >                 If I lower the amplitude, the S/N is lowered then it
> >                 is worst.
> >
> >                 Best Regards,
> >
> >                 Simona
> >
> >
> >                 Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster
> >                 <bistromath@gmail.com <mailto:bistromath@gmail.com>>
> >                 ha scritto:
> >
> >                     Waveform source amplitude is too high. Turn it
> >                     down to <0.4.
> >
> >                     On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via
> >                     USRP-users <usrp-users@lists.ettus.com
> >                     <mailto:usrp-users@lists.ettus.com>> wrote:
> >
> >                         Hi Michael,
> >
> >                         thank you for your interest.
> >
> >                         I have two N200 and each one have two
> >                         daughterboard UBX-40; the transmitters are
> >                         connected by coaxial cable to an oscilloscope
> >                         (Rhode&Schwarz RTO2064) to check the waveform.
> >                         The version of UHD is 3.13.0.
> >
> >                         I tried to send a constant signal using the
> >                         flowgraph (Screenshot from 2019-06-18
> >                         14-56-57) in attachment on GNU radio Companion
> >                         3.7.13.4, and on the oscilloscope I saw this
> >                         "IMG_6586".
> >                         Also, I tried to generate a constant signal in
> >                         Simulink model (16-42-17 & 16-14-04) on Matlab
> >                         R2019a but, on the oscilloscope, I saw this
> >                         "IMG_6584".
> >
> >                         I tried to send a sine signal with the
> >                         Simulink model in attachment (16-46-10) and,
> >                         on the oscilloscope, I saw this "IMG_6583".
> >                         Also I tried to generate the sine signal with
> >                         GNU radio (17-08-58) and I saw this "IMG_6588".
> >
> >                         It is possible to see how the amplitude and
> >                         frequency change in every case, I need to
> >                         obtain an accurate signal because I have to
> >                         measure the amplitude and phase in a
> >                         particular point in the circuit.
> >                         And in the previous email, I added that the
> >                         problem increases when I lower the carrier
> >                         frequency. All these measures were taken with
> >                         a carrier frequency at 3 GHz, but if I change
> >                         the fc at 1 GHz the shape is worst, e.g.
> IMG_6589.
> >
> >                         Thank you in advance.
> >
> >                         Best Regards,
> >
> >                         Simona
> >
> >
> >                         Il giorno mar 18 giu 2019 alle ore 15:34
> >                         Michael Dickens <michael.dickens@ettus.com
> >                         <mailto:michael.dickens@ettus.com>> ha scritto:
> >
> >                             Hi Simona - Can you please educate us as
> >                             to a few items?
> >
> >                             * your setup: you have an N200 + some
> >                             daughterboard (which one) + some spectrum
> >                             analyzer (which one), connected ?somehow?
> >                             -> are you doing actual wireless Tx -> Rx,
> >                             or do you have a cable hooked up between
> >                             the N200 & spectrum analyzer?
> >
> >                             * what waveform you're trying to generate,
> >                             and what is the actual flowgraph you're
> >                             using for GNU Radio? how are you
> >                             generating the waveform in MATLAB?
> >
> >                             * which version of GNU Radio and UHD are
> >                             you trying to use?
> >
> >                             * which version of MATLAB and it's UHD are
> >                             you trying to use?
> >
> >                             The above might help someone to diagnose
> >                             your issue ... without it, we can make
> >                             some guesses but not much in the way of
> >                             specifics.
> >
> >                             Please remember to "reply all", so that
> >                             others can see your response and be able
> >                             to chime in to provide help. - MLD
> >
> >                             On Tue, Jun 18, 2019, at 8:42 AM, Simona
> >                             Sibio via USRP-users wrote:
> >>                             Dear Sir/Madam,
> >>
> >>                             I am Simona Sibio, a student in Heriot
> >>                             Watt University.
> >>                             I am working with USRPs both on Matlab
> >>                             and on Gnuradio, and with both softwares
> >>                             I have the same problem: the shape
> >>                             (generated by N200+daughterboard 10 MHz
> >>                             to 6 GHz) is not accurate, in attacched
> >>                             some photos.
> >>                             At 1 GHz, the shape is worst than when
> >>                             the carrier frequency is 3GHz.
> >>                             It is not possible to measure the
> >>                             amplitude and frequency because, also at
> >>                             3 GHz, it is not stable.
> >>                             Could you help me?
> >>
> >>                             Thank you in advance.
> >>
> >>                             Best Regards,
> >>
> >>                             Simona
> >
> >                         _______________________________________________
> >                         USRP-users mailing list
> >                         USRP-users@lists.ettus.com
> >                         <mailto:USRP-users@lists.ettus.com>
> >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/b18f9eed/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 9
> Date: Wed, 19 Jun 2019 19:04:43 +0000
> From: Jessica Iwamoto <jessica.iwamoto@aero.org>
> To: usrp-users <usrp-users@lists.ettus.com>
> Subject: [USRP-users] RX/TX on 4 channels on N310
> Message-ID:
>         <
> SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com
> >
>
> Content-Type: text/plain; charset="us-ascii"
>
> Hello,
>
> I am getting a lot of underflows when trying to use dual RX/TX on 4
> channels on the N310. My application creates one multi_usrp object and 8
> streamers (4 RX, 4 TX) each on a different thread. Samples are received
> from the RX threads, put into buffers, and then transmitted in the TX
> threads. I can run it on 1 channel and 2 channels, but when I try using
> more channels, I get a ton of underflows. When I use 2 channels, I also
> have to specify the subdevice as "A:0 B:0 A:1 B:1", otherwise I will get a
> lot of underflows with the default subdevice spec of "A:0 A:1 B:0 B:1". I
> have tried the txrx_loopback_to_file example with 4 channels and it works
> fine, although this example only uses 2 streamers, each controlling 4
> channels. Any suggestions on what to try to make this work? I am using UHD
> v3.13.1.0-rc1.
>
> Thanks,
>
> Jessica Iwamoto
> Member of Technical Staff
> The Aerospace Corporation
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/72ae6914/attachment-0001.html
> >
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
>         <
> CAL263iz3nDc_eKtbT5gMP-i+dMB_CxFkqxstGV8Bad1m1os2ZQ@mail.gmail.com>
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
> > Hello,
> >
> >
> >
> > I am getting a lot of underflows when trying to use dual RX/TX on 4
> > channels on the N310. My application creates one multi_usrp object and 8
> > streamers (4 RX, 4 TX) each on a different thread. Samples are received
> > from the RX threads, put into buffers, and then transmitted in the TX
> > threads. I can run it on 1 channel and 2 channels, but when I try using
> > more channels, I get a ton of underflows. When I use 2 channels, I also
> > have to specify the subdevice as ?A:0 B:0 A:1 B:1?, otherwise I will get
> a
> > lot of underflows with the default subdevice spec of ?A:0 A:1 B:0 B:1?. I
> > have tried the txrx_loopback_to_file example with 4 channels and it works
> > fine, although this example only uses 2 streamers, each controlling 4
> > channels. Any suggestions on what to try to make this work? I am using
> UHD
> >  v3.13.1.0-rc1.
> >
> >
> >
> > Thanks,
> >
> >
> >
> > Jessica Iwamoto
> >
> > Member of Technical Staff
> >
> > The Aerospace Corporation
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/f8ea8838/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 11
> Date: Wed, 19 Jun 2019 12:52:53 -0700
> From: Ali Dormiani <sdormian@eng.ucsd.edu>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RX/TX on 4 channels on N310
> Message-ID:
>         <
> CANaxSipH1Jbs+utqwhbxWVsnzEvDjRv5tzS4oyXPWV5mT8-WaQ@mail.gmail.com>
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
> > Hi Jessica,
> >
> > What sample rate are you trying to run at per channel?
> >
> > I would suggest to use DPDK as it will remove a considerable overhead
> from
> > the Linux networking stack.
> >
> > I can follow up with you off the list with some notes I have on getting
> > DPDK going, we have a pending app note that will be published soon on the
> > topic.
> >
> > Regards,
> > Nate Temple
> >
> >
> > On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> >
> >> Hello,
> >>
> >>
> >>
> >> I am getting a lot of underflows when trying to use dual RX/TX on 4
> >> channels on the N310. My application creates one multi_usrp object and 8
> >> streamers (4 RX, 4 TX) each on a different thread. Samples are received
> >> from the RX threads, put into buffers, and then transmitted in the TX
> >> threads. I can run it on 1 channel and 2 channels, but when I try using
> >> more channels, I get a ton of underflows. When I use 2 channels, I also
> >> have to specify the subdevice as ?A:0 B:0 A:1 B:1?, otherwise I will
> get a
> >> lot of underflows with the default subdevice spec of ?A:0 A:1 B:0 B:1?.
> I
> >> have tried the txrx_loopback_to_file example with 4 channels and it
> works
> >> fine, although this example only uses 2 streamers, each controlling 4
> >> channels. Any suggestions on what to try to make this work? I am using
> UHD
> >>  v3.13.1.0-rc1.
> >>
> >>
> >>
> >> Thanks,
> >>
> >>
> >>
> >> Jessica Iwamoto
> >>
> >> Member of Technical Staff
> >>
> >> The Aerospace Corporation
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/da5dfb3c/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 12
> Date: Wed, 19 Jun 2019 14:18:31 -0700
> From: Nick Foster <bistromath@gmail.com>
> To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
> Subject: [USRP-users] Receiving response packets via UHD
> Message-ID:
>         <CA+JMMq8Vjq3sKBwAE11FBBKD0ZoSFS=
> McV-5njkL3U7LbskzYg@mail.gmail.com>
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
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/104f73f9/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 13
> Date: Thu, 20 Jun 2019 08:56:28 +1000
> From: "Chris Gobbett" <gobbo@tpg.com.au>
> To: "Jason Matusiak" <jason@gardettoengineering.com>, "Ettus Mail
>         List" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>         <
> d69386c0f5b0f1339eee9da920334aed03a817ac@new-postoffice.tpg.com.au>
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
> (
> https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout
> ).
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
>         I wanted to use a larger SD card than the one that as supplied,
> but I
> am having issues.? I loaded up the card, and then extended the data
> partition to use up the rest of the free space (about 100GB).? But
> then it doesn't boot.
>
>         I am wondering if the change to a partition size screwed up
> something
> in a config file somewhere.? Is there a way to fix this without
> rebuilding a docker image?? I am using the UHD 3.14.0.0. that has the
> smaller data partition (UHD 3.14.1.0 has a larger data partition, but
> doesn't include any GR/python packages, so I need to use the older
> image).
>
>         Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/3b4fd1f1/attachment-0001.html
> >
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
>         <2ec7c512-449a-4d1b-8db7-5c0d013dba79@gardettoengineering.com>
> Content-Type: text/plain; charset="utf-8"
>
> Chris, thanks for the tips.
>
> So I put a fresh load on a card, then used gparted to extend the data
> partition to fill things out. That isn't enough, and your instructions
> certainly show more steps. But I don't understand what you mean with the
> partitions in the middle.
>
> I'll read up on Mender and see if that answers it for me. Thanks again.
> On Jun 19, 2019, at 6:56 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:
> gobbo@tpg.com.au>> wrote:
>
> Hi Jason,
>
> I've had luck with the following:
> - backup/clone the original SDCard image to disk and/or larger SDCard
> (using dd or otherwise)
> - on the new card, resize/shift the data partion to the end of the card
> (using gparted)
> - resize the two filesystem/kernel partitions to fill in the empty space
> in the middle, but they need to be the same size (using gparted)
>
> Read up on Mender for more info on the partition layout (
> https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout).
> It's a pain that they went with Mender for the default E320 card; it cuts
> the 'usable' file system space in half, at the benefit of having 2
> independent filesystem partitions... I haven't had time to fiddle around
> and ditch the mender for a 'normal' partition layout, but I'd assume it's
> possible.
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
> I wanted to use a larger SD card than the one that as supplied, but I am
> having issues.  I loaded up the card, and then extended the data partition
> to use up the rest of the free space (about 100GB).  But then it doesn't
> boot.
>
>
> I am wondering if the change to a partition size screwed up something in a
> config file somewhere.  Is there a way to fix this without rebuilding a
> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> any GR/python packages, so I need to use the older image).
>
>
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190619/3d56798d/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 15
> Date: Thu, 20 Jun 2019 10:21:08 +1000
> From: "Chris Gobbett" <gobbo@tpg.com.au>
> To: "Jason Matusiak" <jason@gardettoengineering.com>, "Ettus List"
>         <usrp-users@lists.ettus.com>
> Cc: "Ettus Mail List" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>         <
> 89fd7840a5b67527cbfe0709d2cbcf0ccc3c9311@new-postoffice.tpg.com.au>
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
>  So I put a fresh load on a card, then used gparted to extend the data
> partition to fill things out. That isn't enough, and your instructions
> certainly show more steps. But I don't understand what you mean with
> the partitions in the middle.
>
>  I'll read up on Mender and see if that answers it for me. Thanks
> again. On Jun 19, 2019, at 6:56 PM, Chris Gobbett  wrote:  ?
>  Hi Jason,
>  I've had luck with the following:  - backup/clone the original SDCard
> image to disk and/or larger SDCard (using dd or otherwise)  - on the
> new card, resize/shift the data partion to the end of the card (using
> gparted)  - resize the two filesystem/kernel partitions to fill in the
> empty space in the middle, but they need to be the same size (using
> gparted)
>  Read up on Mender for more info on the partition layout
> (
> https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout
> ).
> It's a pain that they went with Mender for the default E320 card; it
> cuts the 'usable' file system space in half, at the benefit of having
> 2 independent filesystem partitions... I haven't had time to fiddle
> around and ditch the mender for a 'normal' partition layout, but I'd
> assume it's possible.
>  Cheers,  Chris
>
>  ----- Original Message -----
>  From:  "Jason Matusiak"
> To:  "Ettus Mail List"
> Cc:
> Sent:  Wed, 19 Jun 2019 16:29:38 +0000
> Subject:  [USRP-users] E320 with larger SD card
>
>         I wanted to use a larger SD card than the one that as supplied,
> but I
> am having issues.? I loaded up the card, and then extended the data
> partition to use up the rest of the free space (about 100GB).? But
> then it doesn't boot.
>
>         I am wondering if the change to a partition size screwed up
> something
> in a config file somewhere.? Is there a way to fix this without
> rebuilding a docker image?? I am using the UHD 3.14.0.0. that has the
> smaller data partition (UHD 3.14.1.0 has a larger data partition, but
> doesn't include any GR/python packages, so I need to use the older
> image).
>
>         Thanks.
>
> Links:
> ------
> [1] mailto:gobbo@tpg.com.au
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/60106c14/attachment-0001.html
> >
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
>         <ee9bf2f5-4fa1-4fa2-b213-c3da7cc1dacb@gardettoengineering.com>
> Content-Type: text/plain; charset="utf-8"
>
> OK, I see now what you were doing different. I think I could deal with
> leaving the /data partition the same size and increasing the two
> filesystems. I was just trying to save myself the hassle of performing a
> mender update down the road and forgetting that the data in ~/ wasn't
> persistent.
>
> I guess it is something to try for now (tomorrow), and then flesh out the
> /data problem after having a better understanding of what is going on
> (hopefully).
> On Jun 19, 2019, at 8:21 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:
> gobbo@tpg.com.au>> wrote:
>
> My understanding of the partiitons on the card are (in order);
>
> <boot><filesystem+kernel A><filesystem+kernel B><persistent data><empty
> space>
>
> Mender allows you to boot from one of the A/B partitions as your primary
> filesystem (mounted as /), plus the persistent data (mounted as /home/ or
> /data or similar).
>
> My experience is if you perform resizing while keeping the partitions
> contiguous (no free space between them), and have the A and B partitions
> identical in size, it "just works". So my steps in the previous reply would
> look like:
>    <boot><filesystem+kernel A><filesystem+kernel B><persistent
> data><----------empty space--------------->  # original image on large SD
> Card
>    <boot><filesystem+kernel A><filesystem+kernel B><-------------empty
> space------------><persistent data>  # shift persistent data to the end
>    <boot><----------filesystem+kernel
> A---------><----------filesystem+kernel B---------><persistent data>  #
> maximise A/B partitions, keeping A and B the same size
>
> Rather than extending the data partition, I wanted to add new libraries
> and applications in /usr, which is located on the A/B partitions. Hence my
> instructions involve me resizing those partitions instead of the data
> partition.
>
> If you're simply extending the size of the persistent data partition
> without shifting it's start point (while leaving the other partitions
> alone) I'm at a loss as to why it wouldn't work. But when you do this you
> may need some extra linux-fu to shift your new binary/library locations to
> that partition rather than the default /usr.
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
> So I put a fresh load on a card, then used gparted to extend the data
> partition to fill things out. That isn't enough, and your instructions
> certainly show more steps. But I don't understand what you mean with the
> partitions in the middle.
>
> I'll read up on Mender and see if that answers it for me. Thanks again.
> On Jun 19, 2019, at 6:56 PM, Chris Gobbett < gobbo@tpg.com.au<mailto:
> gobbo@tpg.com.au>> wrote:
>
> Hi Jason,
>
> I've had luck with the following:
> - backup/clone the original SDCard image to disk and/or larger SDCard
> (using dd or otherwise)
> - on the new card, resize/shift the data partion to the end of the card
> (using gparted)
> - resize the two filesystem/kernel partitions to fill in the empty space
> in the middle, but they need to be the same size (using gparted)
>
> Read up on Mender for more info on the partition layout (
> https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout).
> It's a pain that they went with Mender for the default E320 card; it cuts
> the 'usable' file system space in half, at the benefit of having 2
> independent filesystem partitions... I haven't had time to fiddle around
> and ditch the mender for a 'normal' partition layout, but I'd assume it's
> possible.
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
> I wanted to use a larger SD card than the one that as supplied, but I am
> having issues.  I loaded up the card, and then extended the data partition
> to use up the rest of the free space (about 100GB).  But then it doesn't
> boot.
>
>
> I am wondering if the change to a partition size screwed up something in a
> config file somewhere.  Is there a way to fix this without rebuilding a
> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> any GR/python packages, so I need to use the older image).
>
>
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/3ce8841b/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 17
> Date: Thu, 20 Jun 2019 10:48:40 +0000
> From: "Koyel Das (Vehere)" <koyel.das@vehere.com>
> To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
> Subject: [USRP-users] USRP gain refers to which amplifier
> Message-ID:
>         <
> BM1PR01MB0705C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM
> >
>
> Content-Type: text/plain; charset="windows-1252"
>
> Hi,
>
>
> When we set the gain of USRP does that mean we are increasing the gain of
> amplifier just after the antenna or the gain is spread across various
> amplifiers in the chain?
>
>
> Regards,
>
> Koyel Das
> Senior ? Product Engineer
>
> Vehere | Proactive Communications Intelligence & Cyber Defence
> M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W:
> www.vehere.com<http://www.vehere.com/>
>
> [unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd>
> [unnamed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <
> https://www.facebook.com/VehereIndia/>
>
> Vehere is the proud recipient of the Fastest Growing Technology Company
> Awards in India & Asia since 2012!
>
> The content of this e-mail is confidential and intended solely for the use
> of the addressee. The text of this email (including any attachments) may
> contain information, which is proprietary and/or confidential or privileged
> in nature belonging to Vehere Interactive Pvt Ltd and/or its associates/
> group companies/ subsidiaries. If you are not the addressee, or the person
> responsible for delivering it to the addressee, any disclosure, copying,
> distribution or any action taken or omitted to be taken in reliance on it
> is prohibited and may be unlawful. If you have received this e-mail in
> error, please notify the sender and remove this communication entirely from
> your system. The recipient acknowledges that no guarantee or any warranty
> is given as to completeness and accuracy of the content of the email. The
> recipient further acknowledges that the views contained in the email
> message are those of the sender and may not necessarily reflect those of
> Vehere Interactive Pvt Ltd. Before opening and accessing the attachment
> please check and scan for virus. WARNING: Computer viruses can be
> transmitted via email. The recipient should check this email and any
> attachments for the presence of viruses. The company accepts no liability
> for any damage caused by any virus transmitted by this email.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/fbcbea02/attachment-0001.html
> >
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
> On 06/20/2019 06:48 AM, Koyel Das (Vehere) via USRP-users wrote:
> >
> > Hi,
> >
> >
> > When we set the gain of USRP does that mean we are increasing the gain
> > of amplifier just after the antenna or the gain is spread across
> > various amplifiers in the chain?
> >
> >
> > Regards,
> >
> > Koyel Das
> > Senior ? Product Engineer
> >
> > Vehere | Proactive Communications Intelligence & Cyber Defence
> > M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W:
> > www.vehere.com <http://www.vehere.com/>/
> > /
> /It depends very much on exactly which USRP and daughterboard is in use.
>
> By default, the set-gain function will make "sensible" decisions about
> distributing gain over the various elements in whatever hardware
>    it's dealing with.
>
> See:
>
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049ed3d0f5fc96e87b2a
>
> and:
>
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675aa796e030bd8a03e
>
> and:
>
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796deddd9231f022ffef11
>
>
> /
> > //
> > /unnamed
> > <https://www.linkedin.com/company/vehere-interactive-p-ltd>unnamed (1)
> > <https://twitter.com/VehereIndia>unnamed (2)
> > <https://www.facebook.com/VehereIndia/>
> >
> > Vehere is the proud recipient of the Fastest Growing Technology
> > Company Awards in India & Asia since 2012!/
> >
> > The content of this e-mail is confidential and intended solely for the
> > use of the addressee. The text of this email (including any
> > attachments) may contain information, which is proprietary and/or
> > confidential or privileged in nature belonging to Vehere Interactive
> > Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you
> > are not the addressee, or the person responsible for delivering it to
> > the addressee, any disclosure, copying, distribution or any action
> > taken or omitted to be taken in reliance on it is prohibited and may
> > be unlawful. If you have received this e-mail in error, please notify
> > the sender and remove this communication entirely from your system.
> > The recipient acknowledges that no guarantee or any warranty is given
> > as to completeness and accuracy of the content of the email. The
> > recipient further acknowledges that the views contained in the email
> > message are those of the sender and may not necessarily reflect those
> > of Vehere Interactive Pvt Ltd. Before opening and accessing the
> > attachment please check and scan for virus. WARNING: Computer viruses
> > can be transmitted via email. The recipient should check this email
> > and any attachments for the presence of viruses. The company accepts
> > no liability for any damage caused by any virus transmitted by this
> email.
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/f5c18a69/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 20
> Date: Thu, 20 Jun 2019 14:24:36 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: Chris Gobbett <gobbo@tpg.com.au>, Ettus List
>         <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] E320 with larger SD card
> Message-ID:
>         <
> BL0PR12MB2340576BD0D54D6DCF1A6B31AFE40@BL0PR12MB2340.namprd12.prod.outlook.com
> >
>
> Content-Type: text/plain; charset="iso-8859-1"
>
> OK, I thought I had it, but it is still not working.  Here are some new
> details though.
>
>
> I load up a fresh SD card (I've tried both bmaptools as well as dd).  I
> toss it into my E320 and it boots up happy as pie.  I do a proper shutdown
> and put it back into my host PC.  I unmount and then using gparted I extend
> the data partition. I put the SD card back into the E320 and it boots up
> fine.  dh is showing that the partition is the new larger size and
> uhd_find_devices works, so I am happy there.  I reboot and all is gravy.  I
> shutdown -h now and power-up and all is gravy.
>
>
> I then create a folder in /data called localinstall.  Shutdown and then
> boot up, all is fine.
>
>
> I install my cross-compiled uhd into that folder.  I issue a shutdown -h
> now command and it seems to shutdown fine.  Then it never powers up again.
> It really feels like even though the partition shows up as the new size on
> the device, that I am overwriting the small partition size and screwing
> things up...
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
> <boot><filesystem+kernel A><filesystem+kernel B><persistent data><empty
> space>
>
> Mender allows you to boot from one of the A/B partitions as your primary
> filesystem (mounted as /), plus the persistent data (mounted as /home/ or
> /data or similar).
>
> My experience is if you perform resizing while keeping the partitions
> contiguous (no free space between them), and have the A and B partitions
> identical in size, it "just works". So my steps in the previous reply would
> look like:
>    <boot><filesystem+kernel A><filesystem+kernel B><persistent
> data><----------empty space--------------->  # original image on large SD
> Card
>    <boot><filesystem+kernel A><filesystem+kernel B><-------------empty
> space------------><persistent data>  # shift persistent data to the end
>    <boot><----------filesystem+kernel
> A---------><----------filesystem+kernel B---------><persistent data>  #
> maximise A/B partitions, keeping A and B the same size
>
> Rather than extending the data partition, I wanted to add new libraries
> and applications in /usr, which is located on the A/B partitions. Hence my
> instructions involve me resizing those partitions instead of the data
> partition.
>
> If you're simply extending the size of the persistent data partition
> without shifting it's start point (while leaving the other partitions
> alone) I'm at a loss as to why it wouldn't work. But when you do this you
> may need some extra linux-fu to shift your new binary/library locations to
> that partition rather than the default /usr.
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
> So I put a fresh load on a card, then used gparted to extend the data
> partition to fill things out. That isn't enough, and your instructions
> certainly show more steps. But I don't understand what you mean with the
> partitions in the middle.
>
> I'll read up on Mender and see if that answers it for me. Thanks again.
> On Jun 19, 2019, at 6:56 PM, Chris Gobbett <gobbo@tpg.com.au<mailto:
> gobbo@tpg.com.au>> wrote:
>
> Hi Jason,
>
> I've had luck with the following:
> - backup/clone the original SDCard image to disk and/or larger SDCard
> (using dd or otherwise)
> - on the new card, resize/shift the data partion to the end of the card
> (using gparted)
> - resize the two filesystem/kernel partitions to fill in the empty space
> in the middle, but they need to be the same size (using gparted)
>
> Read up on Mender for more info on the partition layout (
> https://docs.mender.io/1.7/devices/general-system-requirements#partition-layout).
> It's a pain that they went with Mender for the default E320 card; it cuts
> the 'usable' file system space in half, at the benefit of having 2
> independent filesystem partitions... I haven't had time to fiddle around
> and ditch the mender for a 'normal' partition layout, but I'd assume it's
> possible.
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
> I wanted to use a larger SD card than the one that as supplied, but I am
> having issues.  I loaded up the card, and then extended the data partition
> to use up the rest of the free space (about 100GB).  But then it doesn't
> boot.
>
>
> I am wondering if the change to a partition size screwed up something in a
> config file somewhere.  Is there a way to fix this without rebuilding a
> docker image?  I am using the UHD 3.14.0.0. that has the smaller data
> partition (UHD 3.14.1.0 has a larger data partition, but doesn't include
> any GR/python packages, so I need to use the older image).
>
>
> Thanks.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/bade3764/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 21
> Date: Thu, 20 Jun 2019 10:29:40 -0400
> From: Zhihong Luo <zhluo@umich.edu>
> To: Zhihong Luo via USRP-users <USRP-users@lists.ettus.com>
> Subject: [USRP-users] unsubscribe
> Message-ID:
>         <CAH4wXLrjq=
> fk5ad7y-t_LLVDj90Xa4o12Z6poPWoVXhBSNwCPw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190620/36e503ce/attachment-0001.html
> >
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
>
>

--000000000000a461d4058c22828c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Jason,</div><div><br></div><div>Thank you for yo=
ur reply and sorry for second email.</div><div>I thought that with first em=
ail, I had made a mistake and for this reason, I sent other email.</div><di=
v><br></div><div>Is there a way to get the licence for Design Edition or Sy=
stem Edition for student?</div><div>And, the project in Vivado corrisponds =
at the image?</div><div><br></div><div>Thank you in advance, and sorry agai=
n.</div><div><br></div><div>Best Regards,</div><div><br></div><div>Simona=
=C2=A0</div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr" dir=3D=
"ltr">Il giorno ven 21 giu 2019 alle ore 12:50 Jason Matusiak &lt;<a href=
=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@gardettoe=
ngineering.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif" dir=3D"ltr">
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px">Simo=
na,</span></div>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
<br>
</div>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
I suggest sending just the one email and then waiting on a response.=C2=A0 =
It could take hours or a few days, but people on here generally are super h=
elpful where they can.</div>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
<br>
</div>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
Do you have a Vivado license?=C2=A0 You are definitely going to need one fo=
r the X310 build (the webpack won&#39;t work)<span style=3D"font-size:12pt"=
>.</span></div>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
<br>
</div>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
Have you read through this link, it is very helpful:=C2=A0<a class=3D"m_-85=
8198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573=
249696902gmail-m_-4042973144361663608LPlnk758980" href=3D"https://kb.ettus.=
com/Getting_Started_with_RFNoC_Development" target=3D"_blank">https://kb.et=
tus.com/Getting_Started_with_RFNoC_Development</a><br>
<br>
<span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:16px"></sp=
an>
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608Signature">
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divtagdefaultwr=
apper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols" dir=3D"ltr">
<p style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(34,3=
4,34);font-family:Arial,Helvetica,sans-serif;font-size:small"></span><br>
</p>
</div>
</div>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-858198573249696902gmail-m_-4042973144361663608divRplyFwdMsg" =
dir=3D"ltr"><font color=3D"#000000" face=3D"Calibri, sans-serif" style=3D"f=
ont-size:11pt"><b>From:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bou=
nces@lists.ettus.com" target=3D"_blank">usrp-users-bounces@lists.ettus.com<=
/a>&gt; on behalf of Simona Sibio via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
;<br>
<b>Sent:</b> Friday, June 21, 2019 7:43 AM<br>
<b>To:</b> USRP Users<br>
<b>Subject:</b> Re: [USRP-users] USRP-users Digest, Vol 106, Issue 21</font=
>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Dear all,</div>
<div><br>
</div>
<div>I would work on the X310 with Vivado Xilinx. <br>
</div>
<div>I have dowloaded all requirements but when I tried with make X310_RFNO=
C_HG, I have the following error message:<br>
</div>
<div><br>
</div>
<div>make X310_RFNOC_HG<br>
make -f Makefile.x300.inc bin NAME=3DX310_RFNOC_HG ARCH=3Dkintex7 PART_ID=
=3Dxc7k410t/ffg900/-2 BUILD_1G=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=
=3D1 =C2=A0RFNOC=3D1 X310=3D1 TOP_MODULE=3Dx300 EXTRA_DEFS=3D&quot;BUILD_1G=
=3D1 BUILD_10G=3D1 SFP0_1GBE=3D1 SFP1_10GBE=3D1 =C2=A0RFNOC=3D1 X310=3D1&qu=
ot;<br>
make[1]: Entering directory &#39;/home/uwave-lab/Documents/Vivado/fpga-mast=
er/usrp3/top/x300&#39;<br>
BUILDER: Checking tools...<br>
* GNU bash, version 4.4.19(1)-release (x86_64-pc-linux-gnu)<br>
* Python 2.7.15rc1<br>
* Vivado v2018.3 (64-bit)<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
BUILDER: Building IP ten_gig_eth_pcs_pma<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
BUILDER: Staging IP in build directory...<br>
BUILDER: Reserving IP location: /home/uwave-lab/Documents/Vivado/fpga-maste=
r/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma<br>
BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...<br>
BUILDER: Building IP...<br>
[00:00:00] Executing command: vivado -mode batch -source /home/uwave-lab/Do=
cuments/Vivado/fpga-master/usrp3/tools/scripts/viv_generate_ip.tcl -log ten=
_gig_eth_pcs_pma.log -nojournal<br>
WARNING: [Device 21-436] No parts matched &#39;xc7k410tffg900-2&#39;<br>
ERROR: [Coretcl 2-106] Specified part could not be found.<br>
[00:00:06] Current task: Initialization +++ Current Phase: Starting<br>
[00:00:06] Current task: Initialization +++ Current Phase: Finished<br>
[00:00:06] Process terminated. Status: Failure<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br>
Critical Warnings: =C2=A00<br>
Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1<br>
<br>
BUILDER: Releasing IP location: /home/uwave-lab/Documents/Vivado/fpga-maste=
r/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma<br>
/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/ip/ten_gig_eth_=
pcs_pma/Makefile.inc:41: recipe for target &#39;/home/uwave-lab/Documents/V=
ivado/fpga-master/usrp3/top/x300/build-ip/xc7k410tffg900-2/ten_gig_eth_pcs_=
pma/ten_gig_eth_pcs_pma.xci.out&#39; failed<br>
make[1]: *** [/home/uwave-lab/Documents/Vivado/fpga-master/usrp3/top/x300/b=
uild-ip/xc7k410tffg900-2/ten_gig_eth_pcs_pma/ten_gig_eth_pcs_pma.xci.out] E=
rror 1<br>
make[1]: Leaving directory &#39;/home/uwave-lab/Documents/Vivado/fpga-maste=
r/usrp3/top/x300&#39;<br>
Makefile:112: recipe for target &#39;X310_RFNOC_HG&#39; failed<br>
make: *** [X310_RFNOC_HG] Error 2</div>
<div><br>
</div>
<div><br>
</div>
<div>Could you help me?</div>
<div>Is it a licence problem?</div>
<div>I have installed the WebPACK 2018.3. <br>
</div>
<div><br>
</div>
<div>Thank you in advance.</div>
<div>Best Regards,</div>
<div><br>
</div>
<div>Simona<br>
</div>
</div>
<br>
<div class=3D"m_-858198573249696902gmail-m_-4042973144361663608x_gmail_quot=
e">
<div class=3D"m_-858198573249696902gmail-m_-4042973144361663608x_gmail_attr=
" dir=3D"ltr">Il giorno gio 20 giu 2019 alle ore 17:00 &lt;<a class=3D"m_-8=
58198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-85819857=
3249696902gmail-m_-4042973144361663608LPlnk574363" href=3D"mailto:usrp-user=
s-request@lists.ettus.com" target=3D"_blank">usrp-users-request@lists.ettus=
.com</a>&gt; ha scritto:<br>
</div>
<blockquote class=3D"m_-858198573249696902gmail-m_-4042973144361663608x_gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a class=3D"m_-858198573249696902gmail-m_-40429=
73144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436=
1663608LPlnk49" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">
usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a class=3D"m_-858198573249696902gmail-m_-40429=
73144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436=
1663608LPlnk814204" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a class=3D"m_-858198573249696902gmail-m_-40429=
73144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436=
1663608LPlnk555961" href=3D"mailto:usrp-users-request@lists.ettus.com" targ=
et=3D"_blank">
usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a class=3D"m_-858198573249696902gmail-m_-40429=
73144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436=
1663608LPlnk281112" href=3D"mailto:usrp-users-owner@lists.ettus.com" target=
=3D"_blank">
usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. E320 with larger SD card (Jason Matusiak)<br>
=C2=A0 =C2=A02. Re: E320 with larger SD card (Marcus D. Leech)<br>
=C2=A0 =C2=A03. Re: E320 with larger SD card (Jason Matusiak)<br>
=C2=A0 =C2=A04. Re: E320 with larger SD card (Nate Temple)<br>
=C2=A0 =C2=A05. Re: RFNoC multi-driven nets (Mitch Davis)<br>
=C2=A0 =C2=A06. Re: Registering Block Controllers to UHD (Christian Valledo=
r)<br>
=C2=A0 =C2=A07. Re: RFNoC multi-driven nets (Roberto Michio Marques Kagami)=
<br>
=C2=A0 =C2=A08. Re: Waveform Shape Not Accurate (Marcus D. Leech)<br>
=C2=A0 =C2=A09. RX/TX on 4 channels on N310 (Jessica Iwamoto)<br>
=C2=A0 10. Re: RX/TX on 4 channels on N310 (Nate Temple)<br>
=C2=A0 11. Re: RX/TX on 4 channels on N310 (Ali Dormiani)<br>
=C2=A0 12. Receiving response packets via UHD (Nick Foster)<br>
=C2=A0 13. Re: E320 with larger SD card (Chris Gobbett)<br>
=C2=A0 14. Re: E320 with larger SD card (Jason Matusiak)<br>
=C2=A0 15. Re: E320 with larger SD card (Chris Gobbett)<br>
=C2=A0 16. Re: E320 with larger SD card (Jason Matusiak)<br>
=C2=A0 17. USRP gain refers to which amplifier (Koyel Das (Vehere))<br>
=C2=A0 18. unsubscribe (Fabian Schwartau)<br>
=C2=A0 19. Re: USRP gain refers to which amplifier (Marcus D. Leech)<br>
=C2=A0 20. Re: E320 with larger SD card (Jason Matusiak)<br>
=C2=A0 21. unsubscribe (Zhihong Luo)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Wed, 19 Jun 2019 16:29:38 +0000<br>
From: Jason Matusiak &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731=
44361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166=
3608LPlnk274219" href=3D"mailto:jason@gardettoengineering.com" target=3D"_b=
lank">jason@gardettoengineering.com</a>&gt;<br>
To: Ettus Mail List &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk212616" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk260240" href=3D"mailto:BL0PR12MB23409479CB3FBD5B7DCAAC19AFE=
50@BL0PR12MB2340.namprd12.prod.outlook.com" target=3D"_blank">BL0PR12MB2340=
9479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com</a>&gt;<b=
r>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.=C2=A0 I loaded up the card, and then extended the data partiti=
on to use up the rest of the free space (about 100GB).=C2=A0 But then it do=
esn&#39;t boot.<br>
<br>
<br>
I am wondering if the change to a partition size screwed up something in a =
config file somewhere.=C2=A0 Is there a way to fix this without rebuilding =
a docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the smaller dat=
a partition (UHD 3.14.1.0 has a larger data
 partition, but doesn&#39;t include any GR/python packages, so I need to us=
e the older image).<br>
<br>
<br>
Thanks.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk234875"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/8b9fdfc4/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/8b9fdfc4/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Wed, 19 Jun 2019 12:33:11 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a class=3D"m_-858198573249696902gmai=
l-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40=
42973144361663608LPlnk363173" href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLin=
k" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk848686" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID: &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616636=
08OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk=
802970" href=3D"mailto:5D0A63C7.7080004@gmail.com" target=3D"_blank">5D0A63=
C7.7080004@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;windows-1252&quot;; Format=3D&quo=
t;flowed&quot;<br>
<br>
On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:<br>
&gt;<br>
&gt; I wanted to use a larger SD card than the one that as supplied, but I =
<br>
&gt; am having issues.=C2=A0 I loaded up the card, and then extended the da=
ta <br>
&gt; partition to use up the rest of the free space (about 100GB). But then=
 <br>
&gt; it doesn&#39;t boot.<br>
&gt;<br>
What steps did you take to extend the partition?<br>
<br>
<br>
&gt;<br>
&gt; I am wondering if the change to a partition size screwed up something =
<br>
&gt; in a config file somewhere.=C2=A0 Is there a way to fix this without <=
br>
&gt; rebuilding a docker image?=C2=A0 I am using the UHD 3.14.0.0. that has=
 the <br>
&gt; smaller data partition (UHD 3.14.1.0 has a larger data partition, but =
<br>
&gt; doesn&#39;t include any GR/python packages, so I need to use the older=
 image).<br>
&gt;<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk148513" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk58379" href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk521260"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/15fd5a32/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/15fd5a32/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Wed, 19 Jun 2019 16:44:02 +0000<br>
From: Jason Matusiak &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731=
44361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166=
3608LPlnk137243" href=3D"mailto:jason@gardettoengineering.com" target=3D"_b=
lank">jason@gardettoengineering.com</a>&gt;<br>
To: &quot;Marcus D. Leech&quot; &lt;<a class=3D"m_-858198573249696902gmail-=
m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042=
973144361663608LPlnk333189" href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
Cc: Ettus Mail List &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk35546" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk437417" href=3D"mailto:BL0PR12MB2340261564BEEC740712C9BCAFE=
50@BL0PR12MB2340.namprd12.prod.outlook.com" target=3D"_blank">BL0PR12MB2340=
261564BEEC740712C9BCAFE50@BL0PR12MB2340.namprd12.prod.outlook.com</a>&gt;<b=
r>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
I used bmaptool to write the image and I used gparted to extend it.=C2=A0 I=
 just tried again and still no dice.<br>
<br>
<br>
I just tried to boot with the serial terminal on and I see this on the scre=
en (no LED ever comes on):<br>
<br>
<br>
U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)<br>
mmc boot<br>
Trying to boot from MMC1<br>
reading u-boot.img<br>
reading u-boot.img<br>
<br>
<br>
U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)<br>
<br>
Model: NI Ettus Research Project NEON SDR<br>
DRAM:=C2=A0 ECC disabled 1 GiB<br>
MMC:=C2=A0 =C2=A0sdhci@e0100000: 0<br>
<br>
<br>
<br>
<br>
<br>
________________________________<br>
From: USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314436=
1663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608=
LPlnk361176" href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_=
blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of Marcus D. Le=
ech via USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144=
361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443616636=
08LPlnk223982" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt;<br>
Sent: Wednesday, June 19, 2019 12:33 PM<br>
To: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLin=
k" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk16852" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
<br>
On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:<br>
<br>
I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.=C2=A0 I loaded up the card, and then extended the data partiti=
on to use up the rest of the free space (about 100GB).=C2=A0 But then it do=
esn&#39;t boot.<br>
<br>
What steps did you take to extend the partition?<br>
<br>
<br>
<br>
<br>
I am wondering if the change to a partition size screwed up something in a =
config file somewhere.=C2=A0 Is there a way to fix this without rebuilding =
a docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the smaller dat=
a partition (UHD 3.14.1.0 has a larger data
 partition, but doesn&#39;t include any GR/python packages, so I need to us=
e the older image).<br>
<br>
<br>
Thanks.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk425140" href=3D"=
mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a>&lt;mailto:<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk559101" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USR=
P-users@lists.ettus.com</a>&gt;<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk801284" href=3D"=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=
=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com</a><br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk203376"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/6087cb21/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/6087cb21/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Wed, 19 Jun 2019 09:53:11 -0700<br>
From: Nate Temple &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk412741" href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.=
temple@ettus.com</a>&gt;<br>
To: Jason Matusiak &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144=
361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443616636=
08LPlnk696723" href=3D"mailto:jason@gardettoengineering.com" target=3D"_bla=
nk">jason@gardettoengineering.com</a>&gt;<br>
Cc: &quot;Marcus D. Leech&quot; &lt;<a class=3D"m_-858198573249696902gmail-=
m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042=
973144361663608LPlnk382605" href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;, Ettus Mail List<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk12293" href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk307433" href=3D"mailto:CAL263ixsgxh%2BN9fO0YH8ELC2ChMQJ18RQ=
GRrmZpHxDt84xZBfw@mail.gmail.com" target=3D"_blank">CAL263ixsgxh+N9fO0YH8EL=
C2ChMQJ18RQGRrmZpHxDt84xZBfw@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi Jason,<br>
<br>
I have some instructions I will send you off list for adding an additional<=
br>
partition you can try. I wrote them for the E310, but have not yet tested<b=
r>
them on E320, however, it should be a similar process.<br>
<br>
Regards,<br>
Nate Temple<br>
<br>
On Wed, Jun 19, 2019 at 9:44 AM Jason Matusiak via USRP-users &lt;<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk506287" href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br>
<br>
&gt; I used bmaptool to write the image and I used gparted to extend it.=C2=
=A0 I<br>
&gt; just tried again and still no dice.<br>
&gt;<br>
&gt;<br>
&gt; I just tried to boot with the serial terminal on and I see this on the=
<br>
&gt; screen (no LED ever comes on):<br>
&gt;<br>
&gt;<br>
&gt; U-Boot SPL 2018.01 (May 10 2019 - 13:20:55)<br>
&gt; mmc boot<br>
&gt; Trying to boot from MMC1<br>
&gt; reading u-boot.img<br>
&gt; reading u-boot.img<br>
&gt;<br>
&gt;<br>
&gt; U-Boot 2018.01 (May 10 2019 - 13:20:55 +0000)<br>
&gt;<br>
&gt; Model: NI Ettus Research Project NEON SDR<br>
&gt; DRAM:=C2=A0 ECC disabled 1 GiB<br>
&gt; MMC:=C2=A0 =C2=A0sdhci@e0100000: 0<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ------------------------------<br>
&gt; *From:* USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-40429=
73144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436=
1663608LPlnk676547" href=3D"mailto:usrp-users-bounces@lists.ettus.com" targ=
et=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of<br>
&gt; Marcus D. Leech via USRP-users &lt;<a class=3D"m_-858198573249696902gm=
ail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-=
4042973144361663608LPlnk227684" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; *Sent:* Wednesday, June 19, 2019 12:33 PM<br>
&gt; *To:* <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWA=
AutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk47921=
8" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
&gt; *Subject:* Re: [USRP-users] E320 with larger SD card<br>
&gt;<br>
&gt; On 06/19/2019 12:29 PM, Jason Matusiak via USRP-users wrote:<br>
&gt;<br>
&gt; I wanted to use a larger SD card than the one that as supplied, but I =
am<br>
&gt; having issues.=C2=A0 I loaded up the card, and then extended the data =
partition<br>
&gt; to use up the rest of the free space (about 100GB).=C2=A0 But then it =
doesn&#39;t<br>
&gt; boot.<br>
&gt;<br>
&gt; What steps did you take to extend the partition?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am wondering if the change to a partition size screwed up something =
in a<br>
&gt; config file somewhere.=C2=A0 Is there a way to fix this without rebuil=
ding a<br>
&gt; docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the smaller =
data<br>
&gt; partition (UHD 3.14.1.0 has a larger data partition, but doesn&#39;t i=
nclude<br>
&gt; any GR/python packages, so I need to use the older image).<br>
&gt;<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing listUSRP-users@lists.ettus.comhttp://<a class=3D"m_=
-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198=
573249696902gmail-m_-4042973144361663608LPlnk480162" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk402029" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk925174" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk208383"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/050ac803/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/050ac803/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Wed, 19 Jun 2019 13:13:52 -0400<br>
From: Mitch Davis &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk958716" href=3D"mailto:mitch@silverblocksystems.net" target=3D"_blank=
">mitch@silverblocksystems.net</a>&gt;<br>
To: Roberto Michio Marques Kagami &lt;<a class=3D"m_-858198573249696902gmai=
l-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40=
42973144361663608LPlnk854615" href=3D"mailto:robertomk@inatel.br" target=3D=
"_blank">robertomk@inatel.br</a>&gt;<br>
Cc: &quot;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAA=
utoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk513390=
" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042=
973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443=
61663608LPlnk322896" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RFNoC multi-driven nets<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk307210" href=3D"mailto:861fdd8b6fef8a1f7af3efa3784be59a47e4=
c882.camel@silverblocksystems.net" target=3D"_blank">861fdd8b6fef8a1f7af3ef=
a3784be59a47e4c882.camel@silverblocksystems.net</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
Roberto,<br>
<br>
Just to clarify, the commit that I used that resulted in successful<br>
build is f6890f227b40687b356c1e6c10d9eec2184691d0<br>
<br>
This requires Vivado 2017.4<br>
<br>
Did you try f6890f22 or 118a45d63?<br>
<br>
I don&#39;t have the bandwidth to spare with any bisection to determine<br>
what the actual fault may be.=C2=A0 I&#39;ve found f6890f22 to yield<br>
satisfactory results.<br>
<br>
This is built in a CentOS 7 native install (with EPEL and some other<br>
extra repos enabled).<br>
<br>
Regards,<br>
<br>
Mitch<br>
<br>
On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:<br>
&gt; Hello, Mitch!<br>
&gt; <br>
&gt; I&#39;ve faced the same problem.<br>
&gt; I&#39;ve tried the first commit after f6890f22 including Vivado versio=
n<br>
&gt; 2018.3 and the error is the same.<br>
&gt; Did you received any reply for this failure?<br>
&gt; I would appreciate any information.<br>
&gt; Thanks!<br>
&gt; <br>
&gt; Regards,<br>
&gt; Roberto Kagami<br>
&gt; De: USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk33389" href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D=
"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; em nome de Mitch<br>
&gt; Davis via USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-404=
2973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144=
361663608LPlnk183624" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; Enviado: segunda-feira, 17 de junho de 2019 15:44:07<br>
&gt; Para: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWA=
AutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk76883=
3" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
&gt; Assunto: Re: [USRP-users] RFNoC multi-driven nets<br>
&gt;=C2=A0 <br>
&gt; My apologies for not connecting this message to the OP, I didn&#39;t<b=
r>
&gt; register this email account to the list until after the post. <br>
&gt; However,<br>
&gt; Peter had posted that he was having issues building the latest X310<br=
>
&gt; RFNOC image (with an RFNOC block) with an error of multiple-drivers<br=
>
&gt; on<br>
&gt; two nets (ce_clk and ce_rst):<br>
&gt; <br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk878990" hre=
f=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/=
060013.html" target=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/06001=
3.html</a><br>
&gt; <br>
&gt; I too encountered this same error.<br>
&gt; <br>
&gt; On a hunch, I reverted the repo to the commit just before the Vivado<b=
r>
&gt; 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0<br>
&gt; <br>
&gt; I was able to build the X310 RFNOC image with an RFNOC block using<br>
&gt; that<br>
&gt; commit without failure.<br>
&gt; <br>
&gt; I haven&#39;t attempted a bisection yet.=C2=A0 Is there anyone else th=
at has<br>
&gt; observed similar build failures?<br>
&gt; <br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Mitch Davis<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk206700" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk169755" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Wed, 19 Jun 2019 13:14:17 -0400<br>
From: Christian Valledor &lt;<a class=3D"m_-858198573249696902gmail-m_-4042=
973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443=
61663608LPlnk510611" href=3D"mailto:cavalledor@gmail.com" target=3D"_blank"=
>cavalledor@gmail.com</a>&gt;<br>
To: Nick Foster &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361=
663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608L=
Plnk45911" href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromat=
h@gmail.com</a>&gt;<br>
Cc: &quot;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAA=
utoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk391020=
" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042=
973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443=
61663608LPlnk376295" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Registering Block Controllers to UHD<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CACV8bbfLvEX5UF+yor_YifbiwnokjxR5A=3D<a cla=
ss=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m=
_-858198573249696902gmail-m_-4042973144361663608LPlnk275679" href=3D"mailto=
:yi2nCYvMHHXJjW%2Bw@mail.gmail.com" target=3D"_blank">yi2nCYvMHHXJjW+w@mail=
.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
That was it!<br>
<br>
Looks like there was some linker magic going on. So once I added the<br>
--whole-archive option it worked.<br>
<br>
Thanks,<br>
-Christian<br>
<br>
<br>
On Wed, Jun 19, 2019 at 9:46 AM Nick Foster &lt;<a class=3D"m_-858198573249=
696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902g=
mail-m_-4042973144361663608LPlnk116273" href=3D"mailto:bistromath@gmail.com=
" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br>
<br>
&gt; This thread might be helpful:<br>
&gt;<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk837797" hre=
f=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html"=
 target=3D"_blank" rel=3D"noreferrer">
https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html</a><b=
r>
&gt;<br>
&gt; Nick<br>
&gt;<br>
&gt; On Wed, Jun 19, 2019 at 6:35 AM Christian Valledor via USRP-users &lt;=
<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk92004" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi All,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m developing a few custom RFNoC Blocks for a UHD application=
 I&#39;m<br>
&gt;&gt; working on, and I&#39;ve hit a snag getting UHD to work with my bl=
ock<br>
&gt;&gt; controllers. Note that I went the C++ route instead of using nocsc=
ript and<br>
&gt;&gt; the default block controller to handle some more complex cases.<br=
>
&gt;&gt;<br>
&gt;&gt; The only way I have been able to get my application to work is if =
I move<br>
&gt;&gt; my custom controller files into the UHD directory, and re-compile.=
<br>
&gt;&gt; Otherwise it sees my block and XML, but doesn&#39;t register a key=
, and loads<br>
&gt;&gt; the default block controller.<br>
&gt;&gt;<br>
&gt;&gt; Is there another way to get UHD to play nice with my block without=
<br>
&gt;&gt; re-compiling it each time?<br>
&gt;&gt;<br>
&gt;&gt; thanks,<br>
&gt;&gt; -Christian<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk690273"=
 href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt;&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk759243"=
 href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk344487"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/61a76c1f/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/61a76c1f/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Wed, 19 Jun 2019 17:56:48 +0000<br>
From: Roberto Michio Marques Kagami &lt;<a class=3D"m_-858198573249696902gm=
ail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-=
4042973144361663608LPlnk744912" href=3D"mailto:robertomk@inatel.br" target=
=3D"_blank">robertomk@inatel.br</a>&gt;<br>
To: Mitch Davis &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361=
663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608L=
Plnk383369" href=3D"mailto:mitch@silverblocksystems.net" target=3D"_blank">=
mitch@silverblocksystems.net</a>&gt;<br>
Cc: &quot;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAA=
utoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk392167=
" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042=
973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443=
61663608LPlnk485399" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RFNoC multi-driven nets<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk905422" href=3D"mailto:BY5PR02MB6019B8459D7FAAC62880BBF5AAE=
50@BY5PR02MB6019.namprd02.prod.outlook.com" target=3D"_blank">BY5PR02MB6019=
B8459D7FAAC62880BBF5AAE50@BY5PR02MB6019.namprd02.prod.outlook.com</a>&gt;<b=
r>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Hi, Mitch<br>
<br>
<br>
I&#39;ve tested the 118a45d63. Failed (multiple-drivers).<br>
<br>
The f6890f22 is good, but only for XG build.<br>
<br>
HG option generates another type of error (4 missing pin LOC constraints).<=
br>
<br>
My OS is Ubuntu 16.04.<br>
<br>
<br>
Regards,<br>
<br>
Roberto<br>
<br>
________________________________<br>
De: Mitch Davis &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361=
663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608L=
Plnk84956" href=3D"mailto:mitch@silverblocksystems.net" target=3D"_blank">m=
itch@silverblocksystems.net</a>&gt;<br>
Enviado: quarta-feira, 19 de junho de 2019 10:13:52<br>
Para: Roberto Michio Marques Kagami<br>
Cc: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLin=
k" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk617501" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
Assunto: Re: [USRP-users] RFNoC multi-driven nets<br>
<br>
Roberto,<br>
<br>
Just to clarify, the commit that I used that resulted in successful<br>
build is f6890f227b40687b356c1e6c10d9eec2184691d0<br>
<br>
This requires Vivado 2017.4<br>
<br>
Did you try f6890f22 or 118a45d63?<br>
<br>
I don&#39;t have the bandwidth to spare with any bisection to determine<br>
what the actual fault may be.=C2=A0 I&#39;ve found f6890f22 to yield<br>
satisfactory results.<br>
<br>
This is built in a CentOS 7 native install (with EPEL and some other<br>
extra repos enabled).<br>
<br>
Regards,<br>
<br>
Mitch<br>
<br>
On Wed, 2019-06-19 at 17:08 +0000, Roberto Michio Marques Kagami wrote:<br>
&gt; Hello, Mitch!<br>
&gt;<br>
&gt; I&#39;ve faced the same problem.<br>
&gt; I&#39;ve tried the first commit after f6890f22 including Vivado versio=
n<br>
&gt; 2018.3 and the error is the same.<br>
&gt; Did you received any reply for this failure?<br>
&gt; I would appreciate any information.<br>
&gt; Thanks!<br>
&gt;<br>
&gt; Regards,<br>
&gt; Roberto Kagami<br>
&gt; De: USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk598299" href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=
=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; em nome de Mitch<br>
&gt; Davis via USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-404=
2973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144=
361663608LPlnk455926" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt; Enviado: segunda-feira, 17 de junho de 2019 15:44:07<br>
&gt; Para: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWA=
AutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk54555=
8" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
&gt; Assunto: Re: [USRP-users] RFNoC multi-driven nets<br>
&gt;<br>
&gt; My apologies for not connecting this message to the OP, I didn&#39;t<b=
r>
&gt; register this email account to the list until after the post.<br>
&gt; However,<br>
&gt; Peter had posted that he was having issues building the latest X310<br=
>
&gt; RFNOC image (with an RFNOC block) with an error of multiple-drivers<br=
>
&gt; on<br>
&gt; two nets (ce_clk and ce_rst):<br>
&gt;<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk96185" href=
=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/0=
60013.html" target=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-June/06001=
3.html</a><br>
&gt;<br>
&gt; I too encountered this same error.<br>
&gt;<br>
&gt; On a hunch, I reverted the repo to the commit just before the Vivado<b=
r>
&gt; 2018.3 update: f6890f227b40687b356c1e6c10d9eec2184691d0<br>
&gt;<br>
&gt; I was able to build the X310 RFNOC image with an RFNOC block using<br>
&gt; that<br>
&gt; commit without failure.<br>
&gt;<br>
&gt; I haven&#39;t attempted a bisection yet.=C2=A0 Is there anyone else th=
at has<br>
&gt; observed similar build failures?<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Mitch Davis<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk641674" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk359857" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk987415"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/dfa72556/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/dfa72556/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 8<br>
Date: Wed, 19 Jun 2019 14:13:46 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a class=3D"m_-858198573249696902gmai=
l-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40=
42973144361663608LPlnk682769" href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLin=
k" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk221054" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Waveform Shape Not Accurate<br>
Message-ID: &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616636=
08OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk=
662860" href=3D"mailto:5D0A7B5A.4010807@gmail.com" target=3D"_blank">5D0A7B=
5A.4010807@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;windows-1252&quot;; Format=3D&quo=
t;flowed&quot;<br>
<br>
On 06/19/2019 08:24 AM, Simona Sibio via USRP-users wrote:<br>
&gt; In attachment, there is the flowgraph on GNU radio.<br>
&gt; In the previous email, I meat that the result is the same regarding <b=
r>
&gt; the amplitude accuracy, not regarding the value.<br>
&gt; When I change the amplitude or the gain on GNU radio, also the <br>
&gt; amplitude changes in the oscilloscope.<br>
&gt;<br>
&gt; Thank you for your time.<br>
&gt;<br>
&gt; Simona<br>
What happens if, instead of using a constant, using a 10kHz tone, and <br>
offset your Fc by 10kHz, does it look better then?<br>
<br>
<br>
&gt;<br>
&gt; Il giorno mer 19 giu 2019 alle ore 13:00 Nick Foster <br>
&gt; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk419823"=
 href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.co=
m</a> &lt;mailto:<a class=3D"m_-858198573249696902gmail-m_-4042973144361663=
608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPln=
k17283" href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@g=
mail.com</a>&gt;&gt;
 ha scritto:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Can you post the flowgraph you&#39;re using again? =
If you changed<br>
&gt;=C2=A0 =C2=A0 =C2=A0transmit gain and amplitude, the result should have=
 changed in<br>
&gt;=C2=A0 =C2=A0 =C2=A0amplitude, while the image you just sent has the fa=
me magnitude<br>
&gt;=C2=A0 =C2=A0 =C2=A0the last one did.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On Wed, Jun 19, 2019, 5:03 AM Simona Sibio &lt;<a c=
lass=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D=
"m_-858198573249696902gmail-m_-4042973144361663608LPlnk52315" href=3D"mailt=
o:ssibio2@gmail.com" target=3D"_blank">ssibio2@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a class=3D"m_-858198573249696902gmail-m=
_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429=
73144361663608LPlnk723079" href=3D"mailto:ssibio2@gmail.com" target=3D"_bla=
nk">ssibio2@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you very much.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I tried to send a signal with this fe=
atures, but the result is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the same (IMG_6590).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I tried with every amplitude and ever=
y gain (Screenshot from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02019).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Before, I thought that it was a probl=
em of reference signal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and I changed it but the situation is=
 not changed.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you in advance for your help.<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Best Regards,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Simona<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Il giorno mar 18 giu 2019 alle ore 18=
:06 Nick Foster<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a class=3D"m_-858198573249696902=
gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m=
_-4042973144361663608LPlnk197765" href=3D"mailto:bistromath@gmail.com" targ=
et=3D"_blank">bistromath@gmail.com</a> &lt;mailto:<a class=3D"m_-8581985732=
49696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-85819857324969690=
2gmail-m_-4042973144361663608LPlnk487365" href=3D"mailto:bistromath@gmail.c=
om" target=3D"_blank">bistromath@gmail.com</a>&gt;&gt;
 ha scritto:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Turn up the transmit ga=
in on the USRP sink. Start with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~40dB and transmit ampl=
itude 0.3.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Nick<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, Jun 18, 2019 at=
 9:40 AM Simona Sibio<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a class=3D"m_-8581=
98573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-85819857324=
9696902gmail-m_-4042973144361663608LPlnk978634" href=3D"mailto:ssibio2@gmai=
l.com" target=3D"_blank">ssibio2@gmail.com</a> &lt;mailto:<a class=3D"m_-85=
8198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573=
249696902gmail-m_-4042973144361663608LPlnk74100" href=3D"mailto:ssibio2@gma=
il.com" target=3D"_blank">ssibio2@gmail.com</a>&gt;&gt;
 wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you=
 for the assistance.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I tried t=
o change the amplitude but the amplitude and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0frequency=
 are not accurate in the oscilloscope yet.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0If I lowe=
r the amplitude, the S/N is lowered then it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0is worst.=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Best Rega=
rds,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Simona<br=
>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Il giorno=
 mar 18 giu 2019 alle ore 18:33 Nick Foster<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a cl=
ass=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"=
m_-858198573249696902gmail-m_-4042973144361663608LPlnk960449" href=3D"mailt=
o:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.com</a> &lt;mail=
to:<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink=
" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk191587" href=
=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gmail.com</a>=
&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ha scritt=
o:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Waveform source amplitude is too high. Turn it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0down to &lt;0.4.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314436=
1663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608=
LPlnk129056" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0&lt;mailto:<a class=3D"m_-858198573249696902gmail-m_-4042973144361663=
608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPln=
k479863" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Hi Michael,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0thank you for your interest.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0I have two N200 and each one have two<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0daughterboard UBX-40; the transmitters are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0connected by coaxial cable to an oscilloscope<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0(Rhode&amp;Schwarz RTO2064) to check the waveform.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0The version of UHD is 3.13.0.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0I tried to send a constant signal using the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0flowgraph (Screenshot from 2019-06-18<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A014-56-57) in attachment on GNU radio Companion<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A03.7.13.4, and on the oscilloscope I saw this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&quot;IMG_6586&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Also, I tried to generate a constant signal in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Simulink model (16-42-17 &amp; 16-14-04) on Matlab<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0R2019a but, on the oscilloscope, I saw this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&quot;IMG_6584&quot;.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0I tried to send a sine signal with the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Simulink model in attachment (16-46-10) and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0on the oscilloscope, I saw this &quot;IMG_6583&quot;.<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Also I tried to generate the sine signal with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0GNU radio (17-08-58) and I saw this &quot;IMG_6588&quot=
;.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0It is possible to see how the amplitude and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0frequency change in every case, I need to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0obtain an accurate signal because I have to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0measure the amplitude and phase in a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0particular point in the circuit.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0And in the previous email, I added that the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0problem increases when I lower the carrier<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0frequency. All these measures were taken with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0a carrier frequency at 3 GHz, but if I change<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0the fc at 1 GHz the shape is worst, e.g. IMG_6589.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Thank you in advance.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Best Regards,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Simona<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Il giorno mar 18 giu 2019 alle ore 15:34<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Michael Dickens &lt;<a class=3D"m_-858198573249696902gm=
ail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-=
4042973144361663608LPlnk187181" href=3D"mailto:michael.dickens@ettus.com" t=
arget=3D"_blank">michael.dickens@ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk626916" href=3D"mailto:michael.dickens@ettus.com" target=3D"=
_blank">michael.dickens@ettus.com</a>&gt;&gt; ha scritto:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Hi Simona - Can you please educate us as<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0to a few items?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* your setup: you have an N200 + some<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0daughterboard (which one) + some spectrum=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0analyzer (which one), connected ?somehow?=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; are you doing actual wireless Tx -&=
gt; Rx,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0or do you have a cable hooked up between<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the N200 &amp; spectrum analyzer?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* what waveform you&#39;re trying to gene=
rate,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and what is the actual flowgraph you&#39;=
re<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0using for GNU Radio? how are you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0generating the waveform in MATLAB?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* which version of GNU Radio and UHD are<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0you trying to use?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* which version of MATLAB and it&#39;s UH=
D are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0you trying to use?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0The above might help someone to diagnose<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0your issue ... without it, we can make<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0some guesses but not much in the way of<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0specifics.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Please remember to &quot;reply all&quot;,=
 so that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0others can see your response and be able<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0to chime in to provide help. - MLD<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Tue, Jun 18, 2019, at 8:42 AM, Simona<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Sibio via USRP-users wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Dear Sir/Madam,<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I am Simona Sibio, a student in Herio=
t<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Watt University.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I am working with USRPs both on Matla=
b<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and on Gnuradio, and with both softwa=
res<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I have the same problem: the shape<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(generated by N200+daughterboard 10 M=
Hz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0to 6 GHz) is not accurate, in attacch=
ed<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0some photos.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0At 1 GHz, the shape is worst than whe=
n<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the carrier frequency is 3GHz.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0It is not possible to measure the<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amplitude and frequency because, also=
 at<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03 GHz, it is not stable.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Could you help me?<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you in advance.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Best Regards,<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Simona<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<a class=3D"m_-858198573249696902gmail-m_-4042973144361=
663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608L=
Plnk813511" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk70326" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"=
_blank">USRP-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<a class=3D"m_-858198573249696902gmail-m_-4042973144361=
663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608L=
Plnk589471" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk460841" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk512509" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk866905"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/b18f9eed/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/b18f9eed/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 9<br>
Date: Wed, 19 Jun 2019 19:04:43 +0000<br>
From: Jessica Iwamoto &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973=
144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443616=
63608LPlnk134975" href=3D"mailto:jessica.iwamoto@aero.org" target=3D"_blank=
">jessica.iwamoto@aero.org</a>&gt;<br>
To: usrp-users &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk958407" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] RX/TX on 4 channels on N310<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk995874" href=3D"mailto:SN6PR0901MB2318A4EF7805BB2D0540F0F59=
BE50@SN6PR0901MB2318.namprd09.prod.outlook.com" target=3D"_blank">SN6PR0901=
MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com</=
a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Hello,<br>
<br>
I am getting a lot of underflows when trying to use dual RX/TX on 4 channel=
s on the N310. My application creates one multi_usrp object and 8 streamers=
 (4 RX, 4 TX) each on a different thread. Samples are received from the RX =
threads, put into buffers, and then
 transmitted in the TX threads. I can run it on 1 channel and 2 channels, b=
ut when I try using more channels, I get a ton of underflows. When I use 2 =
channels, I also have to specify the subdevice as &quot;A:0 B:0 A:1 B:1&quo=
t;, otherwise I will get a lot of underflows
 with the default subdevice spec of &quot;A:0 A:1 B:0 B:1&quot;. I have tri=
ed the txrx_loopback_to_file example with 4 channels and it works fine, alt=
hough this example only uses 2 streamers, each controlling 4 channels. Any =
suggestions on what to try to make this work?
 I am using UHD v3.13.1.0-rc1.<br>
<br>
Thanks,<br>
<br>
Jessica Iwamoto<br>
Member of Technical Staff<br>
The Aerospace Corporation<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk649431"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/72ae6914/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/72ae6914/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 10<br>
Date: Wed, 19 Jun 2019 12:21:04 -0700<br>
From: Nate Temple &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk89609" href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.t=
emple@ettus.com</a>&gt;<br>
To: Jessica Iwamoto &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk245274" href=3D"mailto:jessica.iwamoto@aero.org" target=3D"_blank">=
jessica.iwamoto@aero.org</a>&gt;<br>
Cc: usrp-users &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk583294" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RX/TX on 4 channels on N310<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk186799" href=3D"mailto:CAL263iz3nDc_eKtbT5gMP-i%2BdMB_CxFkq=
xstGV8Bad1m1os2ZQ@mail.gmail.com" target=3D"_blank">CAL263iz3nDc_eKtbT5gMP-=
i+dMB_CxFkqxstGV8Bad1m1os2ZQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi Jessica,<br>
<br>
What sample rate are you trying to run at per channel?<br>
<br>
I would suggest to use DPDK as it will remove a considerable overhead from<=
br>
the Linux networking stack.<br>
<br>
I can follow up with you off the list with some notes I have on getting<br>
DPDK going, we have a pending app note that will be published soon on the<b=
r>
topic.<br>
<br>
Regards,<br>
Nate Temple<br>
<br>
<br>
On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users &lt;<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk746033" href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br>
<br>
&gt; Hello,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I am getting a lot of underflows when trying to use dual RX/TX on 4<br=
>
&gt; channels on the N310. My application creates one multi_usrp object and=
 8<br>
&gt; streamers (4 RX, 4 TX) each on a different thread. Samples are receive=
d<br>
&gt; from the RX threads, put into buffers, and then transmitted in the TX<=
br>
&gt; threads. I can run it on 1 channel and 2 channels, but when I try usin=
g<br>
&gt; more channels, I get a ton of underflows. When I use 2 channels, I als=
o<br>
&gt; have to specify the subdevice as ?A:0 B:0 A:1 B:1?, otherwise I will g=
et a<br>
&gt; lot of underflows with the default subdevice spec of ?A:0 A:1 B:0 B:1?=
. I<br>
&gt; have tried the txrx_loopback_to_file example with 4 channels and it wo=
rks<br>
&gt; fine, although this example only uses 2 streamers, each controlling 4<=
br>
&gt; channels. Any suggestions on what to try to make this work? I am using=
 UHD<br>
&gt;=C2=A0 v3.13.1.0-rc1.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Jessica Iwamoto<br>
&gt;<br>
&gt; Member of Technical Staff<br>
&gt;<br>
&gt; The Aerospace Corporation<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk708065" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk82931" href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk420681"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/f8ea8838/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/f8ea8838/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 11<br>
Date: Wed, 19 Jun 2019 12:52:53 -0700<br>
From: Ali Dormiani &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144=
361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443616636=
08LPlnk961302" href=3D"mailto:sdormian@eng.ucsd.edu" target=3D"_blank">sdor=
mian@eng.ucsd.edu</a>&gt;<br>
Cc: usrp-users &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk483081" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RX/TX on 4 channels on N310<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk367783" href=3D"mailto:CANaxSipH1Jbs%2ButqwhbxWVsnzEvDjRv5t=
zS4oyXPWV5mT8-WaQ@mail.gmail.com" target=3D"_blank">CANaxSipH1Jbs+utqwhbxWV=
snzEvDjRv5tzS4oyXPWV5mT8-WaQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
What does your network setup look like? Could you please provide the SFP+<b=
r>
card and the motherboard you are using on the host side?<br>
<br>
Alternatively, if you are using some adapters (SFP+ to cat 6 RJ45 to<br>
thunderbolt) please provide that as well or instead.<br>
<br>
Thanks,<br>
<br>
Ali<br>
<br>
On Wed, Jun 19, 2019 at 12:21 PM Nate Temple via USRP-users &lt;<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk482890" href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br>
<br>
&gt; Hi Jessica,<br>
&gt;<br>
&gt; What sample rate are you trying to run at per channel?<br>
&gt;<br>
&gt; I would suggest to use DPDK as it will remove a considerable overhead =
from<br>
&gt; the Linux networking stack.<br>
&gt;<br>
&gt; I can follow up with you off the list with some notes I have on gettin=
g<br>
&gt; DPDK going, we have a pending app note that will be published soon on =
the<br>
&gt; topic.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Nate Temple<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users &lt;<b=
r>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk599892" hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I am getting a lot of underflows when trying to use dual RX/TX on =
4<br>
&gt;&gt; channels on the N310. My application creates one multi_usrp object=
 and 8<br>
&gt;&gt; streamers (4 RX, 4 TX) each on a different thread. Samples are rec=
eived<br>
&gt;&gt; from the RX threads, put into buffers, and then transmitted in the=
 TX<br>
&gt;&gt; threads. I can run it on 1 channel and 2 channels, but when I try =
using<br>
&gt;&gt; more channels, I get a ton of underflows. When I use 2 channels, I=
 also<br>
&gt;&gt; have to specify the subdevice as ?A:0 B:0 A:1 B:1?, otherwise I wi=
ll get a<br>
&gt;&gt; lot of underflows with the default subdevice spec of ?A:0 A:1 B:0 =
B:1?. I<br>
&gt;&gt; have tried the txrx_loopback_to_file example with 4 channels and i=
t works<br>
&gt;&gt; fine, although this example only uses 2 streamers, each controllin=
g 4<br>
&gt;&gt; channels. Any suggestions on what to try to make this work? I am u=
sing UHD<br>
&gt;&gt;=C2=A0 v3.13.1.0-rc1.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Jessica Iwamoto<br>
&gt;&gt;<br>
&gt;&gt; Member of Technical Staff<br>
&gt;&gt;<br>
&gt;&gt; The Aerospace Corporation<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk325036"=
 href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt;&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk915392"=
 href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk421343" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk529720" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk740148"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/da5dfb3c/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/da5dfb3c/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 12<br>
Date: Wed, 19 Jun 2019 14:18:31 -0700<br>
From: Nick Foster &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk284345" href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistro=
math@gmail.com</a>&gt;<br>
To: &quot;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAA=
utoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk869440=
" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042=
973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443=
61663608LPlnk905625" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_=
blank">USRP-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] Receiving response packets via UHD<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CA+JMMq8Vjq3sKBwAE11FBBKD0ZoSFS=3D<a class=
=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-=
858198573249696902gmail-m_-4042973144361663608LPlnk959088" href=3D"mailto:M=
cV-5njkL3U7LbskzYg@mail.gmail.com" target=3D"_blank">McV-5njkL3U7LbskzYg@ma=
il.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi all,<br>
<br>
I&#39;ve created an RFNoC block which sends back a response to indicate whe=
ther<br>
a transmission successfully occurred or not, via the cmdout interface of<br=
>
noc_shell. The Verilog is all fine and the testbench works using<br>
pull_resp_pkt() to retrieve the data. I&#39;m wondering how to receive that=
<br>
same data in my host-side application. Do I need to create an rx streamer<b=
r>
for the block? This block doesn&#39;t send any sample data back to the host=
,<br>
just the command response.<br>
<br>
Any examples where I can see this done?<br>
<br>
Thanks!<br>
Nick<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk4488" h=
ref=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachme=
nts/20190619/104f73f9/attachment-0001.html" target=3D"_blank" rel=3D"norefe=
rrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachmen=
ts/20190619/104f73f9/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 13<br>
Date: Thu, 20 Jun 2019 08:56:28 +1000<br>
From: &quot;Chris Gobbett&quot; &lt;<a class=3D"m_-858198573249696902gmail-=
m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042=
973144361663608LPlnk939713" href=3D"mailto:gobbo@tpg.com.au" target=3D"_bla=
nk">gobbo@tpg.com.au</a>&gt;<br>
To: &quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m=
_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429=
73144361663608LPlnk754216" href=3D"mailto:jason@gardettoengineering.com" ta=
rget=3D"_blank">jason@gardettoengineering.com</a>&gt;, &quot;Ettus Mail<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 List&quot; &lt;<a class=3D"m_-85819857324969690=
2gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-=
m_-4042973144361663608LPlnk17020" href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk443639" href=3D"mailto:d69386c0f5b0f1339eee9da920334aed03a8=
17ac@new-postoffice.tpg.com.au" target=3D"_blank">d69386c0f5b0f1339eee9da92=
0334aed03a817ac@new-postoffice.tpg.com.au</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
?<br>
Hi Jason,<br>
I&#39;ve had luck with the following:- backup/clone the original SDCard<br>
image to disk and/or larger SDCard (using dd or otherwise)- on the new<br>
card, resize/shift the data partion to the end of the card (using<br>
gparted)- resize the two filesystem/kernel partitions to fill in the<br>
empty space in the middle, but they need to be the same size (using<br>
gparted)<br>
Read up on Mender for more info on the partition layout<br>
(<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" =
id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk474198" href=3D=
"https://docs.mender.io/1.7/devices/general-system-requirements#partition-l=
ayout" target=3D"_blank" rel=3D"noreferrer">https://docs.mender.io/1.7/devi=
ces/general-system-requirements#partition-layout</a>).<br>
It&#39;s a pain that they went with Mender for the default E320 card; it<br=
>
cuts the &#39;usable&#39; file system space in half, at the benefit of havi=
ng<br>
2 independent filesystem partitions... I haven&#39;t had time to fiddle<br>
around and ditch the mender for a &#39;normal&#39; partition layout, but I&=
#39;d<br>
assume it&#39;s possible.<br>
Cheers,Chris<br>
<br>
----- Original Message -----<br>
From: &quot;Jason Matusiak&quot; <br>
To:&quot;Ettus Mail List&quot; <br>
Cc:<br>
Sent:Wed, 19 Jun 2019 16:29:38 +0000<br>
Subject:[USRP-users] E320 with larger SD card<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I wanted to use a larger SD card than the one t=
hat as supplied, but I<br>
am having issues.? I loaded up the card, and then extended the data<br>
partition to use up the rest of the free space (about 100GB).? But<br>
then it doesn&#39;t boot. <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am wondering if the change to a partition siz=
e screwed up something<br>
in a config file somewhere.? Is there a way to fix this without<br>
rebuilding a docker image?? I am using the UHD 3.14.0.0. that has the<br>
smaller data partition (UHD 3.14.1.0 has a larger data partition, but<br>
doesn&#39;t include any GR/python packages, so I need to use the older<br>
image). <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Thanks.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk572043"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190620/3b4fd1f1/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/3b4fd1f1/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 14<br>
Date: Wed, 19 Jun 2019 23:12:40 +0000<br>
From: Jason Matusiak &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731=
44361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166=
3608LPlnk373" href=3D"mailto:jason@gardettoengineering.com" target=3D"_blan=
k">jason@gardettoengineering.com</a>&gt;<br>
To: Chris Gobbett &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk664043" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">gobbo@tpg.=
com.au</a>&gt;<br>
Cc: Ettus Mail List &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk407987" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk950117" href=3D"mailto:2ec7c512-449a-4d1b-8db7-5c0d013dba79=
@gardettoengineering.com" target=3D"_blank">2ec7c512-449a-4d1b-8db7-5c0d013=
dba79@gardettoengineering.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Chris, thanks for the tips.<br>
<br>
So I put a fresh load on a card, then used gparted to extend the data parti=
tion to fill things out. That isn&#39;t enough, and your instructions certa=
inly show more steps. But I don&#39;t understand what you mean with the par=
titions in the middle.<br>
<br>
I&#39;ll read up on Mender and see if that answers it for me. Thanks again.=
<br>
On Jun 19, 2019, at 6:56 PM, Chris Gobbett &lt;<a class=3D"m_-8581985732496=
96902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gm=
ail-m_-4042973144361663608LPlnk360139" href=3D"mailto:gobbo@tpg.com.au" tar=
get=3D"_blank">gobbo@tpg.com.au</a>&lt;mailto:<a class=3D"m_-85819857324969=
6902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gma=
il-m_-4042973144361663608LPlnk681279" href=3D"mailto:gobbo@tpg.com.au" targ=
et=3D"_blank">gobbo@tpg.com.au</a>&gt;&gt;
 wrote:<br>
<br>
Hi Jason,<br>
<br>
I&#39;ve had luck with the following:<br>
- backup/clone the original SDCard image to disk and/or larger SDCard (usin=
g dd or otherwise)<br>
- on the new card, resize/shift the data partion to the end of the card (us=
ing gparted)<br>
- resize the two filesystem/kernel partitions to fill in the empty space in=
 the middle, but they need to be the same size (using gparted)<br>
<br>
Read up on Mender for more info on the partition layout (<a class=3D"m_-858=
198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-8581985732=
49696902gmail-m_-4042973144361663608LPlnk521981" href=3D"https://docs.mende=
r.io/1.7/devices/general-system-requirements#partition-layout" target=3D"_b=
lank" rel=3D"noreferrer">https://docs.mender.io/1.7/devices/general-system-=
requirements#partition-layout</a>).
 It&#39;s a pain that they went with Mender for the default E320 card; it c=
uts the &#39;usable&#39; file system space in half, at the benefit of havin=
g 2 independent filesystem partitions... I haven&#39;t had time to fiddle a=
round and ditch the mender for a &#39;normal&#39; partition
 layout, but I&#39;d assume it&#39;s possible.<br>
<br>
Cheers,<br>
Chris<br>
<br>
<br>
<br>
----- Original Message -----<br>
From:<br>
&quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk469459" href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<br>
To:<br>
&quot;Ettus Mail List&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk16241" href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Cc:<br>
<br>
Sent:<br>
Wed, 19 Jun 2019 16:29:38 +0000<br>
Subject:<br>
[USRP-users] E320 with larger SD card<br>
<br>
<br>
<br>
I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.=C2=A0 I loaded up the card, and then extended the data partiti=
on to use up the rest of the free space (about 100GB).=C2=A0 But then it do=
esn&#39;t boot.<br>
<br>
<br>
I am wondering if the change to a partition size screwed up something in a =
config file somewhere.=C2=A0 Is there a way to fix this without rebuilding =
a docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the smaller dat=
a partition (UHD 3.14.1.0 has a larger data
 partition, but doesn&#39;t include any GR/python packages, so I need to us=
e the older image).<br>
<br>
<br>
Thanks.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk302638"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190619/3d56798d/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190619/3d56798d/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 15<br>
Date: Thu, 20 Jun 2019 10:21:08 +1000<br>
From: &quot;Chris Gobbett&quot; &lt;<a class=3D"m_-858198573249696902gmail-=
m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042=
973144361663608LPlnk702083" href=3D"mailto:gobbo@tpg.com.au" target=3D"_bla=
nk">gobbo@tpg.com.au</a>&gt;<br>
To: &quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m=
_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429=
73144361663608LPlnk273752" href=3D"mailto:jason@gardettoengineering.com" ta=
rget=3D"_blank">jason@gardettoengineering.com</a>&gt;, &quot;Ettus List&quo=
t;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk65375" href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Cc: &quot;Ettus Mail List&quot; &lt;<a class=3D"m_-858198573249696902gmail-=
m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042=
973144361663608LPlnk833836" href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk328983" href=3D"mailto:89fd7840a5b67527cbfe0709d2cbcf0ccc3c=
9311@new-postoffice.tpg.com.au" target=3D"_blank">89fd7840a5b67527cbfe0709d=
2cbcf0ccc3c9311@new-postoffice.tpg.com.au</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
?<br>
My understanding of the partiitons on the card are (in order);<br>
<br>
Mender allows you to boot from one of the A/B partitions as your<br>
primary filesystem (mounted as /), plus the persistent data (mounted<br>
as /home/ or /data or similar).?<br>
My experience is if you perform resizing while keeping the partitions<br>
contiguous (no free space between them), and have the A and B<br>
partitions identical in size, it &quot;just works&quot;. So my steps in the=
<br>
previous reply would look like:? ?? # original image on large SD<br>
Card? ?? # shift persistent data to the end? ?? # maximise A/B<br>
partitions, keeping A and B the same size<br>
Rather than extending the data partition, I wanted to add new<br>
libraries and applications in /usr, which is located on the A/B<br>
partitions. Hence my instructions involve me resizing those partitions<br>
instead of the data partition.?<br>
If you&#39;re simply extending the size of the persistent data partition<br=
>
without shifting it&#39;s start point (while leaving the other partitions<b=
r>
alone) I&#39;m at a loss as to why it wouldn&#39;t work. But when you do th=
is<br>
you may need some extra linux-fu to shift your new binary/library<br>
locations to that partition rather than the default /usr.<br>
Cheers,Chris<br>
<br>
----- Original Message -----<br>
From: &quot;Jason Matusiak&quot; <br>
To:&quot;Chris Gobbett&quot; <br>
Cc:&quot;Ettus Mail List&quot; <br>
Sent:Wed, 19 Jun 2019 23:12:40 +0000<br>
Subject:Re: [USRP-users] E320 with larger SD card<br>
<br>
Chris, thanks for the tips.<br>
<br>
=C2=A0So I put a fresh load on a card, then used gparted to extend the data=
<br>
partition to fill things out. That isn&#39;t enough, and your instructions<=
br>
certainly show more steps. But I don&#39;t understand what you mean with<br=
>
the partitions in the middle. <br>
<br>
=C2=A0I&#39;ll read up on Mender and see if that answers it for me. Thanks<=
br>
again. On Jun 19, 2019, at 6:56 PM, Chris Gobbett=C2=A0 wrote:=C2=A0 ? <br>
=C2=A0Hi Jason, <br>
=C2=A0I&#39;ve had luck with the following:=C2=A0 - backup/clone the origin=
al SDCard<br>
image to disk and/or larger SDCard (using dd or otherwise)=C2=A0 - on the<b=
r>
new card, resize/shift the data partion to the end of the card (using<br>
gparted)=C2=A0 - resize the two filesystem/kernel partitions to fill in the=
<br>
empty space in the middle, but they need to be the same size (using<br>
gparted)=C2=A0 <br>
=C2=A0Read up on Mender for more info on the partition layout<br>
(<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" =
id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk346661" href=3D=
"https://docs.mender.io/1.7/devices/general-system-requirements#partition-l=
ayout" target=3D"_blank" rel=3D"noreferrer">https://docs.mender.io/1.7/devi=
ces/general-system-requirements#partition-layout</a>).<br>
It&#39;s a pain that they went with Mender for the default E320 card; it<br=
>
cuts the &#39;usable&#39; file system space in half, at the benefit of havi=
ng<br>
2 independent filesystem partitions... I haven&#39;t had time to fiddle<br>
around and ditch the mender for a &#39;normal&#39; partition layout, but I&=
#39;d<br>
assume it&#39;s possible.=C2=A0 <br>
=C2=A0Cheers,=C2=A0 Chris=C2=A0 <br>
<br>
=C2=A0----- Original Message ----- <br>
=C2=A0From:=C2=A0 &quot;Jason Matusiak&quot;=C2=A0 =C2=A0<br>
To:=C2=A0 &quot;Ettus Mail List&quot;=C2=A0 <br>
Cc:=C2=A0 <br>
Sent:=C2=A0 Wed, 19 Jun 2019 16:29:38 +0000 <br>
Subject:=C2=A0 [USRP-users] E320 with larger SD card <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I wanted to use a larger SD card than the one t=
hat as supplied, but I<br>
am having issues.? I loaded up the card, and then extended the data<br>
partition to use up the rest of the free space (about 100GB).? But<br>
then it doesn&#39;t boot. <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am wondering if the change to a partition siz=
e screwed up something<br>
in a config file somewhere.? Is there a way to fix this without<br>
rebuilding a docker image?? I am using the UHD 3.14.0.0. that has the<br>
smaller data partition (UHD 3.14.1.0 has a larger data partition, but<br>
doesn&#39;t include any GR/python packages, so I need to use the older<br>
image). <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Thanks.=C2=A0 =C2=A0 =C2=A0 <br>
<br>
Links:<br>
------<br>
[1] mailto:<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWA=
AutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk82172=
1" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">gobbo@tpg.com.au</a><=
br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk54860" =
href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/60106c14/attachment-0001.html" target=3D"_blank" rel=3D"noref=
errer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachme=
nts/20190620/60106c14/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 16<br>
Date: Thu, 20 Jun 2019 00:32:30 +0000<br>
From: Jason Matusiak &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731=
44361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166=
3608LPlnk580923" href=3D"mailto:jason@gardettoengineering.com" target=3D"_b=
lank">jason@gardettoengineering.com</a>&gt;<br>
To: Chris Gobbett &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk398478" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">gobbo@tpg.=
com.au</a>&gt;<br>
Cc: Ettus List &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk298933" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk562957" href=3D"mailto:ee9bf2f5-4fa1-4fa2-b213-c3da7cc1dacb=
@gardettoengineering.com" target=3D"_blank">ee9bf2f5-4fa1-4fa2-b213-c3da7cc=
1dacb@gardettoengineering.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
OK, I see now what you were doing different. I think I could deal with leav=
ing the /data partition the same size and increasing the two filesystems. I=
 was just trying to save myself the hassle of performing a mender update do=
wn the road and forgetting that
 the data in ~/ wasn&#39;t persistent.<br>
<br>
I guess it is something to try for now (tomorrow), and then flesh out the /=
data problem after having a better understanding of what is going on (hopef=
ully).<br>
On Jun 19, 2019, at 8:21 PM, Chris Gobbett &lt;<a class=3D"m_-8581985732496=
96902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gm=
ail-m_-4042973144361663608LPlnk742590" href=3D"mailto:gobbo@tpg.com.au" tar=
get=3D"_blank">gobbo@tpg.com.au</a>&lt;mailto:<a class=3D"m_-85819857324969=
6902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gma=
il-m_-4042973144361663608LPlnk501463" href=3D"mailto:gobbo@tpg.com.au" targ=
et=3D"_blank">gobbo@tpg.com.au</a>&gt;&gt;
 wrote:<br>
<br>
My understanding of the partiitons on the card are (in order);<br>
<br>
&lt;boot&gt;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B&gt;&lt;persi=
stent data&gt;&lt;empty space&gt;<br>
<br>
Mender allows you to boot from one of the A/B partitions as your primary fi=
lesystem (mounted as /), plus the persistent data (mounted as /home/ or /da=
ta or similar).<br>
<br>
My experience is if you perform resizing while keeping the partitions conti=
guous (no free space between them), and have the A and B partitions identic=
al in size, it &quot;just works&quot;. So my steps in the previous reply wo=
uld look like:<br>
=C2=A0 =C2=A0&lt;boot&gt;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B=
&gt;&lt;persistent data&gt;&lt;----------empty space---------------&gt;=C2=
=A0 # original image on large SD Card<br>
=C2=A0 =C2=A0&lt;boot&gt;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B=
&gt;&lt;-------------empty space------------&gt;&lt;persistent data&gt;=C2=
=A0 # shift persistent data to the end<br>
=C2=A0 =C2=A0&lt;boot&gt;&lt;----------filesystem+kernel A---------&gt;&lt;=
----------filesystem+kernel B---------&gt;&lt;persistent data&gt;=C2=A0 # m=
aximise A/B partitions, keeping A and B the same size<br>
<br>
Rather than extending the data partition, I wanted to add new libraries and=
 applications in /usr, which is located on the A/B partitions. Hence my ins=
tructions involve me resizing those partitions instead of the data partitio=
n.<br>
<br>
If you&#39;re simply extending the size of the persistent data partition wi=
thout shifting it&#39;s start point (while leaving the other partitions alo=
ne) I&#39;m at a loss as to why it wouldn&#39;t work. But when you do this =
you may need some extra linux-fu to shift your new
 binary/library locations to that partition rather than the default /usr.<b=
r>
<br>
Cheers,<br>
Chris<br>
<br>
----- Original Message -----<br>
From:<br>
&quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk226673" href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<br>
To:<br>
&quot;Chris Gobbett&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-404=
2973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144=
361663608LPlnk823532" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">go=
bbo@tpg.com.au</a>&gt;<br>
Cc:<br>
&quot;Ettus Mail List&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk483804" href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Sent:<br>
Wed, 19 Jun 2019 23:12:40 +0000<br>
Subject:<br>
Re: [USRP-users] E320 with larger SD card<br>
<br>
<br>
Chris, thanks for the tips.<br>
<br>
So I put a fresh load on a card, then used gparted to extend the data parti=
tion to fill things out. That isn&#39;t enough, and your instructions certa=
inly show more steps. But I don&#39;t understand what you mean with the par=
titions in the middle.<br>
<br>
I&#39;ll read up on Mender and see if that answers it for me. Thanks again.=
<br>
On Jun 19, 2019, at 6:56 PM, Chris Gobbett &lt; <a class=3D"m_-858198573249=
696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902g=
mail-m_-4042973144361663608LPlnk51959" href=3D"mailto:gobbo@tpg.com.au" tar=
get=3D"_blank">
gobbo@tpg.com.au</a>&lt;mailto:<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk77364" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">go=
bbo@tpg.com.au</a>&gt;&gt; wrote:<br>
<br>
Hi Jason,<br>
<br>
I&#39;ve had luck with the following:<br>
- backup/clone the original SDCard image to disk and/or larger SDCard (usin=
g dd or otherwise)<br>
- on the new card, resize/shift the data partion to the end of the card (us=
ing gparted)<br>
- resize the two filesystem/kernel partitions to fill in the empty space in=
 the middle, but they need to be the same size (using gparted)<br>
<br>
Read up on Mender for more info on the partition layout (<a class=3D"m_-858=
198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-8581985732=
49696902gmail-m_-4042973144361663608LPlnk110637" href=3D"https://docs.mende=
r.io/1.7/devices/general-system-requirements#partition-layout" target=3D"_b=
lank" rel=3D"noreferrer">https://docs.mender.io/1.7/devices/general-system-=
requirements#partition-layout</a>).
 It&#39;s a pain that they went with Mender for the default E320 card; it c=
uts the &#39;usable&#39; file system space in half, at the benefit of havin=
g 2 independent filesystem partitions... I haven&#39;t had time to fiddle a=
round and ditch the mender for a &#39;normal&#39; partition
 layout, but I&#39;d assume it&#39;s possible.<br>
<br>
Cheers,<br>
Chris<br>
<br>
<br>
<br>
----- Original Message -----<br>
From:<br>
&quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk323484" href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<br>
To:<br>
&quot;Ettus Mail List&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk666034" href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Cc:<br>
<br>
Sent:<br>
Wed, 19 Jun 2019 16:29:38 +0000<br>
Subject:<br>
[USRP-users] E320 with larger SD card<br>
<br>
<br>
<br>
I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.=C2=A0 I loaded up the card, and then extended the data partiti=
on to use up the rest of the free space (about 100GB).=C2=A0 But then it do=
esn&#39;t boot.<br>
<br>
<br>
I am wondering if the change to a partition size screwed up something in a =
config file somewhere.=C2=A0 Is there a way to fix this without rebuilding =
a docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the smaller dat=
a partition (UHD 3.14.1.0 has a larger data
 partition, but doesn&#39;t include any GR/python packages, so I need to us=
e the older image).<br>
<br>
<br>
Thanks.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk863851"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190620/3ce8841b/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/3ce8841b/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 17<br>
Date: Thu, 20 Jun 2019 10:48:40 +0000<br>
From: &quot;Koyel Das (Vehere)&quot; &lt;<a class=3D"m_-858198573249696902g=
mail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_=
-4042973144361663608LPlnk114923" href=3D"mailto:koyel.das@vehere.com" targe=
t=3D"_blank">koyel.das@vehere.com</a>&gt;<br>
To: &quot;&#39;<a class=3D"m_-858198573249696902gmail-m_-404297314436166360=
8OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk7=
23045" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a>&#39;&quot; &lt;<a class=3D"m_-858198573249696902gma=
il-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4=
042973144361663608LPlnk288532" href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] USRP gain refers to which amplifier<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk648832" href=3D"mailto:BM1PR01MB0705C8B2232B5566D41DE1CE90E=
40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM" target=3D"_blank">BM1PR01MB0705=
C8B2232B5566D41DE1CE90E40@BM1PR01MB0705.INDPRD01.PROD.OUTLOOK.COM</a>&gt;<b=
r>
<br>
Content-Type: text/plain; charset=3D&quot;windows-1252&quot;<br>
<br>
Hi,<br>
<br>
<br>
When we set the gain of USRP does that mean we are increasing the gain of a=
mplifier just after the antenna or the gain is spread across various amplif=
iers in the chain?<br>
<br>
<br>
Regards,<br>
<br>
Koyel Das<br>
Senior ? Product Engineer<br>
<br>
Vehere | Proactive Communications Intelligence &amp; Cyber Defence<br>
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: <a class=3D=
"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858=
198573249696902gmail-m_-4042973144361663608LPlnk964784" href=3D"http://www.=
vehere.com" target=3D"_blank" rel=3D"noreferrer">
www.vehere.com</a>&lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk87531" href=3D"http://www.vehere.com/" target=3D"_blank" rel=3D"noref=
errer">http://www.vehere.com/</a>&gt;<br>
<br>
[unnamed]&lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608O=
WAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk526=
177" href=3D"https://www.linkedin.com/company/vehere-interactive-p-ltd" tar=
get=3D"_blank" rel=3D"noreferrer">https://www.linkedin.com/company/vehere-i=
nteractive-p-ltd</a>&gt; [unnamed (1)] &lt;<a class=3D"m_-85819857324969690=
2gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-=
m_-4042973144361663608LPlnk732484" href=3D"https://twitter.com/VehereIndia"=
 target=3D"_blank" rel=3D"noreferrer">https://twitter.com/VehereIndia</a>&g=
t;=C2=A0
 [unnamed (2)] &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk539682" href=3D"https://www.facebook.com/VehereIndia/" target=3D"_blank"=
 rel=3D"noreferrer">https://www.facebook.com/VehereIndia/</a>&gt;<br>
<br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!<br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk526998"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190620/fbcbea02/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/fbcbea02/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 18<br>
Date: Thu, 20 Jun 2019 13:19:22 +0200<br>
From: Fabian Schwartau &lt;<a class=3D"m_-858198573249696902gmail-m_-404297=
3144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361=
663608LPlnk427015" href=3D"mailto:fabian@opencode.eu" target=3D"_blank">fab=
ian@opencode.eu</a>&gt;<br>
To: usrp-users &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616=
63608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LP=
lnk694006" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] unsubscribe<br>
Message-ID: &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616636=
08OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk=
210494" href=3D"mailto:82c62871-038f-5676-1c5e-c1c2adecde88@opencode.eu" ta=
rget=3D"_blank">82c62871-038f-5676-1c5e-c1c2adecde88@opencode.eu</a>&gt;<br=
>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 19<br>
Date: Thu, 20 Jun 2019 10:08:41 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a class=3D"m_-858198573249696902gmai=
l-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40=
42973144361663608LPlnk540736" href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLin=
k" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk579571" href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
Subject: Re: [USRP-users] USRP gain refers to which amplifier<br>
Message-ID: &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443616636=
08OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk=
996690" href=3D"mailto:5D0B9369.5050401@gmail.com" target=3D"_blank">5D0B93=
69.5050401@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;windows-1252&quot;; Format=3D&quo=
t;flowed&quot;<br>
<br>
On 06/20/2019 06:48 AM, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; When we set the gain of USRP does that mean we are increasing the gain=
 <br>
&gt; of amplifier just after the antenna or the gain is spread across <br>
&gt; various amplifiers in the chain?<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Koyel Das<br>
&gt; Senior ? Product Engineer<br>
&gt;<br>
&gt; Vehere | Proactive Communications Intelligence &amp; Cyber Defence<br>
&gt; M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: <br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk183661" hre=
f=3D"http://www.vehere.com" target=3D"_blank" rel=3D"noreferrer">
www.vehere.com</a> &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144=
361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731443616636=
08LPlnk592750" href=3D"http://www.vehere.com/" target=3D"_blank" rel=3D"nor=
eferrer">http://www.vehere.com/</a>&gt;/<br>
&gt; /<br>
/It depends very much on exactly which USRP and daughterboard is in use.<br=
>
<br>
By default, the set-gain function will make &quot;sensible&quot; decisions =
about <br>
distributing gain over the various elements in whatever hardware<br>
=C2=A0 =C2=A0it&#39;s dealing with.<br>
<br>
See:<br>
<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk556968" href=3D"=
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745=
114d83049ed3d0f5fc96e87b2a" target=3D"_blank" rel=3D"noreferrer">https://fi=
les.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a496745114d83049e=
d3d0f5fc96e87b2a</a><br>
<br>
and:<br>
<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk731685" href=3D"=
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077f=
c7331f7675aa796e030bd8a03e" target=3D"_blank" rel=3D"noreferrer">https://fi=
les.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a7e077fc7331f7675=
aa796e030bd8a03e</a><br>
<br>
and:<br>
<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk687707" href=3D"=
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7=
681b796deddd9231f022ffef11" target=3D"_blank" rel=3D"noreferrer">https://fi=
les.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#ad602e7681b796ded=
dd9231f022ffef11</a><br>
<br>
<br>
/<br>
&gt; //<br>
&gt; /unnamed <br>
&gt; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk48006" =
href=3D"https://www.linkedin.com/company/vehere-interactive-p-ltd" target=
=3D"_blank" rel=3D"noreferrer">https://www.linkedin.com/company/vehere-inte=
ractive-p-ltd</a>&gt;unnamed (1)
<br>
&gt; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk814615"=
 href=3D"https://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noreferr=
er">https://twitter.com/VehereIndia</a>&gt;unnamed (2)
<br>
&gt; &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk816084"=
 href=3D"https://www.facebook.com/VehereIndia/" target=3D"_blank" rel=3D"no=
referrer">https://www.facebook.com/VehereIndia/</a>&gt;<br>
&gt;<br>
&gt; Vehere is the proud recipient of the Fastest Growing Technology <br>
&gt; Company Awards in India &amp; Asia since 2012!/<br>
&gt;<br>
&gt; The content of this e-mail is confidential and intended solely for the=
 <br>
&gt; use of the addressee. The text of this email (including any <br>
&gt; attachments) may contain information, which is proprietary and/or <br>
&gt; confidential or privileged in nature belonging to Vehere Interactive <=
br>
&gt; Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you <=
br>
&gt; are not the addressee, or the person responsible for delivering it to =
<br>
&gt; the addressee, any disclosure, copying, distribution or any action <br=
>
&gt; taken or omitted to be taken in reliance on it is prohibited and may <=
br>
&gt; be unlawful. If you have received this e-mail in error, please notify =
<br>
&gt; the sender and remove this communication entirely from your system. <b=
r>
&gt; The recipient acknowledges that no guarantee or any warranty is given =
<br>
&gt; as to completeness and accuracy of the content of the email. The <br>
&gt; recipient further acknowledges that the views contained in the email <=
br>
&gt; message are those of the sender and may not necessarily reflect those =
<br>
&gt; of Vehere Interactive Pvt Ltd. Before opening and accessing the <br>
&gt; attachment please check and scan for virus. WARNING: Computer viruses =
<br>
&gt; can be transmitted via email. The recipient should check this email <b=
r>
&gt; and any attachments for the presence of viruses. The company accepts <=
br>
&gt; no liability for any damage caused by any virus transmitted by this em=
ail.<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk165057" hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLi=
nk" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk721413" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk312459"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190620/f5c18a69/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/f5c18a69/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 20<br>
Date: Thu, 20 Jun 2019 14:24:36 +0000<br>
From: Jason Matusiak &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731=
44361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166=
3608LPlnk114752" href=3D"mailto:jason@gardettoengineering.com" target=3D"_b=
lank">jason@gardettoengineering.com</a>&gt;<br>
To: Chris Gobbett &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk118496" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">gobbo@tpg.=
com.au</a>&gt;, Ettus List<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk642635" href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk290281" href=3D"mailto:BL0PR12MB2340576BD0D54D6DCF1A6B31AFE=
40@BL0PR12MB2340.namprd12.prod.outlook.com" target=3D"_blank">BL0PR12MB2340=
576BD0D54D6DCF1A6B31AFE40@BL0PR12MB2340.namprd12.prod.outlook.com</a>&gt;<b=
r>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
OK, I thought I had it, but it is still not working.=C2=A0 Here are some ne=
w details though.<br>
<br>
<br>
I load up a fresh SD card (I&#39;ve tried both bmaptools as well as dd).=C2=
=A0 I toss it into my E320 and it boots up happy as pie.=C2=A0 I do a prope=
r shutdown and put it back into my host PC.=C2=A0 I unmount and then using =
gparted I extend the data partition. I put the SD card
 back into the E320 and it boots up fine.=C2=A0 dh is showing that the part=
ition is the new larger size and uhd_find_devices works, so I am happy ther=
e.=C2=A0 I reboot and all is gravy.=C2=A0 I shutdown -h now and power-up an=
d all is gravy.<br>
<br>
<br>
I then create a folder in /data called localinstall.=C2=A0 Shutdown and the=
n boot up, all is fine.<br>
<br>
<br>
I install my cross-compiled uhd into that folder.=C2=A0 I issue a shutdown =
-h now command and it seems to shutdown fine.=C2=A0 Then it never powers up=
 again.=C2=A0 It really feels like even though the partition shows up as th=
e new size on the device, that I am overwriting
 the small partition size and screwing things up...<br>
<br>
<br>
________________________________<br>
From: Chris Gobbett &lt;<a class=3D"m_-858198573249696902gmail-m_-404297314=
4361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663=
608LPlnk63835" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">gobbo@tpg=
.com.au</a>&gt;<br>
Sent: Wednesday, June 19, 2019 8:21 PM<br>
To: Jason Matusiak; Ettus List<br>
Cc: Ettus Mail List<br>
Subject: Re: [USRP-users] E320 with larger SD card<br>
<br>
<br>
My understanding of the partiitons on the card are (in order);<br>
<br>
&lt;boot&gt;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B&gt;&lt;persi=
stent data&gt;&lt;empty space&gt;<br>
<br>
Mender allows you to boot from one of the A/B partitions as your primary fi=
lesystem (mounted as /), plus the persistent data (mounted as /home/ or /da=
ta or similar).<br>
<br>
My experience is if you perform resizing while keeping the partitions conti=
guous (no free space between them), and have the A and B partitions identic=
al in size, it &quot;just works&quot;. So my steps in the previous reply wo=
uld look like:<br>
=C2=A0 =C2=A0&lt;boot&gt;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B=
&gt;&lt;persistent data&gt;&lt;----------empty space---------------&gt;=C2=
=A0 # original image on large SD Card<br>
=C2=A0 =C2=A0&lt;boot&gt;&lt;filesystem+kernel A&gt;&lt;filesystem+kernel B=
&gt;&lt;-------------empty space------------&gt;&lt;persistent data&gt;=C2=
=A0 # shift persistent data to the end<br>
=C2=A0 =C2=A0&lt;boot&gt;&lt;----------filesystem+kernel A---------&gt;&lt;=
----------filesystem+kernel B---------&gt;&lt;persistent data&gt;=C2=A0 # m=
aximise A/B partitions, keeping A and B the same size<br>
<br>
Rather than extending the data partition, I wanted to add new libraries and=
 applications in /usr, which is located on the A/B partitions. Hence my ins=
tructions involve me resizing those partitions instead of the data partitio=
n.<br>
<br>
If you&#39;re simply extending the size of the persistent data partition wi=
thout shifting it&#39;s start point (while leaving the other partitions alo=
ne) I&#39;m at a loss as to why it wouldn&#39;t work. But when you do this =
you may need some extra linux-fu to shift your new
 binary/library locations to that partition rather than the default /usr.<b=
r>
<br>
Cheers,<br>
Chris<br>
<br>
----- Original Message -----<br>
From:<br>
&quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk174931" href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<br>
To:<br>
&quot;Chris Gobbett&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-404=
2973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-4042973144=
361663608LPlnk693403" href=3D"mailto:gobbo@tpg.com.au" target=3D"_blank">go=
bbo@tpg.com.au</a>&gt;<br>
Cc:<br>
&quot;Ettus Mail List&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk354758" href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Sent:<br>
Wed, 19 Jun 2019 23:12:40 +0000<br>
Subject:<br>
Re: [USRP-users] E320 with larger SD card<br>
<br>
<br>
Chris, thanks for the tips.<br>
<br>
So I put a fresh load on a card, then used gparted to extend the data parti=
tion to fill things out. That isn&#39;t enough, and your instructions certa=
inly show more steps. But I don&#39;t understand what you mean with the par=
titions in the middle.<br>
<br>
I&#39;ll read up on Mender and see if that answers it for me. Thanks again.=
<br>
On Jun 19, 2019, at 6:56 PM, Chris Gobbett &lt;<a class=3D"m_-8581985732496=
96902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gm=
ail-m_-4042973144361663608LPlnk572539" href=3D"mailto:gobbo@tpg.com.au" tar=
get=3D"_blank">gobbo@tpg.com.au</a>&lt;mailto:<a class=3D"m_-85819857324969=
6902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gma=
il-m_-4042973144361663608LPlnk389318" href=3D"mailto:gobbo@tpg.com.au" targ=
et=3D"_blank">gobbo@tpg.com.au</a>&gt;&gt;
 wrote:<br>
<br>
Hi Jason,<br>
<br>
I&#39;ve had luck with the following:<br>
- backup/clone the original SDCard image to disk and/or larger SDCard (usin=
g dd or otherwise)<br>
- on the new card, resize/shift the data partion to the end of the card (us=
ing gparted)<br>
- resize the two filesystem/kernel partitions to fill in the empty space in=
 the middle, but they need to be the same size (using gparted)<br>
<br>
Read up on Mender for more info on the partition layout (<a class=3D"m_-858=
198573249696902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-8581985732=
49696902gmail-m_-4042973144361663608LPlnk768960" href=3D"https://docs.mende=
r.io/1.7/devices/general-system-requirements#partition-layout" target=3D"_b=
lank" rel=3D"noreferrer">https://docs.mender.io/1.7/devices/general-system-=
requirements#partition-layout</a>).
 It&#39;s a pain that they went with Mender for the default E320 card; it c=
uts the &#39;usable&#39; file system space in half, at the benefit of havin=
g 2 independent filesystem partitions... I haven&#39;t had time to fiddle a=
round and ditch the mender for a &#39;normal&#39; partition
 layout, but I&#39;d assume it&#39;s possible.<br>
<br>
Cheers,<br>
Chris<br>
<br>
<br>
<br>
----- Original Message -----<br>
From:<br>
&quot;Jason Matusiak&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-40=
42973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314=
4361663608LPlnk643715" href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
<br>
To:<br>
&quot;Ettus Mail List&quot; &lt;<a class=3D"m_-858198573249696902gmail-m_-4=
042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429731=
44361663608LPlnk533934" href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Cc:<br>
<br>
Sent:<br>
Wed, 19 Jun 2019 16:29:38 +0000<br>
Subject:<br>
[USRP-users] E320 with larger SD card<br>
<br>
<br>
<br>
I wanted to use a larger SD card than the one that as supplied, but I am ha=
ving issues.=C2=A0 I loaded up the card, and then extended the data partiti=
on to use up the rest of the free space (about 100GB).=C2=A0 But then it do=
esn&#39;t boot.<br>
<br>
<br>
I am wondering if the change to a partition size screwed up something in a =
config file somewhere.=C2=A0 Is there a way to fix this without rebuilding =
a docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the smaller dat=
a partition (UHD 3.14.1.0 has a larger data
 partition, but doesn&#39;t include any GR/python packages, so I need to us=
e the older image).<br>
<br>
<br>
Thanks.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk839648"=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attach=
ments/20190620/bade3764/attachment-0001.html" target=3D"_blank" rel=3D"nore=
ferrer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/bade3764/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 21<br>
Date: Thu, 20 Jun 2019 10:29:40 -0400<br>
From: Zhihong Luo &lt;<a class=3D"m_-858198573249696902gmail-m_-40429731443=
61663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-404297314436166360=
8LPlnk602590" href=3D"mailto:zhluo@umich.edu" target=3D"_blank">zhluo@umich=
.edu</a>&gt;<br>
To: Zhihong Luo via USRP-users &lt;<a class=3D"m_-858198573249696902gmail-m=
_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmail-m_-40429=
73144361663608LPlnk260484" href=3D"mailto:USRP-users@lists.ettus.com" targe=
t=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] unsubscribe<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAH4wXLrjq=3D<a class=3D"m_-858198573249696=
902gmail-m_-4042973144361663608OWAAutoLink" id=3D"m_-858198573249696902gmai=
l-m_-4042973144361663608LPlnk513436" href=3D"mailto:fk5ad7y-t_LLVDj90Xa4o12=
Z6poPWoVXhBSNwCPw@mail.gmail.com" target=3D"_blank">fk5ad7y-t_LLVDj90Xa4o12=
Z6poPWoVXhBSNwCPw@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAu=
toLink" id=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk69044" =
href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachm=
ents/20190620/36e503ce/attachment-0001.html" target=3D"_blank" rel=3D"noref=
errer">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachme=
nts/20190620/36e503ce/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk631048" href=3D"=
mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus=
.com</a><br>
<a class=3D"m_-858198573249696902gmail-m_-4042973144361663608OWAAutoLink" i=
d=3D"m_-858198573249696902gmail-m_-4042973144361663608LPlnk561150" href=3D"=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=
=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 106, Issue 21<br>
*******************************************<br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000a461d4058c22828c--


--===============2177737285652883315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2177737285652883315==--

