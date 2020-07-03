Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 283E72130DA
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 03:12:07 +0200 (CEST)
Received: from [::1] (port=39562 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrAFH-0005PG-Nz; Thu, 02 Jul 2020 21:12:03 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:42073)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jrAFE-0005Hj-1S
 for usrp-users@lists.ettus.com; Thu, 02 Jul 2020 21:12:00 -0400
Received: by mail-qk1-f194.google.com with SMTP id 145so25025839qke.9
 for <usrp-users@lists.ettus.com>; Thu, 02 Jul 2020 18:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=d+c1MdI7yAV1d5hZWPs6ZlJNKCUBNPX8MWPoii6yDA8=;
 b=msDr53JW0hQUZVj5BepkfVwBi6DMQbSrehUr8lgkGEBTa0iiYWZ5GGHtyx8YTGV5/2
 v1cgVSryE7qS5Y7nbhfyyy+ZbJW28AFSNAUfNezVEWEjHFyncoCTG9jRNcXW6Rqxc/Bw
 0BR+Ep6cKmwE3GiFxh8kiW824bZ3XMwwpcVvezUJCaU0soKxtrND0dJkE2RFjNXHJmgx
 Nh3DRazCqlP9XaxnqLZk27fmA3mmfRmxm4dPbVHCiAiioZRfYfwKDsNwvNoEFuSTRBtD
 RdO9GSPA7foQEua/vCRNbc74Jkkav6QYysNxGbx8l4ltwAkVLnVIOrJtR0hSdMTZ5QKj
 YuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=d+c1MdI7yAV1d5hZWPs6ZlJNKCUBNPX8MWPoii6yDA8=;
 b=IFPIWaszCop7ORt3zww2gVEUVc89G9puPSm0kd2GKpj+f4gRCXQy0q3dUbHhPz8UTy
 S+1QuKhjZpNi5JLhJnjleiJNbrxnPTumjSi7TjgT6IsgRMLZ81W4z1AVEDIxCRr9xIdA
 Ku4eyUhC7fflZpWmFPDH/vMRTjkh3Dy8fpQv3pssJkUOP7Lk3w6ZCIUbIGIzHcQC5wc5
 1dBTPxi/o8Ny79t8nvebwfv6yAFiewEO7WRnn5qaoo2R/BZp/J4H+qEY7ENk2/DSi7H5
 BnIc9sLiNMNgnl9XAh3Vp5ClQxHK4bkfvj7FeglevIyj1XyE9pSXsax2aINfsR+hBerw
 H+8A==
X-Gm-Message-State: AOAM530uI/bnMTnB94OZXONOvuG2C/p+qfyPwZsv43A8DraQ6c8RClx9
 U6ugoUs/GVOXk2zCapZxUwGnD8l9
X-Google-Smtp-Source: ABdhPJz3TfFLwgT3wGSelKpMjhxjJGJgaQw3aRDLGa9is/9otyvxgswxqgxfCSeArO997iUms7hlcg==
X-Received: by 2002:a37:4907:: with SMTP id w7mr33023340qka.492.1593738679328; 
 Thu, 02 Jul 2020 18:11:19 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 k197sm9965686qke.133.2020.07.02.18.11.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Jul 2020 18:11:18 -0700 (PDT)
Message-ID: <5EFE85B5.9050700@gmail.com>
Date: Thu, 02 Jul 2020 21:11:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <79E41B66-2253-4D2A-B97A-81962C93F4E6@gmail.com>
In-Reply-To: <79E41B66-2253-4D2A-B97A-81962C93F4E6@gmail.com>
Subject: Re: [USRP-users] B210 Timed Commands, Samples over time
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

On 07/02/2020 08:29 PM, Sidd Subramanyam via USRP-users wrote:
> I am running a B210 USRP with the built in GPSDO. My goal is to collect a fixed number of samples (4 Million) at the start of every minute over the course of about an hour. I am setting up the script to make use of the STREAM_MODE_NUM_SAMPS_AND_MORE collection mode. For my application It is important that the collection starts precisely every minute, hence why I am synchronizing with the GPSDO. Because of this, I am attempting to tune the LO with the GPSDO every minute before the collection starts in order to keep the LO from drifting. Furthermore, right before starting the collection, I query the GPSDO for the location and log it as well. This seems to have a blocking effect on the whole USRP. How can I use timed commands to ensure that I synchronize time with GPS Time, tune the LO with the GPS 10 MHz, and start collection of my fixed number of samples, with a known time spacing between each of these so that I can minimize any LO drift by the time I start collecting my samples.
>
> Thanks,
> Sidd
>
Re-tuning will have *zero* effect on "LO drift".  The PLL synthesizer 
will be locked to your GPSDO output, which, once it has achieved lock-on to
   GPS will be very very small--roughly 1 part in 10^12.    Re-tuning 
will have zero effect on drift--the whole point of a PLL synthesizer (as 
is used
   in ALL modern radios) is that the frequency is set with digital 
registers that control the dynamics of a phase-comparator and charge-pump
   loop. The "drift" of the LO is *ENTIRELY* dependent on the reference, 
which in your case is the GPSDO output.

You only need to "synchronize to  GPS time" *ONCE* at the start of your 
session, after that, the time-of-day clock will count updwards at whatever
   the master-clock rate is, and with whatever precision is being 
delivered by your GPSDO.  There is NO reason to continually "re-synch", 
unless you
   lose GPS lock for an extended period--the "holdover" of the GPSDO 
on-board is quite good--a few PPB.

How are you querying the location information?  I think that's stored in 
a "sensor" register, and you should be able to asynchronously query it
   while samples are being streamed.  Now, if you have everything 
happening in a single *THREAD*, and you are making "sensor" queries, they
   are blocking calls, as far as I know.  But that's just a "how do I 
structure my threads" problem.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
