Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0724A33198A
	for <lists+usrp-users@lfdr.de>; Mon,  8 Mar 2021 22:47:47 +0100 (CET)
Received: from [::1] (port=51486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJNj5-0007cN-43; Mon, 08 Mar 2021 16:47:43 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:36913)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lJNj0-0007Xr-HQ
 for usrp-users@lists.ettus.com; Mon, 08 Mar 2021 16:47:38 -0500
Received: by mail-qk1-f173.google.com with SMTP id s7so10996168qkg.4
 for <usrp-users@lists.ettus.com>; Mon, 08 Mar 2021 13:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=8itBHf+ZApBblhnG8RRIDrmPPZ0v2Y6S0FQs2ngh8H0=;
 b=qwEtAqFrnHYpzc+/y+uKWoXyrcLCIX3WjwbwlDY5L+iLfdfpjH/XWR24mPYi13cspP
 GW2RuL+ESNDB4tS8afeCIy7wpSSb4SQibh+LLNA4pR8WzPMh3AcTJGgVv5hkYZYZ1ows
 oZtek+XNrZiPfADP9LEda/eYAM98tX7+kca5Rrnv/nVONb/YxHeqX/fSHPz/CWz2/kpm
 cfNup41QGn+qydK4QV7OjhojtS04wItZKbysWYJ6W5+HwoAnt4427N/skPRb2gSCokfu
 gU3guYva5kv07DF2dAj+VFteq4SxLhiaAem72p296LKu9lM1nacGT3JokXakHTda8wsK
 XvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=8itBHf+ZApBblhnG8RRIDrmPPZ0v2Y6S0FQs2ngh8H0=;
 b=A8h2BXsS2RItwbMoh7hhXEdYdlsLDp6d88TbJJs9mEQ9nlQ1gY0XJDQpUssfmicPFG
 xKR9ZJ5v1aAdW8HkSfOTlRvDgx1tvN8HEfo/T2c6s4rQvscrpNNTFnQeJIMS2BzsjddJ
 dnBnT99JMu5MJnPRHOPDv5LxjrW9862CG6HEyrznX++DmNxtkx2Uv0culT9qSQ/quugS
 fLLDV9ugdNGbWA7+DVgmhJXajgVrg1ISSJGWwiVEijUIoPsUU1md1PsxPCwfz+AnN8Lf
 /VfvT6lOEkNxOpW2n3FmR3zecCOfWnAClEvGU8jEzDWXNjOX+zWRrgzkn7ZQ25M9nKpc
 AqqA==
X-Gm-Message-State: AOAM532nTfEbeKcZBjohDgnS2QqEh/qOiBxRbhtyCo+voYluZ5oE4B0d
 feCesUcSHy6jxlCIFOYAQhwd6vkaM3w=
X-Google-Smtp-Source: ABdhPJxc6G1EUed4cvhpfrJULexvJy1/XQQOaF/wGE9CgqSQ2IPgfX0UAEhVSQ1whgLluh+A5tb5XA==
X-Received: by 2002:a05:620a:806:: with SMTP id
 s6mr21569056qks.50.1615240017572; 
 Mon, 08 Mar 2021 13:46:57 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id s2sm8714042qti.54.2021.03.08.13.46.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Mar 2021 13:46:57 -0800 (PST)
Message-ID: <60469B50.1020102@gmail.com>
Date: Mon, 08 Mar 2021 16:46:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
 <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
 <CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com>
 <602F3C2B.3040405@gmail.com>
 <CACryqrHPxsMSiXmM3Er-WTJ+vxgroAdRY0A0btfpiBvr0F-JRg@mail.gmail.com>
 <602F480C.9020200@gmail.com>
 <CACryqrGWPD=VOTisbEenTuYyF5myztJgCmgGjZ8rDFvSuma20w@mail.gmail.com>
In-Reply-To: <CACryqrGWPD=VOTisbEenTuYyF5myztJgCmgGjZ8rDFvSuma20w@mail.gmail.com>
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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

On 03/08/2021 01:22 PM, Xiang Ma wrote:
> I have tried to first use GNURadio to write a program in GRC. And 
> implement my code referring to the generated top_block.py
> The following code works
>
> ```
> from gnuradio import uhd
>
>   def u_source(self):
>     self.source = uhd.usrp_source(
>     device_addr=self.usrp_address_source,
>     stream_args=uhd.stream_args(
>     cpu_format="fc32",
>     channels=range(1),
>     ),
>     )
>     self.source.set_samp_rate(self.adc_rate)
>     self.source.set_center_freq(self.freq, 0)
>     self.source.set_gain(self.rx_gain, 0)
>     self.source.set_antenna("RX2", 0)
>     self.source.set_auto_dc_offset(False, 0) # Uncomment this line for 
> SBX daughterboard
>
>     self.source.set_center_freq(self.freq, 1)
>     self.source.set_gain(self.rx_gain, 1)
>     self.source.set_antenna("RX2", 1)
>     self.source.set_auto_dc_offset(False, 1)
> ```
>
> And when I change the channels=range(2),
> Add a new line as the file sink of channel 2, it doesn't work. It 
> doesn't crash, just stuck.
> self.connect((self.source, 1), self.file_sink_source)
>
> I don't understand. I thought the two channels might be independent 
> since they work on two daughterboards.
>
> I try to use gdb to debug the code. But the information is hard to 
> understand. It shows multiple threads.
>
The fact that you feel the need to *edit* the *generated* code from GRC 
means that you have an insufficient understanding of
   GRC, and making random, unguided-by-deep-knowledge changes to the 
*generated* code is almost never called for unless you're
   doing something "special" and you have the expertise to make those 
changes.

Go back to GRC, simply create a usrp_source object with two channels, a 
single motherboard, and a subdev spec of "A:0 B:0", with
   RX2 for the antenna selector, and you'll have two streams that you 
can deal with independently.  One can go to a file sink, the
   other can go to a different file sink, or other bits of DSP chain.

I'll note that on balance, this is more of a discuss-gnuradio question 
than a usrp-users question, I'd recommend cross-posting any
   further missives in this thread.

Doing this "two channels from the same device" thing is not that exotic 
or unusual, so I suspect that your approach of post-editing
   the generated code from GRC is where your problems are, and I'd avoid 
it.  The GRC file should be considered the "source code", and
   you make all your edits to that, using the GRC tooling.  Just as in 
compiled languages, there's very few legitimate reasons for
   "editing the object code".



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
