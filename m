Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70121659094
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 19:51:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B00C6383B75
	for <lists+usrp-users@lfdr.de>; Thu, 29 Dec 2022 13:51:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672339912; bh=lrInIAXWJ5msoOndLL2sg3ZjfmB2N+nXtEir1R29IYU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uBFgdy1J8I9EWJ0oXW0w6bsy6H6552axb/XU5czXBnOrQ3tB4jx0Lq02APUyMkQEB
	 fy1nCVpmmp/WfMPEKybBoGdX/Mxcx2hjPL1judoW31Fu6nHPTa7G01KKGVxl0vP5NX
	 L9dGePcqrp7CULyHX6gdgDuHyWNBoOShckCK/B7GRL3Dky0RFj26ssEWvXXSQs3oR1
	 DZ9cNPbSys4Gk+rHLInuSXH4QKfamIEdpY1t46djVhBsf7tCsykN2576313Ka+uG9k
	 Gf2Domdi7mUL4B94F6ozwEj2qWvGGfSktNaTmOXQVGYB6AFj6kdRyzzC3/R/RVB9mQ
	 Eo2/JFKVNJy8A==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2583E383CB0
	for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 13:51:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Am0A9fUN";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id df17so9817927qvb.3
        for <usrp-users@lists.ettus.com>; Thu, 29 Dec 2022 10:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nevGenWGh+mOhjg+vzJzOSqAOCKElplL+orQN4z1bfY=;
        b=Am0A9fUNo/nGK3IMwjl4KCDpdKoUYnlzNJBc+tQKiqQYAQyL0ZobLTWuvVgUUcBU+G
         /6K6sXS7zjTRLn7eT9+YooFXOAIpUa0sLO2Nn0H5VdSj3Ra8O/yAKezXie+Kv5upha4K
         6CH32uWnIUoJVIvN4x0ZPgMXoXvNHNZhcL6XWF+shqorY+kqoOcTS7tCaqEdpm3ushEZ
         clxpo7l4q9G3LE4iIDZRrhshWfVu42mAkvEnNPHaoF8MhbHB+AvIQUN0LMcfA2IvoytL
         svua2nNpNdjlHz5aVnoa5FMBD1cgXkTzScpgz6PtqTPbqpRVt7w397Ah446XBQoZGWHj
         V9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nevGenWGh+mOhjg+vzJzOSqAOCKElplL+orQN4z1bfY=;
        b=I5o86PpLTnAGETTxAIYIHrcQhPgDiY/llo5rqzRY+kjBc5xEkkCgmipq/thmd7mn5o
         hdeLuehxjYfW+S1da8POXPmUqHaCnHbhi+xSi+eClITIWV492gSlOzflqVXSr39q0jze
         eq43aIOFMM2C3/ofERm+wwHsdolCa+Xs5cpRq5xRqNFDfmwEVWueTZUCELlpOfuW0SY2
         Hbe1yGTlnEwjoxnFReCp+DrHNCnyS7CwqTzP03cpokOxYJhrr7xPUXRzhBojOPOAm4YR
         yIqG30IYXeFXwV+KqMRGFw8hf832IWWIcoj1XS/4/5EaEYr+yuUw/a3VBDsRVWHe5BUK
         FNxA==
X-Gm-Message-State: AFqh2kq7lnyY8EQBv4ElhndjK72dq93/5J6c5NsWWK5VJyB+t9YDaBQX
	544oRRel8MO+fguxTwCjByypN7ptgPywVslPW9Zgmwjk
X-Google-Smtp-Source: AMrXdXuXUOFJLD6Y0YgKJrJWppxeQfUKXDX2375WtOfIh7WMPKq1feQNaMZFl2VRlz4HlMmJ+3Jegi9LUXumjixfg4E=
X-Received: by 2002:a05:6214:328f:b0:4b1:8429:a8a7 with SMTP id
 mu15-20020a056214328f00b004b18429a8a7mr1705816qvb.52.1672339861365; Thu, 29
 Dec 2022 10:51:01 -0800 (PST)
MIME-Version: 1.0
References: <CACOCFC3jGpTTrdCza+_keWHrEM7Y3tnMqssLaFdGh1Q-8NOBmA@mail.gmail.com>
 <c6197fee-7bd9-500c-1501-45593cf64757@gmail.com> <CACOCFC3Bn9gwFaDVvokNL1opgmjx7806fKeBPcyKTe8Yip8o1Q@mail.gmail.com>
 <33623714-9705-bd58-efd8-946f35338388@gmail.com>
In-Reply-To: <33623714-9705-bd58-efd8-946f35338388@gmail.com>
From: Jonathan Barry <jonathan.d.barry@gmail.com>
Date: Thu, 29 Dec 2022 13:50:51 -0500
Message-ID: <CACOCFC1LVrX5+U7yTSRS2CpaRgT0iF0Pg1Bgde1-ELNFqgJGXw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: R77U4MVJ2GS3OZ2QRQLE3RXGUWUWRYOY
X-Message-ID-Hash: R77U4MVJ2GS3OZ2QRQLE3RXGUWUWRYOY
X-MailFrom: jonathan.d.barry@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B100 vs. B200mini - IF not zero?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R77U4MVJ2GS3OZ2QRQLE3RXGUWUWRYOY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did try uhd_fft, I see the same offset

On Thu, Dec 29, 2022 at 1:49 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
>
> On 29/12/2022 13:45, Jonathan Barry wrote:
> > Thanks for the info. My simple carrier recovery routines can't correct
> > for 3 kHz of deviation -- that is just too much for these narrowband
> > signals. But is it at least true that for a given carrier frequency
> > (e.g. 860 MHz), I can expect that this drift/offset will always be the
> > same for my particular B200mini? Because if that's the case, I can add
> > a function that always mixes the -3 kHz sinusoid into the B200mini
> > samples at 860 MHz.
> If your problem is the accuracy of the master clock, then it will
>    be the same PPM offset at the same temperature repeatedly.
>
> You could use the "uhd_fft" Gnu Radio application to confirm that it isn't
>    your use of the API that is causing this.
>
>
> >
> > I bought my B100 in January 2012 -- I seem to recall it was the only
> > model I could afford at the time. It has the WBX daughterboard, and I
> > have never had any trouble at all with it, ever. Collected thousands
> > of signals using this B100. Truly wonderful. The only drawback is the
> > USB 2.0, which greatly limits the sample rate that one can collect.
> > Otherwise I would just keep on using it. : )
> >
> >
> > On Thu, Dec 29, 2022 at 1:05 PM Marcus D. Leech <patchvonbraun@gmail.com> wrote:
> >> On 29/12/2022 12:13, Jonathan Barry wrote:
> >>> Greetings! I've been using a USRP B100 (!) for ten years now, writing
> >>> C code with the UHD API. Recently I upgraded to a B200mini, but the
> >>> resulting baseband signals from these two USRPs is different, even
> >>> though I am running the exact same code and API calls in both cases.
> >>> For the B100, the target frequency to which I tune (with
> >>> uhd_usrp_set_rx_freq) always appears at 0 Hz in the complex baseband;
> >>> but for the B200mini, I determined (empirically, with MATLAB) that the
> >>> target frequency for the examples I tested is mixed not to 0 Hz, but
> >>> to 3 kHz (?) in the baseband samples. In addition, when I run uhd_fft
> >>> on the B200mini, I see this same behavior as well: when I tune to a
> >>> known P25 signal at 860.2375 MHz, in the resulting power spectrum I
> >>> see the peak appearing at 860.2405 MHz (target + 3 kHz), and I see a
> >>> notch at the target 860.2375 MHz (in the passband of my signal).
> >>>
> >>> I examined the tune_result structure but it reports the target
> >>> frequency is 860.2375 MHz, and it reports the target/actual RF
> >>> frequency is 860.2375 MHz, and the target/actual DSP frequency is 0
> >>> MHz. I don't see anything that indicates a "3 kHz" offset. But if I
> >>> mix the received samples from the B200mini down by 3 kHz, then I do
> >>> get good decoding with my software. So right now, if I am using the
> >>> B100, I have no 3 kHz downmix, and if I use the B200mini, I need 3 kHz
> >>> downmix -- this is weird.
> >>>
> >>> Is this a hardware defect, or is this some setting that I have missed?
> >>> Thank you!
> >>>
> >>> Jon Barry
> >>> _______________________________________________
> >>>
> >> Your 3kHz offset is within the accuracy spec of the master clock on the
> >> B200mini at 860MHz.
> >>
> >> The B200 series uses a chip, the AD936x, which is a direct-conversion
> >> design, so everything is
> >>     always at baseband by the time it gets to the app.
> >>
> >> What is *likely* happening is that you simply got "lucky" with the
> >> master clock on the B100.
> >>
> >> What daughtercard do you have on your B100?  Not that many B100s were
> >> sold, and it was discontinued
> >>     years and years ago.
> >>
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
