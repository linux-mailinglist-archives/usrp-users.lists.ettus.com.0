Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0543B23AA1F
	for <lists+usrp-users@lfdr.de>; Mon,  3 Aug 2020 18:04:24 +0200 (CEST)
Received: from [::1] (port=46654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2cwl-0003kq-Nm; Mon, 03 Aug 2020 12:04:19 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:35702)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1k2cwi-0003e0-8b
 for usrp-users@lists.ettus.com; Mon, 03 Aug 2020 12:04:16 -0400
Received: by mail-ed1-f42.google.com with SMTP id m20so18130239eds.2
 for <usrp-users@lists.ettus.com>; Mon, 03 Aug 2020 09:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=PWcWHEOBhVz0+63Dg5lsnTBGy5EgbtULBHm6RE+7KJk=;
 b=Q3mMITe0cc7YoXYViKiUa+1rpmd9M9vdKnt6XYwEL7gtgh504KxgoxCSUOrCkd8HPJ
 PDBMockIWMAcd+xXk3h47lYE4xLRG1RSg5qZqQQt8N3V41B6wYnO1re35KT6FiQPHvk+
 4qVBhhocEX43gX3NvxjUoK4UBSHbhdYazl0LVx52CM2cV2FmJnzvusRU/TFCatwFOWtD
 sTwga/+IxYI6fIWa08pvIa4H0VQVekl1sd7X+b/QYqqdu62NG48t1YVZls+9rRW8Bjyg
 h0htFEfFhjQ4vCb5xsalu8a/yqyZQ+4Cr4Rn5V5rHKoi/Iv3c4M7ypoUYEm57RXzkqcb
 aQAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=PWcWHEOBhVz0+63Dg5lsnTBGy5EgbtULBHm6RE+7KJk=;
 b=FjrTnngu/AL2y9KkAsrSaOFuwVyyC9ttsBALTckIdOUjyMaVsAcBO8ebVZ7JFR3KqA
 0mkA5ZK3e3x6/wytpPdGikpe/wwJrNnCM+KIMYBXjXX87bra6OyBDRMRTXL7U2u6z4Lk
 t0b2Y7C4u7wO5cacwESt2gP0IOUnBz8UUoBs6lSwljnopLnrVTxJDfqQ5LyRjLWSP+bP
 oUrmAGmBMyX6o74bOXkudj5uhCe6M1ccDkOI/DFCK+DWIOQBu1DOJSUGQHdR7YmF/JxI
 578BKtRmZisdhaOJwAkfJZMqzB2dv0YnfOYtDfpip+VrQfLplgmQw9Zv9BhqgcjkCFil
 Ouhg==
X-Gm-Message-State: AOAM532R/FOsTRXv+Ztlz9Av629LYsoIcHm7qVfh0xXuKgHxPnyncFZu
 sFEwlwDbMZNamT0TjcYTsypyoqY5b4mlVA==
X-Google-Smtp-Source: ABdhPJwYIuyOg73RaXwFDh5a1JNHeGbux/YWxQ7Kgjs8H1IPXyZJzrHg0LTzXpHvLKKmfRMaKBqluQ==
X-Received: by 2002:a50:fc8d:: with SMTP id f13mr16807707edq.380.1596470614887; 
 Mon, 03 Aug 2020 09:03:34 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-149.hsi.kabel-badenwuerttemberg.de. [46.223.163.149])
 by smtp.gmail.com with ESMTPSA id du2sm16611030ejc.2.2020.08.03.09.03.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Aug 2020 09:03:34 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CALn8ZzkBoAruW4fFNGDKD0fhmi7-nmh_9OsA942wo9cmBECPxg@mail.gmail.com>
Message-ID: <04dca4c1-59c7-fbc1-fa03-b512bada3d35@ettus.com>
Date: Mon, 3 Aug 2020 18:03:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CALn8ZzkBoAruW4fFNGDKD0fhmi7-nmh_9OsA942wo9cmBECPxg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Unable to see dissected USB CHDR packets in
 Wireshark
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

Hi Vikas,

the ZPU dissector shouldn't help you (IIRC, there's no DUDEBRO protocol
between host and B2xx). However, yes, the RFNoC dissector is what has
become of the CHDR dissector.

When I look at your screenshot, it looks to me as if Wireshark wasn't
told to actually decode the packets as RFNoC. Could you try right click
-> Decode as... and try that?

Best regards,

Marcus

On 02.08.20 17:49, Vikas Jain via USRP-users wrote:
> Hi All,
>
> I am using a B210 running UHD implementation corresponding to the SHA
> commit (457192600b3c51d4ddfccac222f2a19d1a5b4995) on the master. Relevant
> git log snippet below:
>
> ===
> commit 457192600b3c51d4ddfccac222f2a19d1a5b4995
> Author: Brent Stapleton <brent.stapleton@ettus.com>
> Date:   Mon Jan 6 12:19:56 2020 -0800
>
>     images: update FPGA image packages for RFNoC
>
>     Updating FPGA image packages, filesystems, and submodule pointer to
>     include recent RFNoC changes.
> ===
>
> I am running the pdsch_enodeb example program (in srsLTE) which runs on my
> Linux box and transmits a certain waveform over USB connected to B210. I
> captured the I/Q stream USB packets on the usbmon interface using wireshark
> and noticed that the I/Q data packets are not getting parsed by the
> dissector. I have installed both the rfnoc.so and zpu.so dissector plugins
> in the appropriate folders that wireshark is able to see (see attached jpeg
> showing the plugins visible to wireshark). I am using wireshark version 3.2.
>
> I have also attached a png file showing the wireshark output with the I/Q
> data USB packets captured but not being interpreted. Not sure if I am
> missing something. Appreciate any help or pointers to address this issue.
>
>
> Thanks.
>
> PS: I was looking at the UHD git log history and noticed the following
> commit wherein the tools/dissectors/packet-chdr.c file (which used to
> earlier contain the CHDR dissector implementation) was removed. I had used
> earlier UHD implementations which did not had this change and was able to
> see the USB packets being dissected in wireshark.
>
> --
> commit 9f29b9a556634e41d13fa298f9634b67fdd0a749
> Author: Alex Williams <alex.williams@ni.com>
> Date:   Tue Jul 30 19:45:58 2019 -0700
>
>     tools: Update dissectors for Wireshark major version 3, new CHDR
>
>     Dissectors may now be incompatible with earlier versions.
>     Fixes ZPU dissector.
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
