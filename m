Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE942212BD
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 18:44:03 +0200 (CEST)
Received: from [::1] (port=34414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvkVk-0007CV-9j; Wed, 15 Jul 2020 12:44:00 -0400
Received: from mail-qv1-f53.google.com ([209.85.219.53]:41973)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1jvkVg-00075b-32
 for usrp-users@lists.ettus.com; Wed, 15 Jul 2020 12:43:56 -0400
Received: by mail-qv1-f53.google.com with SMTP id t7so1169432qvl.8
 for <usrp-users@lists.ettus.com>; Wed, 15 Jul 2020 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:date:message-id:subject:from:to:in-reply-to:references
 :user-agent; bh=L25TlSb5MQAM4ZjykGS4YSPahD+yYz6cXh2u1BF/N88=;
 b=OHG9+aft2I0UDvJL9kbLVt1qVa5+CKkaj2BM8nDrnJfCfPeYrbYOBlqhaQCnGD4TWU
 p2KlsQMKSJLTThifp880S0tSj35d8VGCH1z0nY5kqzRjBLZd/aBiQlWZgzbnNYR8cYGv
 tpBUnXGsud2f+wyUMpDtsW/cKTwcW5mOwwh8cF7JEROLB8uBBKoxua1QLUaalnRg+oi/
 efi+OJWCKMHoiW6GGCcEyIP0StjHkIiMUT8IzOhcZm7+egdRUcRQjRoTpCDoarGZ76RD
 JbGwjMhfSlNtJuo0Z2NP6Nc8p4S4Jxeph0G2zTcI5ZsIIKM4K+L9echmyH3qwMa6O6iL
 p+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to
 :in-reply-to:references:user-agent;
 bh=L25TlSb5MQAM4ZjykGS4YSPahD+yYz6cXh2u1BF/N88=;
 b=J+/G2dqbNKVXDxtiTUIOQWg8YWrKhDC1hcEPHC8Jnf+WVNPM17bE6v6BmUAXE9ZYDR
 UywWjsd2Kwx8wy2Hn57FFvTQDfzbwZHf6J/feAxUqaTRxBvqsMDbv2/D+kakb5eyhmfp
 HUoo7hDMheAlYH66m/YpEJ/YJDq7VUOfA6HLvhMOuknilGSIMAxu5LensSWiBRl9QAAk
 snGKQMhS8a8Nnb7xJPPDpy+iBIBf+EFhOV+ljCYV4ZSL1V4eJONZ93WGWWpP9vo6mkXq
 xLBNH/pKP/u3YeppXzd4MtQ8qF0V5Pt4X5lYUtTr0LmTX93Z8LHU3EtrbYx0pC/OQ2Ar
 zeBQ==
X-Gm-Message-State: AOAM532D/SpxGjU2JVbIvf6Cq/4HXWP/62IR7cL90+LXLum2kwDckI6+
 szIHy4d7r2ZDKh6dm7a6rD6uEdYwGs0=
X-Google-Smtp-Source: ABdhPJwgzNt9GeJq6FApQTj7b892YwKUOcNoidzg8r68cddQFcfsjTHboYAAA+8pkcbiPY/Gv560SA==
X-Received: by 2002:ad4:4d83:: with SMTP id cv3mr172391qvb.236.1594831394822; 
 Wed, 15 Jul 2020 09:43:14 -0700 (PDT)
Received: from [192.168.1.215] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id y45sm3892828qtk.19.2020.07.15.09.43.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jul 2020 09:43:13 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 15 Jul 2020 12:43:12 -0400
Message-ID: <Mailbird-bfa3c936-08ae-4629-8b41-892ea8e1ba0f@gmail.com>
To: "" <usrp-users@lists.ettus.com>
In-Reply-To: <mailman.55.1594828802.23673.usrp-users_lists.ettus.com@lists.ettus.com>
References: <mailman.55.1594828802.23673.usrp-users_lists.ettus.com@lists.ettus.com>
User-Agent: Mailbird/2.8.23.0
X-Mailbird-ID: Mailbird-bfa3c936-08ae-4629-8b41-892ea8e1ba0f@gmail.com
Subject: Re: [USRP-users] USRP-users Digest, Vol 119, Issue 14
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
Content-Type: multipart/mixed; boundary="===============3299760026507132237=="
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

--===============3299760026507132237==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_29565793.113924813496"

------=_NextPart_29565793.113924813496
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Marcus, Ron
Thanks for the information. Marcus yes I'm using Windows 10 and will follow=
 the pre-built instructions you provided.=C2=A0 Thanks
Larry, K4LED
On 7/15/2020 12:20:37 PM, usrp-users-request@lists.ettus.com <usrp-users-re=
quest@lists.ettus.com> wrote:
Send USRP-users mailing list submissions to
usrp-users@lists.ettus.com

To subscribe or unsubscribe via the World Wide Web, visit
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
or, via email, send a message with subject or body 'help' to
usrp-users-request@lists.ettus.com

You can reach the person managing the list at
usrp-users-owner@lists.ettus.com

When replying, please edit your Subject line so it is more specific
than "Re: Contents of USRP-users digest..."


Today's Topics:

1. Considerations on resampling inside USRP firmware
(Richard J. Muri)
2. Re: Considerations on resampling inside USRP firmware
(Brian Padalino)
3. Compiling UHD Error (Larry Dodd)
4. Re: Compiling UHD Error (Ron Economos)
5. Re: Compiling UHD Error (Marcus D. Leech)
6. error at updating the filesystem for usrp n310 (Pavlos Basaras)
7. Re: error at updating the filesystem for usrp n310
(Marcus D. Leech)
8. Re: error at updating the filesystem for usrp n310
(Pavlos Basaras)
9. Re: error at updating the filesystem for usrp n310
(Marcus D. Leech)
10. Re: error at updating the filesystem for usrp n310
(Pavlos Basaras)


----------------------------------------------------------------------

Message: 1
Date: Tue, 14 Jul 2020 19:29:05 +0000
From: "Richard J. Muri"
To: "usrp-users@lists.ettus.com"
Subject: [USRP-users] Considerations on resampling inside USRP
firmware
Message-ID:

Content-Type: text/plain; charset=3D"us-ascii"

Hello,



I'm working on a project using x310s where different stakeholders desire di=
fferent sampling rates, some of which are not natively support by the x310.=
 One stakeholder wants to put a fractional resampling filter at the ingress=
 and egress of the FPGA inside the USRP.



For instance, I may be running the USRP at 50 MHz sampling rate. I have an =
application that requires a 40 MHz sampling rate. I want to send 1000 sampl=
es (from my application perspective) loopbacked from TX/RX to RX2. Does it =
make sense to put a 5/4 upsampler on the transmit chain inside the FPGA, an=
d then a 4/5 downsampler on the receive? I'm hoping that if I use the softw=
are I have already written as before, the scenario plays out as follows:



1. Initialize the USRP to a 50 MHz sampling rate.

2. Set md.time_spec using a clock domain agnostic method (e.g. set it using=
 integer seconds, double fractional seconds).

3. Call tx_streamer->send(txbuffer, 1000 samples, md, 0 timeout) in my TX t=
hread.

4. Call rx_streamer->recv(rxbuffer, 1000 samples, md, 0 timeout) in my RX t=
hread.

5. The 1000 sample TX packet hits the upsampler, gets converted to 1250 sam=
ples.

6. The USRP works as normal and puts the 1250 samples through the full TX/R=
X chain, at the time specified in the metadata timespec (rounded to whateve=
r nearest tick count can actually be represented by the 20 ns clock period)

7. The 1250 sample receive hits the downsampler, gets converted to 1000 sam=
ples.

8. My software gets 1000 samples into rxbuffer



I'm not terribly familiar with the internal workings of the Verilog firmwar=
e. Are there issues I may be missing? Does the custom firmware need to inte=
rcept the CHDR and change the 1000 samples to 1250, or is the 1000 only use=
d by software for the network communication?



Thank you,

Richard

-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 2
Date: Tue, 14 Jul 2020 16:21:13 -0400
From: Brian Padalino
To: "Richard J. Muri"
Cc: "usrp-users@lists.ettus.com"
Subject: Re: [USRP-users] Considerations on resampling inside USRP
firmware
Message-ID:

Content-Type: text/plain; charset=3D"utf-8"

On Tue, Jul 14, 2020 at 3:30 PM Richard J. Muri via USRP-users <>
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I?m working on a project using x310s where different stakeholders desire
> different sampling rates, some of which are not natively support by the
> x310. One stakeholder wants to put a fractional resampling filter at the
> ingress and egress of the FPGA inside the USRP.
>
>
>
> For instance, I may be running the USRP at 50 MHz sampling rate. I have an
> application that requires a 40 MHz sampling rate. I want to send 1000
> samples (from my application perspective) loopbacked from TX/RX to RX2.
> Does it make sense to put a 5/4 upsampler on the transmit chain inside the
> FPGA, and then a 4/5 downsampler on the receive? I?m hoping that if I use
> the software I have already written as before, the scenario plays out as
> follows:
>
>
>
> 1. Initialize the USRP to a 50 MHz sampling rate.
>
> 2. Set md.time_spec using a clock domain agnostic method (e.g. set
> it using integer seconds, double fractional seconds).
>
> 3. Call tx_streamer->send(txbuffer, 1000 samples, md, 0 timeout) in
> my TX thread.
>
> 4. Call rx_streamer->recv(rxbuffer, 1000 samples, md, 0 timeout) in
> my RX thread.
>
> 5. The 1000 sample TX packet hits the upsampler, gets converted to
> 1250 samples.
>
> 6. The USRP works as normal and puts the 1250 samples through the
> full TX/RX chain, at the time specified in the metadata timespec (rounded
> to whatever nearest tick count can actually be represented by the 20 ns
> clock period)
>
> 7. The 1250 sample receive hits the downsampler, gets converted to
> 1000 samples.
>
> 8. My software gets 1000 samples into rxbuffer
>
>
>
> I?m not terribly familiar with the internal workings of the Verilog
> firmware. Are there issues I may be missing? Does the custom firmware need
> to intercept the CHDR and change the 1000 samples to 1250, or is the 1000
> only used by software for the network communication?
>

Rational resampling can work with all the tools that Ettus has already
provided. I am in the process of putting the finishing touches on a 2/3
and 3/2 resampler for the X310. I will make it publically available very
soon. Let me know if you think this will help you.

The DUC and DDC do rate changing, so looking at those as examples, you'll
notice that really the big thing to do is check out the axi_rate_change
block:


https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc=
_block_ddc.v

https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc=
_block_duc.v

https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi=
_rate_change.v

For blocks with fixed rates, check out the DEFAULT_N and DEFAULT_M
parameters for the Verilog. This eliminates the need to set a register in
software, and the logic in the axi_rate_change block is ready to go at
reset.

Be sure to simulate the block fully beforehand, but that should do it all
for you.

Brian
-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 3
Date: Tue, 14 Jul 2020 19:23:08 -0500
From: "Larry Dodd" <101science@gmail.com>
To: ""
Subject: [USRP-users] Compiling UHD Error
Message-ID:
Content-Type: text/plain; charset=3D"utf-8"

Using Cmake I get the following error.
CMake Error: The source directory "C:/uhd-master/uhd-master/build/CMakeFile=
s" does not appear to contain CMakeLists.txt.
Specify --help for usage, or press the help button on the CMake GUI.

I searched the computer and can not find CMakeFiles.txt anywhere.
Larry, K4LED
-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 4
Date: Tue, 14 Jul 2020 18:05:35 -0700
From: Ron Economos
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Compiling UHD Error
Message-ID: <8fc84b70-fc29-6b85-1aac-d9586e088b26@comcast.net>
Content-Type: text/plain; charset=3D"utf-8"; Format=3D"flowed"

Take a look at:

https://files.ettus.com/manual/page_build_guide.html

Typically, for Linux it's:

git clone https://github.com/EttusResearch/uhd.git

cd uhd

git checkout v3.15.0.0 -b tmp

cd host

mkdir build

cd build

cmake ../

make

sudo make install

sudo ldconfig

It's highly recommended to checkout a release. The master branch is a
development branch and can be broken.

Ron W6RZ

On 7/14/20 17:23, Larry Dodd via USRP-users wrote:
> Using Cmake I get the following error.
> CMake Error: The source directory
> "C:/uhd-master/uhd-master/build/CMakeFiles" does not appear to contain
> CMakeLists.txt.
> Specify --help for usage, or press the help button on the CMake GUI.
> I searched the computer and can not find CMakeFiles.txt anywhere.
> Larry, K4LED
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 5
Date: Tue, 14 Jul 2020 21:12:17 -0400
From: "Marcus D. Leech"
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Compiling UHD Error
Message-ID: <5f0e57f1.80906@gmail.com>
Content-Type: text/plain; charset=3D"windows-1252"; Format=3D"flowed"

On 07/14/2020 08:23 PM, Larry Dodd via USRP-users wrote:
> Using Cmake I get the following error.
> CMake Error: The source directory
> "C:/uhd-master/uhd-master/build/CMakeFiles" does not appear to contain
> CMakeLists.txt.
> Specify --help for usage, or press the help button on the CMake GUI.
> I searched the computer and can not find CMakeFiles.txt anywhere.
> Larry, K4LED
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
I'm not a Windows build guy, but unless you have a good reason to build
it, you should avoid that and use a pre-built installer for UHD.

https://files.ettus.com/manual/page_install.html


-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 6
Date: Wed, 15 Jul 2020 15:12:58 +0300
From: Pavlos Basaras
To: usrp-users@lists.ettus.com
Subject: [USRP-users] error at updating the filesystem for usrp n310
Message-ID:

Content-Type: text/plain; charset=3D"utf-8"

Dear community,

i am using the usrp n310 device. I am following the start up guide from
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting=
_up_a_Serial_Console_Connection
for the initial setup of the usrp.

I completed the installation instructions for the host from
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux
everything seemed ok.

I can connect to the device through both ssh and by the serial port.

I am trying to use mender to update the filesystem at the usrp device.

I executed the command: sudo uhd_images_downloader -t mender -t n3xx --yes
at the host to obtain usrp_n3xx_fs.mender, which i then copied to the usrp.

At the usrp i am using the command: mender -rootfs
/home/root/usrp_n3xx_fs.mender
to start the update of the system but i have the following incompatibility
issue :

ERRO[0000] Installation failed: installer: failed to read and install
update: installer: image (device types [ni-sulfur-rev6-mender
ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender
ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not
compatible with device ni-sulfur-rev11-mender module=3Drootfs
ERRO[0000] installer: failed to read and install update: installer: image
(device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender
ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6 ni-sulfur-rev5
ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with device
ni-sulfur-rev11-mender module=3Dmain


How can i resolve this?


Details on the UHD intalled on both the host and the usrp device"

HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8
USRP uhd: [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
UHD_3.14.1.1-0-g0347a6d8


all the best,
Pavlos.
-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 7
Date: Wed, 15 Jul 2020 09:53:11 -0400
From: "Marcus D. Leech"
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp
n310
Message-ID: <5f0f0a47.3020100@gmail.com>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed

On 07/15/2020 08:12 AM, Pavlos Basaras via USRP-users wrote:
> Dear community,
>
> i am using the usrp n310 device. I am following the start up guide
> from
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setti=
ng_up_a_Serial_Console_Connection
> for the initial setup of the usrp.
>
> I completed the installation instructions for the host from
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux
>
> everything seemed ok.
>
> I can connect to the device through both ssh and by the serial port.
>
> I am trying to use mender to update the filesystem at the usrp device.
>
> I executed the command: sudo uhd_images_downloader -t mender -t n3xx --yes
> at the host to obtain usrp_n3xx_fs.mender, which i then copied to the
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
> compatible with device ni-sulfur-rev11-mender module=3Drootfs
> ERRO[0000] installer: failed to read and install update: installer:
> image (device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender
> ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6
> ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with
> device ni-sulfur-rev11-mender module=3Dmain
>
>
> How can i resolve this?
>
>
> Details on the UHD intalled on both the host and the usrp device"
>
> HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
> Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8
> USRP uhd: [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> UHD_3.14.1.1-0-g0347a6d8
>
>
> all the best,
> Pavlos.
>
This seems a bit odd.

Two things:

(A) How did you copy the .mender file over to the usrp?
(B) (This seems really dumb, and I apologize in advance) are you sure
that you're running the mender command ON the USRP?





------------------------------

Message: 8
Date: Wed, 15 Jul 2020 17:02:41 +0300
From: Pavlos Basaras
To: "Marcus D. Leech"
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp
n310
Message-ID:

Content-Type: text/plain; charset=3D"utf-8"

Hello,

thank you very much for your prompt reply.

i copied the .mender file by using the "scp" command.
Yes, i am running the command on the USRP.

I am not sure if this is a problem but --initially when i created the
.mender file, the host was running the UHD 3.14.0.0 and the USRP had
3.14.1.0. This is when the problem appeared first.
Then i changed the uhd to 3.14.1.0 on the host to match exactly the UHD on
the usrp, but the error still persists (or course i deleted the old file
from the usrp).

any ideas?

best,
P.


On Wed, Jul 15, 2020 at 4:53 PM Marcus D. Leech via USRP-users <>
usrp-users@lists.ettus.com> wrote:

> On 07/15/2020 08:12 AM, Pavlos Basaras via USRP-users wrote:
> > Dear community,
> >
> > i am using the usrp n310 device. I am following the start up guide
> > from
> >
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setti=
ng_up_a_Serial_Console_Connection
> > for the initial setup of the usrp.
> >
> > I completed the installation instructions for the host from
> >
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux
> > <>
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_%28UHD_and_GNU_Radio%29_on_Linux
> >
> > everything seemed ok.
> >
> > I can connect to the device through both ssh and by the serial port.
> >
> > I am trying to use mender to update the filesystem at the usrp device.
> >
> > I executed the command: sudo uhd_images_downloader -t mender -t n3xx
> --yes
> > at the host to obtain usrp_n3xx_fs.mender, which i then copied to the
> > usrp.
> >
> > At the usrp i am using the command: mender -rootfs
> > /home/root/usrp_n3xx_fs.mender
> > to start the update of the system but i have the following
> > incompatibility issue :
> >
> > ERRO[0000] Installation failed: installer: failed to read and install
> > update: installer: image (device types [ni-sulfur-rev6-mender
> > ni-sulfur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender
> > ni-sulfur-rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not
> > compatible with device ni-sulfur-rev11-mender module=3Drootfs
> > ERRO[0000] installer: failed to read and install update: installer:
> > image (device types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender
> > ni-sulfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6
> > ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with
> > device ni-sulfur-rev11-mender module=3Dmain
> >
> >
> > How can i resolve this?
> >
> >
> > Details on the UHD intalled on both the host and the usrp device"
> >
> > HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
> > Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8
> > USRP uhd: [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
> > UHD_3.14.1.1-0-g0347a6d8
> >
> >
> > all the best,
> > Pavlos.
> >
> This seems a bit odd.
>
> Two things:
>
> (A) How did you copy the .mender file over to the usrp?
> (B) (This seems really dumb, and I apologize in advance) are you sure
> that you're running the mender command ON the USRP?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Message: 9
Date: Wed, 15 Jul 2020 10:07:48 -0400
From: "Marcus D. Leech"
To: Pavlos Basaras
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp
n310
Message-ID: <5f0f0db4.2080708@gmail.com>
Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed

On 07/15/2020 10:02 AM, Pavlos Basaras wrote:
> Hello,
>
> thank you very much for your prompt reply.
>
> i copied the .mender file by using the "scp" command.
> Yes, i am running the command on the USRP.
>
> I am not sure if this is a problem but --initially when i created the
> .mender file, the host was running the UHD 3.14.0.0 and the USRP had
> 3.14.1.0. This is when the problem appeared first.
> Then i changed the uhd to 3.14.1.0 on the host to match exactly the
> UHD on the usrp, but the error still persists (or course i deleted the
> old file from the usrp).
>
> any ideas?
>
> best,
> P.
>
I'll have to bug some R&D people and get back to you.





------------------------------

Message: 10
Date: Wed, 15 Jul 2020 17:14:01 +0300
From: Pavlos Basaras
To: "Marcus D. Leech"
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] error at updating the filesystem for usrp
n310
Message-ID:

Content-Type: text/plain; charset=3D"utf-8"

Hello,

that would be great!

cheers,
Pavlos.

On Wed, Jul 15, 2020 at 5:07 PM Marcus D. Leech
wrote:

> On 07/15/2020 10:02 AM, Pavlos Basaras wrote:
> > Hello,
> >
> > thank you very much for your prompt reply.
> >
> > i copied the .mender file by using the "scp" command.
> > Yes, i am running the command on the USRP.
> >
> > I am not sure if this is a problem but --initially when i created the
> > .mender file, the host was running the UHD 3.14.0.0 and the USRP had
> > 3.14.1.0. This is when the problem appeared first.
> > Then i changed the uhd to 3.14.1.0 on the host to match exactly the
> > UHD on the usrp, but the error still persists (or course i deleted the
> > old file from the usrp).
> >
> > any ideas?
> >
> > best,
> > P.
> >
> I'll have to bug some R&D people and get back to you.
>
>
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL:

------------------------------

Subject: Digest Footer

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------------------------------

End of USRP-users Digest, Vol 119, Issue 14
*******************************************

------=_NextPart_29565793.113924813496
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000">=0A                                        =0A         =
                               =0A                                         =
   =0A                                        =0A                          =
              =0A                                        Marcus, Ron<div cl=
ass=3D"mb_sig"></div>=0A                                        =0A        =
                                <div>Thanks for the information. Marcus yes=
 I'm using Windows 10 and will follow the pre-built instructions you provid=
ed.&nbsp; Thanks</div><div>Larry, K4LED</div><blockquote class=3D"history_c=
ontainer" type=3D"cite" style=3D"border-left-style: solid;border-width: 1px=
;margin-top: 20px;margin-left: 0px;padding-left: 10px;min-width: 500px">=0A=
                        <p style=3D"color: #AAAAAA; margin-top: 10px;">On 7=
/15/2020 12:20:37 PM, usrp-users-request@lists.ettus.com &lt;usrp-users-req=
uest@lists.ettus.com&gt; wrote:</p><div style=3D"font-family:Arial,Helvetic=
a,sans-serif">Send USRP-users mailing list submissions to=0A<br>	usrp-users=
@lists.ettus.com=0A<br>=0A<br>To subscribe or unsubscribe via the World Wid=
e Web, visit=0A<br>	http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com=0A<br>or, via email, send a message with subject or body 'help'=
 to=0A<br>	usrp-users-request@lists.ettus.com=0A<br>=0A<br>You can reach th=
e person managing the list at=0A<br>	usrp-users-owner@lists.ettus.com=0A<br=
>=0A<br>When replying, please edit your Subject line so it is more specific=
=0A<br>than "Re: Contents of USRP-users digest..."=0A<br>=0A<br>=0A<br>Toda=
y's Topics:=0A<br>=0A<br>   1. Considerations on resampling inside USRP fir=
mware=0A<br>      (Richard J. Muri)=0A<br>   2. Re: Considerations on resam=
pling inside USRP firmware=0A<br>      (Brian Padalino)=0A<br>   3. Compili=
ng UHD Error (Larry Dodd)=0A<br>   4. Re: Compiling UHD Error (Ron Economos=
)=0A<br>   5. Re: Compiling UHD Error (Marcus D. Leech)=0A<br>   6. error a=
t updating the filesystem for usrp n310 (Pavlos Basaras)=0A<br>   7. Re: er=
ror at updating the filesystem for usrp n310=0A<br>      (Marcus D. Leech)=
=0A<br>   8. Re: error at updating the filesystem for usrp n310=0A<br>     =
 (Pavlos Basaras)=0A<br>   9. Re: error at updating the filesystem for usrp=
 n310=0A<br>      (Marcus D. Leech)=0A<br>  10. Re: error at updating the f=
ilesystem for usrp n310=0A<br>      (Pavlos Basaras)=0A<br>=0A<br>=0A<br>--=
--------------------------------------------------------------------=0A<br>=
=0A<br>Message: 1=0A<br>Date: Tue, 14 Jul 2020 19:29:05 +0000=0A<br>From: "=
Richard J. Muri" <ri28856@mit.edu>=0A<br>To: "usrp-users@lists.ettus.com" <=
usrp-users@lists.ettus.com>=0A<br>Subject: [USRP-users] Considerations on r=
esampling inside USRP=0A<br>	firmware=0A<br>Message-ID:=0A<br>	<d70f86d3b07=
e44cdbe0b0b32c9e4fae2@oc11expo22.exchange.mit.edu>=0A<br>Content-Type: text=
/plain; charset=3D"us-ascii"=0A<br>=0A<br>Hello,=0A<br>=0A<br>=0A<br>=0A<br=
>I'm working on a project using x310s where different stakeholders desire d=
ifferent sampling rates, some of which are not natively support by the x310=
. One stakeholder wants to put a fractional resampling filter at the ingres=
s and egress of the FPGA inside the USRP.=0A<br>=0A<br>=0A<br>=0A<br>For in=
stance, I may be running the USRP at 50 MHz sampling rate. I have an applic=
ation that requires a 40 MHz sampling rate. I want to send 1000 samples (fr=
om my application perspective) loopbacked from TX/RX to RX2. Does it make s=
ense to put a 5/4  upsampler on the transmit chain inside the FPGA, and the=
n a 4/5 downsampler on the receive? I'm hoping that if I use the software I=
 have already written as before, the scenario plays out as follows:=0A<br>=
=0A<br>=0A<br>=0A<br>1.       Initialize the USRP to a 50 MHz sampling rate=
.=0A<br>=0A<br>2.       Set md.time_spec using a clock domain agnostic meth=
od (e.g. set it using integer seconds, double fractional seconds).=0A<br>=
=0A<br>3.       Call tx_streamer-&gt;send(txbuffer, 1000 samples, md, 0 tim=
eout) in my TX thread.=0A<br>=0A<br>4.       Call rx_streamer-&gt;recv(rxbu=
ffer, 1000 samples, md, 0 timeout) in my RX thread.=0A<br>=0A<br>5.       T=
he 1000 sample TX packet hits the upsampler, gets converted to 1250 samples=
.=0A<br>=0A<br>6.       The USRP works as normal and puts the 1250 samples =
through the full TX/RX chain, at the time specified in the metadata timespe=
c (rounded to whatever nearest tick count can actually be represented by th=
e 20 ns clock period)=0A<br>=0A<br>7.       The 1250 sample receive hits th=
e downsampler, gets converted to 1000 samples.=0A<br>=0A<br>8.       My sof=
tware gets 1000 samples into rxbuffer=0A<br>=0A<br>=0A<br>=0A<br>I'm not te=
rribly familiar with the internal workings of the Verilog firmware. Are the=
re issues I may be missing? Does the custom firmware need to intercept the =
CHDR and change the 1000 samples to 1250, or is the 1000 only used by softw=
are for the network communication?=0A<br>=0A<br>=0A<br>=0A<br>Thank you,=0A=
<br>=0A<br>Richard=0A<br>=0A<br>-------------- next part --------------=0A<=
br>An HTML attachment was scrubbed...=0A<br>URL: <http: lists.ettus.com=3D"=
" pipermail=3D"" usrp-users_lists.ettus.com=3D"" attachments=3D"" 20200714=
=3D"" 55e78fde=3D"" attachment-0001.html=3D"">=0A<br>=0A<br>---------------=
---------------=0A<br>=0A<br>Message: 2=0A<br>Date: Tue, 14 Jul 2020 16:21:=
13 -0400=0A<br>From: Brian Padalino <bpadalino@gmail.com>=0A<br>To: "Richar=
d J. Muri" <ri28856@mit.edu>=0A<br>Cc: "usrp-users@lists.ettus.com" <usrp-u=
sers@lists.ettus.com>=0A<br>Subject: Re: [USRP-users] Considerations on res=
ampling inside USRP=0A<br>	firmware=0A<br>Message-ID:=0A<br>	<caexyvk4lffz1=
xm+pcqh06az=3D6kangcolwlqxgmekzmuxgs=3Dq3g@mail.gmail.com>=0A<br>Content-Ty=
pe: text/plain; charset=3D"utf-8"=0A<br>=0A<br>On Tue, Jul 14, 2020 at 3:30=
 PM Richard J. Muri via USRP-users &lt;&gt;<br>usrp-users@lists.ettus.com&g=
t; wrote:=0A<br>=0A<br>&gt; Hello,=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&=
gt; I?m working on a project using x310s where different stakeholders desir=
e=0A<br>&gt; different sampling rates, some of which are not natively suppo=
rt by the=0A<br>&gt; x310. One stakeholder wants to put a fractional resamp=
ling filter at the=0A<br>&gt; ingress and egress of the FPGA inside the USR=
P.=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; For instance, I may be runni=
ng the USRP at 50 MHz sampling rate. I have an=0A<br>&gt; application that =
requires a 40 MHz sampling rate. I want to send 1000=0A<br>&gt; samples (fr=
om my application perspective) loopbacked from TX/RX to RX2.=0A<br>&gt; Doe=
s it make sense to put a 5/4  upsampler on the transmit chain inside the=0A=
<br>&gt; FPGA, and then a 4/5 downsampler on the receive? I?m hoping that i=
f I use=0A<br>&gt; the software I have already written as before, the scena=
rio plays out as=0A<br>&gt; follows:=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br=
>&gt; 1.       Initialize the USRP to a 50 MHz sampling rate.=0A<br>&gt;=0A=
<br>&gt; 2.       Set md.time_spec using a clock domain agnostic method (e.=
g. set=0A<br>&gt; it using integer seconds, double fractional seconds).=0A<=
br>&gt;=0A<br>&gt; 3.       Call tx_streamer-&gt;send(txbuffer, 1000 sample=
s, md, 0 timeout) in=0A<br>&gt; my TX thread.=0A<br>&gt;=0A<br>&gt; 4.     =
  Call rx_streamer-&gt;recv(rxbuffer, 1000 samples, md, 0 timeout) in=0A<br=
>&gt; my RX thread.=0A<br>&gt;=0A<br>&gt; 5.       The 1000 sample TX packe=
t hits the upsampler, gets converted to=0A<br>&gt; 1250 samples.=0A<br>&gt;=
=0A<br>&gt; 6.       The USRP works as normal and puts the 1250 samples thr=
ough the=0A<br>&gt; full TX/RX chain, at the time specified in the metadata=
 timespec (rounded=0A<br>&gt; to whatever nearest tick count can actually b=
e represented by the 20 ns=0A<br>&gt; clock period)=0A<br>&gt;=0A<br>&gt; 7=
.       The 1250 sample receive hits the downsampler, gets converted to=0A<=
br>&gt; 1000 samples.=0A<br>&gt;=0A<br>&gt; 8.       My software gets 1000 =
samples into rxbuffer=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; I?m not t=
erribly familiar with the internal workings of the Verilog=0A<br>&gt; firmw=
are. Are there issues I may be missing? Does the custom firmware need=0A<br=
>&gt; to intercept the CHDR and change the 1000 samples to 1250, or is the =
1000=0A<br>&gt; only used by software for the network communication?=0A<br>=
&gt;=0A<br>=0A<br>Rational resampling can work with all the tools that Ettu=
s has already=0A<br>provided.  I am in the process of putting the finishing=
 touches on a 2/3=0A<br>and 3/2 resampler for the X310.  I will make it pub=
lically available very=0A<br>soon.  Let me know if you think this will help=
 you.=0A<br>=0A<br>The DUC and DDC do rate changing, so looking at those as=
 examples, you'll=0A<br>notice that really the big thing to do is check out=
 the axi_rate_change=0A<br>block:=0A<br>=0A<br>=0A<br>https://github.com/Et=
tusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/noc_block_ddc.v=0A<br>=
=0A<br>https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rf=
noc/noc_block_duc.v=0A<br>=0A<br>https://github.com/EttusResearch/fpga/blob=
/UHD-3.15.LTS/usrp3/lib/rfnoc/axi_rate_change.v=0A<br>=0A<br>For blocks wit=
h fixed rates, check out the DEFAULT_N and DEFAULT_M=0A<br>parameters for t=
he Verilog.  This eliminates the need to set a register in=0A<br>software, =
and the logic in the axi_rate_change block is ready to go at=0A<br>reset.=
=0A<br>=0A<br>Be sure to simulate the block fully beforehand, but that shou=
ld do it all=0A<br>for you.=0A<br>=0A<br>Brian=0A<br>-------------- next pa=
rt --------------=0A<br>An HTML attachment was scrubbed...=0A<br>URL: <http=
: lists.ettus.com=3D"" pipermail=3D"" usrp-users_lists.ettus.com=3D"" attac=
hments=3D"" 20200714=3D"" eaf0590a=3D"" attachment-0001.html=3D"">=0A<br>=
=0A<br>------------------------------=0A<br>=0A<br>Message: 3=0A<br>Date: T=
ue, 14 Jul 2020 19:23:08 -0500=0A<br>From: "Larry Dodd" &lt;101science@gmai=
l.com&gt;=0A<br>To: "" <usrp-users@lists.ettus.com>=0A<br>Subject: [USRP-us=
ers] Compiling UHD Error=0A<br>Message-ID: <mailbird-2d4fe5f5-044e-4c4d-b2f=
9-16306054419b@gmail.com>=0A<br>Content-Type: text/plain; charset=3D"utf-8"=
=0A<br>=0A<br>Using Cmake I get the following error.=0A<br>CMake Error: The=
 source directory "C:/uhd-master/uhd-master/build/CMakeFiles" does not appe=
ar to contain CMakeLists.txt.=0A<br>Specify --help for usage, or press the =
help button on the CMake GUI.=0A<br>=0A<br>I searched the computer and can =
not find CMakeFiles.txt anywhere.=0A<br>Larry, K4LED=0A<br>-------------- n=
ext part --------------=0A<br>An HTML attachment was scrubbed...=0A<br>URL:=
 <http: lists.ettus.com=3D"" pipermail=3D"" usrp-users_lists.ettus.com=3D""=
 attachments=3D"" 20200714=3D"" 9f539dcf=3D"" attachment-0001.html=3D"">=0A=
<br>=0A<br>------------------------------=0A<br>=0A<br>Message: 4=0A<br>Dat=
e: Tue, 14 Jul 2020 18:05:35 -0700=0A<br>From: Ron Economos <w6rz@comcast.n=
et>=0A<br>To: usrp-users@lists.ettus.com=0A<br>Subject: Re: [USRP-users] Co=
mpiling UHD Error=0A<br>Message-ID: &lt;8fc84b70-fc29-6b85-1aac-d9586e088b2=
6@comcast.net&gt;=0A<br>Content-Type: text/plain; charset=3D"utf-8"; Format=
=3D"flowed"=0A<br>=0A<br>Take a look at:=0A<br>=0A<br>https://files.ettus.c=
om/manual/page_build_guide.html=0A<br>=0A<br>Typically, for Linux it's:=0A<=
br>=0A<br>git clone https://github.com/EttusResearch/uhd.git=0A<br>=0A<br>c=
d uhd=0A<br>=0A<br>git checkout v3.15.0.0 -b tmp=0A<br>=0A<br>cd host=0A<br=
>=0A<br>mkdir build=0A<br>=0A<br>cd build=0A<br>=0A<br>cmake ../=0A<br>=0A<=
br>make=0A<br>=0A<br>sudo make install=0A<br>=0A<br>sudo ldconfig=0A<br>=0A=
<br>It's highly recommended to checkout a release. The master branch is a =
=0A<br>development branch and can be broken.=0A<br>=0A<br>Ron W6RZ=0A<br>=
=0A<br>On 7/14/20 17:23, Larry Dodd via USRP-users wrote:=0A<br>&gt; Using =
Cmake I get the following error.=0A<br>&gt; CMake Error: The source directo=
ry =0A<br>&gt; "C:/uhd-master/uhd-master/build/CMakeFiles" does not appear =
to contain =0A<br>&gt; CMakeLists.txt.=0A<br>&gt; Specify --help for usage,=
 or press the help button on the CMake GUI.=0A<br>&gt; I searched the compu=
ter and can not find CMakeFiles.txt anywhere.=0A<br>&gt; Larry, K4LED=0A<br=
>&gt;=0A<br>&gt; _______________________________________________=0A<br>&gt;=
 USRP-users mailing list=0A<br>&gt; USRP-users@lists.ettus.com=0A<br>&gt; h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A<br>---=
----------- next part --------------=0A<br>An HTML attachment was scrubbed.=
..=0A<br>URL: <http: lists.ettus.com=3D"" pipermail=3D"" usrp-users_lists.e=
ttus.com=3D"" attachments=3D"" 20200714=3D"" 5cb2a1e3=3D"" attachment-0001.=
html=3D"">=0A<br>=0A<br>------------------------------=0A<br>=0A<br>Message=
: 5=0A<br>Date: Tue, 14 Jul 2020 21:12:17 -0400=0A<br>From: "Marcus D. Leec=
h" <patchvonbraun@gmail.com>=0A<br>To: usrp-users@lists.ettus.com=0A<br>Sub=
ject: Re: [USRP-users] Compiling UHD Error=0A<br>Message-ID: &lt;5f0e57f1.8=
0906@gmail.com&gt;=0A<br>Content-Type: text/plain; charset=3D"windows-1252"=
; Format=3D"flowed"=0A<br>=0A<br>On 07/14/2020 08:23 PM, Larry Dodd via USR=
P-users wrote:=0A<br>&gt; Using Cmake I get the following error.=0A<br>&gt;=
 CMake Error: The source directory =0A<br>&gt; "C:/uhd-master/uhd-master/bu=
ild/CMakeFiles" does not appear to contain =0A<br>&gt; CMakeLists.txt.=0A<b=
r>&gt; Specify --help for usage, or press the help button on the CMake GUI.=
=0A<br>&gt; I searched the computer and can not find CMakeFiles.txt anywher=
e.=0A<br>&gt; Larry, K4LED=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; _______________=
________________________________=0A<br>&gt; USRP-users mailing list=0A<br>&=
gt; USRP-users@lists.ettus.com=0A<br>&gt; http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com=0A<br>I'm not a Windows build guy, but un=
less you have a good reason to build =0A<br>it, you should avoid that and u=
se a pre-built installer for UHD.=0A<br>=0A<br>https://files.ettus.com/manu=
al/page_install.html=0A<br>=0A<br>=0A<br>-------------- next part ---------=
-----=0A<br>An HTML attachment was scrubbed...=0A<br>URL: <http: lists.ettu=
s.com=3D"" pipermail=3D"" usrp-users_lists.ettus.com=3D"" attachments=3D"" =
20200714=3D"" 61088173=3D"" attachment-0001.html=3D"">=0A<br>=0A<br>-------=
-----------------------=0A<br>=0A<br>Message: 6=0A<br>Date: Wed, 15 Jul 202=
0 15:12:58 +0300=0A<br>From: Pavlos Basaras <pbasaras@gmail.com>=0A<br>To: =
usrp-users@lists.ettus.com=0A<br>Subject: [USRP-users] error at updating th=
e filesystem for usrp n310=0A<br>Message-ID:=0A<br>	<camvzm+-xghc1dgum9t2bn=
ccpvcluc7j1upqvlqefvpmhf3fe2a@mail.gmail.com>=0A<br>Content-Type: text/plai=
n; charset=3D"utf-8"=0A<br>=0A<br>Dear community,=0A<br>=0A<br>i am using t=
he usrp n310 device. I am following the start up guide from=0A<br>https://k=
b.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting_up_a_Ser=
ial_Console_Connection=0A<br>for the initial setup of the usrp.=0A<br>=0A<b=
r>I completed the installation instructions for the host from=0A<br>https:/=
/kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_a=
nd_GNU_Radio)_on_Linux=0A<br>everything seemed ok.=0A<br>=0A<br>I can conne=
ct to the device through both ssh and by the serial port.=0A<br>=0A<br>I am=
 trying to use mender to update the filesystem at the usrp device.=0A<br>=
=0A<br>I executed the command: sudo uhd_images_downloader -t mender -t n3xx=
 --yes=0A<br>at the host  to obtain usrp_n3xx_fs.mender, which i then copie=
d to the usrp.=0A<br>=0A<br>At the usrp i am using the command: mender -roo=
tfs=0A<br>/home/root/usrp_n3xx_fs.mender=0A<br>to start the update of the s=
ystem but i have the following incompatibility=0A<br>issue :=0A<br>=0A<br>E=
RRO[0000] Installation failed: installer: failed to read and install=0A<br>=
update: installer: image (device types [ni-sulfur-rev6-mender=0A<br>ni-sulf=
ur-rev5-mender ni-sulfur-rev4-mender ni-sulfur-rev3-mender=0A<br>ni-sulfur-=
rev6 ni-sulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not=0A<br>compatible wi=
th device ni-sulfur-rev11-mender  module=3Drootfs=0A<br>ERRO[0000] installe=
r: failed to read and install update: installer: image=0A<br>(device types =
[ni-sulfur-rev6-mender ni-sulfur-rev5-mender=0A<br>ni-sulfur-rev4-mender ni=
-sulfur-rev3-mender ni-sulfur-rev6 ni-sulfur-rev5=0A<br>ni-sulfur-rev4 ni-s=
ulfur-rev3]) not compatible with device=0A<br>ni-sulfur-rev11-mender  modul=
e=3Dmain=0A<br>=0A<br>=0A<br>How can i resolve this?=0A<br>=0A<br>=0A<br>De=
tails on the UHD intalled on both the host and the usrp device"=0A<br>=0A<b=
r>HOST computer uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;=0A=
<br>Boost_105800; UHD_3.14.1.HEAD-0-g0347a6d8=0A<br>USRP uhd:   [INFO] [UHD=
] linux; GNU C++ version 7.3.0; Boost_106600;=0A<br>UHD_3.14.1.1-0-g0347a6d=
8=0A<br>=0A<br>=0A<br>all the best,=0A<br>Pavlos.=0A<br>-------------- next=
 part --------------=0A<br>An HTML attachment was scrubbed...=0A<br>URL: <h=
ttp: lists.ettus.com=3D"" pipermail=3D"" usrp-users_lists.ettus.com=3D"" at=
tachments=3D"" 20200715=3D"" 2e3e18fa=3D"" attachment-0001.html=3D"">=0A<br=
>=0A<br>------------------------------=0A<br>=0A<br>Message: 7=0A<br>Date: =
Wed, 15 Jul 2020 09:53:11 -0400=0A<br>From: "Marcus D. Leech" <patchvonbrau=
n@gmail.com>=0A<br>To: usrp-users@lists.ettus.com=0A<br>Subject: Re: [USRP-=
users] error at updating the filesystem for usrp=0A<br>	n310=0A<br>Message-=
ID: &lt;5f0f0a47.3020100@gmail.com&gt;=0A<br>Content-Type: text/plain; char=
set=3Dwindows-1252; format=3Dflowed=0A<br>=0A<br>On 07/15/2020 08:12 AM, Pa=
vlos Basaras via USRP-users wrote:=0A<br>&gt; Dear community,=0A<br>&gt;=0A=
<br>&gt; i am using the usrp n310 device. I am following the start up guide=
 =0A<br>&gt; from =0A<br>&gt; https://kb.ettus.com/USRP_N300/N310/N320/N321=
_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection=0A<br>&gt; fo=
r the initial setup of the usrp.=0A<br>&gt;=0A<br>&gt; I completed the inst=
allation instructions for the host from =0A<br>&gt; https://kb.ettus.com/Bu=
ilding_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on=
_Linux =0A<br>&gt; <https: kb.ettus.com=3D"" building_and_installing_the_us=
rp_open-source_toolchain_%28uhd_and_gnu_radio%29_on_linux=3D"">=0A<br>&gt; =
everything seemed ok.=0A<br>&gt;=0A<br>&gt; I can connect to the device thr=
ough both ssh and by the serial port.=0A<br>&gt;=0A<br>&gt; I am trying to =
use mender to update the filesystem at the usrp device.=0A<br>&gt;=0A<br>&g=
t; I executed the command: sudo uhd_images_downloader -t mender -t n3xx --y=
es=0A<br>&gt; at the host  to obtain usrp_n3xx_fs.mender, which i then copi=
ed to the =0A<br>&gt; usrp.=0A<br>&gt;=0A<br>&gt; At the usrp i am using th=
e command: mender -rootfs =0A<br>&gt; /home/root/usrp_n3xx_fs.mender=0A<br>=
&gt; to start the update of the system but i have the following =0A<br>&gt;=
 incompatibility issue :=0A<br>&gt;=0A<br>&gt; ERRO[0000] Installation fail=
ed: installer: failed to read and install =0A<br>&gt; update: installer: im=
age (device types [ni-sulfur-rev6-mender =0A<br>&gt; ni-sulfur-rev5-mender =
ni-sulfur-rev4-mender ni-sulfur-rev3-mender =0A<br>&gt; ni-sulfur-rev6 ni-s=
ulfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not =0A<br>&gt; compatible with =
device ni-sulfur-rev11-mender  module=3Drootfs=0A<br>&gt; ERRO[0000] instal=
ler: failed to read and install update: installer: =0A<br>&gt; image (devic=
e types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender =0A<br>&gt; ni-sulfur-=
rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6 =0A<br>&gt; ni-sulfur-rev5=
 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with =0A<br>&gt; device ni-=
sulfur-rev11-mender  module=3Dmain=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; How can=
 i resolve this?=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; Details on the UHD intall=
ed on both the host and the usrp device"=0A<br>&gt;=0A<br>&gt; HOST compute=
r uhd: [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; =0A<br>&gt; Boos=
t_105800; UHD_3.14.1.HEAD-0-g0347a6d8=0A<br>&gt; USRP uhd:   [INFO] [UHD] l=
inux; GNU C++ version 7.3.0; Boost_106600; =0A<br>&gt; UHD_3.14.1.1-0-g0347=
a6d8=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; all the best,=0A<br>&gt; Pavlos.=0A<b=
r>&gt;=0A<br>This seems a bit odd.=0A<br>=0A<br>Two things:=0A<br>=0A<br>(A=
)  How did you copy the .mender file over to the usrp?=0A<br>(B) (This seem=
s really dumb, and I apologize in advance) are you sure =0A<br>that you're =
running the mender command ON the USRP?=0A<br>=0A<br>=0A<br>=0A<br>=0A<br>=
=0A<br>------------------------------=0A<br>=0A<br>Message: 8=0A<br>Date: W=
ed, 15 Jul 2020 17:02:41 +0300=0A<br>From: Pavlos Basaras <pbasaras@gmail.c=
om>=0A<br>To: "Marcus D. Leech" <patchvonbraun@gmail.com>=0A<br>Cc: usrp-us=
ers@lists.ettus.com=0A<br>Subject: Re: [USRP-users] error at updating the f=
ilesystem for usrp=0A<br>	n310=0A<br>Message-ID:=0A<br>	<camvzm+-ruvubzq_ze=
wq-72imhmuq+xamepdyuvmjq2b69gjpuq@mail.gmail.com>=0A<br>Content-Type: text/=
plain; charset=3D"utf-8"=0A<br>=0A<br>Hello,=0A<br>=0A<br>thank you very mu=
ch for your prompt reply.=0A<br>=0A<br>i copied the .mender file by using t=
he "scp" command.=0A<br>Yes, i am running the command on the USRP.=0A<br>=
=0A<br>I am not sure if this is a problem but --initially when i created th=
e=0A<br>.mender file, the host was running the UHD 3.14.0.0 and the USRP ha=
d=0A<br>3.14.1.0. This is when the problem appeared first.=0A<br>Then i cha=
nged the uhd to 3.14.1.0 on the host to match exactly the UHD on=0A<br>the =
usrp, but the error still persists (or course i deleted the old file=0A<br>=
from the usrp).=0A<br>=0A<br>any ideas?=0A<br>=0A<br>best,=0A<br>P.=0A<br>=
=0A<br>=0A<br>On Wed, Jul 15, 2020 at 4:53 PM Marcus D. Leech via USRP-user=
s &lt;&gt;<br>usrp-users@lists.ettus.com&gt; wrote:=0A<br>=0A<br>&gt; On 07=
/15/2020 08:12 AM, Pavlos Basaras via USRP-users wrote:=0A<br>&gt; &gt; Dea=
r community,=0A<br>&gt; &gt;=0A<br>&gt; &gt; i am using the usrp n310 devic=
e. I am following the start up guide=0A<br>&gt; &gt; from=0A<br>&gt; &gt;=
=0A<br>&gt; https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_G=
uide#Setting_up_a_Serial_Console_Connection=0A<br>&gt; &gt; for the initial=
 setup of the usrp.=0A<br>&gt; &gt;=0A<br>&gt; &gt; I completed the install=
ation instructions for the host from=0A<br>&gt; &gt;=0A<br>&gt; https://kb.=
ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_G=
NU_Radio)_on_Linux=0A<br>&gt; &gt; &lt;&gt;<br>&gt; https://kb.ettus.com/Bu=
ilding_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%2=
9_on_Linux=0A<br>&gt; &gt;=0A<br>&gt; &gt; everything seemed ok.=0A<br>&gt;=
 &gt;=0A<br>&gt; &gt; I can connect to the device through both ssh and by t=
he serial port.=0A<br>&gt; &gt;=0A<br>&gt; &gt; I am trying to use mender t=
o update the filesystem at the usrp device.=0A<br>&gt; &gt;=0A<br>&gt; &gt;=
 I executed the command: sudo uhd_images_downloader -t mender -t n3xx=0A<br=
>&gt; --yes=0A<br>&gt; &gt; at the host  to obtain usrp_n3xx_fs.mender, whi=
ch i then copied to the=0A<br>&gt; &gt; usrp.=0A<br>&gt; &gt;=0A<br>&gt; &g=
t; At the usrp i am using the command: mender -rootfs=0A<br>&gt; &gt; /home=
/root/usrp_n3xx_fs.mender=0A<br>&gt; &gt; to start the update of the system=
 but i have the following=0A<br>&gt; &gt; incompatibility issue :=0A<br>&gt=
; &gt;=0A<br>&gt; &gt; ERRO[0000] Installation failed: installer: failed to=
 read and install=0A<br>&gt; &gt; update: installer: image (device types [n=
i-sulfur-rev6-mender=0A<br>&gt; &gt; ni-sulfur-rev5-mender ni-sulfur-rev4-m=
ender ni-sulfur-rev3-mender=0A<br>&gt; &gt; ni-sulfur-rev6 ni-sulfur-rev5 n=
i-sulfur-rev4 ni-sulfur-rev3]) not=0A<br>&gt; &gt; compatible with device n=
i-sulfur-rev11-mender  module=3Drootfs=0A<br>&gt; &gt; ERRO[0000] installer=
: failed to read and install update: installer:=0A<br>&gt; &gt; image (devi=
ce types [ni-sulfur-rev6-mender ni-sulfur-rev5-mender=0A<br>&gt; &gt; ni-su=
lfur-rev4-mender ni-sulfur-rev3-mender ni-sulfur-rev6=0A<br>&gt; &gt; ni-su=
lfur-rev5 ni-sulfur-rev4 ni-sulfur-rev3]) not compatible with=0A<br>&gt; &g=
t; device ni-sulfur-rev11-mender  module=3Dmain=0A<br>&gt; &gt;=0A<br>&gt; =
&gt;=0A<br>&gt; &gt; How can i resolve this?=0A<br>&gt; &gt;=0A<br>&gt; &gt=
;=0A<br>&gt; &gt; Details on the UHD intalled on both the host and the usrp=
 device"=0A<br>&gt; &gt;=0A<br>&gt; &gt; HOST computer uhd: [INFO] [UHD] li=
nux; GNU C++ version 5.4.0 20160609;=0A<br>&gt; &gt; Boost_105800; UHD_3.14=
.1.HEAD-0-g0347a6d8=0A<br>&gt; &gt; USRP uhd:   [INFO] [UHD] linux; GNU C++=
 version 7.3.0; Boost_106600;=0A<br>&gt; &gt; UHD_3.14.1.1-0-g0347a6d8=0A<b=
r>&gt; &gt;=0A<br>&gt; &gt;=0A<br>&gt; &gt; all the best,=0A<br>&gt; &gt; P=
avlos.=0A<br>&gt; &gt;=0A<br>&gt; This seems a bit odd.=0A<br>&gt;=0A<br>&g=
t; Two things:=0A<br>&gt;=0A<br>&gt; (A)  How did you copy the .mender file=
 over to the usrp?=0A<br>&gt; (B) (This seems really dumb, and I apologize =
in advance) are you sure=0A<br>&gt; that you're running the mender command =
ON the USRP?=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br>&gt; __________________=
_____________________________=0A<br>&gt; USRP-users mailing list=0A<br>&gt;=
 USRP-users@lists.ettus.com=0A<br>&gt; http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com=0A<br>&gt;=0A<br>-------------- next part --=
------------=0A<br>An HTML attachment was scrubbed...=0A<br>URL: <http: lis=
ts.ettus.com=3D"" pipermail=3D"" usrp-users_lists.ettus.com=3D"" attachment=
s=3D"" 20200715=3D"" dece1ab9=3D"" attachment-0001.html=3D"">=0A<br>=0A<br>=
------------------------------=0A<br>=0A<br>Message: 9=0A<br>Date: Wed, 15 =
Jul 2020 10:07:48 -0400=0A<br>From: "Marcus D. Leech" <patchvonbraun@gmail.=
com>=0A<br>To: Pavlos Basaras <pbasaras@gmail.com>=0A<br>Cc: usrp-users@lis=
ts.ettus.com=0A<br>Subject: Re: [USRP-users] error at updating the filesyst=
em for usrp=0A<br>	n310=0A<br>Message-ID: &lt;5f0f0db4.2080708@gmail.com&gt=
;=0A<br>Content-Type: text/plain; charset=3Dutf-8; format=3Dflowed=0A<br>=
=0A<br>On 07/15/2020 10:02 AM, Pavlos Basaras wrote:=0A<br>&gt; Hello,=0A<b=
r>&gt;=0A<br>&gt; thank you very much for your prompt reply.=0A<br>&gt;=0A<=
br>&gt; i copied the .mender file by using the "scp" command.=0A<br>&gt; Ye=
s, i am running the command on the USRP.=0A<br>&gt;=0A<br>&gt; I am not sur=
e if this is a problem but --initially when i created the =0A<br>&gt; .mend=
er file, the host was running the UHD 3.14.0.0 and the USRP had =0A<br>&gt;=
 3.14.1.0. This is when the problem appeared first.=0A<br>&gt; Then i chang=
ed the uhd to 3.14.1.0 on the host to match exactly the =0A<br>&gt; UHD on =
the usrp, but the error still persists (or course i deleted the =0A<br>&gt;=
 old file from the usrp).=0A<br>&gt;=0A<br>&gt; any ideas?=0A<br>&gt;=0A<br=
>&gt; best,=0A<br>&gt; P.=0A<br>&gt;=0A<br>I'll have to bug some R&amp;D pe=
ople and get back to you.=0A<br>=0A<br>=0A<br>=0A<br>=0A<br>=0A<br>--------=
----------------------=0A<br>=0A<br>Message: 10=0A<br>Date: Wed, 15 Jul 202=
0 17:14:01 +0300=0A<br>From: Pavlos Basaras <pbasaras@gmail.com>=0A<br>To: =
"Marcus D. Leech" <patchvonbraun@gmail.com>=0A<br>Cc: usrp-users@lists.ettu=
s.com=0A<br>Subject: Re: [USRP-users] error at updating the filesystem for =
usrp=0A<br>	n310=0A<br>Message-ID:=0A<br>	<camvzm+8obqh3ggqmkt_aeqk53beraex=
zxfdmgg_=3D3fxas358ag@mail.gmail.com>=0A<br>Content-Type: text/plain; chars=
et=3D"utf-8"=0A<br>=0A<br>Hello,=0A<br>=0A<br>that would be great!=0A<br>=
=0A<br>cheers,=0A<br>Pavlos.=0A<br>=0A<br>On Wed, Jul 15, 2020 at 5:07 PM M=
arcus D. Leech <patchvonbraun@gmail.com>=0A<br>wrote:=0A<br>=0A<br>&gt; On =
07/15/2020 10:02 AM, Pavlos Basaras wrote:=0A<br>&gt; &gt; Hello,=0A<br>&gt=
; &gt;=0A<br>&gt; &gt; thank you very much for your prompt reply.=0A<br>&gt=
; &gt;=0A<br>&gt; &gt; i copied the .mender file by using the "scp" command=
.=0A<br>&gt; &gt; Yes, i am running the command on the USRP.=0A<br>&gt; &gt=
;=0A<br>&gt; &gt; I am not sure if this is a problem but --initially when i=
 created the=0A<br>&gt; &gt; .mender file, the host was running the UHD 3.1=
4.0.0 and the USRP had=0A<br>&gt; &gt; 3.14.1.0. This is when the problem a=
ppeared first.=0A<br>&gt; &gt; Then i changed the uhd to 3.14.1.0 on the ho=
st to match exactly the=0A<br>&gt; &gt; UHD on the usrp, but the error stil=
l persists (or course i deleted the=0A<br>&gt; &gt; old file from the usrp)=
.=0A<br>&gt; &gt;=0A<br>&gt; &gt; any ideas?=0A<br>&gt; &gt;=0A<br>&gt; &gt=
; best,=0A<br>&gt; &gt; P.=0A<br>&gt; &gt;=0A<br>&gt; I'll have to bug some=
 R&amp;D people and get back to you.=0A<br>&gt;=0A<br>&gt;=0A<br>&gt;=0A<br=
>-------------- next part --------------=0A<br>An HTML attachment was scrub=
bed...=0A<br>URL: <http: lists.ettus.com=3D"" pipermail=3D"" usrp-users_lis=
ts.ettus.com=3D"" attachments=3D"" 20200715=3D"" 9a3b1f95=3D"" attachment-0=
001.html=3D"">=0A<br>=0A<br>------------------------------=0A<br>=0A<br>Sub=
ject: Digest Footer=0A<br>=0A<br>__________________________________________=
_____=0A<br>USRP-users mailing list=0A<br>USRP-users@lists.ettus.com=0A<br>=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A<br>=
=0A<br>=0A<br>------------------------------=0A<br>=0A<br>End of USRP-users=
 Digest, Vol 119, Issue 14=0A<br>******************************************=
*=0A<br></http:></patchvonbraun@gmail.com></camvzm+8obqh3ggqmkt_aeqk53berae=
xzxfdmgg_=3D3fxas358ag@mail.gmail.com></patchvonbraun@gmail.com></pbasaras@=
gmail.com><!--5f0f0db4.2080708@gmail.com--></pbasaras@gmail.com></patchvonb=
raun@gmail.com></http:></camvzm+-ruvubzq_zewq-72imhmuq+xamepdyuvmjq2b69gjpu=
q@mail.gmail.com></patchvonbraun@gmail.com></pbasaras@gmail.com></https:><!=
--5f0f0a47.3020100@gmail.com--></patchvonbraun@gmail.com></http:></camvzm+-=
xghc1dgum9t2bnccpvcluc7j1upqvlqefvpmhf3fe2a@mail.gmail.com></pbasaras@gmail=
.com></http:><!--5f0e57f1.80906@gmail.com--></patchvonbraun@gmail.com></htt=
p:><!--8fc84b70-fc29-6b85-1aac-d9586e088b26@comcast.net--></w6rz@comcast.ne=
t></http:></mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com></usrp-=
users@lists.ettus.com><!--101science@gmail.com--></http:></caexyvk4lffz1xm+=
pcqh06az=3D6kangcolwlqxgmekzmuxgs=3Dq3g@mail.gmail.com></usrp-users@lists.e=
ttus.com></ri28856@mit.edu></bpadalino@gmail.com></http:></d70f86d3b07e44cd=
be0b0b32c9e4fae2@oc11expo22.exchange.mit.edu></usrp-users@lists.ettus.com><=
/ri28856@mit.edu></div></blockquote></div>
------=_NextPart_29565793.113924813496--


--===============3299760026507132237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3299760026507132237==--

