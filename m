Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F533A4323
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 15:40:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1AD13840BD
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 09:40:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S2B6Ab9s";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 8440A384094
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 09:39:42 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id a15so2532556qtx.13
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 06:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=YkT6QrLNgkUE0lS4WRiHbAap+vGoD7Pd8yQLFO+S0ws=;
        b=S2B6Ab9sHznrhV2eciaW+ovcZi82y21m+jw/2SNc3p0lUZ6xD8oX4g64DMVrPDwPuz
         seLkLQ9ZChCYY+H4tU41IJV7Nz04agglD0bCcCtaZqIKY9E1CUJV7PW+leZP49P8widO
         ijLf/MhohbTrBcYebCJYRxoBhlYI7Wy6CmyitFqk61Q7RpzlLjordPbmqXgLdkSRbiw5
         5f+bgmHDtBFvMtlgEyCszTNokNVw7YbU+GUdhzhANfbGfwq1PqJdEWdCl7sKRtyT7KTI
         q+fX9aXa0cqcFv5s6sFOog00WLcS8hiMA4vLNuIzu0wJMpIZmt6m6Gd4+PHhzbaVxSIJ
         abxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=YkT6QrLNgkUE0lS4WRiHbAap+vGoD7Pd8yQLFO+S0ws=;
        b=OSgdyPIKG8WfVDiuxvg29AznUZL+YsjGzVaEjhKvlIl0DZxfENPk+yZ+6Php6eNTzq
         +TvEgMMJfsPcom2ScqmjiH2YUds53sRF9pFXrRlcOd/I4Jr9e9B+73WSAXJgkjLCZvt+
         xr17QcWpb8vI03iO/6Vy4fhV/ukY4X4zZ2t4sY90gwDadHKElYjN3s4zPwA1r0+Caqst
         /3o1RbGMaUEtwjAkjYCgpNGtV7hyu/9lDBFlSpoH7YQThpzjOOwHpRry6L8J22hJQSi6
         KDN+HslxiH98+FK8pgBc5ibezzI0bZSKxX5LnSvsOMpZyTBK5M6owX8PQ+uSAdGRsn66
         fHag==
X-Gm-Message-State: AOAM532QNh4rKhhWrZKmzUAPcpSnqmjxGXBVmwf4jCSrUKkpS7DtBoQC
	vd3ZZLSrAKn1/eMBlpK+KIjUD2sLD/IXnQ==
X-Google-Smtp-Source: ABdhPJyXKnv91UnETbSGMUJbh7EfvNYGtheeMFxQLEhX4ZGhQyBrAvuGFgDYdXkJTCa0zBUBuVEcvQ==
X-Received: by 2002:a05:622a:11cd:: with SMTP id n13mr3880983qtk.233.1623418781565;
        Fri, 11 Jun 2021 06:39:41 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id t62sm4430065qkc.26.2021.06.11.06.39.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 06:39:40 -0700 (PDT)
Message-ID: <60C3679C.8070900@gmail.com>
Date: Fri, 11 Jun 2021 09:39:40 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com> <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com>
In-Reply-To: <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com>
Message-ID-Hash: HM6TZWNBKXT7CZFY4NJ23IPZUOZSSOIQ
X-Message-ID-Hash: HM6TZWNBKXT7CZFY4NJ23IPZUOZSSOIQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HM6TZWNBKXT7CZFY4NJ23IPZUOZSSOIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 06/11/2021 09:11 AM, Marcus M=FCller wrote:
> Hello Jim,
>
>
> hm, that knowledge base article must be wrong: The octoclock internally o=
nly has a 3.3V
> supply. But before I say something wrong here, let me check back.
>
>
> Best regards,
>
> Marcus
The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which=20
appear to have a 5V Vcc.

>
>
> On 11.06.21 14:17, Jim Palladino wrote:
>
>> Hello,
>>
>> We are planning on using an octoclock with several devices, including an=
 N320. The
>> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1pps=
 input.
>>
>> According to (https://kb.ettus.com/N320/N321):
>> "PPS - Pulse Per Second Using a PPS signal for timestamp synchronization=
 requires a
>> square wave signal with the following a 5Vpp amplitude."
>>
>> If I look at the schematics for the N320, on page 15,
>> (https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf) they show =
that the input
>> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the schema=
tics.
>>
>> According to the datasheet, the absolute maximum rating on the input is =
4.3V.
>> "https://www.onsemi.com/pdf/datasheet/nc7sv157-d.pdf"
>>
>> So, I'm not sure how the N320 can safely accept a 5V input (from the oct=
oclock or other
>> device).
>>
>> Thanks,
>> Jim
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
