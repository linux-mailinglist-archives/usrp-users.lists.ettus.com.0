Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 217012B893C
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 02:06:23 +0100 (CET)
Received: from [::1] (port=60558 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfYOz-00030R-Fs; Wed, 18 Nov 2020 20:06:21 -0500
Received: from mail-qk1-f170.google.com ([209.85.222.170]:43033)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kfYOw-0002tu-98
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 20:06:18 -0500
Received: by mail-qk1-f170.google.com with SMTP id u4so3871769qkk.10
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 17:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Cv0BGhUSMXj1/332hbqo4Aju69IzZbUeqOTT5GCnVO4=;
 b=WmIE+/KFpdBsYkUqAFd3qI0U5VS4pmHXzKWL5vtaTaBhSM4z3Jr5t/svM16uZyGFh7
 ii7EuyO88b3476v83KzjKpAKXZLOZGZpNBhXJI7nnZkTelj+SGJoOaVO2xX2OZFM4nXy
 DkEwsv/FzymISLEFSHwWuqOTMpj/wjzYUP+5dDQX537ZSXaymCIoc1gFY9u/oBxhbmw8
 XuCiWluEG4yC9nN4JVOmCQbWLWYGpYUzY0V+jsLSG/8CBswqhBv+3k3LEHJhnZ8hEnuq
 lzTVf3LNkQhcLg8hJxt+xNlT+DQmcsSGc3jyqpVjSSkvslBm7wxt6C3l4QiMZkb3k9vU
 TozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Cv0BGhUSMXj1/332hbqo4Aju69IzZbUeqOTT5GCnVO4=;
 b=sWhv0yL7mU5Z3QtqIio55ZzmI0wxwpMGmh/KDU0QB2MIjINPXLXIH0LIZwNYELkFNm
 A9oJdtFApcnRmBGKyKnlIDkkBYWfNLCHPm2OaV5ixNOMoNQpzaIgLdhizi3oHMTtFu5E
 JUFvsZWfPz7A93pVjHrwoPeJJ9NiBTj+vyl/p6NolTBIksTB1hz1U1JgLKY2i5Um8fJ4
 kg89tfJFYwDcPFhdcFunRkdcUKnPk62iDCWhBHoeKy1eTPQs7flpRRZRcnT5yZmyAg3l
 g3Kxa154Y4TetkoEiYiBnCISfsKooX+1+C+mKoPwRNA2toCfUyRlTotNmcnGDwonoNN0
 9lUw==
X-Gm-Message-State: AOAM531v/u+skwuhnEFx2OorB2cbIZSds0EIuDTVXhjqqqscBvoVmPb5
 kNIk5wZZe9BH3ogoaTQYmY9osrYe2e4=
X-Google-Smtp-Source: ABdhPJytlfWecjU/FoIKgrbnGPuGcnO7Qlsf/+69AOb5Pc4xarZMAYuJlCsJWci8ABru5KsVdiV0Ow==
X-Received: by 2002:a37:7345:: with SMTP id o66mr8604897qkc.222.1605747937308; 
 Wed, 18 Nov 2020 17:05:37 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id g18sm1656149qtv.79.2020.11.18.17.05.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 17:05:37 -0800 (PST)
Message-ID: <5FB5C4E0.7060201@gmail.com>
Date: Wed, 18 Nov 2020 20:05:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Dustin Widmann <dw2zq@virginia.edu>, usrp-users@lists.ettus.com
References: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>	
 <5FB5ADDB.4030608@gmail.com>
 <7f74f5e9fd21affec4856445c013b9dea6f58c2f.camel@virginia.edu>
In-Reply-To: <7f74f5e9fd21affec4856445c013b9dea6f58c2f.camel@virginia.edu>
Subject: Re: [USRP-users] X310 UBX digital tune not occurring?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

On 11/18/2020 07:34 PM, Dustin Widmann wrote:
> On Wed, 2020-11-18 at 18:27 -0500, Marcus D. Leech via USRP-users
> wrote:
>>
> Marcus,
>
> Oh, sorry, I missed the first bit. I'm using the on-board clock. And
> perhaps I should explain the table with a little bit more detail:
> * 1st col: The *target* frequency. The RX was tuned to this frequency.
> The TX was tuned to that frequency + an offset (in this case, 50KHz for
> all datapoints).
> * 2nd col: Where the tone is expected to land, both bin and (baseband)
> frequency; in this case, a 50KHz offset for all datapoints, which
> corresponded to bin 524 with a 2^20 FFT.
> * 3rd col: where the tone was observed (both bin and frequency).
> * 4th col: difference between the target and expectation
> * 5th col: dsp freq (from uhd::tune_result_t.actual_dsp_freq)
> * 6th col: what the difference would be if I offset the observed
> frequency by the claimed dsp frequency
>
> Dustin
>
Right, I understand the chart now.

So, this is rather odd.

I assume this is under timed commands, yes?  What happens if you don't 
use timed commands--just to check to see
   if the DSP frequency change is getting skipped under timed commands?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
