Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 628853A42CF
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 15:12:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 505DD384156
	for <lists+usrp-users@lfdr.de>; Fri, 11 Jun 2021 09:12:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="sLN1VrRU";
	dkim-atps=neutral
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E2BA384034
	for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 09:11:45 -0400 (EDT)
Received: by mail-wr1-f42.google.com with SMTP id z8so6021650wrp.12
        for <usrp-users@lists.ettus.com>; Fri, 11 Jun 2021 06:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Xu8ITMizD203V7KxROy2yRbCe9MV8UIB3esPJ/wooH0=;
        b=sLN1VrRU+Iu8ks2aelgaEchWEWznNm7jsbU6QVw0kpod39nYurcsSu4TNJ5T/mR9HM
         pi0brbvp+cJtSR1F2HoGHB+dGR/AQdFrt86qk8sEcugQkq/46puWXQqjMQNLXyMQH7Wf
         f+fevGThw070IWDeIWfJjwiI/t3bi6pcBCbO0tM/cJq8RJUiU0F+iwIOBX75/y+1GMmr
         PFIMYQ3CRoklfe8MwfUJsi/2HT8RsDe28OCSxSw5m/MFv3VxUwwZ3CGlRCIh2IE9B5rJ
         RzGe08Q0NGUXsUYYFUK3aZPLe4uJ57/6VELcoxw0rvGj8O1OvKm5K1lO5yjdFhtk9eo2
         G6nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Xu8ITMizD203V7KxROy2yRbCe9MV8UIB3esPJ/wooH0=;
        b=VoFuDc9znG4BxqAcODH/e9uhXlacp3psNf0CWxvesV+A3nHRCE/tHIz2aZMZJkWTKl
         vbx18cbnxpUOrIMxWHVjZYOlSYrPajvVjBA4kUQs8MPOQqqMc/iSo91qg0+6h1zF1+hM
         GlSWYwfAy4woFkBcLqL9WAeMhgGk6M2k5pDjh9xGVVdPn2iNm2SkojBQh54cJy7lawpR
         +qEBLC2RlyEkHSuqLojne/7N9HqlnQoyMQt4rLFfJ57qxPlRZv0E/3oH361Z5eUOhYYT
         cFSoJhx6/12COGpC06YyWH0A59api+lC2IAKypkFqPLgWZUh1WasXS78GTU6be9z8wJL
         nfaw==
X-Gm-Message-State: AOAM530xCJdRffgyMBd8k5sioSaJhxUo++snXmaa42pmM+aTpz/HnrOt
	G3RqPucUfK0wzTkhoRUeNHsYr/EW4dMidsbl
X-Google-Smtp-Source: ABdhPJwed7ULMmYCeC2rjJU6BeWaXgFtWErG/WIFUjexuc5TCVCuWovdV4d9nYyscj9lBsjU+LGJfA==
X-Received: by 2002:a5d:51c3:: with SMTP id n3mr4010883wrv.322.1623417104137;
        Fri, 11 Jun 2021 06:11:44 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-195.hsi.kabel-badenwuerttemberg.de. [46.223.162.195])
        by smtp.gmail.com with ESMTPSA id x7sm7364066wre.8.2021.06.11.06.11.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 06:11:43 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com>
Date: Fri, 11 Jun 2021 15:11:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: U57SMZEGQC3A4T7HOL4R7GKFLVSV2PFU
X-Message-ID-Hash: U57SMZEGQC3A4T7HOL4R7GKFLVSV2PFU
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U57SMZEGQC3A4T7HOL4R7GKFLVSV2PFU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Jim,


hm, that knowledge base article must be wrong: The octoclock internally onl=
y has a 3.3V
supply. But before I say something wrong here, let me check back.


Best regards,

Marcus


On 11.06.21 14:17, Jim Palladino wrote:

> Hello,
>
> We are planning on using an octoclock with several devices, including an =
N320. The
> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1pps =
input.
>
> According to (https://kb.ettus.com/N320/N321):
> "PPS - Pulse Per Second Using a PPS signal for timestamp synchronization =
requires a
> square wave signal with the following a 5Vpp amplitude."
>
> If I look at the schematics for the N320, on page 15,
> (https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf) they show t=
hat the input
> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the schemat=
ics.=A0
>
> According to the datasheet, the absolute maximum rating on the input is 4=
.3V.
> "https://www.onsemi.com/pdf/datasheet/nc7sv157-d.pdf"
>
> So, I'm not sure how the N320 can safely accept a 5V input (from the octo=
clock or other
> device).
>
> Thanks,
> Jim
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
