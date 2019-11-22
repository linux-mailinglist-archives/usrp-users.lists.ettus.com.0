Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 644C4107640
	for <lists+usrp-users@lfdr.de>; Fri, 22 Nov 2019 18:10:11 +0100 (CET)
Received: from [::1] (port=47906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYCRd-0006bD-CG; Fri, 22 Nov 2019 12:10:09 -0500
Received: from out1.mail.ruhr-uni-bochum.de ([134.147.53.149]:50732)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jeremy.brauer@rub.de>)
 id 1iYCRZ-0006Tb-6C
 for usrp-users@lists.ettus.com; Fri, 22 Nov 2019 12:10:05 -0500
Received: from mx1.mail.ruhr-uni-bochum.de (localhost [127.0.0.1])
 by out1.mail.ruhr-uni-bochum.de (Postfix mo-ext) with ESMTP id 47KNFb3NCZz4yK4
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 18:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rub.de; s=mail-2017;
 t=1574442563; bh=CzNQ8O0+pEjt61CSbr1U1TDVMPvpgmTSlhUg7/xKlTY=;
 h=To:From:Subject:Date:From;
 b=JH5vIet76QEWKG0z2IfVHBc7miYtWZ+PO1NbH35cSXPyp4ufAgK/xaGOysT3+25V+
 r9MPR1HmG/UwO4i7nG8P4uNDpmgFLELP05pOfmdhJiEGyXL5rqMsCZHzm39cC9rcL9
 FZZ4xaGnY2l786FLJrKkgG8aK8k88ItjsfO2xhTo=
Received: from out1.mail.ruhr-uni-bochum.de (localhost [127.0.0.1])
 by mx1.mail.ruhr-uni-bochum.de (Postfix idis) with ESMTP id 47KNFb2ppZz4yMt
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 18:09:23 +0100 (CET)
X-Envelope-Sender: <jeremy.brauer@rub.de>
X-RUB-Notes: Internal origin=134.147.42.227
Received: from mail1.mail.ruhr-uni-bochum.de (mail1.mail.ruhr-uni-bochum.de
 [134.147.42.227])
 by out1.mail.ruhr-uni-bochum.de (Postfix mi-int) with ESMTP id 47KNFb2KYjz4yW9
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 18:09:23 +0100 (CET)
Received: from [10.11.40.176] (b2b-78-94-254-30.unitymedia.biz [78.94.254.30])
 by mail1.mail.ruhr-uni-bochum.de (Postfix) with ESMTPSA id
 47KNFZ14HfzyvP
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 18:09:22 +0100 (CET)
To: usrp-users@lists.ettus.com
Autocrypt: addr=jeremy.brauer@rub.de; keydata=
 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 kLM=
Message-ID: <f97306b6-c01d-f712-4102-11cd15e020a2@rub.de>
Date: Fri, 22 Nov 2019 18:09:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-GB
X-Virus-Scanned: clamav-milter 0.99.4 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Subject: [USRP-users] E310 Usable Bandwith
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeremy Brauer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeremy Brauer <jeremy.brauer@rub.de>
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

Hey,

according to the specifications of the E310, the RF hardware is capable
of processing up to 56 MHz of bandwidth, but the ARM processor only
supports 10MS/s.
Since signal processing written in GnuRadio, C/C++ or Python will be
executed on the ARM processor, I assume those programms will also have
the limitations of 10MS/s and the availiable bandwith will be limited to
10MHz.
Is this assumption correct?

Is it neccessary to perform the signal processing directly on the FPGA
by writing VHDL code to obtain higher bandwith and data rates?

Best regards
Jeremy


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
