Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973B316983
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 15:55:43 +0100 (CET)
Received: from [::1] (port=46188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9qu6-0003Ng-IC; Wed, 10 Feb 2021 09:55:42 -0500
Received: from smtp6.emailarray.com ([65.39.216.46]:38076)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1l9qu2-0003FW-HP
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 09:55:38 -0500
Received: (qmail 67250 invoked by uid 89); 10 Feb 2021 14:54:55 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL) 
 by smtp6.emailarray.com with SMTP; 10 Feb 2021 14:54:55 -0000
To: Ben Magistro <koncept1@gmail.com>, dtrask1@tampabay.rr.com
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail>
 <CAKx8PBiJXjP3M0x6jxQVJ67K-VUDAuoY4OfWJ28eG+h1Nknj+A@mail.gmail.com>
Message-ID: <c754265e-aa15-a7a7-dacd-a25e3e620a92@balister.org>
Date: Wed, 10 Feb 2021 09:54:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKx8PBiJXjP3M0x6jxQVJ67K-VUDAuoY4OfWJ28eG+h1Nknj+A@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
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

Which issues did you fix? The list I am maintainin gin my head is:

1) fftw segfaults
2) sg3 runs at sg1 processor speed
3) gnuradio 3.8.0 needs updating to 3.8.2
4) issues compiling OOTs for gnuradio
4) and rest of runtime needs updating from zeus

Philip

On 2/10/21 9:44 AM, Ben Magistro via USRP-users wrote:
> I am using an image based on the v4.0.0.0 variant but I needed to rebuild
> it to overcome some other issues with the image.  What you listed does work
> for me.  If the link is not active, looking at the output of `ip addr` will
> not show any inet address(es).  I don't see any obvious typos/differences
> between what you provided and what I am using but including the contents
> just to be safe.  As far as I know the name should not make any difference
> provided it ends with `.network`.
> 
> root@ni-e31x-31D7B0C:~# cat /etc/systemd/network/20-wired.network
> [Match]
> Name=eth0
> 
> [Network]
> Address=192.168.200.250/24
> 
> root@ni-e31x-31D7B0C:~# ip addr
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>     inet 127.0.0.1/8 scope host lo
>        valid_lft forever preferred_lft forever
> 2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast qlen
> 1000
>     link/ether 00:80:2f:30:8f:ca brd ff:ff:ff:ff:ff:ff
>     inet 192.168.200.250/24 brd 192.168.200.255 scope global eth0
>        valid_lft forever preferred_lft forever
> 
> 
> root@ni-e31x-31D7B0C:~# systemctl | grep -i net
> sys-devices-soc0-amba-e000b000.ethernet-net-eth0.device
>               loaded active plugged
> /sys/devices/soc0/amba/e000b000.ethernet/net/eth0
> 
> sys-subsystem-net-devices-eth0.device
>               loaded active plugged   /sys/subsystem/net/devices/eth0
> 
> systemd-networkd.service
>                loaded active running   Network Service
> 
> systemd-resolved.service
>                loaded active running   Network Name Resolution
> 
> systemd-timesyncd.service
>               loaded active running   Network Time Synchronization
> 
> systemd-networkd.socket
>               loaded active running   Network Service Netlink Socket
> 
> network-pre.target
>                loaded active active    Network (Pre)
> 
> network.target
>                loaded active active    Network
> 
> nss-lookup.target
>               loaded active active    Host and Network Name Lookups
> 
> 
> 
> Hope this helps.
> 
> On Tue, Feb 9, 2021 at 5:47 PM Dennis Trask via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> 
>> Thanks, Marcus.
>>
>> That was actually what I attempted first. As described in the man page (
>> https://www.freedesktop.org/software/systemd/man/systemd.network.html) I
>> created eth0.network under /etc/systemd/network/, with these contents:
>>
>> [Match]
>> Name=eth0
>>
>> [Network]
>> Address=192.168.200.2/24
>>
>> The system seemed to ignore this configuration, however.
>>
>>
>>
>> -----------------------------------------
>> From: "Marcus D. Leech via USRP-users"
>> To: usrp-users@lists.ettus.com
>> Cc:
>> Sent: Tuesday February 9 2021 4:42:34PM
>> Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
>>
>> On 02/09/2021 04:35 PM, Dennis Trask via USRP-users wrote:
>>
>> I have re-imaged the SD card for my E310 with the v4.0.0.0 image. I cannot
>> figure out how to set a static IP address on eth0 at boot-up. I created an
>> /etc/network/interfaces file that looks like this:
>>
>> auto eth0
>> iface eth0 inet static
>> address 192.168.200.2
>> netmask 255.255.255.0
>>
>> I can run the command "ifup eth0" and bring up the interface with the
>> desired configuration, but it does not initialize when I reboot.
>>
>> The SD image I am using was obtained with the command:
>> uhd_images_downloader -t e310 -t sg3
>>
>> I built the uhd_images_downloder from source, and it's version
>> is 4.0.0.HEAD-0-g90ce6062.
>>
>> Dennis
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> "mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com
>> "http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">
>> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>> target=
>> "_blank">
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> It almost certainly is running systemd/networkd
>>
>> So look under /etc/systemd/networkd
>>
>> In Linux, there have historically been many different ways to configure
>> network devices, and even under systemd, there are a couple of
>>   different schemes "out there".  I believe that in a UHD 4 system image
>> on E310, it is based on Networkd.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
