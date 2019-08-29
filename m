Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7351A1BCD
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2019 15:49:35 +0200 (CEST)
Received: from [::1] (port=37024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3Knn-0001Pa-Tl; Thu, 29 Aug 2019 09:49:27 -0400
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:41811
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1i3Knj-0001J4-BP
 for usrp-users@lists.ettus.com; Thu, 29 Aug 2019 09:49:23 -0400
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 x7TDmfEx008123
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Thu, 29 Aug 2019 15:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1567086522;
 bh=RRGUYJnC0fPyqXtHssdenZx1SGbBvjRSErCaYQpiQLo=;
 h=Date:Subject:From:To:Reply-To;
 b=SYkrFFBRmkCvZBvM4OMPZrLpVga6UpK69Qgn+hCd7xRG1GqvBeM7sNQTj1lOwdszt
 34R5JoUAVVJYzAcsPyXFi0Fqfd0LJAoeOh/ueGvo4eDD6VM7l65Q7KRhFsKrUMZVVE
 QnyAyOOThXfTHj3r58XJglprFuYheGmhKzmhERw4=
Received: from 129.217.182.66 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Thu, 29 Aug 2019 15:48:41 +0200
Message-ID: <022046f63a5723c6851aee45d88103b2.squirrel@webmail.tu-dortmund.de>
Date: Thu, 29 Aug 2019 15:48:41 +0200
To: "Usrp Liste" <usrp-users@lists.ettus.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: [USRP-users] Phase Sync between to UBX-160 Daugtherboards using
 RFNoC Radio
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
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
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

Hello together,

I am trying to transmit one complex cosine from both TX - Antenna of my
USRP-x310 with two UBX-160 Daugtherboards. I am transmitting a cosine with
the frequency of 100 kHz and the center frequency of my RFNoC Radio Blocks
is 2.45 GHz. So basically I see a peak at 2.45 Ghz + 100 kHz at my
spectrum analyzer (plus the lo leakage at 2.45 GHz). Additionally I
receive the spectrum on another x310.

In the following link you can see my flowgraph in GRC:
https://ibb.co/7W6mTKf

As you can see i have two multiply blocks to change the phase of the
complex cosines, the value of the multiply blocks are

> pow(math.e, 1j*phi*(math.pi/180)) and
> pow(math.e, 1j*psi*(math.pi/180)).

I can change phi and psi with a qt gui range slider. Default value ist
multiplication by 1.

My goal with this setup was to check the MIMO capabilities of the USRP x310.
I calculated the Phase offset both transmitted waves should have at the
antenna of my spectrum analyzer. With my multiplication blocks I created
different phase offsets, thus causing destructive interference at the
receiving end (peak at analyzer is the smallest at this phase).

However most of the time when I start different runs of my flowgraph (or
when I power cycle the device) I always have to set a different phase
offset to see the destructive interference. To me it seems pretty random
which phase offset both transmitting path get even though i don't
understand why.

In another thread I read that maybe timed tuning will work for me but I
did not quite understand what that improves in particular nor who I use it
in my  GRC generated python file. (Using the RFnoC Radio Blocks does not
make it easier by the way.) This is the link:

http://ettus.80997.x6.nabble.com/USRP-users-use-a-usrp-x310-as-MIMO-transmitter-daughterboard-synchronization-tt11642.html

Any ideas, suggestions and explanations on how to phase align the transmit
path of my (single) USRP x310 would be greatly appreciated!

Best regards

Felix



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
