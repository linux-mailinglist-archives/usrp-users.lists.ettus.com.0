Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2E8658F72
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 18:14:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51962383C33
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 12:14:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672334061; bh=kbESdCc89ZRnN5m3KOBLzBunZ/zOVGbfMG9LcZDyvR0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tTbeuF0Kn5AF10NNHA8XQAwpTEEoeML15tymEa1o1OvG8LMGwly2k1qKNc5XJ6zRa
	 XGEKTNatrLDQyXqXmpvCKJUe/7/9GALcqpRWhHK5gZ9oijsoxjz0x9+++My1bvTNRC
	 200TBd8t/sF9eL0I/QmXOSUV2c81+jPYmX44vvwzsqE0p0NnRRWCztvfphjJmQXbUv
	 OzfsJuopZUwiOQL87n8bgFMxR2or70YcPO8MhzY6VppBUfZaNkjGJsZCOWOr09MokY
	 0eE/lTdvhVPlW6xQT2ZB6Co7pYHGbawFWtVh8iyrqoYMSD0N3ES5NDJjqzR4EpDzwy
	 AxGkhj106bnMg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7972838116F
	for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 12:13:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QlhIZwZX";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id a25so9231243qkl.12
        for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 09:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=coTCOaXieGJ2nByftTOIOq0q9CdXd3WwhantbrMScRM=;
        b=QlhIZwZX9b1VNi9aIgNG9WOm/TOGpzV97SKZMWdhLQO/UKTI1yz6CYxmuEl4dpElVi
         GeVNZeMvuQB7iLLMNtDs6PIPSISpeeV7B3nqo/HP+k9wjy7lGfxO2VUHhnHwTod8u6qH
         U1gAGa+wiWvHm+cZeKbT/ey06i+X76rp8z0HYywDcb9p1W7pqmb8HPn8SxTCZcsFoCG0
         +9QhpcI3byxJ8BHeXle+Z3Mbz2eRZpNN/gcoVuoMQi+twTzo07joUXMnZWxlnQoCnwW7
         a9ghGrzGdVeTa09ZZFksz0kR6xC0wwqZrdIcUSV+LJe4z+gwlqkF8oc0fzqeWtH431um
         B5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=coTCOaXieGJ2nByftTOIOq0q9CdXd3WwhantbrMScRM=;
        b=uHfow+rUDj9+YcS5NJAQUWIOMvROBS9D6hVpUi0zYJwGUQm+iBMKPxu8CUkBYHikfp
         YRgO5un9UOnbi0GMlavbBxiUzQqMdMw5OfMsnuIbH+NaPt87NlnLhiox7otuFnrNnf3a
         Yl9Iw7M6tipG3CKx0kFNC5V2d16El5Vg2ZEXT5YQdQ0gkIHljhrGB7RdOOdlT8hidvph
         Nc5IDSqcCm+PGYByqQaAOLBZmOQ8odsT3+JBWZT5NcdWoDO9a1rgIBNoPTS8w8njuyLJ
         7ooMXnCnIOMm/9NmmZ0CLxaDdpo4sw2vsS+0YhhkxD8IzGAS6jTCjKd4oYLIqASpECbG
         4pMA==
X-Gm-Message-State: AFqh2kpxrr1rPxp5xsR5EHB50oqdvrvxF+E2xvJ61kCStI1tvsU+l6j0
	kR+4W9nyOkqFT7yAYD7X8mJ6U/CtK0aZYpL5rtgV8Xkb4Uo=
X-Google-Smtp-Source: AMrXdXvO9sOF5JESxPpimvRHZRN6tYtdQVClU2O0a39dUV4I/JG1rZ3XDvGprfDAgtFETTRD0fgWKMHQxcmnOUhIYzQ=
X-Received: by 2002:a37:aa05:0:b0:6ff:b143:371f with SMTP id
 t5-20020a37aa05000000b006ffb143371fmr1539619qke.544.1672334009674; Thu, 29
 Dec 2022 09:13:29 -0800 (PST)
MIME-Version: 1.0
From: Jonathan Barry <jonathan.d.barry@gmail.com>
Date: Thu, 29 Dec 2022 12:13:19 -0500
Message-ID: <CACOCFC3jGpTTrdCza+_keWHrEM7Y3tnMqssLaFdGh1Q-8NOBmA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: BGOHGMTMZM4GQAR6FBYCFSCUAZLGDPKN
X-Message-ID-Hash: BGOHGMTMZM4GQAR6FBYCFSCUAZLGDPKN
X-MailFrom: jonathan.d.barry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B100 vs. B200mini - IF not zero?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BGOHGMTMZM4GQAR6FBYCFSCUAZLGDPKN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Greetings! I've been using a USRP B100 (!) for ten years now, writing
C code with the UHD API. Recently I upgraded to a B200mini, but the
resulting baseband signals from these two USRPs is different, even
though I am running the exact same code and API calls in both cases.
For the B100, the target frequency to which I tune (with
uhd_usrp_set_rx_freq) always appears at 0 Hz in the complex baseband;
but for the B200mini, I determined (empirically, with MATLAB) that the
target frequency for the examples I tested is mixed not to 0 Hz, but
to 3 kHz (?) in the baseband samples. In addition, when I run uhd_fft
on the B200mini, I see this same behavior as well: when I tune to a
known P25 signal at 860.2375 MHz, in the resulting power spectrum I
see the peak appearing at 860.2405 MHz (target + 3 kHz), and I see a
notch at the target 860.2375 MHz (in the passband of my signal).

I examined the tune_result structure but it reports the target
frequency is 860.2375 MHz, and it reports the target/actual RF
frequency is 860.2375 MHz, and the target/actual DSP frequency is 0
MHz. I don't see anything that indicates a "3 kHz" offset. But if I
mix the received samples from the B200mini down by 3 kHz, then I do
get good decoding with my software. So right now, if I am using the
B100, I have no 3 kHz downmix, and if I use the B200mini, I need 3 kHz
downmix -- this is weird.

Is this a hardware defect, or is this some setting that I have missed?
Thank you!

Jon Barry
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
