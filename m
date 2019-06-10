Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D94873BFB9
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jun 2019 01:11:21 +0200 (CEST)
Received: from [::1] (port=37420 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haTRd-0000tR-Ki; Mon, 10 Jun 2019 19:11:17 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:36422)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1haTRZ-0000gw-N5
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 19:11:13 -0400
Received: by mail-qk1-f176.google.com with SMTP id g18so6509881qkl.3
 for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2019 16:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=wbpCAsO8NUJANi5ezyALVwBv5zM69M4KinHU0RHTjfE=;
 b=rcHp1D9011zYL8UkNYls5SIQJP2gecCWy9+2ksqsJ2Mw6zik8VjNMKifYtimgjv/We
 ZoDf88GPo2lyxoWA5YVN8zykr8uAWOhgAw867Qg5AHOV2UHk5r+v+/Q9vwFoK8TBF/1R
 bmIZPA/xN0P4WQHXqOLqP05jjPssfGvGeQQFUlqmtE/FZAiALhdbB8y87pMRYuDnZnZr
 qupps25hiKY1crkVZAisqHmMIqKFf4sBmEXMmnc2qy8MnZRzEr6bniPu84EIeCdJVlBS
 G40QFKd9vBLkmq9UcwFtSyTaE+GFAXZsJ0E7aqr2mMGFCI1RHDltzP7gBtw6tPj62i25
 Hh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=wbpCAsO8NUJANi5ezyALVwBv5zM69M4KinHU0RHTjfE=;
 b=EwoUoQtBccOEwD01yDeIHnX4kVX7ghA3TW8BCRIpF5B1Ka5rUsqeAtWOTp4ULa/78u
 KMeyLHF5RMaQofoQSqndde1ejzUBYM9X1xZuLuw7uLmI87FsAdr3bjPvd+cGC38zuO/d
 DECpsiWtPmCttM2lzg5HpbkyX3IhYLQkFNuhZUt8Czz7Pz42V1eXb11RJ5TIRbX56Z/H
 j3wb/h+/OceWHSHlvmAAUnhjUjQuMdYHW6+Huq+qpZfImEMfti+fx8jZiwdHwS4UTl1U
 1A1/OeDOs95Gxozs2Q05kgSHPSltgxnQ9TUnLQ5fUg15HHXSPQ3GuNsKiKcZuB7Y7UFg
 WzNg==
X-Gm-Message-State: APjAAAWFE88rq9zXcp3cKNKE8SMpNkbjD2mDAsasXrd3PIihxjnVTTkQ
 0PjzzDfHZUq0lEWkfd8+lEKQGrhk638=
X-Google-Smtp-Source: APXvYqxkW0ycVMxBzXD23S0CyJZMWFsB12W7YlVG8MS3IPm+XkGU7n/ofbl0vusOVQxuku7lKAHsZA==
X-Received: by 2002:a37:9107:: with SMTP id t7mr56406931qkd.135.1560208233157; 
 Mon, 10 Jun 2019 16:10:33 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id v186sm5999784qkc.36.2019.06.10.16.10.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 16:10:32 -0700 (PDT)
Message-ID: <5CFEE367.8080108@gmail.com>
Date: Mon, 10 Jun 2019 19:10:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Joeal Subash <J.Subash@bham.ac.uk>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b53bf201-38fb-01bc-5bd8-7d70c1548c4a@bham.ac.uk>,
 <5CFEAD86.3000305@gmail.com>
 <7269FF47698D4B4F8BAB63029E1D659A0A9E1960@EX12.adf.bham.ac.uk>
In-Reply-To: <7269FF47698D4B4F8BAB63029E1D659A0A9E1960@EX12.adf.bham.ac.uk>
Subject: Re: [USRP-users] Dip in frequency spectrum.
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

On 06/10/2019 05:31 PM, Joeal Subash wrote:
> I will double check that with a noise source. Which methods in the API can be used for offset tuning?
>
> Thanks.
> BW
> JS
https://files.ettus.com/manual/page_general.html


> ________________________________________
> From: USRP-users [usrp-users-bounces@lists.ettus.com] on behalf of usrp-users@lists.ettus.com [usrp-users@lists.ettus.com]
> Sent: 10 June 2019 20:20
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] Dip in frequency spectrum.
>
> On 06/10/2019 01:51 PM, J Subash via USRP-users wrote:
>> Hi,
>>
>> I am recording a 20MHz wide signal centred at 370MHz.
>>
>> Attached is an averaged frequency spectrum, and there is a 6dB dip at
>> the centre of the spectrum. Is there a obvious reason for this. I am
>> using the python API and a B200 for doing this.
>>
>> Is there any way to avoid this from happening?
>>
>> Thanks
>>
>> BW
>>
>> JS
>>
> How do you know that your signal doesn't have this dip?
>
> Use of a good flt noise source allows you to differentiate between the
> case of your signal, and the receiver.
>
> There is DC-offset removal in the signal chain, so if you aren't using
> offset tuning, you can see some amount of "over-correction" for the
> DC-offset,
>     leading to a dip in the response, although it's usually fairly small.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
