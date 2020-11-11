Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAD82AF8C2
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 20:14:51 +0100 (CET)
Received: from [::1] (port=50514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcvZw-0000DQ-QY; Wed, 11 Nov 2020 14:14:48 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:38421)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kcvZs-0008Ut-Eg
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 14:14:44 -0500
Received: by mail-qk1-f172.google.com with SMTP id 11so2807053qkd.5
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 11:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=eYNENfWkqYAb98Zm1XbH3NyoXR0K/weGL7cuvGwiMnM=;
 b=tPEQmM9KrQJe/PywcsU5x/vcqOYyEw/u0mGwnv1AAZIRW2cRDVFENoCndQqAGx8AJY
 YQCi9qwjLV8KqiSzknLg60M1+CmDz3q1uFUlT47ovCDP2vNBQoV2k9fsA1zp/F+/vU+v
 TulHy9ddMVUeEkdvoiWAkA1xsrADiO5J4mb/Cgr/o930O6uNRuZ6f1zXMBNSX5rv1De2
 6DtvPZyBrsew1QfoLmeonaYhpesX9aezhuL7aNqaABqOiUKkD+3VlpZ5bbj5hcUaFOTs
 zwqxxteFXPjqaXtU8UZbb/USGi+/D74ad0tO4jW3A4BY6pID7+75LQVew5xOn0fPuTyg
 pg1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=eYNENfWkqYAb98Zm1XbH3NyoXR0K/weGL7cuvGwiMnM=;
 b=muJVRua4qWzxhjVmSjCAdNY7nQAkS12OfLhr1VzcWqB7GJwJudJvEzdmHMWA8j5fXc
 o4ac383K9t2BqSiNwVpWtZY54GYxllbojVnyfqeCnZCCWrNdPYOUhlRTii2fuN3XIOph
 I/vLtWzW+WI0iPx19PDi3RJ0paWS54HSlKpO9z0pIDVMMwe8Wr+d/OTcrHbhseHPrRAw
 HRLQ5ld0hChWfUcMIvXxQz6Sl6T2BkMfFkXFz6uoAyrlp/CigNATHB3zoZ2X1gz8eZ81
 Xagq56K9BObNIn0QfEPDUxneoc2NsqlZ7+7TIseaC0CjBGCwwnEkxlvE4p9bcGtErsci
 6wnQ==
X-Gm-Message-State: AOAM531tRHz7gJBLxd4CDF6Plr3ZFv+aqkizoo9tvA9b22rpKAjmU8+P
 TkjP+AgqXvCFkwKJ2igg26G4zW4uGvU=
X-Google-Smtp-Source: ABdhPJyD/oAvSAC1utjP3XuntTBYv8hbkgHXRT9EsZayQXWeBfzOTKQGu6L0YBGY6uA9cCoulT+pSQ==
X-Received: by 2002:a37:6451:: with SMTP id y78mr5157283qkb.500.1605122043642; 
 Wed, 11 Nov 2020 11:14:03 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id e22sm2782398qtq.38.2020.11.11.11.14.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 11:14:03 -0800 (PST)
Message-ID: <5FAC37FA.1060605@gmail.com>
Date: Wed, 11 Nov 2020 14:14:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>
In-Reply-To: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>
Subject: Re: [USRP-users] twinrx consistent phase offset
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

On 11/11/2020 11:26 AM, Dustin Widmann via USRP-users wrote:
> Hi usrp-users!
>
> I'm still relatively inexperienced with working with UHD and USRP
> radios in general, but I feel like I'm getting better. Anyhow, I have
> *several* questions, but I'll start with one.
>
> Setup:
> USRP X310 Radio: A:UBX, B:TwinRX
> If you're familiar with a "reflectometer", it's setup like that. If
> not, the simplest sufficient test setup for this problem would be to
> wire the UBX TX to a resistive splitter, to both ports of the TwinRX.
> How the software works is very simple: the transmitter is tuned to a
> frequency, transmit value is a tone at 0Hz (transmit an array of '1's),
> receiver is tuned to a nearby frequency and the tone is observed on
> both channels. The value of interest is the ratio of the value of the
> tone of the two channels. The objective is to quickly and accurately do
> this in a sweep across ~50MHz-6GHz.
>
> UHD version: UHD_4.0.0.0-1-gcf570707
> What I expect: the phase difference between the two channels at any
> given frequency to be consistent from run-to-run.
> What I see: I can usually get consistent results, but sometimes I see
> 90,180,270 degree offsets instead.
>
> I expect the relevant section to this problem to be when and how I
> handle tuning, so I've included that below:
>
> The tune function: (simplified for brevity/clarity)
> _setFrequency(double freq) {
>      double rx_freq = 0; int closest_idx = 0; double tx_freq = freq;
>      bool tx_tuned = false; bool rx_tuned = false;
>      // loop to get closest freq in a predefined list ;
>      // the idea is to tune the receiver much less often because
>      // it seems to take a lot longer due to the need to use timed
>      // commands
>      for (int idx = 0; idx < _freq_list.size(); idx++) {
>          if (std::abs(freq - _freq_list[idx]) < std::abs(freq-rx_freq)){
>              closest_idx = idx;
>              rx_freq = _freq_list[idx];
>          }
>      }
>      if (tx_freq == rx_freq) {
>          // (crudely) avoid tuning rx to exactly the same freq as tx
>          tx_freq += 50e3;
>      }
>      if (_current_tx_freq != tx_freq) {
>          _usrp->clear_command_time(); // tune tx immediately
>          auto tx_req = uhd::tune_request_t(tx_freq);
>          _usrp->set_tx_freq(tx_freq,0);
>          _current_tx_freq = tx_freq;
>          tx_tuned = true;
>      }
>      if (_current_rx_freq != rx_freq)
>      {
>          _usrp->clear_command_time();
>          _usrp->set_command_time(_usrp-
>> get_time_now()+uhd::time_spec_t(0.100));
>          _usrp->set_rx_freq(rx_freq,0);
>          _usrp->set_rx_freq(rx_freq,1);
>          _delay_ms(250); // delay, but keep event loop alive
>          // tune again, because it seems to help
>          _usrp->clear_command_time();
>          _usrp->set_command_time(_usrp-
>> get_time_now()+uhd::time_spec_t(0.100));
>          _delay_ms(250);
>          _usrp->clear_command_time();
>          rx_tuned = true;
>          _current_rx_freq = rx_freq;
>      }
>      if (tx_tuned and not rx_tuned) {
>          _delay_ms(50);
>      }
> }
>
> to get a value: (simplified for brevity/clarity)
> receive some samples of channel a and channel b
> A = fft(a)
> B = fft(b)
> aindex = find the index of the tone in A (by looping through the values
> of the magnitude of A)
> bindex = find the index of the tone in B (by looping through the values
> of the magnitude of B)
> ensure that the tone is at the expected frequency for both channels
> R = B[bindex] / A[aindex];
> Rdb = 20 * log10(std::abs(R));
> Rphase = std::arg(R)*180/M_PI;
>
> Respectfully,
> Dustin
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Do the unexpected phase offsets only occur over certain frequency ranges 
or over the whole scan range?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
