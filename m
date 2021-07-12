Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 511D53C6197
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 19:11:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BE733846DA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:11:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UfQsr/h+";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 81CD438410B
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:10:36 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id r17so3496108qtp.5
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 10:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=J1lMZ7TGXgWYFfxCiInyHuDBdcwJqQvzvubadljZTVg=;
        b=UfQsr/h+0dIIzX6R/l/sT52BelaruymCU/678warX0CfIXHgRTt20oGkqLdKaQvy0F
         W0eaFHFkuAhooo8UUm5t0ziXpx5oaP76wM4AH4ibMqDwPRZQYHaxaYVX66yBi6p5yWrP
         unmCj/R7XfbbHaWdtCWi7WOHZ+hLKaQ/ReOy/pf+oeKU7VpjKO/NP6AEOx2TmedjinkG
         aT/oIMxPrXt/iGJ65PrO9tiuZge3lQFxS+mimUbRFMZISgSvAtqJjYm9IOztmfKtJ95J
         zVjKK/SW9piUg0uI0xu0HbzQU3UrW9Mkcifj3lXD1JFwJ3c7DSNU2rf5QgejvL6xuiEw
         tqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=J1lMZ7TGXgWYFfxCiInyHuDBdcwJqQvzvubadljZTVg=;
        b=JCIacPO69urcuqrgHU4SjOTvEXBkuz8b0aFsH4LleAwlAs4Nhu+s0+8NksIe2GUb1g
         5NAw0+CUiL1owCl8g0kynSODtVmXUsqhCd9JlESD8u1wrY+Ggrh1GzqDxbnAIv8sCc5z
         xUayiVMbBLkfns8F/8iEMF2ki9c2AOHOudGSRsc1vU9BTE8nwx29jttUXc6fe6UHa40x
         3CPPEWUo8FARbHlRkFkJqEFPdvo5H2PYFPlZX9u/nWB5RqGgEdO1o6sK16bxMujFEzAH
         gimctq8NpdHKsuTTA32YG7kvA+EXDhj3rAqxazLY20M3Dq879c0JMPWthFRyXPZLI2+f
         YGfQ==
X-Gm-Message-State: AOAM532hN0iahh3T/jS9N1cYS6RgCkh+fJ1AvLGk55znaPLnF1Z9Cs0C
	IhS+N/rFwPhzmXlKHzqDc+f9H9564TIxbQ==
X-Google-Smtp-Source: ABdhPJy4bGb5z9gfetagZ6CvMWxcFuplTYlvBhyhNHX439SQINTxBIi+jLZq4OxIUx8krVNTRq7ZcA==
X-Received: by 2002:ac8:7ee2:: with SMTP id r2mr18685860qtc.18.1626109835623;
        Mon, 12 Jul 2021 10:10:35 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f184sm3003489qkj.40.2021.07.12.10.10.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 10:10:35 -0700 (PDT)
Message-ID: <60EC778A.7050201@gmail.com>
Date: Mon, 12 Jul 2021 13:10:34 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <gKHN30YZKExbabEwNniBHHVITTM428uKVVSUcEE1f4@lists.ettus.com>
In-Reply-To: <gKHN30YZKExbabEwNniBHHVITTM428uKVVSUcEE1f4@lists.ettus.com>
Message-ID-Hash: 56DU7MSJNP3YVZUBSVJPEUTCENLRUAVT
X-Message-ID-Hash: 56DU7MSJNP3YVZUBSVJPEUTCENLRUAVT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration subject to temperature variations (X300+TwinRX)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/56DU7MSJNP3YVZUBSVJPEUTCENLRUAVT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 07/12/2021 11:44 AM, arjan.feta@unifi.it wrote:
>
> Hi all,
>
> I am measuring the power of two signals (sinusoids) through an RMS=20
> calculation, using an TwinRX on a x300 motherboard. In the calibration=20
> process (lab conditions, no noise, no interference) I=92m trying to=20
> obtain a differential power (p1-p2) of 0dB or at least constant at=20
> =B10.5dB . One of the channels, RX2, is highly stable with respect to=20
> the environment temperature variations, while the other one, RX1, is=20
> much less so.
>
> I am aware that this might be a very particular use case, but was=20
> wandering if anyone had had this kind of experience or at least knows=20
> if there is any documentation/datasheet concerning temperature=20
> sensibility of these two components?
>
> Best regards,
>
> Arjan
>
>
RF components have a temperature dependence.  Amplifiers typically these=20
days have a gain-vs-temperature coefficient of roughly 0.05dB/C.  Cabling
   also has a temperature-vs-loss coefficient which varies with cable=20
length, cable type, and operating frequency.

Something else that sneaks in is loose connectors--SMAs in particular=20
are notorious for developing temperature-related "funnies" while not being
   obviously damaged.  They need to be torqued properly.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
