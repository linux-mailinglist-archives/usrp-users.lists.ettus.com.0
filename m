Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4301468D
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 10:41:08 +0200 (CEST)
Received: from [::1] (port=40094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNZBL-0005h3-QT; Mon, 06 May 2019 04:41:07 -0400
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31]:56507)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <markjan@xs4all.nl>) id 1hNZAn-0005Xd-CY
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 04:41:03 -0400
Received: from xs9.xs4all.nl ([194.109.21.9])
 by smtp-cloud7.xs4all.net with ESMTP
 id NZA7hiYH4ZVjxNZA7hIlbE; Mon, 06 May 2019 10:39:52 +0200
Received: from xs4all.nl (IDENT:10916@shell.xs4all.nl [194.109.21.9])
 by xs9.xs4all.nl (8.15.2/8.15.2/Debian-8) with ESMTP id x468doOA016666;
 Mon, 6 May 2019 10:39:50 +0200
Date: Mon, 6 May 2019 10:39:49 +0200
To: Matthias Br??ndli <matthias@mpb.li>
Message-ID: <20190506083949.oy7vply3v3b2zaub@xs4all.nl>
References: <2489f2eb-d1a4-2156-04b3-bf4611f16a57@mpb.li>
 <20190502220249.b4osh34vbasqm7a4@xs4all.nl>
 <e513e859-de38-e725-e217-e20f193a0d60@mpb.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e513e859-de38-e725-e217-e20f193a0d60@mpb.li>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CMAE-Envelope: MS4wfOcEP6ttP2TtcxFDnDU3U3/Vx4AaIgcuA5wqc7EE1j+Cr6wgCWR2TTctipMfLfEcA7egKki8nFvrnzN/Hz/aZ2laF2/AgiKg92RHSi7H2ev3BsYiJeVE
 GbfhZO0RCRcSnRdosGTKEdarxsivTWX1BuKMiwik60JE9XJ9nbc2gqQsCMu4Rz4psAAytm7ddbVrc9UNOLeHqx5L5UShdLEgihc=
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

On Mon, May 06, 2019 at 09:36:34AM +0200, Matthias Br??ndli wrote:
> > Pure theory: What if this intermittent issue would be an issue with a 
> > certain sequence of packetlengths, some of them on the boundary of the 
> > maximum size for that endpoint and endpointtype, that are not handled 
> > properly at one or both sides, causing a glitch/retransmission/faillure, 
> > resulting in the application-level visible underruns ?
> > How would you measure that ? How could you optimize the packetlengths 
> > so that the issue is quicker to reproduce ? Or avoid the issue by
> > anticipating and avoiding such packetsequences ?
> 
> It's a possible hypothesis, but I don't see how to test it easily.

The ellisys protocol analyser supports an external trigger,
and does support recording the USB enumeration, then pause and
record into a circular buffer for indefinite time.

Then the trick is to wait and detect your underrun, in your 
UHD apllication, and send a charachter to a usb serialport conncted 
via another usb hostcontroller/root port, to this coaxial 
trigger input. Configure the trigger to stop capturing, and analyse
the USB traffic around the underrun.
This timestamping is not perfect, but you should be in a few
10s msec of the underrun.

If there is a USB bulk endpoint underrun visible in the ellisys log, 
other ways of filling that endpoint in time could be tried, 
in hostcontroller driver, libusb, uhd, or your application.
Scheduling and prioritisation of all software components can be
double-checked.

Mark-Jan


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
