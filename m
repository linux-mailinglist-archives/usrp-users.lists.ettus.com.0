Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3986B2E9D7E
	for <lists+usrp-users@lfdr.de>; Mon,  4 Jan 2021 19:54:51 +0100 (CET)
Received: from [::1] (port=40448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwV0B-0001AQ-Rt; Mon, 04 Jan 2021 13:54:47 -0500
Received: from mail-qk1-f170.google.com ([209.85.222.170]:38766)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kwV08-00013U-O4
 for usrp-users@lists.ettus.com; Mon, 04 Jan 2021 13:54:44 -0500
Received: by mail-qk1-f170.google.com with SMTP id w79so24354847qkb.5
 for <usrp-users@lists.ettus.com>; Mon, 04 Jan 2021 10:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=5VHsDICjL9xD6gXFmIqQ69mImE5QHZpg+HYpQHkFQms=;
 b=dr7bVkMfcJDhyq64uQLxAS3SpyiUk28LZRDL4XWK4W1VD/GqzeOdpy3ddbELTXtT9i
 w8AhN71SHrN4u26DxutqAOW2b2/TE0TNTC1MNpVEmBLi4j/FaOSYFh5RdL2+UqDBePnX
 1KJn5SBbOAdRa29O8QJvTlsiCXIcS3R8qJJ4LPc4q/f4dM5tUvKm4ey7oKMzz7W+QfVS
 5MHuFY+LVlP7y5AWO1RUp0dAuoA4rv17vvfX2KxRYrixfBlliI9GQy69KS5Udrv7+Dcp
 Lh4ZJX3GUNT4zg3u6tBqKBbnY3/tIxrP+kNnGoJXHoHF7pYMADn7i584wSf6kBHjYCB2
 pvsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=5VHsDICjL9xD6gXFmIqQ69mImE5QHZpg+HYpQHkFQms=;
 b=JvO/O8bPbeu+RMGFT1eXF23QwHom6u/aPsFwgVFgMRCUiUkBLRY6Gopbx+7qzpLEHw
 UlhUDOT8sqmSd9Pj8+PRggNakkFoNdUfCWe54De/t64SRTrgwrW1itQrJ9hCvhnLvGEl
 72rQbImmNSY+f1UNBHohVE1CISfhmzFnyc0zNkopAJoQPw8RxCkT35+lPc8934njJGOl
 8w5gsXmRExwU9PITQ4e/AbtvfEXWqJ5FlGKo1lwR4VN2ww7VGPJGVVbj+WCxgFf+7BOo
 cpPcixPe4t8q5I+xXc+IJ16g9QamUTSDD73WhVgQsP1ZHAEcxmloSxT1EXlAsfj0WqNl
 2gow==
X-Gm-Message-State: AOAM531fBrv+ApHmhkY4Bwy2gLFgvbjfS5TYPjDJHgNDR4bMDxE3MruG
 ERDfyHCMBpLMqDo/Ah3cUAm5BUdpAEE=
X-Google-Smtp-Source: ABdhPJwTnjDFwEpTSBFxNfTrhQckuUBZnBCFrSPghXXiOHJggvRDl68ePXoiReBzUZFpvcCRQgBPGg==
X-Received: by 2002:ae9:f70a:: with SMTP id s10mr70071120qkg.416.1609786443818; 
 Mon, 04 Jan 2021 10:54:03 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id c42sm10057615qta.17.2021.01.04.10.54.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Jan 2021 10:54:03 -0800 (PST)
Message-ID: <5FF3644A.2050109@gmail.com>
Date: Mon, 04 Jan 2021 13:54:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>, usrp-users@lists.ettus.com
References: <mailman.37.1609779606.30850.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-1751857b-dc18-4d8d-a18c-0ab947e52651-1609781110826@3c-app-gmx-bap76>
In-Reply-To: <trinity-1751857b-dc18-4d8d-a18c-0ab947e52651-1609781110826@3c-app-gmx-bap76>
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

On 01/04/2021 12:25 PM, Lukas Haase wrote:

In an RFID system, the RX is *designed* to be up-close-and-snugly with 
the other ends TX.  There's NO reason to have an input
   stage that is sensitive in the usual RF sense.  So, completely 
different engineering goals than in a typical RF system.
>
> I have thought of a limiter already. This could be an option.
> It's true, I haven't found limiters with lower power levels.
>
> Two questions here:
>
> - How/why would they add to the noise figure?
Any limiter diode has shunt capacitance.  Which means that the degree to 
which input power is shunted to ground is proportional
   to the input frequency and shunt capacitance.   ANY attenuation 
(whether resistive dissipation or shunt-to-ground pathways) in
   front of the first gain stage adds *DIRECTLY* to the noise figure of 
that stage.   So, let's say you have a nice small-signal LNA with
   a notional noise figure of 0.5dB, and you put 10dB of loss in front 
of it--the noise figure now becomes 10.5dB.  For RFID type applications
   this doesn't matter that much--see my "up close and snugly" 
comments.    But for "ordinary" RF receive chains, you generally want
   to minimize noise figure while maximizing gain and linearity.

There are exceptions--for example at HF (below 30MHz or so), the input 
noise is *utterly dominated* by galactic background noise and
   atmospherics--there's no point in having an input stage with a noise 
figure below perhaps 5-10dB.  So for HF, input stages tend to
   be optimized for linearity at higher input levels--because even 
distant signals can be quite strong at HF--particularly on the lower end.

> - The large self-interfere would result in clipping (hard nonlinearities). Is this any problem for the LNA (gain desensitivisation etc.)
Well.  Yeah.  That's what the P1dB parameter is all about--the input 
level at which gain is compressed by 1dB.

The overall take-away here is that generic radios (whether they be SDRs 
or others) should be thought of as *components* in an
   overall *engineered RF system*.   That may mean things like relays to 
shunt the RX pathway during TX, circulators, attenuators,
   diplexors, filters, RF-plumbing-in-general.
>
> Thanks,
> Lukas
>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
