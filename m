Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA31B72080
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 22:08:11 +0200 (CEST)
Received: from [::1] (port=39994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq14z-0001bZ-JA; Tue, 23 Jul 2019 16:08:09 -0400
Received: from mail-ed1-f52.google.com ([209.85.208.52]:46483)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <zzhangcsfsu@gmail.com>)
 id 1hq14w-0001Xo-AK
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 16:08:06 -0400
Received: by mail-ed1-f52.google.com with SMTP id d4so45118407edr.13
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 13:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZrlGtiRgJb+cZrq2Q6S5wfrLd80dB7M+uvoOecsXq54=;
 b=iKzFVB7Pm4wilog1TIDN8GtVWInU0FAnjrkGUTcl5fniv3/Shzu+elrsSXg7Jng7TI
 H7gafXA4kBXUQwhwZDFxrxdJm2c2g19V0GwTSJCh2EVuVvOtoy5INslyeIB4W0NAVtNd
 2At7wlnwaGGqiV0m1IX6gmByKL+YbLzoa0pNN5NKe05z/CKEx6EWRhAzyLzC8ByqAHfX
 CRQPFxF0PTGdW2sRrpnX8rO02KzpaEVFdrBR3/uYaqWzALZgcAOKYsHl6BApPjEg5gft
 1RFOGUcAc8rourYd0KbBIQYlm8jjO2fnSWxMouAKCBQDEFv4XTey3GQjtZN63o/Z9WRp
 jjIQ==
X-Gm-Message-State: APjAAAVK1WM5dxHdpFvB8qESwB/UUt8dzTD+MeIIJBvp3GM+IHL+sXA/
 uSmTEyOuFjwAbDDx5xNFJC12GE1/Ht3LJmgHX3M=
X-Google-Smtp-Source: APXvYqzqHRQbaShMMDQ6RnxVYU5LC4n9sw07YerSMbAZmzbGCX1InAJR8rNBHwIDCDcxHK0dwXs9B9sJXQpbTqJ+uXI=
X-Received: by 2002:a05:6402:1212:: with SMTP id
 c18mr68302192edw.7.1563912445215; 
 Tue, 23 Jul 2019 13:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAOtS0CmYe8ZuGWtRhp=uaDcXxVhFEfbN6WY0BpDcgu6HssMxiw@mail.gmail.com>
 <e7f629f0-4bad-4b19-86f2-62bd70dd0f55@www.fastmail.com>
In-Reply-To: <e7f629f0-4bad-4b19-86f2-62bd70dd0f55@www.fastmail.com>
Date: Tue, 23 Jul 2019 16:07:19 -0400
Message-ID: <CAOtS0Ckf8J+rXe38tc3jFf4-Nj5Pv3j3-J6x89gNZT5gWq9h2w@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
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
Cc: USRP Users <usrp-users@lists.ettus.com>
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

Hi Michael,

Thank you very much for your message. As you said, I am just trying to
get the equivalent of "tx_samples_from_file." I will just need to
pushing half of the data in the file to each antenna. I will look into
the cpp file you pointed me to.

Over 10 years ago, I spent one summer on the first generation of USRP
(I still have it in my office) and got MU-MIMO to work with 2 tx
antennas and 2 single antenna receivers. Things have changed since and
I have some catch up to do.

Thanks,
Zhenghao



On Tue, Jul 23, 2019 at 3:00 PM Michael Dickens
<michael.dickens@ettus.com> wrote:
>
> Hi Zhenghao - To the best of my knowledge and memory, all of the examples provided by UHD and GR are just single-channel. My guess is you'll need to create your own custom flowgraph to handle 2 output channels from a single input file. That said, if what you hope to do is the equivalent of "tx_samples_from_file" but just pushing the same file to 2 outputs (or even pushing 2 data streams from the same file, one each to each B210 Tx antenna), that shouldn't be difficult to create: copy the file "https://github.com/EttusResearch/uhd/blob/master/host/examples/tx_samples_from_file.cpp" and use it as a starting point; edit it to do what you want! Good luck! - MLD
>
> On Mon, Jul 22, 2019, at 5:29 PM, Zhenghao Zhang via USRP-users wrote:
> > Hi,
> >
> > I have a very simple task: transmitting data with two antennas of
> > B210. The data is just numbers in a file and I just need to play the
> > file.
> >
> > I have been able to transmit data by one antenna with the command
> > tx_samples_from_file. I did a lot of searching but I was not able to
> > find a similar command to use two antennas.
> >
> > I am sorry if this question or some variations of it has been answered
> > before. Any help is appreciated.
> >
> > Thanks,
> > Zhenghao

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
