Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 780022F03A7
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jan 2021 21:59:47 +0100 (CET)
Received: from [::1] (port=38270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyLKs-0001n5-He; Sat, 09 Jan 2021 15:59:46 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:43028)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kyLKo-0001fy-3B
 for usrp-users@lists.ettus.com; Sat, 09 Jan 2021 15:59:42 -0500
Received: by mail-qt1-f181.google.com with SMTP id 2so8905120qtt.10
 for <usrp-users@lists.ettus.com>; Sat, 09 Jan 2021 12:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=dLNmwM+mCImbbkiZ56VqsZdrN2Dhy4guU0QqiDOeoM8=;
 b=Q7iQFzl/WRtqATYnLIESULEGfxZR3akzZUtn2fCKlDTHuHTt1iAy5ZNk8vhDgwbH47
 wxVdQUrbCL25wa1y4Qd62lzsJs2ocw6u4HKtHdK8SO32b1ks1hMZS3u9fpMoTDiI4eKB
 XJsTS7J/wKJD9T3zoYhbWOxywUaJ/gsCEwB1nSUlrz86FuCQYOt1vCNGZ73ydi3n/+80
 FHhnKteZfgsYEmiS0w/cmfexd59+ssJUqYAIiBRGp7QPnhzhXteVDTZd9R1wXkgzubgM
 bh/hXbmFEVODNyIBgTFimxwXyNeMcvYcyySoG9dzouC0sxvKBoiSxnGQoKhx5OXnUUao
 lb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=dLNmwM+mCImbbkiZ56VqsZdrN2Dhy4guU0QqiDOeoM8=;
 b=sOPy1HtVr/BXTR6zgCf1Oj2GlSPliFho6/F8ZTojJ/1YPxgALrZJAnf+jZ/AqHtEd/
 uWbduLOttf0msDcB9mQJMuUOBa+sJu6+W4R0unLjWshULJCzWdgezZPdai8fWE2B8VKu
 tcU4ZJjezGAiWmIAduwIBZDLzKpuqBu55uf7us46SstilALEBdAVYfMlC2RrdqJzp7Yz
 n554YEBDRxy8ma9tgg0eO2wwK0Cc/Yu7Cfwupnury3h3lBA2HlQL9c0KlmquTCg6WT5w
 h8CfXL5kls7ylHxUcekB3RqkAJzrJO63vhOvG+6oB6Huf78W71SbrlC+MHFFPVhlOOTX
 rMKA==
X-Gm-Message-State: AOAM531eIzm/VN59ktxN0B9SFu9Ue19Dnw/3Lz1ml9ttk7EdYbJMVHMB
 LMpEOeQw7ycIGiTN/zaapZgL4Hy8bV0=
X-Google-Smtp-Source: ABdhPJy4afsum00ZJ+9galWFGRklW4s84/bms81fsoMk2zsdfr+AWk0a4cfqO4TOSrtNSr+GjS8Q7w==
X-Received: by 2002:aed:2183:: with SMTP id l3mr9079006qtc.75.1610225941243;
 Sat, 09 Jan 2021 12:59:01 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id i65sm6535786qkf.105.2021.01.09.12.59.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 09 Jan 2021 12:59:00 -0800 (PST)
Message-ID: <5FFA1913.8010203@gmail.com>
Date: Sat, 09 Jan 2021 15:58:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <eef4a776-3763-09a2-ebb3-f506fad2a899@dcsmail.net>
In-Reply-To: <eef4a776-3763-09a2-ebb3-f506fad2a899@dcsmail.net>
Subject: Re: [USRP-users] Transmit underruns
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

On 01/09/2021 03:50 PM, Barry Duggan via USRP-users wrote:
> Hi Ron,
>
> Thank you for your test flowgraph. It works fine when using the wav 
> file, BUT when I change to an Audio Source block (mic) I get the 
> underruns. So I still have the problem. I've experimented with various 
> sizes of 'send_buff_size' and I even put in a Fractional Resampler to 
> raise the interpolation factor above the theoretical value.
>
> I am now running on Ubuntu 20.04 and GRC 3.8.2.0
>
> Any further suggestions?
>
> Thanks,
> Barry Duggan KV4FV
>
> ---
>
> On Tue Jan 5 20:33:24 EST 2021, Ron Economos wrote:
>
> Here's an ssb flow graph that's known to work. You can select the
> sideband with the default option of the QT GUI Chooser block before you
> start the flow graph (you can't change filter taps on the fly).
>
> The test file is here.
>
> http://www.w6rz.net/ssbaudio.wav
>
> Ron
>
> On 1/5/21 15:29, Barry Duggan via USRP-users wrote:
> > Ubuntu 20.10
> > GRC 3.9.0.RC0
> > UHD 4.0
> > B200mini
> > USRP_ssb_xmt.grc - https://pastebin.com/ypyERUGE
> >
> > I have experimented with various combinations of send_buff_size and
> > send_frame_size but continue to get underruns while transmitting. I've
> > also tried setting the Audio Source 'OK to Block' to 'Yes' and to
> > 'No'. What is the right combination of parameters to minimize or
> > eliminate the underruns?
> >
> > Thanks for your help!
> >
> > 73,
> > ---
> > Barry Duggan KV4FV
> > https://github.com/duggabe
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
You're probably running into the "two clock" problem.  Without any kind 
of "smart" elastic buffer between two pieces of hardware with
   different clocks, this problem is *guaranteed* to occur at some point.

Further, things like pulseaudio will sometimes (in my experience) only 
do a half-hearted job of sample-rate conversion for audiohardware that
   doesn't support the requested sample rate, which means that samples 
aren't actually being delivered at close-enough to the requested rate
   to "survive" the rigors of the two-clock problem.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
