Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7B837236E
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 01:07:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06D72383F5A
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 19:07:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rykzE/6V";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 5AFF4383EE7
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 19:06:50 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id q5so3529676qvv.6
        for <usrp-users@lists.ettus.com>; Mon, 03 May 2021 16:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=pCIafIiCspWh4uAhogPjH6AF0VFvD4flfbp7xyIUR4s=;
        b=rykzE/6Vlzbee7FB+BbNSzU5N3EP2kj42lL7kyObyVuvyjzMcEMqZZ4sfHjuIgcwxg
         8wmPfsOWmSpU8FizqrF2cmCdF5lwORSRVYt9Tlbd4x5jOURB/LEhdTmz2ap7vL+OYtUG
         91MELWJ2u4Jv85w7CnvDdDuW4KyGvxnjhh1sFRp651UfFnBoXaDl/hGH2UFDfly+V8hy
         1T3GrS+Ix00PWviMbcjRZJZKCgWmpO3Rq3ucxFsdgn9pHj3F61w8sOnJuWxsWduJOgrr
         Qs38fUbPg/fSH+xgLpNkHZ4ZMkx8O39NSFBI/bCuKG8tukjZWbCOLHL3nNPOd2UcwXaK
         RtNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=pCIafIiCspWh4uAhogPjH6AF0VFvD4flfbp7xyIUR4s=;
        b=nzM57I/QbjFohx7Iznq8mzgklYG55gShwdT4cTLJUuxmcwg5Mv4J+aW1E1Uwa4MyWk
         KNp1OEp8fcjnCy+IXy0FRRrWJ0hGqg5RmRRTs40OPc78I5yxfnj/gTmE6v+yGcy+R7TT
         yXJI8CNm69gqzaDty1baKbqM2Ks2AL/UAxJwOsBSQj5kOAgJCNDp7rlmRjyTvYd1u0+9
         p5iLjz6QO1K9JHGE7sGl67/hhlRwscMhsISLGw8C7zV/79VWheS9B7lHpxqJAyG7Y13y
         VUeM9xJxmrY9MwlE8AZ8J0pmfQgkUhLX2H01SEuDL49sEe/nQGSaxX5a3F+ukZcSgCIS
         OfpA==
X-Gm-Message-State: AOAM533/4cGy/ADWUm0idCgaLCA1Odj6vKW/K48gmRxVvg/rqiLA6jvC
	HAEU4iIyLfOoAYxf81MXCo1lulKSnNt1zA==
X-Google-Smtp-Source: ABdhPJztE8L2ETIuoZaQMnBvGJjOD0h1jkx5L6bWuatZ+jSveolzGrCtimvqk6Na/oIeASDY4z8Dew==
X-Received: by 2002:a05:6214:c85:: with SMTP id r5mr8446031qvr.11.1620083209412;
        Mon, 03 May 2021 16:06:49 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id k1sm9501253qkh.5.2021.05.03.16.06.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 16:06:48 -0700 (PDT)
Message-ID: <60908207.1020903@gmail.com>
Date: Mon, 03 May 2021 19:06:47 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAL0m=NZ6_qKogN9yeuizj_Sq58266n7k=DMxmyiJo-eW_yiJ6A@mail.gmail.com>
In-Reply-To: <CAL0m=NZ6_qKogN9yeuizj_Sq58266n7k=DMxmyiJo-eW_yiJ6A@mail.gmail.com>
Message-ID-Hash: OBDBTJ43DLYE4GNKVHWC3ICT37CFO6YZ
X-Message-ID-Hash: OBDBTJ43DLYE4GNKVHWC3ICT37CFO6YZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio cannot find N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OBDBTJ43DLYE4GNKVHWC3ICT37CFO6YZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/03/2021 04:31 PM, Zeng, Huacheng wrote:
> Hello,
>
> I was trying to receive the signal from UHD Sink (n310) in GNU Radio 
> Companion (GRC) but got the following error message (i.e., GRC cannot 
> find N310). I am using Ubuntu 18.04, GNU RADIO 3.9, and UHD 4.0.0. I 
> have confirmed that
> - My GRC can work with N210.
> - I can ping both eth0 and SPF+ ports of N310 from host.
> - In terminal "uhd_find_devices" can find N310.
> - "uhd_usrp_probe" can also find N310. Output message is attached below.
> - I can log in N310 using SSH.
> - I have updated N310's FPGA image. The OS in N310 is also UHD 4.0.0 
> (the same as the host).
>
> Any suggestions would be appreciated.
> Thanks,
> Hua
>
>
> ================================
> ERROR MESSAGE FROM GRC
> ================================
> Traceback (most recent call last):
>   File "/home/cnss/test2.py", line 150, in <module>
>     main()
>   File "/home/cnss/test2.py", line 126, in main
>     tb = top_block_cls()
>   File "/home/cnss/test2.py", line 84, in __init__
>     channels=list(range(0,1)),
>   File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 
> 125, in constructor_interceptor
>     return old_constructor(*args)
>   File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line 
> 3259, in make
>     return _uhd_swig.usrp_source_make(device_addr, stream_args, 
> issue_stream_cmd_on_start)
> RuntimeError: LookupError: KeyError: No devices found for ----->
> Device Address:
>     addr: 192.168.20.2
>
>
Could you share the full output from the GR graph run? Including the 
headers where it says what version of UHD it is using?

Also, what was the device address string you used in GR?  Did you 
include type=n3xx,product=n310 ??
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
