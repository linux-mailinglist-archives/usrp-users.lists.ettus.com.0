Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8BB771C3
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2019 21:00:12 +0200 (CEST)
Received: from [::1] (port=33948 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hr5Ro-0005Dh-08; Fri, 26 Jul 2019 15:00:08 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:43257)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zzhangcsfsu@gmail.com>)
 id 1hr5Rk-00054h-Ms
 for usrp-users@lists.ettus.com; Fri, 26 Jul 2019 15:00:04 -0400
Received: by mail-ed1-f41.google.com with SMTP id e3so54125474edr.10
 for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2019 11:59:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=panEF3v6k6A99cjZawPi/ZBWg85kfO3BAZqSrtVmBXA=;
 b=MQfou9Qm3wQJz2A72s3JNooi+McDaGqJIWxp8xWJUhSUW6USp93fkQpuHuTqFC9Oy+
 pfRZX7rhB5kpBz+X7AsnO0VVMAXBnB3SsIR1ZOtWbqbMpYwerGi0aCF0Uv5LjrRXu9ML
 76OrzGx2mEOcoasURkCs7LSPf9txEtnqrTLOJIEl7jYZXWE1B92N2gX5vQ1BAhZfKEL4
 WlZ7VL5BvRBc4M09w9yUW3UkZWPBWAc3/RL/a7mK3Rf5/pbyE0Uonm/kMNQU/9aMC2IK
 tmGZs2PZwhu1uZi7W9HNfgam1HJfcHyBEFhVmGrkIqfe2ggup4SaxFYGLYgctDX2Doq6
 LbMA==
X-Gm-Message-State: APjAAAXG/iu1I5SHC9KD7zO0fvWLr/ohJVu8WKbzEDmHH9h6C1ox7K/L
 T/mUv3+M9k7EpWRWg2UzHYxWPn8z0TXVlvEz7TDWIBJg
X-Google-Smtp-Source: APXvYqySk71J5gfJlZ3opqNMZhoGSd65wXnHBV0p2mAWqdi+yGUgm/cM/C9SsTd02XDoA9T0wAsYrNnGtQEHodJVqI4=
X-Received: by 2002:aa7:c3c4:: with SMTP id l4mr28607402edr.32.1564167563710; 
 Fri, 26 Jul 2019 11:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAOtS0CmYe8ZuGWtRhp=uaDcXxVhFEfbN6WY0BpDcgu6HssMxiw@mail.gmail.com>
 <e7f629f0-4bad-4b19-86f2-62bd70dd0f55@www.fastmail.com>
 <CAOtS0Ckf8J+rXe38tc3jFf4-Nj5Pv3j3-J6x89gNZT5gWq9h2w@mail.gmail.com>
In-Reply-To: <CAOtS0Ckf8J+rXe38tc3jFf4-Nj5Pv3j3-J6x89gNZT5gWq9h2w@mail.gmail.com>
Date: Fri, 26 Jul 2019 14:56:31 -0400
Message-ID: <CAOtS0CmNKgT8tyOPTk32r2_LdnfBuBEqZKwHj6MjsKu-_GBTrw@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>,
 USRP Users <usrp-users@lists.ettus.com>
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
From: Zhenghao Zhang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Zhenghao Zhang <zzhang@cs.fsu.edu>
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

Hi,

I am happy to report that I was able to set up the 2-stream
transmission actually without much trouble. I want to thank Michael
Dickens and Ron Economos for offering valuable advice, without which I
would never be able to get it done in a couple of days.

I just used gnuradio-companion and connected two file sources to a
usrp sink with two channels. The main changes I made to the usrp sink
are:

Stream channels: [0,1]
Mb0: Subdev Spec: A:A A:B
Num Channels: 2

Thanks,
Zhenghao

On Tue, Jul 23, 2019 at 4:07 PM Zhenghao Zhang <zzhang@cs.fsu.edu> wrote:
>
> Hi Michael,
>
> Thank you very much for your message. As you said, I am just trying to
> get the equivalent of "tx_samples_from_file." I will just need to
> pushing half of the data in the file to each antenna. I will look into
> the cpp file you pointed me to.
>
> Over 10 years ago, I spent one summer on the first generation of USRP
> (I still have it in my office) and got MU-MIMO to work with 2 tx
> antennas and 2 single antenna receivers. Things have changed since and
> I have some catch up to do.
>
> Thanks,
> Zhenghao
>
>
>
> On Tue, Jul 23, 2019 at 3:00 PM Michael Dickens
> <michael.dickens@ettus.com> wrote:
> >
> > Hi Zhenghao - To the best of my knowledge and memory, all of the examples provided by UHD and GR are just single-channel. My guess is you'll need to create your own custom flowgraph to handle 2 output channels from a single input file. That said, if what you hope to do is the equivalent of "tx_samples_from_file" but just pushing the same file to 2 outputs (or even pushing 2 data streams from the same file, one each to each B210 Tx antenna), that shouldn't be difficult to create: copy the file "https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_samples_from_file.cpp" and use it as a starting point; edit it to do what you want! Good luck! - MLD
> >
> > On Mon, Jul 22, 2019, at 5:29 PM, Zhenghao Zhang via USRP-users wrote:
> > > Hi,
> > >
> > > I have a very simple task: transmitting data with two antennas of
> > > B210. The data is just numbers in a file and I just need to play the
> > > file.
> > >
> > > I have been able to transmit data by one antenna with the command
> > > tx_samples_from_file. I did a lot of searching but I was not able to
> > > find a similar command to use two antennas.
> > >
> > > I am sorry if this question or some variations of it has been answered
> > > before. Any help is appreciated.
> > >
> > > Thanks,
> > > Zhenghao

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
