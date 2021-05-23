Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B474D38DCC4
	for <lists+usrp-users@lfdr.de>; Sun, 23 May 2021 21:54:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77A15383CF9
	for <lists+usrp-users@lfdr.de>; Sun, 23 May 2021 15:54:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="yGMRELp5";
	dkim-atps=neutral
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 273C4383C7E
	for <USRP-users@lists.ettus.com>; Sun, 23 May 2021 15:53:37 -0400 (EDT)
Received: by mail-wm1-f41.google.com with SMTP id b7so13208394wmh.5
        for <USRP-users@lists.ettus.com>; Sun, 23 May 2021 12:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=7pqiyRQr3kzuH0BQxeQZmzV9wIBZ+msjtYbn4xAB4sE=;
        b=yGMRELp53leXZkYRQbSRdP7q+qg0tD4APhSiLD5xuNGnk11OZ92jFY9c0eeC9sRq/M
         TkuUXoFJXituH8CE850AlJqtry8XzFXrOjW/e/rPGQ2+nqWlNU0A4192f6ArB0RxPL4G
         MRHI0n+9JNSPO44cgxrQxfMent48In2r37i4BrPB1LII44tNwvScX5IXYifX9jZjInZo
         E6PqYHZzg9kTaIiAS6Rxg3Ge+D5OQPAcJpJy7uCn7JCM0Qf9uHgVrBK8OMi0WeMhHXkr
         u3ms+v/fd96EdDNTBaoAwloGOeDaBuoonQ2eLf2+EahxEmhBkVSTC7Fj6OZl7o4E67cl
         B36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=7pqiyRQr3kzuH0BQxeQZmzV9wIBZ+msjtYbn4xAB4sE=;
        b=qDHwC/nJcgkRVJItiF/5+AdAPQFWvEOHZLH10AWHR6n9A9AQ71ACGr1I8XUl21OTUK
         cxTm9o/EIh/7qpzMCYb2wmra1G+mnFSVYbDT9morGE+z0g/5smoOZQ0WfbGEfcZUCXe3
         V3niubTOLUD6d5phdrPCi2WnFk9uJdRKvfJlcrHmKAG/hntshqvcXV9Lyr/EcN2mBUNw
         9XWhXdYb1t4u8PoX50ezowNV5qSEBkZKF4HQMQFR+/kKqFyn4W8gmjbtET56eO+3B6AV
         CF8TosKMQGBAKDTmBQ6R97dkv1yNz9TNZkjpoGlSfPZM30GNwl3QR3etZH/qzhxNmEg5
         yYdw==
X-Gm-Message-State: AOAM532F2kW1vXaGoCS+ovhUZ8kBjBwHuQxqkyZpd7VuB1AD54qu0BjM
	zI9eyexk1BCnPMCX0ae9MekObp9bqsLfpSwW
X-Google-Smtp-Source: ABdhPJyaueoEE23p7yp/SlDpX4HYd1LalnNleB3oOU1XDa+eSD+FyBdj8oXV2uupwhxgCzj5/2WYrQ==
X-Received: by 2002:a05:600c:2298:: with SMTP id 24mr16913376wmf.10.1621799615991;
        Sun, 23 May 2021 12:53:35 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id h67sm6701070wrh.44.2021.05.23.12.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 May 2021 12:53:35 -0700 (PDT)
To: Oscar Pablo <oscar_pabloo@outlook.com>,
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <TYYP286MB1407EBA5E5C751049DE906B5F0279@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <3e0a6f7f-ea86-91d4-8553-3ac641aa7774@ettus.com>
Date: Sun, 23 May 2021 21:53:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <TYYP286MB1407EBA5E5C751049DE906B5F0279@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
Content-Language: en-US
Message-ID-Hash: Z3COSHUQFV55U7AJ3OX7SHLEQYBR4OVR
X-Message-ID-Hash: Z3COSHUQFV55U7AJ3OX7SHLEQYBR4OVR
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to get time of last pps during streaming
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z3COSHUQFV55U7AJ3OX7SHLEQYBR4OVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Oscar,


the metadata contains a timestamp. That's literally a timestamp =96 If you =
know the time at
*any* PPS, for example because you set it, then you can directly infer the =
time at the
last PPS from the timestamp.

However, usually people care about the time of a sample, not the time at th=
e last PPS.


Best regards,

Marcus

On 23.05.21 04:36, Oscar Pablo wrote:
> Hi,
> i want to know the time of each pps during rx streaming. i don't know if =
i call
> get_time_last_pps will cause the overload? is there a way to let uhd put =
time of last
> pps in the meta data of the received data?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
