Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36889CFACC
	for <lists+usrp-users@lfdr.de>; Tue,  8 Oct 2019 15:00:14 +0200 (CEST)
Received: from [::1] (port=38320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHp62-0007DY-3Q; Tue, 08 Oct 2019 09:00:10 -0400
Received: from mail-io1-f50.google.com ([209.85.166.50]:43505)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1iHp5w-00071S-Sq
 for usrp-users@lists.ettus.com; Tue, 08 Oct 2019 09:00:04 -0400
Received: by mail-io1-f50.google.com with SMTP id v2so36151190iob.10
 for <usrp-users@lists.ettus.com>; Tue, 08 Oct 2019 05:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=mRNpoWN5fOPKmxht+pWADCz1VUSAycprl8g/7Yu6pHA=;
 b=LRqrDXSN4KQbdYyNmjDnG61LJSpb80o1WVLgnShMmmllXY3wKbcdFw6KGJui6QWFJI
 arev1JTQPYESf1gqmj8qF4v9vbzvpV3zjEayYiFL9XtxmE4Ak6R0A8VLsc/ia10bltv+
 1gM9zZ6kHmmMK4muIC+XjgQzYSXOrTdQnNEkI8mf1F8IWjw6VIzBOjHXxB47t64HElWV
 TVh79Ov6Cz3BfUd6YVkE33JUyGNN/Ux/vEl0w5JkBEwW8yufNeck8zD+hLZ0T/kPgQcL
 vBJGqFfqOUu5NsM5dZbtDEnLv/JVFbhWZ4nAwiLHI5SUA4dCncE4A5+kfy98IPEWdcv/
 zwHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=mRNpoWN5fOPKmxht+pWADCz1VUSAycprl8g/7Yu6pHA=;
 b=TvdkcwX1It36fOa5H0iHhf4RvG0Vqpg/wkeTSRwC/z387EWI4M3n/CibKl8ZeVfkA6
 YVoWeufrjMnPfNgsPbOAd+3mx5cpxulbTU7iqizYCIfnxu1oZlIPhzKn07LTAFBu1cpu
 F+O38QT65Thc5NXTI6sjOXNC7Wmqlk+s27tREhDSpPEd0HiWiVzbPaxQKFpypRlRHSGz
 c4znu+L/NkS17UzSQnVPyhHRMSwz9hC99GBSmh/tgX7TD7NLxuXfA6e85ALmbe4xGKh7
 X0sn2JnX8gVe8JjYHHqG1Q4FuPlPlOxPiXCpjlpcncbQN3SIWjw4hJrIfIu7QvIXYF9w
 1RVw==
X-Gm-Message-State: APjAAAXLvPTsCWjK+KGnhuh01LgydkVcjAf3PeG6v41ehiIlC/+iNiuv
 0cPhP3Dla4qdj8Q0JnJHAvEqHtTBN0vNu+7O3Xj0v35Oofg=
X-Google-Smtp-Source: APXvYqxFrIr3Iqbx8w/AVeEZN/WknUdcXUb1b57KNntXgzcu50u4IKv857x56nr90RtYcOVL+PlkpGeVXLgVcwD93+U=
X-Received: by 2002:a92:16da:: with SMTP id 87mr34645919ilw.211.1570539563735; 
 Tue, 08 Oct 2019 05:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.49.1569945602.10837.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.49.1569945602.10837.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Tue, 8 Oct 2019 13:59:05 +0100
Message-ID: <CALSxwQF3i5ERg0vVy3CNihgJ0jj8o6zZtFcbrc4Ni0SD_XzNqg@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP-users Digest, Vol 110, Issue 1
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
Content-Type: multipart/mixed; boundary="===============6802819679583647130=="
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

--===============6802819679583647130==
Content-Type: multipart/alternative; boundary="000000000000cd5dbf059465bcd6"

--000000000000cd5dbf059465bcd6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I am writing to you regarding Synchronization and MIMO capabilities with
USRP Devices.
I am using two N200s with UBX-40.
I would like to implement the same example in GNU radio that there is in
the following link:
https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

I would like to calibrate the phase using the phase shift module.
But, I did not find this module in GNU radio WX widgets.
Could you help me?
Thank you for your time.
Best Regards,

Simona


Il giorno mar 1 ott 2019 alle ore 17:00 <usrp-users-request@lists.ettus.com=
>
ha scritto:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
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
>    1. Re: next pps issues with TwinRX (Jason Matusiak)
>    2. X310 image 8 bytes too large with default image
>       (Francesco Restuccia)
>    3. uhd_usrp_loader script defaults firmware to pre-built bin
>       file (Francesco Restuccia)
>    4. Re: uhd_usrp_loader script defaults firmware to pre-built bin
>       file (Marcus D. Leech)
>    5. Re: X310 image 8 bytes too large with default image (Paolo Palana)
>    6. Re: USRP X310 problem (Paolo Palana)
>    7. uhd_usrp_loader script defaults firmware to pre-built bin
>       file (Francesco Restuccia)
>    8. [UHD] 3.14.1.1 Release Announcement (Michael West)
>    9. Re: One sample - 5 ns delay between the two RF signals/ X310
>       (Daniel Jepson)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 30 Sep 2019 17:23:43 +0000
> From: Jason Matusiak <jason@gardettoengineering.com>
> To: Neel Pandeya <neel.pandeya@ettus.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] next pps issues with TwinRX
> Message-ID:
>         <
> BL0PR12MB234012376A189C9C2EA5EFDCAF820@BL0PR12MB2340.namprd12.prod.outloo=
k.com
> >
>
> Content-Type: text/plain; charset=3D"iso-8859-1"
>
> Neel,
>
> I updated to: UHD_3.14.1.1-0-g0347a6d8  as well as v3.7.13.5 for GR, stil=
l
> the same issues.
>
> It almost feels like some sort of double/float mismatch somewhere since
> the alignment is so close to being right.
>
> ________________________________
> From: Neel Pandeya <neel.pandeya@ettus.com>
> Sent: Monday, September 30, 2019 11:19 AM
> To: Jason Matusiak <jason@gardettoengineering.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] next pps issues with TwinRX
>
> Hello Jason:
>
> We'll look into this and get back to you shortly.
>
> If you get a chance, could you please try it with the tagged UHD 3.14.1.1=
 ?
>
> Which version of GNU Radio are you using?
>
> --Neel Pandeya
>
>
>
> On Mon, 30 Sep 2019 at 10:10, Jason Matusiak via USRP-users <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
> We are having another issues with our TwinRXs.  A co-worker has been
> trying to get this to work for a while, but has had no luck with the PPS
> timing.  Here is the notes:
>
> We are running UHD_3.14.1.HEAD-12-g5f75f73f.
>
> The setup is a single X310 (revision: 11,  revision_compat: 7) with two
> TwinRX boards. The device gets Ref/PPS from an Octoclock.
>
> The attached script has a hard-coded IP address and clock rate. It works
> for other X310s with UBX/SBX daughter boards as well as the E320.
>
> Good results are (note line 5 below):
>
> Synchronizing Radios to Reference Signals
> Checking PPS synchronization
> next_pps from 1569851984.633563 is 1569851985.000000
> Setting time for radio `gr uhd usrp source`: 2019-09-30 09:59:45
> PPS alignment PASSED!: [1569851986.0, 1569851986]
> All radios are Synchronized
>
> Bad results are:
> Synchronizing Radios to Reference Signals
> Checking PPS synchronization
> next_pps from 1569851508.136703 is 1569851509.000000
> Setting time for radio `gr uhd usrp source`: 2019-09-30 09:51:49
> PPS alignment mismatch: [1569851509.9999995, 1569851509]
>
> Any thoughts of why this might be happening?
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvim=
EN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG=
8&m=3DVzsjpGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo&s=3D_gOstnMMEDkfFbD1tcNsL=
qzHaSnMGcIjP7W9NVzbH6M&e=3D
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190930/428148f5/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Mon, 30 Sep 2019 17:06:50 -0400
> From: Francesco Restuccia <frestuc@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] X310 image 8 bytes too large with default image
> Message-ID: <b9a5e62a-1eed-95cd-9061-8ab7828ead6f@gmail.com>
> Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed
>
> Hi guys,
>
> I am responding to the following thread:
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/0=
57669.html
>
> I am having the same problem while running the uhd_image_builder.py with
> the default images for X310.
>
> See below:
>
> frank@frank-iMac:/opt/uhd/host/build/examples$
> "/opt/uhd_gnuradio_installs/bin/uhd_image_loader"
> --args=3D"type=3Dx300,addr=3D192.168.10.15"
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> UHD_3.15.0.git-71-g18bc320d
> Error: RuntimeError: The specified FPGA image is too large: 15878040 vs.
> 15878032
>
> Any idea? I guess that this should NOT happen with default images
> downloaded through uhd_images_downloader.
>
> Note that the USRP works by burning the default bitfile (HG version)
> directly via Vivado and JTAG.
>
> Best,
>
> Francesco
>
>
>
>
>
> ------------------------------
>
> Message: 3
> Date: Mon, 30 Sep 2019 17:58:35 -0400
> From: Francesco Restuccia <frestuc@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] uhd_usrp_loader script defaults firmware to
>         pre-built bin file
> Message-ID: <4e2861db-3333-ffee-e0c0-cf8f525dcecb@gmail.com>
> Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed
>
> Dear all,
>
> I am trying to load my customized firmware into an USRP N210. I have
> tried the following but it defaults to the default image, regardless of
> the input:
>
> frank@frank-iMac:~$ uhd_image_loader
> --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
> --fw-path=3D"/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin"
> --no-fpga
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> UHD_3.15.0.git-71-g18bc320d
> Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
> Firmware image:
> /opt/uhd_gnuradio_installs/share/uhd/images/usrp_n210_fw.bin
> -- Erasing firmware image...successful.
> -- Writing firmware image...successful.
> -- Verifying firmware image...successful.
>
> Any suggestion?
>
> Thanks,
>
> Francesco
>
>
>
>
> ------------------------------
>
> Message: 4
> Date: Mon, 30 Sep 2019 22:09:35 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] uhd_usrp_loader script defaults firmware to
>         pre-built bin file
> Message-ID: <5D92B55F.4040501@gmail.com>
> Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed
>
> On 09/30/2019 05:58 PM, Francesco Restuccia via USRP-users wrote:
> > Dear all,
> >
> > I am trying to load my customized firmware into an USRP N210. I have
> > tried the following but it defaults to the default image, regardless
> > of the input:
> >
> > frank@frank-iMac:~$ uhd_image_loader
> > --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
> > --fw-path=3D"/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin"
> > --no-fpga
> > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> > UHD_3.15.0.git-71-g18bc320d
> > Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
> > Firmware image:
> > /opt/uhd_gnuradio_installs/share/uhd/images/usrp_n210_fw.bin
> > -- Erasing firmware image...successful.
> > -- Writing firmware image...successful.
> > -- Verifying firmware image...successful.
> >
> > Any suggestion?
> >
> > Thanks,
> >
> > Francesco
> >
> Could you check to make sure the file is actually there and readable to
> you?
>
> What does "which uhd_image_loader" return?
>
>
>
>
>
> ------------------------------
>
> Message: 5
> Date: Tue, 1 Oct 2019 11:10:34 +0200
> From: Paolo Palana <p.palana@itsystems.it>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] X310 image 8 bytes too large with default
>         image
> Message-ID: <6d39763f-ea6e-9dcf-a38e-d0afeafe9c56@itsystems.it>
> Content-Type: text/plain; charset=3Dutf-8
>
> I had the same problem indeed,
> I think this is because vivado 2017.4 output image size is a bit
> different from the output imase size of vivado 2015.4.
> I say so because the error did not appear with uhd-3.10.3. I think the
> problem is that no one updated the tools provided with libuhd
> used to configure the fpga in order to handle the new output file
> dimension.
>
> My solution is very simple, if you are under Linux just use dd and copy
> the original file with a command like this:
>
> dd if=3D<orig_file>.bit of=3D<new_file>.bit bs=3D<the_rigth_dimension> co=
unt=3D1
>
> And it works, at least for me. In fact if you open the bit file with a
> hexeditor you can see how the last bites looks like a padding.
>
> Best,
> Paolo
>
>
> On 30/09/19 23:06, Francesco Restuccia via USRP-users wrote:
> > Hi guys,
> >
> > I am responding to the following thread:
> >
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/0=
57669.html
> >
> > I am having the same problem while running the uhd_image_builder.py
> > with the default images for X310.
> >
> > See below:
> >
> > frank@frank-iMac:/opt/uhd/host/build/examples$
> > "/opt/uhd_gnuradio_installs/bin/uhd_image_loader"
> > --args=3D"type=3Dx300,addr=3D192.168.10.15"
> > [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> > UHD_3.15.0.git-71-g18bc320d
> > Error: RuntimeError: The specified FPGA image is too large: 15878040
> > vs. 15878032
> >
> > Any idea? I guess that this should NOT happen with default images
> > downloaded through uhd_images_downloader.
> >
> > Note that the USRP works by burning the default bitfile (HG version)
> > directly via Vivado and JTAG.
> >
> > Best,
> >
> > Francesco
> >
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
>
>
> ------------------------------
>
> Message: 6
> Date: Tue, 1 Oct 2019 11:12:59 +0200
> From: Paolo Palana <p.palana@itsystems.it>
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] USRP X310 problem
> Message-ID: <6b3db94d-518c-4604-6d13-52baca3a8bd1@itsystems.it>
> Content-Type: text/plain; charset=3D"utf-8"
>
> Try the command.
>
> dd if=3D<original_file>.bit of=3D<new_file>.bit count=3D<the_rigth_size> =
count=3D1
>
> and then try to configure the fpga <new_file>.bit
>
>
> On 27/09/19 16:12, Aaron Montilla via USRP-users wrote:
> > Hi,
> > I am trying to set the connection between my PC and my USRP X310.
> > I ran the command uhd_find_devices, and successfully it found the
> > USRP. Then I use the uhd_usrp_probe command and I had the next error:
> > aaron@leonard:~$ uhd_usrp_probe
> > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> > UHD_3.15.0.git-71-g18bc320d
> > [INFO] [X300] X300 initialization sequence...
> > [INFO] [X300] Maximum frame size: 1472 bytes.
> > [INFO] [X300] Radio 1x clock: 200 MHz
> > [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> > [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> > 0xF1F0D00000000000)
> > [ERROR] [0/DmaFIFO_0] Major compat number mismatch for noc_shell:
> > Expecting 6, got 5.
> > Error: RuntimeError: FPGA component `noc_shell' is revision 5 and UHD
> > supports revision 6. Please either upgrade the FPGA image
> > (recommended) or downgrade UHD.
> >
> > I thought that upgrade the USRP was the best option, but when I try, I
> > have another error saying that the size of the image is too large (
> > only for 1 byte). I also read that I had to use the .bin file but I
> > didn't have any.
> > So, could you please tell me what I could do?
> >
> > Thank you very much in advance.
> > Kind regards,
> > Aaron
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0191001/ce515be1/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 7
> Date: Tue, 1 Oct 2019 08:25:34 -0400
> From: Francesco Restuccia <frestuc@gmail.com>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] uhd_usrp_loader script defaults firmware to
>         pre-built bin file
> Message-ID: <b358a6cc-0275-3f56-1533-178c9b837c0c@gmail.com>
> Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed
>
> Hi Marcus,
>
> This is the output of the command:
>
> frank@frank-iMac:~$ which uhd_image_loader
> /opt/uhd_gnuradio_installs/bin/uhd_image_loader
>
> And yes, the file should be ok:
>
> frank@frank-iMac:/opt/uhd$ ls -la
> /opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin
> -rwxr-xr-x 1 frank frank 16383 Sep 30 17:26
> /opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin
>
> Francesco
>
>
>
>
>
> ------------------------------
>
> Message: 8
> Date: Tue, 1 Oct 2019 08:01:31 -0500
> From: Michael West <michael.west@ettus.com>
> To: discuss-gnuradio@gnu.org,  "USRP-users@lists.ettus.com"
>         <usrp-users@lists.ettus.com>
> Subject: [USRP-users] [UHD] 3.14.1.1 Release Announcement
> Message-ID:
>         <
> CAM4xKrrrT81QwyUdoZNLDZEfDAwtxWsrP7rbpxhOZ-yJsunv6A@mail.gmail.com>
> Content-Type: text/plain; charset=3D"utf-8"
>
> UHD 3.14.1.1 is now available!  This is a patch release.  It is API
> compatible with 3.14.0.0 and ABI compatible with 3.14.1.0.  This release
> includes several bug fixes.
>
> Installers for Windows and Fedora are available here:
> http://files.ettus.com/binaries/uhd/uhd_003.014.001.001-release/
>
> The PPA for Ubuntu can be found here:
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>
> The tag for this release is located here:
> https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.1
>
> There have been 67 commits since the last API release which can be viewed
> here:
> https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1.1
>
> Please report any bugs found on the UHD issue tracker:
> http://github.com/EttusResearch/uhd/issues
> * Please do not use the issue tracker for help or support.
>
> Pull requests for direct code changes can be submitted to the UHD or FPGA
> repositories:
> http://github.com/EttusResearch/uhd/pulls
> http://github.com/EttusResearch/fpga/pulls
>
> As always, we at Ettus Research would like to thank all of the UHD users =
in
> the open source SDR community.  This release contains commits from users =
in
> the community that submitted pull requests against the UHD
> <https://github.com/EttusResearch/uhd> and FPGA
> <https://github.com/EttusResearch/fpga> repositories as well as many
> commits that are a direct result of issues reported back to us by users
> like you through the UHD <https://github.com/EttusResearch/uhd/issues> an=
d
> FPGA <https://github.com/EttusResearch/fpga/issues> issue trackers,
> the USRP-users
> mailing list
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, and
> Ettus
> support <support@ettus.com>.  You have all helped contribute to the
> continued improvement of UHD.  Thank you!
>
> CHANGELOG:
> ## 003.014.001.001
> Device3: latch n on m in axi_rate_change in DUC/DDC
> Device3: UART: fix TX <-> RX, FIFO size as parameter
> Device3: Restore default buffer sizes for MPMD UDP
> RFNoC: Fix off by one error in window.v
> E320: fix time source clobbering ref source
> B200: Add command to query bootloader status
> RFNoC: fix multidevice graph connections
> MPMD: Fix corner case in MPM device discovery
> MPM: fixed mboard_max_revision value (MPM compat check failures)
> MPM: Fix version string for logger
> Docs: x300: update docs for multiple timed commands
> Docs: Fix Doxygen warnings due to spurious backslashes
> Docs: RFNoC: Fix Doxygen warning due to undoc'd parameter
> Docs: Adjust FPGA functional verification tests
> Docs: Fix MPM cmake command for E320
> RFNoC: Re-enable flow ctrl for blocks on same xbar
> Tools: Fix build issues with kitchen_sink
> cmake: Add UHD_COMPONENT variable
>
> Best regards,
> Michael
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0191001/e6cc6c67/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 9
> Date: Tue, 1 Oct 2019 08:21:22 -0500
> From: Daniel Jepson <daniel.jepson@ettus.com>
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
>         signals/ X310
> Message-ID:
>         <CA+Zwmn6N5Fcb3NvcLO7met=3D
> EeyWEOjB-hEFZqqhcaugoZF1wUg@mail.gmail.com>
> Content-Type: text/plain; charset=3D"utf-8"
>
> Fabian, I had a hunch it was just the 3.3V part--thanks for clarifying!
>
> Cherif, the DAC interface timing (and for that matter, the ADC timing)
> should be fairly tight. What you're seeing is expected and matches the
> numbers we designed it to. The FPGA constraints are intentionally tight t=
o
> provide some extra margin at the DAC. Since this is all in the same X310,
> you could start by isolating the various components of the design using t=
he
> front-panel GPIO connector. Run a trigger from each of your custom blocks
> to the GPIO and see if they line up on a scope. If they don't, then you
> might have a baseband timing issue (with how timed commands are interacti=
ng
> with your blocks). If they line up, then it points to a timing failure in
> the DAC.
>
> -Daniel
>
>
>
> On Fri, Sep 27, 2019 at 12:33 PM Cherif Diouf via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> > fabian,
> >
> >
> > I have tested your solution, but the get_time_last_pps always gives me
> > the expect value.
> >
> >
> >
> > Daniel, On a different point, the issue might be related to timing, her=
e
> > are some examples of  timing related to the DACs. The compilation is
> > successful but the margin is very low, in the 10 ps order.
> >
> >
> >
> >
> > Startpoint                     Endpoint                       Slack(ns)
> >
> >
> >
> -------------------------------------------------------------------------=
---
> > gen_db1/gen_pins[2].oddr/C     DB1_DAC_D2_N                   0.016
> >
> > gen_db1/gen_pins[2].oddr/C     DB1_DAC_D2_P                   0.016
> >
> > gen_db1/gen_pins[7].oddr/C     DB1_DAC_D7_N                   0.021
> >
> > gen_db1/gen_pins[7].oddr/C     DB1_DAC_D7_P                   0.021
> >
> > gen_db1/gen_pins[3].oddr/C     DB1_DAC_D3_N                   0.024
> >
> > gen_db1/gen_pins[3].oddr/C     DB1_DAC_D3_P                   0.024
> >
> >
> >
> > gen_db0/gen_pins[2].oddr/C     DB0_DAC_D2_N                   0.066
> >
> > gen_db0/gen_pins[2].oddr/C     DB0_DAC_D2_P                   0.066
> >
> > gen_db0/gen_pins[0].oddr/C     DB0_DAC_D0_N                   0.071
> >
> > gen_db0/gen_pins[0].oddr/C     DB0_DAC_D0_P                   0.071
> >
> > gen_db0/oddr_frame/C           DB0_DAC_FRAME_N                0.075
> >
> > gen_db0/oddr_frame/C           DB0_DAC_FRAME_P                0.075
> >
> > gen_db0/gen_pins[3].oddr/C     DB0_DAC_D3_N                   0.080
> >
> > gen_db0/gen_pins[3].oddr/C     DB0_DAC_D3_P                   0.080
> >
> > gen_db0/gen_pins[1].oddr/C     DB0_DAC_D1_N                   0.085
> >
> > gen_db0/gen_pins[1].oddr/C     DB0_DAC_D1_P                   0.085
> >
> >
> >
> > Best Regards
> >
> > Cherif
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
>
> --
>
> Daniel Jepson
>
> Digital Hardware Engineer
>
> National Instruments
>
>
>
> O: +1.512.683.6163
>
> daniel.jepson@ni.com
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0191001/8ddd238e/attachment-0001.html
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
> End of USRP-users Digest, Vol 110, Issue 1
> ******************************************
>

--000000000000cd5dbf059465bcd6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I am writing to you regard=
ing Synchronization and MIMO capabilities with USRP Devices.</div><div>I am=
 using two N200s with UBX-40.</div><div>I would like to implement the same =
example in GNU radio that there is in the following link:</div><div><a href=
=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devi=
ces">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Dev=
ices</a>=C2=A0</div><div><br></div><div>I would like to calibrate the phase=
 using the phase shift module.</div><div>But, I did not find this module in=
 GNU radio WX widgets.<br></div><div>Could you help me?</div><div>Thank you=
 for=C2=A0your time.</div><div>Best Regards,</div><div><br></div><div>Simon=
a</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Il giorno mar 1 ott 2019 alle ore 17:00 &lt;<a href=
=3D"mailto:usrp-users-request@lists.ettus.com">usrp-users-request@lists.ett=
us.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: next pps issues with TwinRX (Jason Matusiak)<br>
=C2=A0 =C2=A02. X310 image 8 bytes too large with default image<br>
=C2=A0 =C2=A0 =C2=A0 (Francesco Restuccia)<br>
=C2=A0 =C2=A03. uhd_usrp_loader script defaults firmware to pre-built bin<b=
r>
=C2=A0 =C2=A0 =C2=A0 file (Francesco Restuccia)<br>
=C2=A0 =C2=A04. Re: uhd_usrp_loader script defaults firmware to pre-built b=
in<br>
=C2=A0 =C2=A0 =C2=A0 file (Marcus D. Leech)<br>
=C2=A0 =C2=A05. Re: X310 image 8 bytes too large with default image (Paolo =
Palana)<br>
=C2=A0 =C2=A06. Re: USRP X310 problem (Paolo Palana)<br>
=C2=A0 =C2=A07. uhd_usrp_loader script defaults firmware to pre-built bin<b=
r>
=C2=A0 =C2=A0 =C2=A0 file (Francesco Restuccia)<br>
=C2=A0 =C2=A08. [UHD] 3.14.1.1 Release Announcement (Michael West)<br>
=C2=A0 =C2=A09. Re: One sample - 5 ns delay between the two RF signals/ X31=
0<br>
=C2=A0 =C2=A0 =C2=A0 (Daniel Jepson)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 30 Sep 2019 17:23:43 +0000<br>
From: Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" t=
arget=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
To: Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"_b=
lank">neel.pandeya@ettus.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] next pps issues with TwinRX<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:BL0PR12MB234012376A189C9C=
2EA5EFDCAF820@BL0PR12MB2340.namprd12.prod.outlook.com" target=3D"_blank">BL=
0PR12MB234012376A189C9C2EA5EFDCAF820@BL0PR12MB2340.namprd12.prod.outlook.co=
m</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
Neel,<br>
<br>
I updated to: UHD_3.14.1.1-0-g0347a6d8=C2=A0 as well as v3.7.13.5 for GR, s=
till the same issues.<br>
<br>
It almost feels like some sort of double/float mismatch somewhere since the=
 alignment is so close to being right.<br>
<br>
________________________________<br>
From: Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"=
_blank">neel.pandeya@ettus.com</a>&gt;<br>
Sent: Monday, September 30, 2019 11:19 AM<br>
To: Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com" tar=
get=3D"_blank">jason@gardettoengineering.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] next pps issues with TwinRX<br>
<br>
Hello Jason:<br>
<br>
We&#39;ll look into this and get back to you shortly.<br>
<br>
If you get a chance, could you please try it with the tagged UHD 3.14.1.1 ?=
<br>
<br>
Which version of GNU Radio are you using?<br>
<br>
--Neel Pandeya<br>
<br>
<br>
<br>
On Mon, 30 Sep 2019 at 10:10, Jason Matusiak via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<br>
We are having another issues with our TwinRXs.=C2=A0 A co-worker has been t=
rying to get this to work for a while, but has had no luck with the PPS tim=
ing.=C2=A0 Here is the notes:<br>
<br>
We are running UHD_3.14.1.HEAD-12-g5f75f73f.<br>
<br>
The setup is a single X310 (revision: 11,=C2=A0 revision_compat: 7) with tw=
o TwinRX boards. The device gets Ref/PPS from an Octoclock.<br>
<br>
The attached script has a hard-coded IP address and clock rate. It works fo=
r other X310s with UBX/SBX daughter boards as well as the E320.<br>
<br>
Good results are (note line 5 below):<br>
<br>
Synchronizing Radios to Reference Signals<br>
Checking PPS synchronization<br>
next_pps from 1569851984.633563 is 1569851985.000000<br>
Setting time for radio `gr uhd usrp source`: 2019-09-30 09:59:45<br>
PPS alignment PASSED!: [1569851986.0, 1569851986]<br>
All radios are Synchronized<br>
<br>
Bad results are:<br>
Synchronizing Radios to Reference Signals<br>
Checking PPS synchronization<br>
next_pps from 1569851508.136703 is 1569851509.000000<br>
Setting time for radio `gr uhd usrp source`: 2019-09-30 09:51:49<br>
PPS alignment mismatch: [1569851509.9999995, 1569851509]<br>
<br>
Any thoughts of why this might be happening?<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a>&lt;<a href=3D"https://urldefense.proof=
point.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers=
-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_C=
dpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DVzsj=
pGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo&amp;s=3D_gOstnMMEDkfFbD1tcNsLqzHaSn=
MGcIjP7W9NVzbH6M&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://url=
defense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo=
_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7=
jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8=
&amp;m=3DVzsjpGSylp7F9peAKPOcnLbFzmAh8CNVnwzwket3hCo&amp;s=3D_gOstnMMEDkfFb=
D1tcNsLqzHaSnMGcIjP7W9NVzbH6M&amp;e=3D</a>&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190930/428148f5/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190930/428148f5/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 30 Sep 2019 17:06:50 -0400<br>
From: Francesco Restuccia &lt;<a href=3D"mailto:frestuc@gmail.com" target=
=3D"_blank">frestuc@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] X310 image 8 bytes too large with default image<br>
Message-ID: &lt;<a href=3D"mailto:b9a5e62a-1eed-95cd-9061-8ab7828ead6f@gmai=
l.com" target=3D"_blank">b9a5e62a-1eed-95cd-9061-8ab7828ead6f@gmail.com</a>=
&gt;<br>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
Hi guys,<br>
<br>
I am responding to the following thread: <br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018=
-August/057669.html" rel=3D"noreferrer" target=3D"_blank">http://lists.ettu=
s.com/pipermail/usrp-users_lists.ettus.com/2018-August/057669.html</a><br>
<br>
I am having the same problem while running the uhd_image_builder.py with <b=
r>
the default images for X310.<br>
<br>
See below:<br>
<br>
frank@frank-iMac:/opt/uhd/host/build/examples$ <br>
&quot;/opt/uhd_gnuradio_installs/bin/uhd_image_loader&quot; <br>
--args=3D&quot;type=3Dx300,addr=3D192.168.10.15&quot;<br>
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; <br>
UHD_3.15.0.git-71-g18bc320d<br>
Error: RuntimeError: The specified FPGA image is too large: 15878040 vs. <b=
r>
15878032<br>
<br>
Any idea? I guess that this should NOT happen with default images <br>
downloaded through uhd_images_downloader.<br>
<br>
Note that the USRP works by burning the default bitfile (HG version) <br>
directly via Vivado and JTAG.<br>
<br>
Best,<br>
<br>
Francesco<br>
<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 30 Sep 2019 17:58:35 -0400<br>
From: Francesco Restuccia &lt;<a href=3D"mailto:frestuc@gmail.com" target=
=3D"_blank">frestuc@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] uhd_usrp_loader script defaults firmware to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pre-built bin file<br>
Message-ID: &lt;<a href=3D"mailto:4e2861db-3333-ffee-e0c0-cf8f525dcecb@gmai=
l.com" target=3D"_blank">4e2861db-3333-ffee-e0c0-cf8f525dcecb@gmail.com</a>=
&gt;<br>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
Dear all,<br>
<br>
I am trying to load my customized firmware into an USRP N210. I have <br>
tried the following but it defaults to the default image, regardless of <br=
>
the input:<br>
<br>
frank@frank-iMac:~$ uhd_image_loader <br>
--args=3D&quot;type=3Dusrp2,addr=3D192.168.10.2&quot; <br>
--fw-path=3D&quot;/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin&=
quot; <br>
--no-fpga<br>
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; <br>
UHD_3.15.0.git-71-g18bc320d<br>
Unit: USRP N210 r4 (F2E28F, 192.168.10.2)<br>
Firmware image: /opt/uhd_gnuradio_installs/share/uhd/images/usrp_n210_fw.bi=
n<br>
-- Erasing firmware image...successful.<br>
-- Writing firmware image...successful.<br>
-- Verifying firmware image...successful.<br>
<br>
Any suggestion?<br>
<br>
Thanks,<br>
<br>
Francesco<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Mon, 30 Sep 2019 22:09:35 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] uhd_usrp_loader script defaults firmware to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pre-built bin file<br>
Message-ID: &lt;<a href=3D"mailto:5D92B55F.4040501@gmail.com" target=3D"_bl=
ank">5D92B55F.4040501@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 09/30/2019 05:58 PM, Francesco Restuccia via USRP-users wrote:<br>
&gt; Dear all,<br>
&gt;<br>
&gt; I am trying to load my customized firmware into an USRP N210. I have <=
br>
&gt; tried the following but it defaults to the default image, regardless <=
br>
&gt; of the input:<br>
&gt;<br>
&gt; frank@frank-iMac:~$ uhd_image_loader <br>
&gt; --args=3D&quot;type=3Dusrp2,addr=3D192.168.10.2&quot; <br>
&gt; --fw-path=3D&quot;/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd=
.bin&quot; <br>
&gt; --no-fpga<br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; <br>
&gt; UHD_3.15.0.git-71-g18bc320d<br>
&gt; Unit: USRP N210 r4 (F2E28F, 192.168.10.2)<br>
&gt; Firmware image: <br>
&gt; /opt/uhd_gnuradio_installs/share/uhd/images/usrp_n210_fw.bin<br>
&gt; -- Erasing firmware image...successful.<br>
&gt; -- Writing firmware image...successful.<br>
&gt; -- Verifying firmware image...successful.<br>
&gt;<br>
&gt; Any suggestion?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Francesco<br>
&gt;<br>
Could you check to make sure the file is actually there and readable to <br=
>
you?<br>
<br>
What does &quot;which uhd_image_loader&quot; return?<br>
<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Tue, 1 Oct 2019 11:10:34 +0200<br>
From: Paolo Palana &lt;<a href=3D"mailto:p.palana@itsystems.it" target=3D"_=
blank">p.palana@itsystems.it</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] X310 image 8 bytes too large with default<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 image<br>
Message-ID: &lt;<a href=3D"mailto:6d39763f-ea6e-9dcf-a38e-d0afeafe9c56@itsy=
stems.it" target=3D"_blank">6d39763f-ea6e-9dcf-a38e-d0afeafe9c56@itsystems.=
it</a>&gt;<br>
Content-Type: text/plain; charset=3Dutf-8<br>
<br>
I had the same problem indeed,<br>
I think this is because vivado 2017.4 output image size is a bit<br>
different from the output imase size of vivado 2015.4.<br>
I say so because the error did not appear with uhd-3.10.3. I think the<br>
problem is that no one updated the tools provided with libuhd<br>
used to configure the fpga in order to handle the new output file dimension=
.<br>
<br>
My solution is very simple, if you are under Linux just use dd and copy<br>
the original file with a command like this:<br>
<br>
dd if=3D&lt;orig_file&gt;.bit of=3D&lt;new_file&gt;.bit bs=3D&lt;the_rigth_=
dimension&gt; count=3D1<br>
<br>
And it works, at least for me. In fact if you open the bit file with a<br>
hexeditor you can see how the last bites looks like a padding.<br>
<br>
Best,<br>
Paolo<br>
<br>
<br>
On 30/09/19 23:06, Francesco Restuccia via USRP-users wrote:<br>
&gt; Hi guys,<br>
&gt;<br>
&gt; I am responding to the following thread:<br>
&gt; <a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2018-August/057669.html" rel=3D"noreferrer" target=3D"_blank">http://lists=
.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-August/057669.html</a>=
<br>
&gt;<br>
&gt; I am having the same problem while running the uhd_image_builder.py<br=
>
&gt; with the default images for X310.<br>
&gt;<br>
&gt; See below:<br>
&gt;<br>
&gt; frank@frank-iMac:/opt/uhd/host/build/examples$<br>
&gt; &quot;/opt/uhd_gnuradio_installs/bin/uhd_image_loader&quot;<br>
&gt; --args=3D&quot;type=3Dx300,addr=3D192.168.10.15&quot;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;<br>
&gt; UHD_3.15.0.git-71-g18bc320d<br>
&gt; Error: RuntimeError: The specified FPGA image is too large: 15878040<b=
r>
&gt; vs. 15878032<br>
&gt;<br>
&gt; Any idea? I guess that this should NOT happen with default images<br>
&gt; downloaded through uhd_images_downloader.<br>
&gt;<br>
&gt; Note that the USRP works by burning the default bitfile (HG version)<b=
r>
&gt; directly via Vivado and JTAG.<br>
&gt;<br>
&gt; Best,<br>
&gt;<br>
&gt; Francesco<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Tue, 1 Oct 2019 11:12:59 +0200<br>
From: Paolo Palana &lt;<a href=3D"mailto:p.palana@itsystems.it" target=3D"_=
blank">p.palana@itsystems.it</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] USRP X310 problem<br>
Message-ID: &lt;<a href=3D"mailto:6b3db94d-518c-4604-6d13-52baca3a8bd1@itsy=
stems.it" target=3D"_blank">6b3db94d-518c-4604-6d13-52baca3a8bd1@itsystems.=
it</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Try the command.<br>
<br>
dd if=3D&lt;original_file&gt;.bit of=3D&lt;new_file&gt;.bit count=3D&lt;the=
_rigth_size&gt; count=3D1<br>
<br>
and then try to configure the fpga &lt;new_file&gt;.bit<br>
<br>
<br>
On 27/09/19 16:12, Aaron Montilla via USRP-users wrote:<br>
&gt; Hi,<br>
&gt; I am trying to set the connection between my PC and my USRP X310.<br>
&gt; I ran the command uhd_find_devices, and successfully it found the<br>
&gt; USRP. Then I use the uhd_usrp_probe command and I had the next error:<=
br>
&gt; aaron@leonard:~$ uhd_usrp_probe<br>
&gt; [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;<br>
&gt; UHD_3.15.0.git-71-g18bc320d<br>
&gt; [INFO] [X300] X300 initialization sequence...<br>
&gt; [INFO] [X300] Maximum frame size: 1472 bytes.<br>
&gt; [INFO] [X300] Radio 1x clock: 200 MHz<br>
&gt; [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>
&gt; [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:<br>
&gt; 0xF1F0D00000000000)<br>
&gt; [ERROR] [0/DmaFIFO_0] Major compat number mismatch for noc_shell:<br>
&gt; Expecting 6, got 5.<br>
&gt; Error: RuntimeError: FPGA component `noc_shell&#39; is revision 5 and =
UHD<br>
&gt; supports revision 6. Please either upgrade the FPGA image<br>
&gt; (recommended) or downgrade UHD.<br>
&gt;<br>
&gt; I thought that upgrade the USRP was the best option, but when I try, I=
<br>
&gt; have another error saying that the size of the image is too large (<br=
>
&gt; only for 1 byte). I also read that I had to use the .bin file but I<br=
>
&gt; didn&#39;t have any.<br>
&gt; So, could you please tell me what I could do?<br>
&gt;<br>
&gt; Thank you very much in advance.<br>
&gt; Kind regards,<br>
&gt; Aaron<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191001/ce515be1/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191001/ce515be1/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Tue, 1 Oct 2019 08:25:34 -0400<br>
From: Francesco Restuccia &lt;<a href=3D"mailto:frestuc@gmail.com" target=
=3D"_blank">frestuc@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] uhd_usrp_loader script defaults firmware to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pre-built bin file<br>
Message-ID: &lt;<a href=3D"mailto:b358a6cc-0275-3f56-1533-178c9b837c0c@gmai=
l.com" target=3D"_blank">b358a6cc-0275-3f56-1533-178c9b837c0c@gmail.com</a>=
&gt;<br>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed<br>
<br>
Hi Marcus,<br>
<br>
This is the output of the command:<br>
<br>
frank@frank-iMac:~$ which uhd_image_loader<br>
/opt/uhd_gnuradio_installs/bin/uhd_image_loader<br>
<br>
And yes, the file should be ok:<br>
<br>
frank@frank-iMac:/opt/uhd$ ls -la <br>
/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin<br>
-rwxr-xr-x 1 frank frank 16383 Sep 30 17:26 <br>
/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin<br>
<br>
Francesco<br>
<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 8<br>
Date: Tue, 1 Oct 2019 08:01:31 -0500<br>
From: Michael West &lt;<a href=3D"mailto:michael.west@ettus.com" target=3D"=
_blank">michael.west@ettus.com</a>&gt;<br>
To: <a href=3D"mailto:discuss-gnuradio@gnu.org" target=3D"_blank">discuss-g=
nuradio@gnu.org</a>,=C2=A0 &quot;<a href=3D"mailto:USRP-users@lists.ettus.c=
om" target=3D"_blank">USRP-users@lists.ettus.com</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: [USRP-users] [UHD] 3.14.1.1 Release Announcement<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAM4xKrrrT81QwyUdoZNLDZEf=
DAwtxWsrP7rbpxhOZ-yJsunv6A@mail.gmail.com" target=3D"_blank">CAM4xKrrrT81Qw=
yUdoZNLDZEfDAwtxWsrP7rbpxhOZ-yJsunv6A@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
UHD 3.14.1.1 is now available!=C2=A0 This is a patch release.=C2=A0 It is A=
PI<br>
compatible with 3.14.0.0 and ABI compatible with 3.14.1.0.=C2=A0 This relea=
se<br>
includes several bug fixes.<br>
<br>
Installers for Windows and Fedora are available here:<br>
<a href=3D"http://files.ettus.com/binaries/uhd/uhd_003.014.001.001-release/=
" rel=3D"noreferrer" target=3D"_blank">http://files.ettus.com/binaries/uhd/=
uhd_003.014.001.001-release/</a><br>
<br>
The PPA for Ubuntu can be found here:<br>
<a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" rel=3D=
"noreferrer" target=3D"_blank">https://launchpad.net/~ettusresearch/+archiv=
e/ubuntu/uhd</a><br>
<br>
The tag for this release is located here:<br>
<a href=3D"https://github.com/EttusResearch/uhd/releases/tag/v3.14.1.1" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/EttusResearch/uhd/rele=
ases/tag/v3.14.1.1</a><br>
<br>
There have been 67 commits since the last API release which can be viewed<b=
r>
here:<br>
<a href=3D"https://github.com/EttusResearch/uhd/compare/v3.14.0.0...v3.14.1=
.1" rel=3D"noreferrer" target=3D"_blank">https://github.com/EttusResearch/u=
hd/compare/v3.14.0.0...v3.14.1.1</a><br>
<br>
Please report any bugs found on the UHD issue tracker:<br>
<a href=3D"http://github.com/EttusResearch/uhd/issues" rel=3D"noreferrer" t=
arget=3D"_blank">http://github.com/EttusResearch/uhd/issues</a><br>
* Please do not use the issue tracker for help or support.<br>
<br>
Pull requests for direct code changes can be submitted to the UHD or FPGA<b=
r>
repositories:<br>
<a href=3D"http://github.com/EttusResearch/uhd/pulls" rel=3D"noreferrer" ta=
rget=3D"_blank">http://github.com/EttusResearch/uhd/pulls</a><br>
<a href=3D"http://github.com/EttusResearch/fpga/pulls" rel=3D"noreferrer" t=
arget=3D"_blank">http://github.com/EttusResearch/fpga/pulls</a><br>
<br>
As always, we at Ettus Research would like to thank all of the UHD users in=
<br>
the open source SDR community.=C2=A0 This release contains commits from use=
rs in<br>
the community that submitted pull requests against the UHD<br>
&lt;<a href=3D"https://github.com/EttusResearch/uhd" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/EttusResearch/uhd</a>&gt; and FPGA<br>
&lt;<a href=3D"https://github.com/EttusResearch/fpga" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/EttusResearch/fpga</a>&gt; repositories =
as well as many<br>
commits that are a direct result of issues reported back to us by users<br>
like you through the UHD &lt;<a href=3D"https://github.com/EttusResearch/uh=
d/issues" rel=3D"noreferrer" target=3D"_blank">https://github.com/EttusRese=
arch/uhd/issues</a>&gt; and<br>
FPGA &lt;<a href=3D"https://github.com/EttusResearch/fpga/issues" rel=3D"no=
referrer" target=3D"_blank">https://github.com/EttusResearch/fpga/issues</a=
>&gt; issue trackers,<br>
the USRP-users<br>
mailing list<br>
&lt;<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com</a>&gt;, and Ettus<br>
support &lt;<a href=3D"mailto:support@ettus.com" target=3D"_blank">support@=
ettus.com</a>&gt;.=C2=A0 You have all helped contribute to the<br>
continued improvement of UHD.=C2=A0 Thank you!<br>
<br>
CHANGELOG:<br>
## 003.014.001.001<br>
Device3: latch n on m in axi_rate_change in DUC/DDC<br>
Device3: UART: fix TX &lt;-&gt; RX, FIFO size as parameter<br>
Device3: Restore default buffer sizes for MPMD UDP<br>
RFNoC: Fix off by one error in window.v<br>
E320: fix time source clobbering ref source<br>
B200: Add command to query bootloader status<br>
RFNoC: fix multidevice graph connections<br>
MPMD: Fix corner case in MPM device discovery<br>
MPM: fixed mboard_max_revision value (MPM compat check failures)<br>
MPM: Fix version string for logger<br>
Docs: x300: update docs for multiple timed commands<br>
Docs: Fix Doxygen warnings due to spurious backslashes<br>
Docs: RFNoC: Fix Doxygen warning due to undoc&#39;d parameter<br>
Docs: Adjust FPGA functional verification tests<br>
Docs: Fix MPM cmake command for E320<br>
RFNoC: Re-enable flow ctrl for blocks on same xbar<br>
Tools: Fix build issues with kitchen_sink<br>
cmake: Add UHD_COMPONENT variable<br>
<br>
Best regards,<br>
Michael<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191001/e6cc6c67/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191001/e6cc6c67/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 9<br>
Date: Tue, 1 Oct 2019 08:21:22 -0500<br>
From: Daniel Jepson &lt;<a href=3D"mailto:daniel.jepson@ettus.com" target=
=3D"_blank">daniel.jepson@ettus.com</a>&gt;<br>
To: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 signals/ X310<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CA+Zwmn6N5Fcb3NvcLO7met=3D<a href=3D"mailto=
:EeyWEOjB-hEFZqqhcaugoZF1wUg@mail.gmail.com" target=3D"_blank">EeyWEOjB-hEF=
ZqqhcaugoZF1wUg@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Fabian, I had a hunch it was just the 3.3V part--thanks for clarifying!<br>
<br>
Cherif, the DAC interface timing (and for that matter, the ADC timing)<br>
should be fairly tight. What you&#39;re seeing is expected and matches the<=
br>
numbers we designed it to. The FPGA constraints are intentionally tight to<=
br>
provide some extra margin at the DAC. Since this is all in the same X310,<b=
r>
you could start by isolating the various components of the design using the=
<br>
front-panel GPIO connector. Run a trigger from each of your custom blocks<b=
r>
to the GPIO and see if they line up on a scope. If they don&#39;t, then you=
<br>
might have a baseband timing issue (with how timed commands are interacting=
<br>
with your blocks). If they line up, then it points to a timing failure in<b=
r>
the DAC.<br>
<br>
-Daniel<br>
<br>
<br>
<br>
On Fri, Sep 27, 2019 at 12:33 PM Cherif Diouf via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; fabian,<br>
&gt;<br>
&gt;<br>
&gt; I have tested your solution, but the get_time_last_pps always gives me=
<br>
&gt; the expect value.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Daniel, On a different point, the issue might be related to timing, he=
re<br>
&gt; are some examples of=C2=A0 timing related to the DACs. The compilation=
 is<br>
&gt; successful but the margin is very low, in the 10 ps order.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Startpoint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0Endpoint=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Slack(ns)<br>
&gt;<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
------<br>
&gt; gen_db1/gen_pins[2].oddr/C=C2=A0 =C2=A0 =C2=A0DB1_DAC_D2_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.016<br>
&gt;<br>
&gt; gen_db1/gen_pins[2].oddr/C=C2=A0 =C2=A0 =C2=A0DB1_DAC_D2_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.016<br>
&gt;<br>
&gt; gen_db1/gen_pins[7].oddr/C=C2=A0 =C2=A0 =C2=A0DB1_DAC_D7_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.021<br>
&gt;<br>
&gt; gen_db1/gen_pins[7].oddr/C=C2=A0 =C2=A0 =C2=A0DB1_DAC_D7_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.021<br>
&gt;<br>
&gt; gen_db1/gen_pins[3].oddr/C=C2=A0 =C2=A0 =C2=A0DB1_DAC_D3_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.024<br>
&gt;<br>
&gt; gen_db1/gen_pins[3].oddr/C=C2=A0 =C2=A0 =C2=A0DB1_DAC_D3_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.024<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; gen_db0/gen_pins[2].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D2_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.066<br>
&gt;<br>
&gt; gen_db0/gen_pins[2].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D2_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.066<br>
&gt;<br>
&gt; gen_db0/gen_pins[0].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D0_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.071<br>
&gt;<br>
&gt; gen_db0/gen_pins[0].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D0_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.071<br>
&gt;<br>
&gt; gen_db0/oddr_frame/C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DB0_DAC_F=
RAME_N=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.075<br>
&gt;<br>
&gt; gen_db0/oddr_frame/C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DB0_DAC_F=
RAME_P=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.075<br>
&gt;<br>
&gt; gen_db0/gen_pins[3].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D3_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.080<br>
&gt;<br>
&gt; gen_db0/gen_pins[3].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D3_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.080<br>
&gt;<br>
&gt; gen_db0/gen_pins[1].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D1_N=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.085<br>
&gt;<br>
&gt; gen_db0/gen_pins[1].oddr/C=C2=A0 =C2=A0 =C2=A0DB0_DAC_D1_P=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.085<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Best Regards<br>
&gt;<br>
&gt; Cherif<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
<br>
<br>
-- <br>
<br>
Daniel Jepson<br>
<br>
Digital Hardware Engineer<br>
<br>
National Instruments<br>
<br>
<br>
<br>
O: +1.512.683.6163<br>
<br>
<a href=3D"mailto:daniel.jepson@ni.com" target=3D"_blank">daniel.jepson@ni.=
com</a><br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20191001/8ddd238e/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20191001/8ddd238e/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 110, Issue 1<br>
******************************************<br>
</blockquote></div>

--000000000000cd5dbf059465bcd6--


--===============6802819679583647130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6802819679583647130==--

