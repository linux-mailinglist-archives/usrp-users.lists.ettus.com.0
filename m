Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAABC22D7E2
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jul 2020 15:32:22 +0200 (CEST)
Received: from [::1] (port=54004 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzKHi-0005cy-Fn; Sat, 25 Jul 2020 09:32:18 -0400
Received: from mail-ej1-f46.google.com ([209.85.218.46]:38354)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jzKHe-0005Xi-I7
 for usrp-users@lists.ettus.com; Sat, 25 Jul 2020 09:32:14 -0400
Received: by mail-ej1-f46.google.com with SMTP id c10so4515282ejs.5
 for <usrp-users@lists.ettus.com>; Sat, 25 Jul 2020 06:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=UapcNOmAWl7kkuhFzh5SwdbzVFvT0dzz+cIajouqd+0=;
 b=gW+5BkUVlXaep2OE5rNiFszgH8ZqyVK87u1yPACTUPbm+p/89x2l0h+RLfNfjUREIE
 t9cuv+QTvObKeXwAUHTAclK6Q3uQHNXL6ae03DJYqOJeF11AE4FOGypT/++kEbe/jhNx
 AyMPhUpg8WiDqjFq6HNJs5ahJt2kCWQXxthAvFlvmK3oGM7McxLUFeEMOkrOvJg4sKaQ
 Ous+B6DdH8wTIwJX2HAnMXpYzFOPqO6OyQ3THp0mggqctlg5etJxHZmrP1vA1L34HK7D
 5iH83C12SxJDap6O7buDmcC9ww2QSDxBTaaXJMV36A22OwnkqaphxXvaz4BU8PwTcVjI
 mqng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UapcNOmAWl7kkuhFzh5SwdbzVFvT0dzz+cIajouqd+0=;
 b=Mqfm44ch6jsBJ1WUg5tma335+hnO+io5Qbvnt9UZJKFm0GRgMzEgc08bi0+vUcsj5P
 SkSpHwDmgEM+ZmRnjkHM8fyjV3C/+X8tXeqY9MbbEpr/3TeJefn3v8k+YMe874DwBqNZ
 3uWgcOVnXJrkq3HyVV1GVJy6V830PFWjVpbPa9I0mKKByz+8CftNgmlaQjsMQtJw81fJ
 j5VLWx4HDDX8i2T7z5UUgCyMhKi1F5knKYE6SrXU2uUN+GAFF8IttfMfudkm/+0cknfS
 M7B9fQBcK6l1GiUfPulWtMeGEve253JvbhWUjMcg3sZ0R5JOGXcDNeOn5LqJ5q5tmQvt
 G8cQ==
X-Gm-Message-State: AOAM533jDO1PFs76gOqd5IV6X4tMdO1nJfz+ZrX+Ydw3EbKSXmi9wwVw
 4c10eAyXkx+LWxk3QpzKofKqw8LY3WDg5w==
X-Google-Smtp-Source: ABdhPJwgUuz9di6cXBTMrMTqWrpuUWCXiyOr1o8bgbNZ5u06rPOHxJNGc9oe1W1I6w47n2FO/PLvtQ==
X-Received: by 2002:a17:907:aad:: with SMTP id
 bz13mr14169834ejc.276.1595683892458; 
 Sat, 25 Jul 2020 06:31:32 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id u60sm2976707edc.59.2020.07.25.06.31.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jul 2020 06:31:31 -0700 (PDT)
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>,
 "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
 <MA1PR01MB2588B4D9AE8EE8E9E48363DC90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <2ae3dbb9-667a-f30a-0a24-509de972bb43@ettus.com>
Date: Sat, 25 Jul 2020 15:31:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB2588B4D9AE8EE8E9E48363DC90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] Data rate using usrp and grc
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Koyel,

I'm sorry if I'm repeating myself. I see this seems hard to believe, but:

we really can't tell you. We don't know how well your system performs.

Best regards,
Marcus

On 25.07.20 13:32, Koyel Das (Vehere) wrote:
> Hi Marcus,
>
> =93as to your previous questions regarding "will my computer be able to
> keep up": We can't tell you how fast your computer and storage is.=94
>
> If I use a 10 gbps server and
>
> RAM disk storage or as you said the following:
>
> =93Also, setting larger output buffers in the GNU Radio blocks can help,
> too, if you don't need low latency (which you don't need at all, if
> you're just recording). Try setting "2**24" in the min output buffer
> setting in your USRP source's "advanced" tab.=94
>
>
>  Then will I be able to write data at 6 gbps ?
>
> Regards,
> Koyel
>
>
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
> ________________________________
> From: Marcus M=FCller <marcus.mueller@ettus.com>
> Sent: Saturday, July 25, 2020 1:57:49 PM
> To: Koyel Das (Vehere) <koyel.das@vehere.com>; 'USRP-users@lists.ettus.co=
m' <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Data rate using usrp and grc
>
> Hi Koyel,
>
>> Will there be packet drops if USRP source is set at 32 bit complex
> float in grc when receiving at 100 MSPS each from two channels?
>
> as to your previous questions regarding "will my computer be able to
> keep up": We can't tell you how fast your computer and storage is.
>
> Anyway,
>
>> I am unable to set usrp source block in grc to 16 bit complex as then
> the usrp source block is not compatible with file sink which doesn=92t
> have option for 16 bit complex
>
> Nothing in GNU Radio cares about the content of the data bytes you're
> pushing around: simply set your file sink to e.g. int, or float, or to
> short with vector length 2, or to byte with vector length 4: Doesn't
> matter, as long as the item size ends up being 32 bits.
>
> Best regards,
>
> Marcus
>
> On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> I want to capture data from usrp 2955 using USRP Source block of grc and=
 write to file using file sink block of grc. Will there be packet drops if =
USRP source is set at 32 bit complex float in grc when receiving at 100 MSP=
S each from two channels? That makes 2*100e6*64 (32 bit I and 32 bit Q) =3D=
 12800e6 or 12.8 gbps. I am unable to set usrp source block in grc to 16 bi=
t complex as then the usrp source block is not compatible with file sink wh=
ich doesn=92t have option for 16 bit complex. Please help
>>
>> Regards,
>> Koyel
>>
>> Get Outlook for iOS<https://aka.ms/o0ukef>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
