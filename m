Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A040E3498E2
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 19:06:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9840384052
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 14:06:16 -0400 (EDT)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C49D038407D
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 14:05:10 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id by2so1614167qvb.11
        for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 11:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=ZVAynNMT5JeL8zCv7Woscjl14nyK12RwPEUE+9Gkkpc=;
        b=KWvDcP+QWutqIpZmQNM3WKwAOSGQafHlAhuoLwwqrjzor8g4oOpR6gM/8EAxWBN4Oo
         Klyjf4ZmhQIkHvtD1VbwMpVKLKCh5r7ZdwlKP7ZP90NRkGlmMasOdxSgsBn78lRWUZNj
         xeDSKTvUWpf+wOWUBJA1AyH4DOIouIkoNq/X3dwRfnE57NB0rRxBFPXE9If27X3vaRq+
         Na1lrclPOmUmozVBIafF+v0X8aXvx4AfgaBUHjxffLKbUHwHuqsrXM0WwkG8/cHaYY0b
         m9+yJxo9R04waUIAlsysYTBTT+UJ9zAcg1cVyV/txiJ+xTjKRf3L1PLR3ftDBWF1zq9+
         Crgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=ZVAynNMT5JeL8zCv7Woscjl14nyK12RwPEUE+9Gkkpc=;
        b=LS7WamPmScox4b+b22uzPFwHQf5yFa6WFVM8AzVS/vGsKLSKUek/MHKfiHmtd5I7j6
         vn4CW+fGudtC7S7d8y/uc+d44KiTVblkFbCHgqYcD4qL8yCpWqpBzJS3S51Kwd5IelTG
         X/Mkpzw05taXydg4hINgcQcfb6sohyKzG5KQvwzeGydt/A6f/sFAFCPecpj7nRE0+Ccn
         vJVD86zbynAuV5fB9YHzbWN1cVfF3vA5Nv5doiX3Vadk2Ggna10nYx6XZsakD2QjPhQ0
         zHDMYkuX27KrD6aczf77W8m/6xc05g2pBlIoXCu01jsF0vCEiLZWc3E+Yy1N1fyxpFcC
         Prfg==
X-Gm-Message-State: AOAM532B3BqoDTenumjXVmcATNy/Fx/uQ0KYPKy09wtgIpfieJQj2CpT
	XWGhf2hQ9YokO0dLwFb5fmxkqjA7+ns=
X-Google-Smtp-Source: ABdhPJxDTOet64h7niWYxYvTVVWsDWqzX+zGuAvbSRBCIj+bAI9+qX0jl9NY79dnKAVIzU+3/6iS5Q==
X-Received: by 2002:a05:6214:aa6:: with SMTP id ew6mr9542516qvb.2.1616695510149;
        Thu, 25 Mar 2021 11:05:10 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y13sm3927605qto.39.2021.03.25.11.05.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 11:05:09 -0700 (PDT)
Message-ID: <605CD0D5.1020802@gmail.com>
Date: Thu, 25 Mar 2021 14:05:09 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAKx8PBis-7ixP6A4Sqp=E2nN3N7ac0PQ5zUnWZ_O8-1aNg9dow@mail.gmail.com>
In-Reply-To: <CAKx8PBis-7ixP6A4Sqp=E2nN3N7ac0PQ5zUnWZ_O8-1aNg9dow@mail.gmail.com>
Message-ID-Hash: 6SEFXZXYC2MW2H6A6XM7PH7VXGOX55Y7
X-Message-ID-Hash: 6SEFXZXYC2MW2H6A6XM7PH7VXGOX55Y7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Shared UHD Access
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6SEFXZXYC2MW2H6A6XM7PH7VXGOX55Y7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 03/25/2021 01:23 PM, Ben Magistro wrote:
> This might be more of a GNURadio question, but is it possible to share 
> a single USRP device (E310 in this case) with two flowgraphs?  What I 
> mean is the E310 has a "A" and "B" channel, could you use channel "A" 
> with one flowgraph and "B" with another or does everything have to be 
> implemented in a single flowgraph with the UHD sink/source configured 
> to have two channels?  I'm guessing the latter due to how UHD 
> interacts with the hardware.
>
> Thanks!
>
Not directly--only a single process can "own" the interface.  But you 
can construct yourself a muxing layer.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
