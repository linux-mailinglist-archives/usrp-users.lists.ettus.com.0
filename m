Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD547203D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 21:53:22 +0200 (CEST)
Received: from [::1] (port=38416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq0qe-0000uO-N3; Tue, 23 Jul 2019 15:53:20 -0400
Received: from resqmta-po-06v.sys.comcast.net ([96.114.154.165]:58496)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1hq0qb-0000gS-Hb
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 15:53:17 -0400
Received: from resomta-po-04v.sys.comcast.net ([96.114.154.228])
 by resqmta-po-06v.sys.comcast.net with ESMTP
 id pyj0hXIRSMC2xq0pwhaRE7; Tue, 23 Jul 2019 19:52:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1563911556;
 bh=ZAxFw6jd8E0UDsPC/NBkJG9HE7V9exEf2fVNHStg3zo=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=JSaT/IeGNjefqG2yBZqUoEivorTXnunZBMH9LaR50Gbhy0zFC5bCBUhCW2okNOVQ3
 VMYJ8uZUvENyh7cOQC8ljHPfHaBU8Y9G1ocDxSxgKoG0Ik6v0yN5rYZtIvqjW1mTdb
 C7PjEW71iI7hCtdi1UvtakJc2A+NOXYHVUV2yWxH8np4aLWd2XrJfL9K2GOjDlSshs
 3GFaceg3ftqV/zJYzXSrFLjBJu3EfPn1fSLYy+N4xMHKouXIPbXNHlnIg0fOhYHTjK
 CnV7bgxbDDcoUVUKwQe4x20xSfLNng7ZzeLq/YcqRbky7P8ogr/MjF50rq6OJtEyML
 VPgQIMuulczSw==
Received: from [IPv6:2601:647:4200:ea30:4820:c32d:de90:96e9]
 ([IPv6:2601:647:4200:ea30:4820:c32d:de90:96e9])
 by resomta-po-04v.sys.comcast.net with ESMTPSA
 id q0pvhjVQ4bBOKq0pwhh2Na; Tue, 23 Jul 2019 19:52:36 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <CAOtS0CmYe8ZuGWtRhp=uaDcXxVhFEfbN6WY0BpDcgu6HssMxiw@mail.gmail.com>
 <e7f629f0-4bad-4b19-86f2-62bd70dd0f55@www.fastmail.com>
Message-ID: <7d82d446-9457-ca81-bbd1-ead301889834@comcast.net>
Date: Tue, 23 Jul 2019 12:52:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e7f629f0-4bad-4b19-86f2-62bd70dd0f55@www.fastmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Transmitting data from 2 antennas of B210
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
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

In GNU Radio, there is a dual channel B210 example flow graph in the DTV 
component. The file is:

<install_dir>/share/gnuradio/examples/dtv/vv018-miso.grc

The download location of the test input file can be found in the README.

<install_dir>/share/gnuradio/examples/dtv/README.dvbt2

It sends an Alamouti coded MISO (Multiple Input Single Output) signal.

Ron

On 7/23/19 11:59, Michael Dickens via USRP-users wrote:
> Hi Zhenghao - To the best of my knowledge and memory, all of the examples provided by UHD and GR are just single-channel. My guess is you'll need to create your own custom flowgraph to handle 2 output channels from a single input file. That said, if what you hope to do is the equivalent of "tx_samples_from_file" but just pushing the same file to 2 outputs (or even pushing 2 data streams from the same file, one each to each B210 Tx antenna), that shouldn't be difficult to create: copy the file "https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_samples_from_file.cpp" and use it as a starting point; edit it to do what you want! Good luck! - MLD
>
> On Mon, Jul 22, 2019, at 5:29 PM, Zhenghao Zhang via USRP-users wrote:
>> Hi,
>>
>> I have a very simple task: transmitting data with two antennas of
>> B210. The data is just numbers in a file and I just need to play the
>> file.
>>
>> I have been able to transmit data by one antenna with the command
>> tx_samples_from_file. I did a lot of searching but I was not able to
>> find a similar command to use two antennas.
>>
>> I am sorry if this question or some variations of it has been answered
>> before. Any help is appreciated.
>>
>> Thanks,
>> Zhenghao
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
