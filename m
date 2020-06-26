Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8759720AA42
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 03:47:08 +0200 (CEST)
Received: from [::1] (port=56732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jodSL-0002Oe-5L; Thu, 25 Jun 2020 21:47:05 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:36599)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jodSH-0002LQ-IG
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 21:47:01 -0400
Received: by mail-qk1-f181.google.com with SMTP id e11so7512848qkm.3
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 18:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=4ACe0fZTwABRhudeg31OTHpu+Jxfi6B+/ybsG50IipQ=;
 b=bGI0Tgk5nRlsq+i34rv6DuPLmDMzDrSsguuisZJS0m6TQGEAaVh5FJVVaFUf57G0lg
 WwL0I8rvSf4Ed8YjsDwm9e1lPDyeWzw22BhpM1CGRDebxxLLL85rnLkxH9NYb9aK8rZ9
 kQn5Rrg/wCJMYtIKWYEBbDIFLvQEcRBU8CLmNDrx/3UsDhWTTi9KjjsZysx+agRk6KAX
 ZGitOIVDDTl1fa6eCowZzFqoimCxmXAdDFa4pna86v/6n00dwdJ57/od/XiW8CaWrT/w
 Y17Is+YnwYCtqqNxa9AQegM7+VdmMwxa+n8Z8n8M2SEC8N1TE9Zgf4M/R7Rjf7j06A/W
 fqTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=4ACe0fZTwABRhudeg31OTHpu+Jxfi6B+/ybsG50IipQ=;
 b=aHxrFOsmJLZwudQ/XGK81bM9r5dfbVNVH//W0lC3k3VKiRHzIXqn8hep6OeBWrdz6V
 XvYJr4Eznfldp3lA7MEffBy2l+W5fAfwpuOfuGkHJjWxHDzYfxNfa9GYSOug+gTFaqEU
 9D/A8WZcq29N3NHHOX1SfTu/l3n2idJOLY+Obkqab4G19XUAIDxo5dsKfL3iNLCfnRq2
 ISg3tImjVaAFgDX/dyOPn+Wm57PZqPceRBurlAt/PCeRWKW5Njuf2gmWr+7/MVYxGbai
 OvlgCU6HIFckyCHXxgbI3s1JkcUk08xjENwFlmaLkmsFsV50D5N/cvhp3mqWkqc7r2yZ
 FJbA==
X-Gm-Message-State: AOAM5334laGI7CmHzxRDgsUQDQVKV6nTRuGQad5u3AiSIa+xHvJNIHUN
 EA9cwEt04QMUxpI+JwFHlvGOofW6bd4=
X-Google-Smtp-Source: ABdhPJzwaCJs3ARZAIVLaFgpBduhALASNhUrjTexn8rIxMja8MNhUfyofPpwbkbFU3u0oCXPc1KNAA==
X-Received: by 2002:a37:46d3:: with SMTP id t202mr521492qka.483.1593135980731; 
 Thu, 25 Jun 2020 18:46:20 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id o10sm7735606qtq.71.2020.06.25.18.46.19
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jun 2020 18:46:20 -0700 (PDT)
Message-ID: <5EF5536B.5060500@gmail.com>
Date: Thu, 25 Jun 2020 21:46:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMuWo5trjDhxSOc0sKbw9-SshYmTKHv2UWM+aPa1v7t+a04Lyw@mail.gmail.com>
In-Reply-To: <CAMuWo5trjDhxSOc0sKbw9-SshYmTKHv2UWM+aPa1v7t+a04Lyw@mail.gmail.com>
Subject: Re: [USRP-users] B210 Loopback Exponential Decay in Burst Messaging
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

On 06/24/2020 02:24 PM, Daniel Tajik via USRP-users wrote:
> Hey everyone!
>
> I have a question in regards to a loopback test I am running on a 
> single USRP B210.
> I set up a simple GFSK modulator/demodulator and am trying to send a 
> small packet (Ax.25 packet carrying message "AAAAAAAAAAAA") every 
> 2000ms. I have the RF A channel hooked up, with the Tx/Rx transmitting 
> and the RX2 receiving. Just before the Tx sink the IQ looks as I 
> expect, but just after Rx source I see an apparent exponential decay 
> in the signal aligned with frequency changes, see the attached image 
> "IQDecay_top_AfterSource_bot_BeforeSink.png". I have pointed out 
> aligned portions of the packet on both the Tx and Rx sides, you can 
> see that capacitive decay that seems to appear.
>
> Some relevant parameters:
> Sample Rate = 960k
> Samps Per Symbol = 100
> Carrier F = 435 MHz
> FSK Freq Deviation = 6.25 KHz
> Master Clock (set by board) = 61.44 MHz
> UHD version 3.14.0
> GNURadio 3.8.1.0
>
> I have tried enabled/disabled the DC Offset and IQ correction options, 
> swung around to different carrier frequencies, played around with the 
> gain stages of both Rx and Tx sides, changed the master clock 
> frequency, FSK freq deviation changes, different filters, different 
> Rx/Tx and Rx combinations, nothing seems to removes this effect. I 
> first discovered this when I started looking into why my deframer 
> was spitting out a correct packet only once every 50ish packets. If I 
> exclude the USRP blocks, all packets are deframed so I don't suspect 
> anything outside of the USRP blocks.
>
> I guess my question is what exactly is causing this error, and how do 
> I go about resolving it? Am I making a mistake somewhere in my setup? 
> Or is this loopback configuration not a great way to test my system?
>
> Thanks, and apologies for my naivety. Let me know if you need any more 
> information.
>
> Dan
>
Are you using attenuation between the RX and TX sides?  Generally if 
you're doing a coax-cable loopback, you want to protect the receiver
   by attenuating the TX considerably.

So, this a frequency-hopping system?  RF hardware takes a *finite time* 
to reach steady-state after things like gain changes and frequency changes.
   Is this a full-duplex system, or half-duplex.  If half-duplex, you 
have to allow time for a state-change between TX and RX states in the analog
   hardware.  This does not happen instantaneously, although TX/RX 
latency on these is fairly short (a few hundred microseconds at worst).

Back when I was doing packet radio in the mid 1980s, it was not unusual 
for the clunky analog radios we were using to take 50-200 milliseconds
   to change from TX to RX mode (or the other way around).  That basic 
factor hasn't changed, only in timescale.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
