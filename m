Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C97D36D852
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 15:32:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9C273843DF
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 09:32:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NOkoGj4B";
	dkim-atps=neutral
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id DDA8F384174
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 09:30:50 -0400 (EDT)
Received: by mail-oi1-f169.google.com with SMTP id u80so29439979oia.0
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 06:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bRUK6GXNSkfn171Gy4npZx9uatmK0fY8Ycvb/LtYawo=;
        b=NOkoGj4BcSA989aKh8qfxyWdZG5d+T9kiHTgPjHKdBbUSYt0V2ckTNiseeNOJ48vqq
         zFJDtbNwh6mIaEN2FYH2YM7d+prcP1eHK2ZBi1V5IkIEgL46rMqiGEjQ2DnlhcN7LhZg
         3atBTxnvtFsVPnmWjA580t9rOXW8/WHBxRuig2UWHF9wtdBuJxBb1747/U5tGiyesdbz
         m969B0QXOirKv+lSkA/mEjkhTt9tfTc+MTL1bj7Z+xXQVXoCLL17xVvgxbeLeKCW992h
         IUSEZoy8FIzEAp2tqXXMNJkpESkK4LvAH01d94sGoly8p7DPk3WzrhQo0BFeBjvUscDu
         I7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bRUK6GXNSkfn171Gy4npZx9uatmK0fY8Ycvb/LtYawo=;
        b=LkA/o6UZWFt+slBolQfxOXnrRwKEY6pJf1dF7lV+VdPAMvKoNNwa9LQg9ErjdS/kFO
         13JjBF4v8gEJyH5LrbLlBN/MH/0ZzVIpXx3ykC5w8B8RrBZrvxVDAlp1Me1LW/+zpnsw
         D1oyYtoMd8m9T0K/pG5FsTJB2TA+LR+WDTwQzQxJd444H9gerKRQ4BXhgYSTosCwGany
         EQQueshaK0xBLBq1/kb9lCRfMn5sLkuLFw3hOpiK/jdjTpbbfaSULLjZ/UiBiMeYE4fk
         A12cfjStRT0fMWC8V2lZjfWu4GjKLZa3lkiWj+clk2iW3P0BQAqgAgjHTTSWQweXxffw
         WMQQ==
X-Gm-Message-State: AOAM531BaFdiKkZ3NW4J6mpsnlAZAqMFEuUloC0osPpq6KWkO+AhDVCC
	9/8xQ5b14EzFt6db6Py/8Aiah4zsn2DUHrF5BK4JDQ==
X-Google-Smtp-Source: ABdhPJzxpFT68jlslN73fj6JRAVLWVZYO5hB1cjMtyb/8RxSaYmN6KYsxWu66m/hzUEwSvIUkSHtrMs8B7ZTTdVIORY=
X-Received: by 2002:aca:1314:: with SMTP id e20mr2905245oii.124.1619616649575;
 Wed, 28 Apr 2021 06:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs@lists.ettus.com>
In-Reply-To: <M5NUqYTGsD6O9pf6UlbL5zvm2sewujb7DoXnwXOs@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 28 Apr 2021 09:30:38 -0400
Message-ID: <CAB__hTQFsiE0MKXXgda7F7-OVU3No+mCVZvWtmK3ipV_nS=Now@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: LUXJECLNBOL3KPQOZ4C2NYW4S4BL4FDJ
X-Message-ID-Hash: LUXJECLNBOL3KPQOZ4C2NYW4S4BL4FDJ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LUXJECLNBOL3KPQOZ4C2NYW4S4BL4FDJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Apr 27, 2021 at 3:50 PM <jcasallas2019@gmail.com> wrote:
> I went ahead and set high the context_tdata HDR EOB bit field when the sample counter reaches a value, context_tuser is 0x0 and context_tvalid is high, but when I read it, UHD rx_metadata_t &metadata end_of_burst, I do not see the flag comes true. I wonder if this is the way to read and end_of_burst flag.

If you set EOB correctly in your FPGA logic, then you should see it
from UHD in the rx metadata. If you don't see it, something must be
wrong in the implementation. By the way instead of using
"axis_pyld_ctxt" (in the block yml file), have you considered using
"axis_data" which uses the "sideband" signals? For many custom blocks,
I think this is easier.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
