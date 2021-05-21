Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 402AF38C2DC
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 11:17:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DFC43853EF
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 05:17:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="aYU2Wxx0";
	dkim-atps=neutral
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 230333853B8
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 05:16:28 -0400 (EDT)
Received: by mail-wr1-f54.google.com with SMTP id r12so20326719wrp.1
        for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 02:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Xn0DPDNlND7JuveqkGBkUtYQwfNn4A5q/e67cghk/Oo=;
        b=aYU2Wxx02bQDxx5vvyvYQYjaeu44BdoNlsse0ff6LLmVJUtusGiun/ZEkBgRgwvsAA
         srLoc5igzwAlnm3ltzWMBFxs167yRAm+zqvhNfxT3LSjdgeW4C8+FrD6IHEXFOLciSuC
         z7P/alg8PTS0NiID9M1NUl7k+Y0YIud3KudrpgWk9t4Z+bcu9FoqkJ5xCrBegHCIF5G6
         eBFD1cPCQ7u1GCHhOk3o7odXf1AoJd9Fiz+bQSdByFsGr9nuYLZr9ZvlENK3sFS56sPY
         KNq0U5Mk6nQN05ysCEx4IFZxW63r5R6QghnRj7gfaJinMkVNoeLgJCKL+xTdDioaQKFh
         bvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Xn0DPDNlND7JuveqkGBkUtYQwfNn4A5q/e67cghk/Oo=;
        b=anaGaAjhYBB9U2GSe2iuIcHB0l6h3hPRiGiXm851pji65quhWWaNK3i50Ng7+GQxCI
         OpmfQ0aOTtyMyxJZw2pNPdy5tMmKxI1PquR4h2RYlaxSz0/rJPhs5Cnul7VcFzExFDSF
         Dyk2x5dN4ImLVd204B6sIivUGCFCM05dnSBQMy7Ok9fRk1x4HyYHLX4gsg+QeSoUxqtA
         i5BDfkB2l9cnkEo5YFBqy+MvOYT2lR+7vEc1rNEiCLoJjfrIOK8doBUH5v3bM/kghjqm
         /RQI0X+M3z5Ef1WzICzvuTyGCvrJSj4zkLU/NqmJvsAka/KwVKj8yJq5ORHQWVfDK9Kb
         WciA==
X-Gm-Message-State: AOAM532xJ/x424BeMYfvx/V4lCycc/QumI+AUy8uv2FjKBZzTRJjnA0M
	JqAstyaMQws7oCuV1yHZ8jpTkIEHefCkGGa5
X-Google-Smtp-Source: ABdhPJyAMFVBs1WKEj24RjghOH3i+JN/T9mzWlIbJ95xWUXMXI1uFPsIIIO2rRpApHb2AXAtrwHqnQ==
X-Received: by 2002:a5d:4e0c:: with SMTP id p12mr8663977wrt.268.1621588587108;
        Fri, 21 May 2021 02:16:27 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id c194sm12199649wme.46.2021.05.21.02.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 02:16:26 -0700 (PDT)
To: usrp-users@lists.ettus.com, Martin Elfvelin <marelf-5@student.ltu.se>
References: <CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <20d26f00-f3ec-7813-e448-51c455d857cd@ettus.com>
Date: Fri, 21 May 2021 11:16:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: HM3STJ36Y4YCCNMM7RJ4T7UMX5TTXEID
X-Message-ID-Hash: HM3STJ36Y4YCCNMM7RJ4T7UMX5TTXEID
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPP requirements for USRP B210 amsat
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HM3STJ36Y4YCCNMM7RJ4T7UMX5TTXEID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Martin,

that's a bit of a wide field there :) In essence, there's not a single answer to your
question: whether your hardware is sufficiently fast depends on what you do with it!

For example: 192 kb/s is really not much data to process, if there's a simple (say,
Hamming(4,7) ) error-correcting code to be decoded on it. It's going to be tough to
calculate if it's been through a large LDPC code and you want to do 50 iterations of a
message passing decoder to really get even the last bit out of your channel.

But, you say "amateur satellite communications", which probably at a first approximation
means you're using modes that are currently common in that community, or such that are
currently constructed with complexity in mind. So, yeah. Most things *should* work on the
four 1.5 GHz ARM Cortex-A72 cores of a raspberry pi 4 Model B. Note that there's very
different Raspberry Pi models, so make sure you get the latest generation. Also note that
your Raspberry Pi doesn't have to do *all* the work, if in doubt: for example, the
relatively compute-intense steps could be, on demand, done on a laptop with significantly
more computational power.

So, it should work. However, that's a "should": I've got exactly zero knowledge of people
who have done that, and a back-of-envelop calculation saying, hm, yeah, that compute power
should suffice assuming the usage of sufficiently optimized software doesn't say
sufficiently optimized software is available to you. But honestly, I think there's really
a treasure trove of online information and working groups on that topic. Maybe pay the GNU
Radio Amateur Radio Working Group a virtual visit [1]; I'm sure there's much experience
with satellite comms in that channel. If text-chatting isn't very much your thing, maybe
also try showing up to one of their monthly video calls[2], and hang around before or
after the invited talk and chat a bit.

Of course, as the largest community of citizen-operated satellite groundstations, I bet
satnogs[3] has guidance on hardware. I do know they have raspberry Pi images, but I
honestly don't know whether they're doing the digital communications part on that, or
whether they are just recording the spectrum and maybe do some simple demodulation (FM
demod?). Admittedly, and regrettably, not my prime area of expertise. However, whenever I
meet satnogs people, they're a friendly bunch! They have a well-kept online forum[4],
that's very active, and also a matrix presence[5].

Best regards,

Marcus

[1] via Matrix chat: #HamRadio:gnuradio.org; easily reachable via
https://chat.gnuradio.org/#/room/#HamRadio:gnuradio.org
[2] https://wiki.gnuradio.org/index.php/Talk:HamRadio
[3] https://wiki.satnogs.org/Main_Page
[4] https://community.libre.space/t/new-users-welcome/29
[5] #satnogs:matrix.org (I think you really might want to have a Matrix account on some
arbitrary homeserver ;) )

On 21.05.21 10:20, Martin Elfvelin via USRP-users wrote:
> Hello all,
>
> I'm building a ground station for amateur satellite communications on the VHF and UHF
> bands using a B210. The SDR will be connected to a mini-pc and I'm trying to figure out
> the system requirements. The PC will be controlling the SDR, running the signal
> processing at low data rates (4k8 - 19k2 bps) as well as controlling other hardware.
> Basically the PC is the brain of the ground station. I've seen people making ground
> stations with Raspberry Pi but I'm wondering if 1.5 GHz quad core is enough processing
> power in this case. Any help would be much appreciated.
>
> Best regards
> Martin Elfvelin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
