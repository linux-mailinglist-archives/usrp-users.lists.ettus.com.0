Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA0E2E8F5D
	for <lists+usrp-users@lfdr.de>; Mon,  4 Jan 2021 03:13:07 +0100 (CET)
Received: from [::1] (port=33590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwFMl-0007bx-JH; Sun, 03 Jan 2021 21:13:03 -0500
Received: from mail-qt1-f182.google.com ([209.85.160.182]:39189)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kwFMi-0007XA-52
 for usrp-users@lists.ettus.com; Sun, 03 Jan 2021 21:13:00 -0500
Received: by mail-qt1-f182.google.com with SMTP id a6so17654706qtw.6
 for <usrp-users@lists.ettus.com>; Sun, 03 Jan 2021 18:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=6BS0Pgrvso7z2h9kxmk+Yy36mN7poDnFT111rwcgTg8=;
 b=SGrU9q1wGEz2BMIxr8xdYgt+IbaP5QygtNY+2mHvtgChwyWNgHRKibxINgt2xSiHlr
 UMyS4d6W2SAVI27SrNwhjv1vzytoHJV414j3M1KjeakQTypvHuDMjPZqazRfW8/nZdNP
 NWLxGysIsTqhJvsB5B0aTmImZxi3EZufJ1QMTz/ZN4/Ot+aMwp+OSHf61WGngBILmj1H
 rTJe+z2P4ooDvIXm1gwRnVdqjzMXIhH/r83CvlmGg8GXIsydrlZwT90m6sbm8DZ/KX5c
 XHN5wW67Wt6+ljP3a0/wqLU3Y49tpMmgABlwGjDN3bAlUbP67em4qkjijdqzr4nEuje9
 1ZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=6BS0Pgrvso7z2h9kxmk+Yy36mN7poDnFT111rwcgTg8=;
 b=rqjp884BKidIGOC5ituJbOkOVPbdUIYuASExVYyLgghn41MbUa/Zsb6N+J0/x0FbGD
 uOjq6/gIcmFMrtEktpD+kFKO4EucvjJ/12Z8puRvwGietYNVLVUdARDxpdC9sfCaV1q9
 APHX62PiHqrw6+kvvDjtm56yoRO6k7nTgnPVwvqAgELDh5vYGg+7mifcXb8Tr/W3xnOr
 K3t6ckDlljVRI0Juhb7HuNNvO1MZeOQhVU2Q2hXoEY/tqAkhh2nGex1ZfYn8vaatxAJZ
 aMByBPt0WmDu2zApP4YA5TjeeW7ZOiSgvRu3LPMCEf3o4kso92PuFrvFTQyRe7mi9lA6
 37VQ==
X-Gm-Message-State: AOAM530bUMx6hCI4rMOX1xqoV0q53PdcgsJndfUKh8fAf+s7QqE2VdsF
 hq1JjiYCEReH2dzFT28cFTgZpx7DMbs=
X-Google-Smtp-Source: ABdhPJyDNSE55rkcIuRsyeQOeK2M7DX7kLcee5mTDCqt1js1aXqpCaIIrtGLJIe1qAKYU6fB0+9i0w==
X-Received: by 2002:ac8:7a82:: with SMTP id x2mr58640962qtr.20.1609726339210; 
 Sun, 03 Jan 2021 18:12:19 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id e38sm30550320qtb.30.2021.01.03.18.12.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 Jan 2021 18:12:18 -0800 (PST)
Message-ID: <5FF27982.9050004@gmail.com>
Date: Sun, 03 Jan 2021 21:12:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-f3909e7e-1d49-4353-855a-5b25c802ab14-1609719454716@3c-app-gmx-bs66>
In-Reply-To: <trinity-f3909e7e-1d49-4353-855a-5b25c802ab14-1609719454716@3c-app-gmx-bs66>
Subject: Re: [USRP-users] X310/UBX as a monostatic transceiver (e.g. RFID
 reader)?
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

On 01/03/2021 07:17 PM, Lukas Haase via USRP-users wrote:
> Hi,
>
> I would like to use an X310 with UBX in a monostatic antenna configuration (same frequency range). This is for example common in RFID readers.
>
> My transmit power is 30dBm (ZHL-25W-272+ after the USRP), fed into a 6dBi antenna.
>
> Now if I use a circulator, I find isolation of around 15dB (e.g. https://www.everythingrf.com/products/rf-microwave-circulators/mesa-microwave/769-185-mmccc700a). This means my RX input sees 15dBm. Stupidly, the UBX datasheet wants a maximum input signal of -15dBm. So it's 30dB too strong!
>
> Alternatively, I could use a directional coupler. However, the directivity is typically around 20dB (e.g. https://www.everythingrf.com/products/directional-couplers/rf-lambda/45-89-rfdc8m3g10d) which brings me to +10dBm at the RX input. If I assume directivity is not an issue, the signal at RX is limited by the S11 of the antenna (typically 15dB). With 10dB of coupling: 30dBm-15dB-10dB=5dBm. Still too high and a incurs a 10dB noise figure penalty.
>
> As another option, I could add 30dB attenuator after the circulator. But this results in an unacceptable 30dB noise figure penalty.
>
> Do I understand anything wrong or is a monostatic TRX just not possible with USRP?
>
>
It's not even *slightly* "stupid".   An RX front-end that is sensitive 
enough to connect directly to an antenna and be able to receive low signal
   levels (typical of over-the-air work) CANNOT have excessive input 
power.  If it does, the coupla-molecules-layer-thick gate layer in the
   input amplifier transistor will simply cease to exist.  This is not 
peculiar to USRPs--ALL over-the-air receivers designed to be sensitive in
   the VHF bands and above have this problem.   You can put in limiter 
diodes, but such diodes are usually "limited" to a lowest power level
   of perhaps +5dBm, and will inherently add to the noise-figure of the 
RX chain.

If you're operating at frequencies below perhaps 100MHz, you can simply 
put +10dB attenuation in-line with your RX chain, improving
   the TX/RX isolation by that amount.  Ettus quotes -15dBm because 
several of the USRP devices have front-ends that don't want more than
   -15dBm at the input terminal--some of them are more robust, by about 
10dB or so.  But it's just a "prudent" level for a receiver intended
   for over-the-air work.  In normal situations, a signal of -15dBm at 
the input terminals to the reciever is "barn burner" loud, and as I 
indicated
   for receive amplifiers, as you go much about -10dBm input power, 
there's a risk of damaging the 1st-stage input amplifier.  That's just the
   nature of VHF/UHF small-signal transistors.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
