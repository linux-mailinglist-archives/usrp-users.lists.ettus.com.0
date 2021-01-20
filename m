Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B1C2FDCE2
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 00:35:51 +0100 (CET)
Received: from [::1] (port=42130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2N0t-0001MD-Fv; Wed, 20 Jan 2021 18:35:47 -0500
Received: from mail-qt1-f169.google.com ([209.85.160.169]:34439)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l2N0p-0001Gh-9x
 for usrp-users@lists.ettus.com; Wed, 20 Jan 2021 18:35:43 -0500
Received: by mail-qt1-f169.google.com with SMTP id c1so360142qtc.1
 for <usrp-users@lists.ettus.com>; Wed, 20 Jan 2021 15:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=N/adiGL9zpPIjs8FBmjytFAw/MrD2YtKYO2/YFuFVxQ=;
 b=tMXJFF2bA3nMdi4MGjGu5p8OeBkmZTbKAH78qBQvpRNZjxdSkxF9rZvjy0yulIzLRx
 1GIgA091bOKbKaWudqg+WBjEo1tEftlupjbNkepHFLuDO3tgwdBQrTS/sJ50Mu5jGp6P
 6q31rKH6OQXOeEvZcFz/h7d8XegUbh0AgXdxEkmLN/N65DXcH/z1evXCgypY7+Vxa4Pz
 x5xIS0Rm1bzNtCbsqcHRn+R3vXHZODJYgEkvvpYxDCGMlNwXCiAwy3SipJ9KAO4z7ASO
 ZjmjbdepLN6SQyJ/JQpsOf4xAT2KlYugc1kOvgdI1p3gqNs6cLyCO50HDdXvHl1dUNqn
 jejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=N/adiGL9zpPIjs8FBmjytFAw/MrD2YtKYO2/YFuFVxQ=;
 b=S4khak7X/0njbG6XZjmStfU45Gvsu7Qda65WTyaYjSCmt/uh1C3eBn8gRyoabQIrjr
 HQW2RYtjfI/SQpH8O3oTSfs+AF8N//fHstcY4At+EcJUL8uFRF/MHeubpzY0YTPHUrj7
 IEbudbBoCbOaT4sQjV2kyl8l2Fr40AYAeIfJpmwJDfZFKcAyqG2dT8vaGXUcLuQBzU4M
 z0fHsCRiYHVn5zBYlKh7y99O6r9IxKOJxU7ap5z3RN3Y+CKyuqLJ7oCEVyZpRRI7w87d
 gavWCnNgO9rY+H2EVKhBWRzZQMz051WFDUExn5H6Fau9/c8FtBhvVuJPxjinvlkYGQIo
 V1Kw==
X-Gm-Message-State: AOAM532ANH929dKKmutiw9KgDR14JRq9PoM/eIfoDf/rFn/NnbL5Py4J
 T3m5GRRrWcKMtHgeouDio4MkNVKHSCY=
X-Google-Smtp-Source: ABdhPJw8qXSKqgMIrQsZIG0EMCy457Y9GLS4ozKjG6yHOlk2wHkewt2IoEO8XQN4EtN2uNViTH+Aqw==
X-Received: by 2002:a05:622a:18c:: with SMTP id
 s12mr11198194qtw.131.1611185702440; 
 Wed, 20 Jan 2021 15:35:02 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id k141sm2546212qke.38.2021.01.20.15.35.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 Jan 2021 15:35:02 -0800 (PST)
Message-ID: <6008BE25.2020600@gmail.com>
Date: Wed, 20 Jan 2021 18:35:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAHHQuSg9d6U4PfZWRgMSYB8=1f1ijDR0MqFrESiz36DMFnn6NA@mail.gmail.com>
In-Reply-To: <CAHHQuSg9d6U4PfZWRgMSYB8=1f1ijDR0MqFrESiz36DMFnn6NA@mail.gmail.com>
Subject: Re: [USRP-users] Overflow / Underflow Questions
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

On 01/20/2021 05:34 PM, Spam Blocker via USRP-users wrote:
>
> We have an application that requires about 640Mbps of transmit and 
> 640Mbps of receive samples bandwidth.   We have a high performance 
> Dell laptop hooked to a B205.
>
> Questions:
> 1. Do the different versions of UHD support different throughput rates?
For the B2xx series, the different UHD versions will show only very 
minor difference in maximum achievable sample rates.
> 2. Are there maximum sample rates for the B205 that would restrict the 
> throughput reaching the numbers we need.
The maximum sample rate of the B2xx is 56Msps in each direction, which 
means roughly 56MHz of bandwidth into and out of your
   application.  How that translates into *mbits* of data depends very 
very very much on your particular application, coding efficiency,
   modulation efficiency, channel characteristics, Eb/No, etc. That's up 
to you and your particular application, and whatever your
   compute platform can deliver.

The USRP SDRs don't inherently *know* anything about what you're doing 
*within* the bandwidth they dutifully transport back and forth.
   Higher order modulations and coding schemes take more compute power, 
so that's almost always your limiting factor.


> 3. Is there a receive and transmit throughput test that I can use to 
> see what the maximum is for our platform?
>
> Thanks
> K-
>
There is the "benchmark_rate" test application that is usually located in:

<prefix>/uhd/examples

This will give you an idea of what your computer can move back-and-forth 
between itself and the USRP, absent any additional load from
   doing anything "real" with those samples.

I would spend some time here:

https://kb.ettus.com/Knowledge_Base


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
