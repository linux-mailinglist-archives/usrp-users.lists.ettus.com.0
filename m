Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6F83DD533
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 14:07:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36242383C62
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 08:07:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bIsh9FtY";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A08E38404D
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 08:07:07 -0400 (EDT)
Received: by mail-qv1-f54.google.com with SMTP id cg4so3691435qvb.5
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 05:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=yy6ic7n1Cobk1nt5TVViwklLQNlYjFUSBpgAUJ8x0j4=;
        b=bIsh9FtY1TmxY/BkasiluR7Yxt8/mAYGOy4e++SzhcclybcBDyPwbqP8Wm/sclers/
         AWESId5KIHx4BjVbn4aUv1w+wBCMPxEDKelPCgzLyUgVMfJ6vMIiYcEoCrkrn1czS/AV
         mAUb4dIWeEe5ccleXYFsado7mzGsdV/BGs9vm3DqlL3CNYgO8N7gJmmvu6+qyO9tBRfS
         2qbU0Ho/ZgQxVYipOfq9bXqM2A/QqhvBfJemKpfEtOw3++Wr1ru0cGSmcynEujLfNtXO
         lGGiLY4xcEzxoPitnJbKC34seaqd54JDTJY9CCbuU5FgmGX8a/xj4oVhhHSKRy2gel2u
         VgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=yy6ic7n1Cobk1nt5TVViwklLQNlYjFUSBpgAUJ8x0j4=;
        b=Jv2p2o/i0Zgr3JWoD5fGjCwdEQikBbKnOf7aglvvJUtfiyisQILjtgeNbjtigegfsi
         jx8X0KGqXemeOyUg1ihMJ5sjJRI0Fx1BYhjFguhcOJB50iq3fM7msLL/YYm+kO98Z/+t
         yBiPdizPKuHU+9/v3DNm7J1G4bbPmvtBMcY+D/Ex9QragKusEwPIYEm/UDO+e7BuPkLP
         QD4ESjsh8gqFqm5pkl1j2XbtRvKHfAYzIvmopIPUZ2J0LYytesFLLRddGUn41H1/cYV6
         nSc9kadO+6WGqEr4rmHvgRTwLCwPASd2drutIwNvV4xxeSQrDPEfPkCnfdRP9Ew0/Cwu
         +Ibg==
X-Gm-Message-State: AOAM530KGR82isHLYstleN9J497cG74+oG3eiwiolTUTaYPp5Jmu9V+Y
	yFZVRMTl5SlAFN2taOnvFKQe6u7Wqm4=
X-Google-Smtp-Source: ABdhPJxK+0QDqBPLtdrbOXH+mZMtIkgt9AT+Ba0CKhRx6LSwFREgiIBXGHoe0cPL1NtRL6UQgNAY2w==
X-Received: by 2002:a05:6214:2a45:: with SMTP id jf5mr9843264qvb.25.1627906026900;
        Mon, 02 Aug 2021 05:07:06 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c2sm5797421qkd.57.2021.08.02.05.07.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 05:07:06 -0700 (PDT)
Message-ID: <6107DFE9.9060800@gmail.com>
Date: Mon, 02 Aug 2021 08:07:05 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo@lists.ettus.com>
In-Reply-To: <SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo@lists.ettus.com>
Message-ID-Hash: CLCYKFKOOIVP55WJWFS7LRYN6EQ4PHJG
X-Message-ID-Hash: CLCYKFKOOIVP55WJWFS7LRYN6EQ4PHJG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 with ODR tools
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLCYKFKOOIVP55WJWFS7LRYN6EQ4PHJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/02/2021 06:48 AM, fabien.cuny7@orange.fr wrote:
>
> Hello everyone,
> I have been using a USRP B210 for 6 months now transmitting a home 
> DAB+ mux (with Open Digital Radio tools), and since this yesterday, 
> I'm stuck with this error and unable to broadcast again :
>
> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106700; UHD_3.13.1.0-3
> [INFO] [B200] Loading firmware image: 
> /usr/share/uhd/images/usrp_b200_fw.hex...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Loading FPGA image: 
> /usr/share/uhd/images/usrp_b210_fpga.bin...
> [INFO] [B200] Operating over USB 2.
> [INFO] [B200] Detecting internal GPSDO....
> [INFO] [GPS] No GPSDO found
> [INFO] [B200] Initialize CODEC control...
> Error: RuntimeError: [ad9361_device_t] TX charge pump cal failure
>
> I've tried with USB3 and USB2, second TX output, same problem.
> As anyone had encountered this before ? It seems like a DC-to-DC failure ?
> I post the question here as it seems more USRP related problem than 
> ODR. Even if I run the uhd_usrp_probe command, the same error is 
> displayed.
> Any explanation/help is welcome :)
>
> Fabien Cuny
>
>
Another thing to check is the main power supply--are you running on USB 
power or external power?  If external, is the power-supply operating
   correctly?  (They put out about 6VDC).

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
