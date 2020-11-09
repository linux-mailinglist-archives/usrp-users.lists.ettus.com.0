Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 192AE2AC8F5
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 23:58:37 +0100 (CET)
Received: from [::1] (port=58792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcG7O-0008PW-57; Mon, 09 Nov 2020 17:58:34 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44727)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kcG7K-0008Io-0T
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 17:58:30 -0500
Received: by mail-qk1-f177.google.com with SMTP id d28so4599939qka.11
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 14:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=mTSFvxwAzGbhcMzNaoufn9JHc4xN8S5IcZvZyfuRYt4=;
 b=K8DRYiLAIH4pJY71Of6RfED4Kf6iiJxmNjhMd/Fhv65+6DfKmmEUiEOetsAKkK5DUY
 fQEesoHpNJYK+nLAPaP4qH5Dkry18xTjpLimPP/rKG7earhTzrn60ggHsvXZePEpD+00
 e/tCwfRbJChcFFv2VoMnrl2xXi+WBWLZACXfrQ6vO8MS4QwVcrSfRGk+EgkVCB99CD9B
 UDILw5elZuN3JOfgjo2wCpFXEhzVmxevShtyj9cQFCbht35FB/PuqTgqNVnj95HfQAAM
 ro3NCwvdMhgTyzPhbQNmphDy52SfZmcWctSRGzzN6aC2i1epO94h1Nkg3G82c8w+j5ZO
 4AaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=mTSFvxwAzGbhcMzNaoufn9JHc4xN8S5IcZvZyfuRYt4=;
 b=AMK/IKYbg5Yw/vXGfGOLaPuK2mpu3Fg23ddFOGSN6OFedTw/QZJGKc6KfUhtSy0OLv
 Bec4hibz3FNbYBRyUqQWYK3u+1k7Exput4hRQGcFuv7bWjUWg0h4EzoXmHWpWmYVOJDN
 TtSGBCFFLOsgey2riRfyFa+EDycYxkF1VU408g6XXsn8NT9FNzzJMMUnQSBRbgvD+fsw
 +3UJRYtZQMYqcPLJbGbfBu2wtIdYoY1+4Xyps8yRVGK2ingpDDqoIHhu3cMryS37hI/H
 /bX7skpnvYNJtZkoZa7AqpWmks8yjbXVHfqo1rrbnCOMS94mlsWsAnE1YVuE2wHLXyY/
 dyUA==
X-Gm-Message-State: AOAM530OWGy/HgQogYz4s5wufHCPAA81NS7+fuWu1SoUyADk0EJ0U28H
 BKOUkf37LWhKJnDlHyXHCRt4aCu7AyQ=
X-Google-Smtp-Source: ABdhPJwBvTFabiSE0nhCCmIkyg/+PzXPikiwUXNZRYMIM0IWpOFH480lXOF/+TSAo8LKYwtNRgpR6g==
X-Received: by 2002:a37:887:: with SMTP id 129mr7273312qki.499.1604962669186; 
 Mon, 09 Nov 2020 14:57:49 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id y17sm7033026qki.134.2020.11.09.14.57.48
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Nov 2020 14:57:48 -0800 (PST)
Message-ID: <5FA9C96C.5060601@gmail.com>
Date: Mon, 09 Nov 2020 17:57:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.51.1604682002.4255.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-a6d773e5-0fa6-4a78-b74c-9466abc11433-1604960999939@3c-app-gmx-bs24>
In-Reply-To: <trinity-a6d773e5-0fa6-4a78-b74c-9466abc11433-1604960999939@3c-app-gmx-bs24>
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

On 11/09/2020 05:29 PM, Lukas Haase via USRP-users wrote:
> Yes, I am aware of that but my question related specifically to 
> https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf 
> because I want to sanity-check my measurements (and I want to know how 
> much off I am compared to the figures). Hence my question is how the 
> "Gain" in the "RX Figure" in this document is defined. It's not 
> written anywhere. 
I think a more general version of what you're asking is "what was the 
exact test setup, and what software was used to
   derive these values?".  THAT I cannot answer, and it's likely that 
whoever did that performance data is no longer
   an Ettus employee.  But the "gain" listed is just the gain *setting*, 
which does not directly give you the total gain
   between the antenna and ADC input.
> Thank you, that I did not know.
>
> For me the result is:
>
> TX Frontend 0, RX Frontend 0: Gain range PGA0: 0.0 to 31.5 step 0.5 dB
> RX Codec A, RX Codec B: Gain range digital: 0.0 to 6.0 step 0.5 dB
> TX Codec A, TX Codec B: None
>
> Is the "RX Codec" the "VGA on some motherboards ahead of the ADCs" you were referring to above?
The word 'codec' is often used in the Ettus world to refer to ADCs and 
DACs.  The associated gain element is the
   ADC digital gain setting.
>
>
> A related question (of course, I studied the the schematic https://files.ettus.com/schematics/ubx/UBX-160_revE.pdf as well): For both TX and RX path the only programmable element are attenuators (HMC624LP4E, 6-bit).
>
> That would fit nicely the "PGA0" from above: 0 to 31.5dB in 0.5dB steps are 64 steps (6 bit).
>
> The other gain elements (TX: NBB-400, PHA-1+, RX: MGA-62563, NBB-400 are static).
>
> Why would you painstakingly gain up a signal, just to attenuate it again? Why a programmable attenuator instead of a real programmable amplifier?
In the RF world, 99% of "programmable gain amplifiers" are actually just 
RF amplifiers with attenuators on one side of
   the signal or the other.

You *CAN* change the gain of an RF amplifier a bit by playing with bias 
settings, but when you do that *other* important
   properties of an RF amplifier will change, usually negatively.

So, in an RF-gain "line-up" that strives to offer decent noise figure at 
the same time as having variable gain, it is typically
   the case that an attenuator is sandwiched between a pair of low-noise 
amplifiers.  The equivalent noise figure of the
   attenuator is notionally "washed out" by the presence of the LNA in 
front of it.  This is not a particularly weird or
   radical arrangement and is generally considered sound RF 
engineering.  So, it's all about preserving noise figure while
   still allowing variable gain at least at modest attenuation 
settings.  At higher settings it's likely that you're attenuating because
   the input signal is "loud" enough that noise figure is less important.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
