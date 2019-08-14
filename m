Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0FD8DE00
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 21:43:25 +0200 (CEST)
Received: from [::1] (port=43430 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxzB5-00018S-Mt; Wed, 14 Aug 2019 15:43:23 -0400
Received: from turquesa.dcc.ufmg.br ([150.164.0.150]:20006
 helo=smtp.dcc.ufmg.br)
 by mm2.emwd.com with esmtps (TLSv1:DHE-RSA-CAMELLIA256-SHA:256)
 (Exim 4.92) (envelope-from <oliveiramauricio@dcc.ufmg.br>)
 id 1hxzB2-00013s-1e
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 15:43:20 -0400
Received: from webmail.dcc.ufmg.br (xisto.dcc.ufmg.br [150.164.0.133])
 by smtp.dcc.ufmg.br (Postfix) with ESMTPS id E16D57F834;
 Wed, 14 Aug 2019 16:42:37 -0300 (-03)
MIME-Version: 1.0
Date: Wed, 14 Aug 2019 16:42:37 -0300
To: Nate Temple <nate.temple@ettus.com>
In-Reply-To: <CAL263iyVez9PDfQSTFizJg611fKqpQJjPWW3S2eyL+doynEnhw@mail.gmail.com>
References: <bb626797d9459d98047616152b349dfa@dcc.ufmg.br>
 <CAL263iyVez9PDfQSTFizJg611fKqpQJjPWW3S2eyL+doynEnhw@mail.gmail.com>
Message-ID: <9a196764433d157cfd0364fa3fc72988@dcc.ufmg.br>
X-Sender: oliveiramauricio@dcc.ufmg.br
User-Agent: Roundcube Webmail/1.3.1 
Subject: Re: [USRP-users] USRP utility for spectrum analysis
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
From: Mauricio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: oliveiramauricio@dcc.ufmg.br
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Hi Nathan,

thanks for your reply.

Thinking of using option [1].

Do you know if the rate parameter is equivalent in curses_fft.py? In 
rx_ascii_art_dft.cpp it makes the spectrum $rate Hz wide centered at 
frequency freq. curses_fft don't show the frequency values, so I am 
wondering if its the same as rx_ascii_art_dft.cpp.

Thank you

Mauricio

Em 2019-08-12 14:18, Nate Temple escreveu:
> Hi Mauricio,
> 
> You could modify the rx_ascii_art_drf util if you wanted, the source
> is here[0]. There is also the Python  version here[1]. There is also a
> GNU radio OOT, gr-specest that I would recommend to checkout [2]. I
> would also encourage you to look at the rx_tool utility which can be
> found here[3].
> 
> [0] -
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_ascii_art_dft.cpp
> [1] -
> https://github.com/EttusResearch/uhd/blob/master/host/examples/python/curses_fft.py
> [2] - https://github.com/kit-cel/gr-specest
> [3] - https://github.com/rxseger/rx_tools
> 
> Regards,
> Nate Temple
> 
> On Mon, Aug 12, 2019 at 10:11 AM Mauricio via USRP-users
> <usrp-users@lists.ettus.com> wrote:
> 
>> Hi everyone,
>> 
>> I recently started using USRP for spectrum analysis and the
>> rx_ascii_art_dft utility is very useful for that. I wonder if there
>> is
>> an easy way to output the (freq, dB) values to a text file? Or
>> another
>> simple program that can do that?
>> 
>> Thank you,
>> 
>> Mauricio
>> 
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
