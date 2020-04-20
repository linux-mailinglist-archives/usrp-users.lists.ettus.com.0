Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7F91AFF92
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 03:35:33 +0200 (CEST)
Received: from [::1] (port=56278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQLLQ-0005JI-5h; Sun, 19 Apr 2020 21:35:32 -0400
Received: from mail-qv1-f50.google.com ([209.85.219.50]:33629)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jQLLM-0005CZ-Ld
 for usrp-users@lists.ettus.com; Sun, 19 Apr 2020 21:35:28 -0400
Received: by mail-qv1-f50.google.com with SMTP id p19so3972686qve.0
 for <usrp-users@lists.ettus.com>; Sun, 19 Apr 2020 18:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=bOo61DuQ2p8n7Ref8ENVBhONY3jwPY5rmQynL4iqsQs=;
 b=e6dUNZvNl6/qLw6sDNxygM4diRyN7Lgk+5yWoy83fLhbKnxFc2d0H7S7ARZn2lVxc9
 QEX2AlE2/QGL6LMTM3lJExfDVXFZdEv+4Q3fUYHnq67fYI41q8W4ociyZriAvlRINjUP
 CeGvwgsd3TBiIaxR3Xja38XPj2xuTd4wfgpb2nVCxFoX/s3gg3GDQLetKvozEWx1jX46
 pmifFdr1oNraEHubg8ZRjJyLH51J+WHXI41iiNhYkPNqaxfQW9eSRHlrb2dCN13QnVD6
 lf7ZwcF+65T7NX36HJ+4PEvLEOlulr+JSt066lwquhJV+2ineYuux6CcAdSaRV/+FZVT
 hRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=bOo61DuQ2p8n7Ref8ENVBhONY3jwPY5rmQynL4iqsQs=;
 b=oe9gkNQQnhTd/BTPe+2j7/jRwBF4NOLlaCT4vtR83Axh5/Egt9jXfpir9Uj79KxC/a
 5pITMIJh1/t7xLL4LKpsYk3hAYJLNH0RP4qS2IXJDkDa6ndAyG3tvqt/Uhjzlsr5LmHk
 9bTyfOhwJzwHlpAPyC7MI2av4f4QlIOkXU/JxF3HOqBMe5oVNyIPHDv6WxQbFUFQyJ1s
 7b7iVuHUipQcjGEylORtDU46hkFNMhQlCaB+vUXqge35fpflEZfGvygG1acqLUYdWoqS
 mV/IIx28UxCdsPhk0rW51waKj+EZtlaac0s8vr4d3CCvC+d1NSrOE8/MQpVV0s//9KSA
 qyrA==
X-Gm-Message-State: AGi0PuZ2nYQPIXBA5n77S2s2jKwjpsjjbXGxGBXoqLSXJJiD9Rpv2gmU
 5WBl5KH+DencpM2vhuhPafSGOg1pOTI=
X-Google-Smtp-Source: APiQypKXIMYsS/PKiNHuGaJXc4ajLGor4TohXHWSTwIkX7WthDpWrzUbBzmAEZCd3OayWeuCTj34xQ==
X-Received: by 2002:a0c:fc0c:: with SMTP id z12mr12450361qvo.41.1587346487776; 
 Sun, 19 Apr 2020 18:34:47 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.googlemail.com with ESMTPSA id
 k184sm18734404qke.94.2020.04.19.18.34.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Apr 2020 18:34:47 -0700 (PDT)
Message-ID: <5E9CFC36.2040802@gmail.com>
Date: Sun, 19 Apr 2020 21:34:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-2e8938a8-5251-4fd3-a4b9-450be68ecadd-1587345990905@3c-app-gmx-bap03>
In-Reply-To: <trinity-2e8938a8-5251-4fd3-a4b9-450be68ecadd-1587345990905@3c-app-gmx-bap03>
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

On 04/19/2020 09:26 PM, Lukas Haase via USRP-users wrote:
> Hi,
>
> https://kb.ettus.com/UBX#Noise_Figure lists 2-3dB noise figure, UBX_Data_Sheet.pdf 2-4dB for UBX-160 (at 915 MHz).
>
> I connect a 50 Ohm load to RX and create a simple gnuradio application with USRP Source that calculates the RMS value of the sampled data (and plots the noise in time domain).
> samp_rate = 5 MHz.
> RX Gain = 0 dB.
>
> The value is 0.000113 RMS.
> The time domain waveforms look a bit like quantization noise.
>
> I repeat the experiment, this time with RX Gain value set to 37.5dB.
> The value is 0.000841 RMS.
>
> According to https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf, NF=2-3dB for 37.5dB gain and ~23dB for 0dB gain. The high gain value coincides with the values from the datasheet above.
>
> Question 1: Is the reason that for 0dB it looks like quantization noise, that the noise is smaller than LSB so I am effecively seeing the ADC noise?
>
> Question 2: Is the ADC quantixation noise the main reason for the difference in NF? (Note: I am familiar with Friis' equation)
>
> Question 3: The noise difference for both cases is 20*log10(0.000841/0.000113)=17.43dB. According to the measurement PDF it should be ca. 23-3=20dB. The difference is ~2-4dB. Is this just measurement uncertainty/part-to-part mismatch or is something wrong with my approach?
>
> Question 3: I repeat the last experiment by setting the "Ch0 Bandwidth [Hz]" to 0 (default), 5e6 and 1e6. I would expect that my rms value decreases by a factor of sqrt(2) for each halfing of bandwidth. However, the value always stays around 0.000841 RMS, regardless of the bandwidth value. Why?
>
> Question 4: According to theory, my captured signal is -174 + NF + 10*log10(BW) = -174+3+10*log10(5e6)=-104dBm. Is it correct that my 0.000841 corresponds to -104dBm input power? (If not, why not?). Or differently, -104dBm input power corresponds to 20*log10(0.000841 / 1) = -61.5dBFS ?
>
> Thank you,
> Lukas
>
There'll be quantization noise, certainly.

But RF systems with variable gain use variable attenuators, and that 
attenuation value is directly added to the noise figure of the stage that
   follows it.

Now the magnitude of this effect obviously depends on where that 
attenuator is placed in the gain chain.    A 40dB attenuator after a 20dB
   gain means that the 40dB of hoise is only "washed out" by the 20dB of 
the previous stage(s).

It is entirely normal and conventional to quite noise figures at 
different gains settings precisely because of this architectural necessity.

Using a purely-analytic and numerical approach to determining the 
magnitude of an input signal, given and intervening chain of
   RF bits and pieces, whose noise figure and gain have uncertainties, 
is what we call a "state of sin".  You MUST calibrate with a known
   signal source over your expected run-time parameter space.  It's the 
only way.  It's the way laboratory instruments are routinely calibrated.
   Using "datasheet analysis" which is basically what you're doing 
above, leads to results that cannot be trusted to any degree of certainty.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
