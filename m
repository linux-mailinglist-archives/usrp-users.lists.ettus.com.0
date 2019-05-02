Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFFA1246B
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 00:04:17 +0200 (CEST)
Received: from [::1] (port=38244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMJoF-0004pZ-MC; Thu, 02 May 2019 18:04:07 -0400
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24]:51559)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <markjan@xs4all.nl>) id 1hMJnh-0004hb-NS
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 18:04:03 -0400
Received: from xs9.xs4all.nl ([194.109.21.9])
 by smtp-cloud7.xs4all.net with ESMTP
 id MJn1hKOWDZVjxMJn1h8GRW; Fri, 03 May 2019 00:02:52 +0200
Received: from xs4all.nl (IDENT:10916@shell.xs4all.nl [194.109.21.9])
 by xs9.xs4all.nl (8.15.2/8.15.2/Debian-8) with ESMTP id x42M2oFO002539;
 Fri, 3 May 2019 00:02:50 +0200
Date: Fri, 3 May 2019 00:02:49 +0200
To: Matthias Br??ndli <matthias@mpb.li>
Message-ID: <20190502220249.b4osh34vbasqm7a4@xs4all.nl>
References: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CMAE-Envelope: MS4wfByFJGkgqL7i9GhoS1UK5y3Le/Dnat0bJzR3EWGIjPGvdET1y7ofcqNqySRXLQdWQYUE8kAySDAP1cqboC3aytAU4GdTLwgiPZUvP+mE9VfniFMFG2na
 yJrdvN959T8WielrjwH251PXdN1Pu7onZUoFSt+NM4O2iJ78Ni9yJuFr5K2BfevNFk7/DbIYiZShMMQuXA+XcoPOMTg6uCEstQs=
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Plagued by sporadic TX underruns on some systems,
 B200
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
From: Mark-Jan Bastian via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark-Jan Bastian <markjan@xs4all.nl>
Cc: usrp-users@lists.ettus.com
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

Hi Mathhias,

On Thu, May 02, 2019 at 02:18:38PM +0200, Matthias Br??ndli via USRP-users wrote:
> On some systems, we observe sporadic underruns. They occur in irregular
> intervals, something like once a minute, sometimes rarer. Seen with both
> USB2 and USB3 hosts, over several UHD versions. Until now we've mostly
> been able to avoid the issue by selecting machines that don't show the
> issue, but we hope we can find a mitigation in software.

The USB bus is managed using a USB hostcontroller that uses busmastering/
scatter/gather over PCI/PCIe to retrieve and store it's data.
The USB 2.0 EHCI hostcontroller(s) are more straightforward than the 
XHCI hostcontroller used by USB 3, that has to deal with more complexity.

If 480 mbps is more than enough for your stream (2048 MSPS ~ 8 MB/sec
over a USB 2.0 bulk endpoint, using transactions of two times 512 bytes
every 125 usec (8000 Hz USB framerate) could satisfy your bandwidth
demands. You could even see these frames on a moderatly fast scope 
(500+ MHz), using a low-capacitance FET/active/differential probe and 
trigger on too much or a lack of them.

Another option is using a powered USB 2.0 or USB 3.0 hub. Since USB
hubs do not receive firmware updates, they should be very stable. 
If there is a problem with a USB enumuration timing/reset signalling 
or on the 5 gbps lanes, a hub might resolve an incompatibily in of one 
of the USB peers.

For more in-depth USB debugging, there are external USB 2.0 and 3.x 
hardware bus analysers available, for example from the swiss company
ellisys.com.
These can log all USB traffic to a PC and filter the data, without 
interfering on the timing of the signals - ideal tools for USB device 
development and debug compatibility issues.

For more in-depth PCIe transaction debugging of the USB host controllers, 
serialtek.com sells also PCIe 'AIC' hardware connector interposer 
cards that you can put between your motherboard and an external 
PCIe xHCI based USB hostcontroller.

> Both the data source the modulator connects to and the USRP have a
> disciplined time reference, implying there is no rate drift (plus, that
> would trigger regular underruns, not sporadic ones).

Some things can be very subtle, for example this (quite amazing)
2013 ethernet PHY bug:
https://www.theregister.co.uk/2013/02/06/packet_of_death_intel_ethernet/
Very tough engineering by the affacted customer, who made it reproducable
and fixed by a simple EEprom update from the vendor.

Pure theory: What if this intermittent issue would be an issue with a 
certain sequence of packetlengths, some of them on the boundary of the 
maximum size for that endpoint and endpointtype, that are not handled 
properly at one or both sides, causing a glitch/retransmission/faillure, 
resulting in the application-level visible underruns ?
How would you measure that ? How could you optimize the packetlengths 
so that the issue is quicker to reproduce ? Or avoid the issue by
anticipating and avoiding such packetsequences ?

> Could CPU frequency scaling lead to interruptions?

It would leave that off - less interference with thermal peak management or 
other system management mode interrupts from your motherboard, most constant 
performance in outputing your samples.

> [4]
> https://files.ettus.com/manual/page_transport.html#transport_usb
> 
> Default send_frame_size seems to be on line 85 of
> https://files.ettus.com/manual/b200__impl_8hpp_source.html

Best regards,

Mark-Jan

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
