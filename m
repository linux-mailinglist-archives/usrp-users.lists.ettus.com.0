Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 913F03964B
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 21:58:46 +0200 (CEST)
Received: from [::1] (port=45666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZL0Z-0003fR-U2; Fri, 07 Jun 2019 15:58:39 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:14461)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1hZL0W-0003bO-3M
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 15:58:36 -0400
Received: (qmail 1532 invoked by uid 1003); 7 Jun 2019 19:57:58 -0000
Received: from unknown (HELO ?192.168.11.100?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 7 Jun 2019 19:57:57 -0000
To: Jason Matusiak <jason@gardettoengineering.com>,
 Nate Temple <nate.temple@ettus.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>
 <BL0PR12MB2340EF121686FC31593EC856AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB23408E4536DA1297A3D96350AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263ixLjV9TCKpExJK4fr6zYoE_rs9s17_3StmVEEJcBoZDiA@mail.gmail.com>
 <BL0PR12MB2340AE73E6FE8CCCDC62608FAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Openpgp: preference=signencrypt
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 xsBNBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAHNJVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz7CwH4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4YxjOwE0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAcLAZQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <1055c54b-4146-221c-9c69-584fca89c3bf@balister.org>
Date: Fri, 7 Jun 2019 15:57:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <BL0PR12MB2340AE73E6FE8CCCDC62608FAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Content-Language: en-MW
Subject: Re: [USRP-users] E320 hogging the network
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
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

On 06/07/2019 03:17 PM, Jason Matusiak via USRP-users wrote:
> OK, I will keep an eye on that.  No GR will kill us for now though.  I've been playing with the build system for an E320 the last 2 weeks and have learned to build //some// extra things in (including GR, but I haven't moved that image onto a device yet), so I could probably take a swag at it, but it probably would be easier for me to just wait.  The main issue with GR on the E320 for me (which I assume will be an issue on the E310 as well) is that scipy isn't built for it.  Lots of GR examples use it, and I am worried that some of our internal OOT modules might, so I tried to build it in, but I went down a 2 day rabbit hole trying to get python-scipy working (it seems to be hard to do in oe based on other people in other projects struggling with it).
> 

I think some of the gnuradio scipy stuff was replaced with numpy
operations, which helps.

Yet another of my hobby projects is to collect all the fortran/scipy
stuff in a layer and try and get it built. I think it is possible, but
have no personal motivation to make it happen, and no one is willing to pay.

Philip

> 
> I'll keep an eye on the MPM and knowledge base updates, thanks.
> 
> 
> ________________________________
> From: Nate Temple <nate.temple@ettus.com>
> Sent: Friday, June 7, 2019 3:10 PM
> To: Jason Matusiak
> Cc: Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> 
> Hi Jason,
> 
> You could try running the new 3.15 MPM based file system for the E310, but it has some caveats, more details here: http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059897.html
> 
> 
> 
> Regards,
> Nate Temple
> 
> On Fri, Jun 7, 2019 at 12:05 PM Jason Matusiak <jason@gardettoengineering.com<mailto:jason@gardettoengineering.com>> wrote:
> 
> OK, this is actually an E310 problem.  The E310 always looks off device first.  A coworker reminded me that we spent a couple days years back trying to figure out why the device was asking like it was working, but we weren't seeing any results.  It was because it was actually talking to an N2xx on the network even with the IP address arg.
> 
> 
> We never found a solution (using both the 127 and 192 address as an argument still causes issues).  So, it would be nice to clean this up on the E310 at some point, but for now I will try not to mix the E310 and E320 on the same subnet.
> 
> 
> ________________________________
> From: Jason Matusiak
> Sent: Friday, June 7, 2019 12:41 PM
> To: Nate Temple
> Cc: Marcus D Leech; Philip Balister; Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> 
> 
> OK, maybe based on my last email (which crossed yours I think).  The addr flag doesn't seem to work at all with the uhd_usrp_probe on the E310 (at least my version).
> 
> ________________________________
> From: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
> Sent: Friday, June 7, 2019 12:37 PM
> To: Jason Matusiak
> Cc: Marcus D Leech; Philip Balister; Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> 
> Hi Jason,
> 
> For what its worth, I haven't personally ran this exact combo (E310 w/ UHD 3.11 and E320 w/ 3.14) on the same subnet, but I have ran two N320's on the same subnet (192.168.10.2 and 192.168.10.3, both with 3.14). I did run into the issue where probing in embedded mode would pickup the other device first, but when providing a localhost addr, it worked as expected. I could use both devices from a common host in network mode.
> 
> Trying the E320/E310 on different subnets would be worth a try.
> 
> I'll open an internal issue on our bug tracker for this, there is likely improvements we can make to the device discovery.
> 
> 
> Regards,
> Nate Temple
> 
> On Fri, Jun 7, 2019 at 9:22 AM Jason Matusiak <jason@gardettoengineering.com<mailto:jason@gardettoengineering.com>> wrote:
> 
> Howdy.
> 
> 
> Nope, but it fails in a weird way.  I disconnected the E320 to make sure this issue wasn't due to it, but it still acts the same.
> 
> 
> If I run: uhd_usrp_probe --args "addr=127.0.0.1"
> 
> root@ettus-e3xx-sg3:~# uhd_usrp_probe --args "addr=127.0.0.1"
> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400; UHD_3.11.0.1-0-unknown
> Error: i2c_zc_impl recv timeout
> 
> 
> 
> Reading up on the USRP2, they specifically say that you need to be on different subnets if you are using more than on device.  I wonder if this is the case here too?
> https://files.ettus.com/manual/page_usrp2.html#usrp2_network_multidev
> 
> 
> ________________________________
> From: Nate Temple <nate.temple@ettus.com<mailto:nate.temple@ettus.com>>
> Sent: Friday, June 7, 2019 12:17 PM
> To: Jason Matusiak
> Cc: Marcus D Leech; Philip Balister; Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> 
> Hi Jason,
> 
> On the E310, if you pass the device arg addr with 127.0.0.1 does it work as expected?
> 
> uhd_usrp_probe --args "addr=127.0.0.1"
> 
> 
> Regards,
> Nate Temple
> 
> On Fri, Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
> 
> Darn, I was hoping that was it, but I don't think so.
> 
> 
> Here is the result from my E310:
> 
> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:44:46
> 
> and now the E320:
> 
> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:C2:FB
> 
> If I ping each device on my host, then run arp, I see this (the mac addresses match up correctly):
> 
> Address                  HWtype  HWaddress           Flags Mask            Iface
> 192.168.10.45            ether   00:80:2f:24:c2:fb   C                     p4p1
> 192.168.10.95            ether   00:80:2f:25:44:46   C                     p4p1
> 
> I figured that that would be fine though because I have the same issue when I am running commands ON my E310.  And if it was a routing issue, it would mean that both my machine and the E310 and the E320 were being screwed up.
> 
> 
> ________________________________
> From: Marcus D Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com>>
> Sent: Friday, June 7, 2019 12:01 PM
> To: Jason Matusiak
> Cc: Philip Balister; Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> 
> Check the MAC addresses.
> 
> I know that on some ARM platforms that has to be programmed in at boot and perhaps these system images have it set to the same value.
> 
> Sent from my iPhone
> 
> On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
> 
> 
> Philip,
> 
> 
> They have unique addresses (10.95 and 10.45).  It is really weird that when I am on the E310, and set the ip-addr to himself, that he would even look off the device....
> 
> 
> They both have hostnames and they are not similar to each other at all.
> 
> 
> ________________________________
> From: Philip Balister <philip@balister.org<mailto:philip@balister.org>>
> Sent: Friday, June 7, 2019 11:10 AM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> 
> Check each ones ip address, likely by running ifconfig. In the back of
> my mind, I recall something like this in the E100 days. Do they have the
> same hostname?
> 
> Philip
> 
> On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:
>> It looks like I am misunderstanding something with how the E320 handles the network.
>>
>>
>> I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of the default 10.2).  I can ssh into it and things seem to run fine in embedded mode.
>>
>>
>> Now, if I ssh onto an E312 that is on the same network (IP 10.95), it doesn't work right as long as the E320 is plugged in.  When I do a probe or run any other UHD-type commands on the E310, it seems to always talk to the E320 first and it screws everything up.  It doesn't matter if I put the E310's address into the command or not, the E320 responds.  I also remember seeing this occur when I was on my host machine running commands (the E320 bullied its way into being the main attraction).
>>
>>
>> My current work-around is to unplug Ethernet from the E320, run my command on the E310, plug back into the E320, then run its command.  This seems to allow things to work as I intended, but is obviously not ideal and is fairly difficult to do when devices are remote.
>>
>>
>> So what am I missing here?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> USRP-users Info Page - Ettus<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
> lists.ettus.com<http://lists.ettus.com>
> To see the collection of prior postings to the list, visit the USRP-users Archives.. Using USRP-users: To post a message to all the list members, send email to usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>. You can subscribe to the list, or change your existing subscription, in the sections below.
> 
> 
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 
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
