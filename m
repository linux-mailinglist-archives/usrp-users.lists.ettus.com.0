Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1613A21AB
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 02:59:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81F443847E7
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 20:59:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fumbf5E1";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A067384655
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 20:58:53 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id v6so10743943qta.9
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 17:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=t80LheD0MvaoiLQJqLfwVJ9ly8vLnSdPmwILou2M+Fg=;
        b=Fumbf5E1+THYtP7N7IqkbC6ZJmWmCKP1u9JQC27PW+Fyzv8E5qSVUS+vim38LPYY8o
         YZc43NDZ3fEYkXt7AXZ5nwMQQn3NdO70lASu9FR13UaXYxfRC+n4rceZziu1BxaQNXvH
         +tMgMIFXqIhbUkThnPbShHL8D3S49NxtsVvJuov9FhIYJyAgva7AGGCeHznXn0KLgQOy
         fpmiAmeMnNvtpfEoEHAv7dft9IuNP6UTdLgMKXPn25Na1brdknolx0Xgxqu87xGwzeSY
         32CnBFjUiQ+ejtcW8TdsBcYALqBTNJMBGl1OciVekHqZIC3zcEvrLdFg4Lpm+LSl1IVE
         yBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=t80LheD0MvaoiLQJqLfwVJ9ly8vLnSdPmwILou2M+Fg=;
        b=qjt0L1pebPwexL0PmvfIW4vr5kVuTtWBqm/iCVON2fCnJ5mM4z8yCneI8i1RmkY9/s
         T5ovH74KiQPI/ClfVPADuL0h/fYywBydVaVitwYadQ0ON880iKCdBF19xfduAcSFvGzW
         mPIwWiwGCjBA6tm4OIeYACyd874xP0TicLHTj2EhIBdbOlH3/YVeg/0VdHtNQSdkTOFt
         q90sIjM5VccZ9KBvQt8SqElOnOA8waSpmqKXssxmR7aU/2FxLp1Uofpp1GkhRRjdn1Zb
         xH8l6jGtzVM6fnubaL1K3HNrhk7U93z6V0m3aPTlqogVn7BuEh0aPdRYhAHAJvCHuzKe
         KNew==
X-Gm-Message-State: AOAM532tJxA8EQ8OmizVLHoD74ecC9zA/062upBjQb5Y11ydU1r5EQSt
	CqH1p90g2T4m9N5WhcA9bNf6HfF3+eM2sA==
X-Google-Smtp-Source: ABdhPJxuZuYq8Jybzm7mNne/Dgup8cs/bY9B9VQMT7UPHUWfuTsvwz17Tx8Wh3GCq//SZ5bXayLSuA==
X-Received: by 2002:a05:622a:348:: with SMTP id r8mr2851679qtw.359.1623286732469;
        Wed, 09 Jun 2021 17:58:52 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d21sm1166030qtn.24.2021.06.09.17.58.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Jun 2021 17:58:52 -0700 (PDT)
Message-ID: <60C163CB.7060109@gmail.com>
Date: Wed, 09 Jun 2021 20:58:51 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <d9be7a3f-5597-e0be-dc7f-b72ca4ab00f9@discreteintegration.ca>
In-Reply-To: <d9be7a3f-5597-e0be-dc7f-b72ca4ab00f9@discreteintegration.ca>
Message-ID-Hash: MVTVYODKTP2NNHTSQCOL36C2RG57LJBX
X-Message-ID-Hash: MVTVYODKTP2NNHTSQCOL36C2RG57LJBX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Phase relationship between front-end mixer and IQ sampling
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVTVYODKTP2NNHTSQCOL36C2RG57LJBX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 06/09/2021 08:42 PM, Dominic Schaub via USRP-users wrote:
> Hi,
>
> I'm trying to explain an odd (and reproducible) observation for a 
> dataset I collected. The setup is as follows:
>
> -A USRP-2974 is externally clocked with a 10MHz sin reference from a 
> SRS FS725 atomic frequency standard. Power is within recommended bounds.
>
> -The same 10 MHz signal is introduced at one of the RX ports and is 
> recorded via the rx_samples_to_file utility ( nsamps = 5,000,000,000; 
> rate = 50,000,000; freq = 0; channel = 0; ref = external - I added 
> commas for clarity here).
>
> -In software I then decimate by a factor of 1,000,000 by keeping only 
> 1/million samples. The new dataset is then essentially the 10MHz sin 
> sampled at 50 SPS with the sampling clock being derived from the same 
> signal.
>
> Now for my issue:
>
> I don't expect the recorded IQ samples to be necessarily real, since I 
> assume that there would need to be some calibration between the RF 
> frontend upconversion mixer and the downstream IQ mixers. However, 
> given the presumptive phase and frequency determinism among the 
> various mixers, I do expect a constant sample-to-sample phase for the 
> duration of the sample collection window (i.e. there should be no 
> phase drift among successive samples). Attached is an image of the 50 
> SPS dataset. The magnitude remains constant (expected), but the phase 
> varies very slowly, on the order of one cycle per minute. Could 
> someone explain to me the origin of this phase drift? From the block 
> diagram of the 2974 it appears that that mixers are driven from two 
> PLLS that share the same reference frequency input, so I find this 
> effect puzzling.
>
> Thanks,
>
> Dominic
I'm not that familiar with the USRP 2974, but I think the lowest tunable 
frequency is 10MHz and I'm not sure what it will do when you
   ask it to tune to 0Hz.   Likely it will have issued a message 
indicating that the desired frequency had been "clipped" to the
   nearest possible value?

I'm not familiar with the PLLs in the 2974, but if they are "sane" then 
this may be an indication of differential thermal drift between the
   refclock input and the RF input.  Given the quoted timescales, that's 
a phase slip of about 1.6PPB?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
