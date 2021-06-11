Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA323A43A8
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 15:59:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01ADA384786
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 09:59:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="BRVJ8hmJ";
	dkim-atps=neutral
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 619CB3846CF
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 09:58:33 -0400 (EDT)
Received: by mail-wr1-f51.google.com with SMTP id z8so6190441wrp.12
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 06:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=/H6StlmJx880iBk5Y0artvi/2cNWHIz9EETt7NtPwYs=;
        b=BRVJ8hmJXN2piJafm9KBNG0zT6VShT+zwdftewYbZOSb5PmmCjfhaD4O8yK7PCE/1Y
         mfgvIPplVzSUEZMGO4w7NtyuYa+vgAiLTnH+srfZqO6LN5m1J7UICfKxP38J5w5+aA6G
         OpIZPnF0mXyVE5Y9nfnQapZ7yExvVMfCBJaNxDl1k+k+0+J32FmrhhD5cHpaZ4eVatjY
         FHUOO4BevgWw+uf2DJTFkAGUtaLpr39d+6mPqTSPrnq18979clmzwJYgTtEzjRAusEWS
         UH8tvbiSmn1Ntpl4RCFFreWZj2DPNgNRE4hTd0e8C6ttenx+Z46QmS9n0yaki+LI6xjB
         s1pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=/H6StlmJx880iBk5Y0artvi/2cNWHIz9EETt7NtPwYs=;
        b=UWjmgSWZPPyM5AhQD+XYyUugSMoOGnynV0CpHPSx8SSFsb9Y35Wi/NiaSG3dDraIPO
         1udiSdSKNvAS42UqQioBrtF8ZYw1UTJHMy1aKh8fcP6Zzys7Og4A9pINTKBVtNP/NAGR
         zttnIi5xfHkxKsFjxhV8XmdujdnVWuat0YDKrt6v4+3lBpLXV79GnWaygtsrX3wCv28v
         RdnYHLDlS9VVMLCNJFTA+76IFAIQkcXKRlV3ADls8mIRS+O0jBNvwsW705HTB70RXn5+
         23lVJzWExjNEhm5gWYVNA4kxtv+nYETy+IFw14YeJjNsvGI+7k2QeEfclK2BMOc1Vt3t
         oVVQ==
X-Gm-Message-State: AOAM532mstTBAo0RhGc3+GxyZOPTWdglQlXfQ7+5xjbIREwuLM0D+AEh
	SJn19+zaxi1fwfI2D5NqhXDz9xcM3gngo/oe
X-Google-Smtp-Source: ABdhPJw47cWY95dbxI7pCl38Ft76vIj4YVUyNi99NIsrlfTG2Itrhao32QIiCJdn9ySpOfKEguYWmQ==
X-Received: by 2002:a5d:6952:: with SMTP id r18mr4266025wrw.392.1623419912186;
        Fri, 11 Jun 2021 06:58:32 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id g12sm3318628wrm.47.2021.06.11.06.58.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 06:58:31 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
 <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com> <60C3679C.8070900@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <62b55d6e-b560-40e7-421f-1bdc453bf8fc@ettus.com>
Date: Fri, 11 Jun 2021 15:58:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <60C3679C.8070900@gmail.com>
Content-Language: en-US
Message-ID-Hash: LMQ4N24XAVRLJC7QLA64FRCSEAVDTP42
X-Message-ID-Hash: LMQ4N24XAVRLJC7QLA64FRCSEAVDTP42
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LMQ4N24XAVRLJC7QLA64FRCSEAVDTP42/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Ah wait, you're right! I overlooked U120. I was actually also confused by C=
200=85C207, which
happen to be on VCC3V3 and would in numbers make sense to decouple the two =
7404s, U204 and
U203. Sorry!


On 11.06.21 15:39, Marcus D. Leech wrote:
> On 06/11/2021 09:11 AM, Marcus M=FCller wrote:
>> Hello Jim,
>>
>>
>> hm, that knowledge base article must be wrong: The octoclock internally =
only has a 3.3V
>> supply. But before I say something wrong here, let me check back.
>>
>>
>> Best regards,
>>
>> Marcus
> The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which ap=
pear to have a
> 5V Vcc.
>
>>
>>
>> On 11.06.21 14:17, Jim Palladino wrote:
>>
>>> Hello,
>>>
>>> We are planning on using an octoclock with several devices, including a=
n N320. The
>>> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1pp=
s input.
>>>
>>> According to (https://kb.ettus.com/N320/N321):
>>> "PPS - Pulse Per Second Using a PPS signal for timestamp synchronizatio=
n requires a
>>> square wave signal with the following a 5Vpp amplitude."
>>>
>>> If I look at the schematics for the N320, on page 15,
>>> (https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf) they show=
 that the input
>>> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the schem=
atics.
>>>
>>> According to the datasheet, the absolute maximum rating on the input is=
 4.3V.
>>> "https://www.onsemi.com/pdf/datasheet/nc7sv157-d.pdf"
>>>
>>> So, I'm not sure how the N320 can safely accept a 5V input (from the oc=
toclock or other
>>> device).
>>>
>>> Thanks,
>>> Jim
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
