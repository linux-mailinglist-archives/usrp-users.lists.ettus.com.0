Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395E5640B4
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 16:24:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D52A383C5F
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 10:24:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656771858; bh=wBPt2cfA8qIHLrecm729zrB+HqFOIydesHm+uLnc/U4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RKxMrLaMxC0gUWjffz8WxKPy/xLn45JjJ2epRDa0OUsvJ6uVPfcC6Q+5/0zKAGH46
	 RpTIIfruBP+FadWjw9VXEc/PmIYytO/8mS+RsTlXjWBKCGZiYIAS866vvdNZtFSiKe
	 KDs8LHqpsOwi6P6BoVfD5rhUkBqij0YsNQ6wkKAtj8g0BAaEH79ERyhsSKyXB/iETL
	 PLpVAc8Rs8x2iTxp0WivjEwqy2YxdppSYgxaNJW8Y9TMuSSbtTvQwx0IcjboMrwo1A
	 MjSIIKMht+NaEdX8y06A37teSz5eKUztTyrMsFOuncjfxEfyhR1G1BexrxKdMosRzw
	 q3lsn3VZa6lpg==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id C4C8138430E
	for <usrp-users@lists.ettus.com>; Sat,  2 Jul 2022 10:21:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W8F2jEdp";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id fi2so8799388ejb.9
        for <usrp-users@lists.ettus.com>; Sat, 02 Jul 2022 07:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aHcT3M0oAaslCN5DPi2xM6kJ9WkScwgLZU9n3QjTz6I=;
        b=W8F2jEdp6KgSy/wug12LiMUrK9UQs/zrZUYfZiD60uV2fMPcK7JEcqa58RrrVLTtbm
         1DynR91TnTZ7LsfDjmeXL75qN3DnqdVJiqWwUVbU2nInyK32YWj4fshNwmUIG3kDwr7Y
         FqCghRceoVYOl5iNGer2Xc0TiYBAvgsVCrUTVivrK6eNZldqYvyclp7JhzPVmOpG5jH2
         fj7y8QFfr0Z3SH8MKnVU9v0CYcaixpj4vj36bT8ddaOVN6627vFGMYnKkNoWMJBWi4+E
         HQX9MyL+SxkJvW9L0PKYpR0TUz46obgTbjkLktBaS/Nq2uJYeSTFywgcNQ89AhSfyKN/
         Vj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aHcT3M0oAaslCN5DPi2xM6kJ9WkScwgLZU9n3QjTz6I=;
        b=XwW6hWsa50vk7+HnAgW/+lBJqOMhv5oht31e2Lt0ENvT7Xa6BBxWkAAwVDbqbZXQKw
         p9cx2kGUwc2iugdz/Eu7H9bGTcSppO3HbKSgfPyTvp+4TEhJvFDrTR0Eas0hwQQ/p/BC
         GNC70m4voqHWCRWwB+tKZ8B55QQ/twcKH56N8D4VhE9qQWIGArzgER6pUNLEObME4SSR
         V2EP9cr/jBplzwa5DhoiFVXMWKhpSnijlDBWTzUlZ5SooahPKvqyV4Y52h5k3l7zKOZl
         jN2GAHpznH1yWVbqOASe6LCyZbNoo3yIk41ghd1Od39akB2NyTmJ+ZqQ1oyCaLzDfp45
         APrg==
X-Gm-Message-State: AJIora82cL1lCzTgrslbTaAupOjf51nP2Ics4EZrlCHABKMjb/sCj0bz
	maaTm0kOUoWBIKMzwcp6wTBjmubwHgqvpUG1HQE=
X-Google-Smtp-Source: AGRyM1sdhLYVrLDtuBIGLKOntuUKgEhACPqPAilv8YLwd4OqphKwWqBAhys9juc1y/6neuCX5mkKnhD+ErWm6dGJurk=
X-Received: by 2002:a17:907:a0c8:b0:726:8f36:c8dc with SMTP id
 hw8-20020a170907a0c800b007268f36c8dcmr19386758ejc.40.1656771688529; Sat, 02
 Jul 2022 07:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Ps-+BXD0qqG32gdMVTznKGBjmT70JPPW5Nc1By287KTmQ@mail.gmail.com>
In-Reply-To: <CAA=S3Ps-+BXD0qqG32gdMVTznKGBjmT70JPPW5Nc1By287KTmQ@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 2 Jul 2022 17:21:17 +0300
Message-ID: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: RQQRJMC2JGBRYKUK3ZRVAXWP6XEKGPEP
X-Message-ID-Hash: RQQRJMC2JGBRYKUK3ZRVAXWP6XEKGPEP
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQQRJMC2JGBRYKUK3ZRVAXWP6XEKGPEP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I don't know volk_32fc_convert_16 ic. Dunno if it converts between big
and little indians:(
When converting a float to int, you always have to ceil or floor the float.
Ceil sounds as good as any. You can easily change that to floor if you
run into problems.
Since clibs le32to* take ints as arguments, I would first convert
float32 to int32 from gnuradio save to file, and then worry about
the indians when importing to uhd...

HTH
Nikos

On Fri, Jul 1, 2022 at 8:42 AM sp h <stackprogramer@gmail.com> wrote:
>
> I recorded a complex signal file, I did it with HackRFONE,  For sending on USRP I want to use the int16 option as input, My question is how can convert a complex float 32 signal to complex int 16 for USRP?
> what's the relation between complex float 32 and complex int 32 in USRP?
> I know that in USRP numbers are in format complex int 16 and big-endian and in Gnuradio numbers in format complex float 32 and little-endian...
> https://files.ettus.com/manual/page_converters.html
> I used volk lib but the float that I entered as input, is ceiled to bigger integers. Is this a method valid for converting signals...?Or my data will be corrupt!!!
> Thanks in advance.
>
>
>>        lv_16sc_t* outputVector;
>>
>>        lv_32fc_t* inputVector;
>>
>>        inputVector->real(25.55);
>>
>>        inputVector->imag(45);
>>
>>        volk_32fc_convert_16ic(outputVector,inputVector,32);
>>
>>        qDebug()<<outputVector->real()<<"-----";
>
>
> The output:
>>
>> 26 -----
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
