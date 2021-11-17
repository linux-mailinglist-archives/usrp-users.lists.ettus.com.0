Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47868453ED6
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 04:11:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2EAB2383D08
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 22:11:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MSEihEtA";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 7C2BB383A39
	for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 22:10:46 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id g28so1078666qkk.9
        for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 19:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=UWc/pXZT7J4ooTAxVzxfYtSJxQ3t8QJfdb5N8Ct0tvM=;
        b=MSEihEtA8hhm+ZLC2QbhmHiKuUtiVI8MJTnvjGlrQNxaYLSw6Q5zn3EgRT7uuLLN7w
         RBL4NznFv2j0bboFfDRGWMZQCQj7wfIoZynKfmUv+rAt1M1jKBg+sFSgfRda8Ynx9CWO
         79cvV5CjyCnjjHjFG9+kOd2l2uyRzucLDhvCFZeFwt6HzTHz+dMAHXwAtr0OCUkdo5aF
         BxKsKUJJhkVNieUE8W3b3s8OYel0ACAqK61vgXLseFI/fhvsUELIoAdJWTAQxGvH7c7M
         VZlEpPONELf1dley6C+hlVH8kmrSHvDUSng3hvvb7+K16U7lRP4/woXQbvWz/AtHq+i/
         eWzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UWc/pXZT7J4ooTAxVzxfYtSJxQ3t8QJfdb5N8Ct0tvM=;
        b=0T3VbXhoy6PYbggShE+92F9nUSa1kZu/t0+SrupYu0/1hgmXBruQBRPck+g4nKqz/7
         DHpEkL+CdSQjOFfQjYamuzlRY+N0Zqnf8kpmCCSF7GFH+NgJR2QFcGD6D88kU2mupYnm
         sHMV2IqHMpMYvRdQQ+IkOT712WfUY2oDXBxz+8MGOCJRoVNWtLldoHRV/bltJ9/7pHyt
         uAwMuClnF4KeXXsP6gech7OQhyfo3ZhXLVTi67L8O4BKFrXgRZvReRA+9lyw4/0fthci
         Yt5bTLu2le5FwXGbUJDqzapVi8DsTgfteitqO7LejK348MYcMrhajV66LdMblmeXHZEa
         kB6g==
X-Gm-Message-State: AOAM5310xKiTmbFZjAaxzYo7gasLtNHM8ZoUvutOrcGVTO+ZHk2ujo5/
	7rz1CCrS8+65v/wO8JKrg+SnOFF2BiM=
X-Google-Smtp-Source: ABdhPJxyQh9yUFPa6kK7nDPLe9DpAF8LDuciBWF8pKTNOz0YjfzQgYTwegxK5228ZNKOMMNJpnGlGg==
X-Received: by 2002:a05:620a:710:: with SMTP id 16mr10307088qkc.379.1637118645612;
        Tue, 16 Nov 2021 19:10:45 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id n19sm3764115qta.78.2021.11.16.19.09.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Nov 2021 19:10:02 -0800 (PST)
Message-ID: <17bb316f-06e4-3e2f-1dff-056bb542b8a4@gmail.com>
Date: Tue, 16 Nov 2021 22:09:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <e19102d3-9da5-bdcc-2f97-671ad786f166@muc.ccc.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <e19102d3-9da5-bdcc-2f97-671ad786f166@muc.ccc.de>
Message-ID-Hash: 47SG3DRQFBOTBEBRKGOVS4ZRWKDDIVVG
X-Message-ID-Hash: 47SG3DRQFBOTBEBRKGOVS4ZRWKDDIVVG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gps_locked sensor indicating internal GPSDO lock too early
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47SG3DRQFBOTBEBRKGOVS4ZRWKDDIVVG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-11-16 19:12, schneider wrote:
> Hi,
>
> I've experienced and issue while working with the internal GPSDO (TCXO
> option) of an USRP B210: a call to `get_mboard_sensor("gps_locked", 0)`
> can return `true` even if the (Jackson Labs) GPSDO is not properly
> locked yet.
>
> The reason seems to be that the "gps_locked" sensor is looking at a
> field in the GPGGA sentence which can change from "0" to "1" before the
> GPSDO is properly locked.
>
> I've collected some debug traces, consisting of SERVO, GPGGA and GPRMC
> sentences (as defined in `lib/usrp/gps_ctrl.cpp`). They are attached at
> the end of this mail.
>
> Index 6 of the GPGGA sentence is used by the "gps_locked" sensor.
>
> Index 7 of the SERVO sentence actually indicates lock status of a
> Jackson Labs GPSDO (as defined on page 40 of the user manual:
> http://www.jackson-labs.com/assets/uploads/main/LC_XO_Manual.pdf). A
> value of "6" indicates a proper lock.
>
> It can be seen that index 6 of the GPGGA does not actually reflect the
> GPSDO lock state in a meaningful way. The USRP was already running for
> some time and the GPS module already knew where it was located. It
> however did not have an accurate time yet (as indicated by the
> 2006-01-01 date in the SERVO and GPRMC sentences). In an application
> waiting for a lock this bogus time would then be used to set the next PPS.
>
> Afterwards the SERVO sentence starts to change and after some time
> arrives at a proper date with a proper lock.
>
>
> I'm wondering how a good solution to his could look like. The SERVO
> sentence is obviously specific to the Jackson Labs module. Other
> (internal) GPSDOs might behave differently (they do exist...). Otherwise
> I would have recommended to change the "gps_locked" sensor to use the
> SERVO sentence instead of the GPGGA sentence.
>
> Best
> schneider
>
>
> Logs:
>
> 1637105473: Mi 17. Nov 00:31:13 CET 2021
> SERVO: 06-01-01 0 45293 0.00 1.00E-08 10 5 1 0x38
> GPGGA:
> $GPGGA,002547.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,04,11.8,306.2,M,46.2,M,,*58
>              get_mboard_sensor("gps_locked", 0)---^
> GPRMC: $GPRMC,002548.00,A,4808.8745,N,01134.7031,E,11.1,79.2,010106,,*3B
>
> [....]
>
> 1637105608: Mi 17. Nov 00:33:28 CET 2021
> SERVO: 06-01-01 0 45293 0.00 1.00E-08 10 7 1 0x38
> GPGGA:
> $GPGGA,002801.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,548.2,M,46.3,M,,*65
>
> 1637105609: Mi 17. Nov 00:33:29 CET 2021
> SERVO: 06-01-01 1416 45293 0.00 1.00E-08 10 7 2 0x20
> GPGGA:
> $GPGGA,002802.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,548.1,M,46.3,M,,*68
>
> 1637105610: Mi 17. Nov 00:33:30 CET 2021
> SERVO: 21-11-16 1417 45293 0.00 2.00E-09 10 7 2 0x0
> GPGGA:
> $GPGGA,233330.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,547.8,M,46.3,M,,*6B
>
> [.....]
>
> 1637105640: Mi 17. Nov 00:34:00 CET 2021
> SERVO: 21-11-16 1447 44718 -4.26 -1.42E-10 10 7 2 0x0
> GPGGA:
> $GPGGA,233400.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,557.6,M,46.3,M,,*65
>
> 1637105641: Mi 17. Nov 00:34:01 CET 2021
> SERVO: 21-11-16 1448 44667 -4.62 -1.49E-10 10 7 6 0x0
>          Jackson Labs GPSDO actually locked -----^
> GPGGA:
> $GPGGA,233401.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,558.2,M,46.3,M,,*68
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Interesting, because the LC_XO module ALSO has a "lock_ok" pin, which is 
what I *thought* the drivers were looking at.

It could be the case that particular pin is ALSO not a reliable 
indication of TIME lock, and they moved to using GPGGA instead.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
