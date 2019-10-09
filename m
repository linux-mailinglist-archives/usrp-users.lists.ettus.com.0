Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D8DD1222
	for <lists+usrp-users@lfdr.de>; Wed,  9 Oct 2019 17:10:51 +0200 (CEST)
Received: from [::1] (port=42206 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIDc2-0003GD-8b; Wed, 09 Oct 2019 11:10:50 -0400
Received: from sun60.bham.ac.uk ([147.188.128.137]:60638)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <j.subash@bham.ac.uk>) id 1iIDby-0002yp-9z
 for usrp-users@lists.ettus.com; Wed, 09 Oct 2019 11:10:46 -0400
Received: from [147.188.128.54] (helo=mailer3)
 by sun60.bham.ac.uk with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.3) (envelope-from <j.subash@bham.ac.uk>)
 id 1iIDbJ-0003oK-NA
 for usrp-users@lists.ettus.com; Wed, 09 Oct 2019 16:10:05 +0100
Received: from eee980-93.bham.ac.uk ([147.188.93.140])
 by bham.ac.uk (envelope-from <j.subash@bham.ac.uk>)
 with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1iIDbJ-0002Gl-DE for usrp-users@lists.ettus.com 
 using interface auth-smtp.bham.ac.uk; Wed, 09 Oct 2019 16:10:05 +0100
To: USRP list <usrp-users@lists.ettus.com>
Message-ID: <40ff90d3-12dc-02d2-eb13-7133d8e83087@bham.ac.uk>
Date: Wed, 9 Oct 2019 16:10:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-GB
X-BHAM-SendViaRouter: yes
X-BHAM-AUTH-data: TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128 via
 147.188.128.21:465 (subashj)
Subject: [USRP-users] B200 FPGA development.
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
From: J Subash via USRP-users <usrp-users@lists.ettus.com>
Reply-To: J Subash <j.subash@bham.ac.uk>
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

Hi guys,

I am looking to incorporate a channel equaliser and channel fader in the 
DUC and DDC chain inside a B200. I can't find examples of this sort on 
the Ettus KB. Is FPGA development confined to the X series and N series 
devices?

Thanks very much.

BW

JS


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
