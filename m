Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 458CFB7DF8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 17:19:45 +0200 (CEST)
Received: from [::1] (port=36010 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAyDa-0002kw-UM; Thu, 19 Sep 2019 11:19:38 -0400
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:61412
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1iAyDX-0002fY-A9
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 11:19:35 -0400
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 x8JFIqWt017131
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 19 Sep 2019 17:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1568906333;
 bh=02vT9x3JjdXb3Q6IamAr3IItubfrYjD9TNsuF0Ayf/8=;
 h=In-Reply-To:References:Date:Subject:From:To:Cc:Reply-To;
 b=k6yDBQKvNNQLBtTVX9wyDxNZ5GSRUoV76WLT85xTCkzHU6RTXvmFKtUKdBARj1PgC
 J7m4dhgA/MlF2OmvZtueTjjltxbDRHW59s3keiKte7t9aTKi50Pxm3J/iGBk/nB6mN
 ha1H5vuALXplHzRegByrXVi4spKhVnS94fnMQxCg=
Received: from 185.249.168.30 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Thu, 19 Sep 2019 17:18:54 +0200
Message-ID: <126edb78970ab9e3b4dca87b426d5e32.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <CAEXYVK4zeLHQ7MppY-Fg7bF4EsZxpeR6sY4h5YWQyuYid=4Fxg@mail.gmail.com>
References: <20abea6ebc2be30dac4b14046002f932.squirrel@webmail.tu-dortmund.de>
 <CAEXYVK4zeLHQ7MppY-Fg7bF4EsZxpeR6sY4h5YWQyuYid=4Fxg@mail.gmail.com>
Date: Thu, 19 Sep 2019 17:18:54 +0200
To: "Brian Padalino" <bpadalino@gmail.com>
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: [USRP-users] RFNoC Crossbar and Block data rates
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
Cc: Usrp Liste <usrp-users@lists.ettus.com>
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

Hi Brian,

thank you for your help.

I have on question left. You say the crossbar is non blocking. Does that
mean it can supply multiply RFNoC Blocks with input data at once at its
full bus_clk speed? Or does it switch between the ports so that some
blocks have to wait until its their turn to get data?

Best regards,

Felix

> On Thu, Sep 19, 2019 at 9:39 AM Felix Greiwe via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello together,
>>
>> I have some questions concerning clock speeds and the corresponding data
>> rates on a USRP x310 (FPGA). As far as I know, there are two different
>> clock speeds on the FPGA, the ce_clk=200MHz, and the bus_clk - I did not
>> find clock speed for this one.
>>
>
> The ce_clk is 214.286 MHz and is usually associated with a 32-bit AXI
> interface.
>
> The bus_clk is 187.5MHz and is usually associated with a 64-bit AXI
> interface.
>
> If you build an FPGA image, you can find these values in
> post_route_timing_summary.rpt that Vivado spits out in your build
> directory.
>
>
>>
>> Is it true, that the ce_clk drives my rfnoc blocks and thus my in- and
>> outgoing data rate of each single block (using sc16 samples) is
>> 200MHz*32
>> Bit/10^9 = 6,4 GBit/s?
>>
>
> It can, and usually does - but just slightly higher as noted above.
>
>
>>
>> I read, that all the RFNoC Blocks are connected to the crossbar which is
>> driven by the bus_clk. First of all: Is this the case?
>> If so, how is the crossbar able to handle the in and output data of each
>> RFNoC Block at once? How many Bytes can it process with each clock?
>>
>> Take for example the flowgraph
>>
>> SignalGenerator ->RFNoC-Gain -> RFNoC-DMAFIFO-> RFNoC-DUC-> RFNoC-Radio
>>
>> which has already four RFNoC Blocks connected to the crossbar, which in
>> my
>> head are 25,6 GBit/s data on the crossbar at once which seems way to
>> much
>> to handle.
>>
>> I think I really miss a point here and would  be grateful for some
>> explanation.
>>
>
> The crossbar doesn't block other ports and is more like a packet switch.
> Since it's a linear flow, the crossbar doesn't have any issue handling
> each
> individual path bandwidth.  Only when 2 packets have to go to the same
> crossbar egress do things become more complicated.
>
> I hope this makes sense.
>
> Brian
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
