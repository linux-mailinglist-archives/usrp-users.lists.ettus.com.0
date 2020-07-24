Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E9E22C1FC
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 11:20:57 +0200 (CEST)
Received: from [::1] (port=42378 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jytss-0001ve-RJ; Fri, 24 Jul 2020 05:20:54 -0400
Received: from mail-ej1-f47.google.com ([209.85.218.47]:38370)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jytso-0001oo-TZ
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 05:20:51 -0400
Received: by mail-ej1-f47.google.com with SMTP id c10so1122331ejs.5
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 02:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=97xE1wyCwo2tF5LiXrGz/iKfRCh2F7JMz9sMkeUFGQU=;
 b=Hzed/M7jZPqLW4KOkN2cA+2SnBD8NXtyPJI1OEiXkJAwfTf7nTRuvW2wBex8n5m+st
 IxRS6e9RiELRO4dRkGV7obGxTY839j+pnmoEodSoInvV4NP1/OBjyZIlZueGzQ96SyCX
 W9Yv7zfTsDPy/WBCsR0P5cmDR41shgQVo+fN+zGgIxEbKnmEBM3gHzyaIEokwyvBMTuF
 36IvWmNmLXoBQnKGgbhnOpTuyPpUnYkSYZ+udWhAXaQViUZu8F3xC7tb3HFn1fycmcK5
 GYqXEdpKtSC/t7L3Xcsslxb7reRphOvnOdqOPfjSHs20el2z7j40sKTRlRy7C9yWYBJn
 Icgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=97xE1wyCwo2tF5LiXrGz/iKfRCh2F7JMz9sMkeUFGQU=;
 b=jeytsEx/V2fqGtrZPbAmwgYo4f8JdvX1CX2D8byy5a/35qVljRBwSWlvmKyIPX9cfP
 2ujoZ4+qP9DcsqudYNabVj0CmLFbRU+BSitDhUkLbGPMCQ+O2jeYZUdpLgbpnDHNvCNE
 m/kZ5Tavr2e+AvyQUaRXrMHjSq9F0tn9S58oZ1dpy6K9Nm8w9CGhDs0+H8bBR1cXewvo
 t+XOi8IRa//OBw/6zp2W18ihzWAoWQyBcXVu/dNO49wfvB/L3IuFv11wHR26t7hLRfYn
 DA+YjvCWwr4ETz1xIuhRSaAOpvNhu764ZtwJ0ODIRJAJKbDaFV/vgdcs+w2Dz8m3l6TZ
 uVQA==
X-Gm-Message-State: AOAM5330GtBUIKjJqblFV0Zn39Qk5N//SEhOJt5woqjznGeTUX8NAbEO
 9gZzFfDMeYBYRWHK9AAQ33pE8Kswe4xiaA==
X-Google-Smtp-Source: ABdhPJwVcqqnwHyc3b9879oh2pCmM0A+D3l2mTJ6tI7auJQpt3E9bXklRCZxBBRV3RajItqinDTrzw==
X-Received: by 2002:a17:906:c34a:: with SMTP id
 ci10mr2814730ejb.118.1595582409488; 
 Fri, 24 Jul 2020 02:20:09 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id f10sm335550edx.5.2020.07.24.02.20.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 02:20:08 -0700 (PDT)
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
 <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <a24f048a-ee4a-b313-dd10-455af9baf010@ettus.com>
Date: Fri, 24 Jul 2020 11:20:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
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

Yes. That's why I recommended it.

(also, GNU Radio Companion **is** the GUI. GNU Radio is the framework!)

On 24.07.20 11:07, Koyel Das (Vehere) wrote:
> With this command `sudo apt install gnuradio` on Ubuntu 20.04 LTS will gn=
u radio companion will also get installed with its GUI?
> =

> Get Outlook for iOS<https://aka.ms/o0ukef>
> ________________________________
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus=
 M=FCller via USRP-users <usrp-users@lists.ettus.com>
> Sent: Friday, July 24, 2020 2:32:20 PM
> To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] 4 channel capture using grc and pcie
> =

> Hi Koyel,
> =

> The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be
> used with modern GNU Radio.
> =

> I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,
> from which
> `sudo apt install gnuradio`
> will give you a working GNU Radio, and a matching UHD.
> =

> (Don't follow any other guides on installing UHD =96 you've already got
> the recommended version, then, and installing anything else is just
> asking for trouble)
> =

> Best regards,
> Marcus
> =

> On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> Is it possible to receive data from 4 channels simultaneously of usrp 29=
55 using PCIe ? Which version of Linux and grc should be installed for that?
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
>>
> =

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> =


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
