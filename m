Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8C8B7AA8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 15:39:52 +0200 (CEST)
Received: from [::1] (port=33258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAwex-0004zh-2l; Thu, 19 Sep 2019 09:39:47 -0400
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:52705
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1iAwet-0004tU-6w
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 09:39:43 -0400
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 x8JDd1nJ029242
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 15:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1568900341;
 bh=Sop5GqxTG5V0nfe8pfPNYnom3nhIc8EJVsTMmVeJnk0=;
 h=Date:Subject:From:To:Reply-To;
 b=FLcbMTzOxFW1LrPUAUnR8j8Q+03SomqIsvt7sB3/C59GxzVSCQH0kUZUi6/4qEf4S
 BJSPGr6jyL6lzPG7OwTeRgTlGsLcjFU6OiKDU/KtOwaswsVdvwkWkL7TvPMCZy1xAb
 1h9w9L3J+Pboh3vmFEMJaNRq8+Ao/Z4fgy5TYiuk=
Received: from 185.249.168.30 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Thu, 19 Sep 2019 15:39:02 +0200
Message-ID: <20abea6ebc2be30dac4b14046002f932.squirrel@webmail.tu-dortmund.de>
Date: Thu, 19 Sep 2019 15:39:02 +0200
To: "Usrp Liste" <usrp-users@lists.ettus.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: [USRP-users] RFNoC Crossbar and Block data rates
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

I have some questions concerning clock speeds and the corresponding data
rates on a USRP x310 (FPGA). As far as I know, there are two different
clock speeds on the FPGA, the ce_clk=200MHz, and the bus_clk - I did not
find clock speed for this one.

Is it true, that the ce_clk drives my rfnoc blocks and thus my in- and
outgoing data rate of each single block (using sc16 samples) is 200MHz*32
Bit/10^9 = 6,4 GBit/s?

I read, that all the RFNoC Blocks are connected to the crossbar which is
driven by the bus_clk. First of all: Is this the case?
If so, how is the crossbar able to handle the in and output data of each
RFNoC Block at once? How many Bytes can it process with each clock?

Take for example the flowgraph

SignalGenerator ->RFNoC-Gain -> RFNoC-DMAFIFO-> RFNoC-DUC-> RFNoC-Radio

which has already four RFNoC Blocks connected to the crossbar, which in my
head are 25,6 GBit/s data on the crossbar at once which seems way to much
to handle.

I think I really miss a point here and would  be grateful for some
explanation.

Thanks,

Felix



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
