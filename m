Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DA83BE083
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 03:11:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3187D384075
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 21:11:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dXX7t8t+";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A7E5383E02
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 21:10:29 -0400 (EDT)
Received: by mail-qv1-f44.google.com with SMTP id g14so283041qvo.7
        for <usrp-users@lists.ettus.com>; Tue, 06 Jul 2021 18:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=/WNMwXCYvZtDXdX4aS88Q10pupW9UYnDTV404ZZ9bWc=;
        b=dXX7t8t+TdVwWO426165EkN8KFIK0lRxxg9lnTer+3NYAkujiuslaYjDK6vMizgLUA
         kIxHv5UPoEnRA7WANDpYJztDiYuERFJZ5lQV1Ufu2u17DCSfL/TvZFkh4neBU6uy/yiA
         TIttsGIYsi26LjF1eS8uDhu1tEMeRfHuQpQlCDjqpz+t+qx5ZiY9MlkMsRBVh5HvG7Gh
         Vr/980873uXGy9H1e1oqr3A05SoXnkWN8pmzdtC1Lec7g4LD3eJgfs3o1x5hpbFnxR58
         u2nQJGvc3FpvNFgprDEmn+9YonTlnT4LKH9b0WNawqHH2xpj5pAMaOnw3QgyduZzsdPd
         WmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=/WNMwXCYvZtDXdX4aS88Q10pupW9UYnDTV404ZZ9bWc=;
        b=tJjt8C7u5JlHN2UBC8eiqPDmFlhQS3mf/UTuDWGYcXr1OLBJ9ou83vsymGSVb04Q7v
         q2ys7hEpLV1B8uUipgh+OrO4chJSICYwmzT1EaPiD6nzPs7f297PSPaLXkSEs6UMpla9
         8kzhVS3xrqOJeUbi0vCKRTKrnkhqyzueZ3S8ajXiuI8JzRznhUX1oPsJ/B5Hc1xTbE+Q
         IGEzdkFeW5uwLt0Xvk/lTvKZwN0XZ+dz9QgBt3DyZ+XaV4BcKcyEdNGpuvH18PKOhn80
         8ZIxGhGYNjnv9VWkzVDfw8a65FTivBYvAwf31+CE5Qc6Bs0yfHXJj9jELRaEd6/Q0NEQ
         cCmg==
X-Gm-Message-State: AOAM530H/LDU8e9YOcQ8Co/HSzDOWsnqmEVQRyDVIedIt0Zj0/u/+Y9X
	LpvH8cE0kCsZml2NokQDgBTcK3ujhVonDA==
X-Google-Smtp-Source: ABdhPJzZVAtU7lYknI4zMdbMwQy3o96jhC6jMnmm6zAe1I1jj0E1fT8U2dVu4QSl8HN+x0HahsFphA==
X-Received: by 2002:ad4:51c1:: with SMTP id p1mr11354225qvq.25.1625620228817;
        Tue, 06 Jul 2021 18:10:28 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x22sm4660786qto.34.2021.07.06.18.10.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 18:10:28 -0700 (PDT)
Message-ID: <60E4FEFD.7030205@gmail.com>
Date: Tue, 06 Jul 2021 21:10:21 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM> <20210702144145.hgwtczc2zruignh6@barbe> <TYYP286MB1407FECBCE067E3C500D0362F01E9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM> <20210705111547.4rrurvdl7yl5dudt@barbe> <TYYP286MB1407CB42585AE0B2BCE87C0EF01B9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM> <20210706082634.7ggx7wkbfpkrczsc@barbe>
In-Reply-To: <20210706082634.7ggx7wkbfpkrczsc@barbe>
Message-ID-Hash: LFFBUWBYMMXIOEZLXJQWHWR2KOF56ZXM
X-Message-ID-Hash: LFFBUWBYMMXIOEZLXJQWHWR2KOF56ZXM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LFFBUWBYMMXIOEZLXJQWHWR2KOF56ZXM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 07/06/2021 04:26 AM, C=E9dric Hannotier via USRP-users wrote:
> Hi Oscar,
>
> On 06/07/21 01:11, Oscar Pablo wrote:
>> assuming i have multi usrp and pc. each usrp connect to different pc.
> If each USRP is connected/controlled to a different PC then
> they are not under the same multi_usrp block.
>
> Being in the same multi_usrp block means that in the USRP source/sink,
> you specify every USRPs in the "Device Address" parameter
> (addr0=3DIP_first_usrp,addr1=3DIP_second_usrp, etc.).
> I.e one computer controls every USRPs under the same instance.
>
> If each one of them is controlled by a different PC,
> then there is no guarantee that they will be aligned
> (even with a shared PPS).
>
>> each usrp set unknown pps time to 0 then i want to get the samples at
>> time 1. so how to do?
> If they are controlled by different PCs with different execution delays,
> then they won't set their 0 time at the same PPS rising-edge.
>
> Regards
What this means is that you very much have to "step outside" of UHD to=20
come up with a multi-host synchronization strategy.  UHD
   doesn't inherently have any way to support this.

You probably need to use some message from a notional "master" to let=20
the "slaves" know that it's time to 'set_time_unknown_pps()',
   and optionally what *time* to use in that call.  This is an "exercise=20
left to the reader'.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
