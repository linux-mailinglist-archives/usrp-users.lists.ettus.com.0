Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2044A6A464F
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 16:44:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 536923844AD
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 10:44:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677512676; bh=RtUHRXRWjKcMjStUFLc3M+Y98rZkMgirY46xxczQpw4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f5DUWoZT27g2mQKh9tvQaVNWh8G3J7tAq1rKC+4AA+dofG1gYVzOssel8suLS5vOU
	 R0ZoowiQ/kmBzuwKfxEe5hX+ZL+iwdqdURlM+QinNdRiTe+9sAwNk0Z4VgZHQj9Yku
	 SZSW0Lk89lk5dZp0nwzD3bJs2wKRZyEqlSv3Cwgeyqgxx+F5ztlugBrJfxeBEJvXDt
	 Ye76G5gzq5hvkIbANJxBLXp1lhRFyuX8e/qeVwJuQAktkPXgcqzT30ZbHy2D225Eho
	 PFtDswoImhIzcfGHIt31U3S5xU99UX2ly1z6oabFITZSDnozJfb1vKI6wABaZZneoS
	 jRDyRvePu92DA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 1435F384236
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 10:42:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="AYk9qU8f";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id ec43so27535741edb.8
        for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 07:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hfKMRaMifXVo3sQRFEdF35rJuDqR/3GEm9JRsNRFYxo=;
        b=AYk9qU8foDbZbH0v9CbGzJdyIfH4Px+OJBDEUA9/VkANg1Nt43t/J7T8ugoWeR38dy
         Cz/GXgGgDHZ6EV4UK214aL1lTejc96ONeLQ/jcnpKxahcCPwWQFlhlTPatebOlgE7FCM
         b6vxOZV9MCfKfm3sMhBkrLrWXqv8WaJ3lWR1mf/kd59N4dqsm/ZpB0Wo0RRAEOtbj2oY
         4iBDFss4UsNiP6bGs2ZwI5v+WXBWi0SITnsTDWTFA9LOkmVyJ4/TM4QvbAvXqL7y7gPY
         MuVc7m0RLkmdhK6iCjRq22TRmY3JkD23BFuwgQHZG3AiIh62mlnumaWaV//SX4pCsCMS
         kKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hfKMRaMifXVo3sQRFEdF35rJuDqR/3GEm9JRsNRFYxo=;
        b=ZT0j37N7asVCOXbb0SLvovN3tJm+UEFpq34GDpzjmapI6Vd++bpquuPNMfOFLHcdup
         t7dqdO11HvDWptDhfEUTuhVvpgT0MAoI9UD+cPGPOm/igLo/mtnkV8h3oQ9yGF6DnUWA
         XVH0AaTvllgF3uWV2vzUz9MGk1UGHWWmcZ+v4iqxJsehWLeq6Kq3ci8cVxOHMsql2HpR
         n9ihVlh5as3VcdL5LAKUalgpdqaYmWbCFDoeZkcomKxIQQ5TjOSWmNG3Q1F0KH86+LhR
         uiAOE/aCVNa5AwTwOvVylwVplFrf8DNGJV1YdZU/Fc7e53Ublde8fOF9AXR43VG5M3fg
         E6eA==
X-Gm-Message-State: AO0yUKX0S4BxoTJeEo+WrrdypPEteMvECCE1AO96hGWEc8xghmsQ+OlY
	UWnrUyDIsMw7+O3QboMCDsbieSc0HiuxWK9hXaA=
X-Google-Smtp-Source: AK7set+SKX9PpQOMAFh1l2ptptfvcrM8nAbhXpaiPG84wXpGNzmjWEeXwm92UtHuMp0/y9auJQwWfw==
X-Received: by 2002:a17:907:1b08:b0:900:a150:cea4 with SMTP id mp8-20020a1709071b0800b00900a150cea4mr2923855ejc.37.1677512558564;
        Mon, 27 Feb 2023 07:42:38 -0800 (PST)
Received: from ?IPV6:2001:9e8:3844:200:998f:ca6a:6065:3212? ([2001:9e8:3844:200:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id 27-20020a508e1b000000b004aef609f747sm3266652edw.3.2023.02.27.07.42.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 07:42:38 -0800 (PST)
Message-ID: <15d148ca-2562-5999-2eb4-926dac6bbb3e@ettus.com>
Date: Mon, 27 Feb 2023 16:42:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
Message-ID-Hash: AZ46RIDHNASH26JMSUNLIB2OSRNPD2AT
X-Message-ID-Hash: AZ46RIDHNASH26JMSUNLIB2OSRNPD2AT
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: Receive Signales Sent by another
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZ46RIDHNASH26JMSUNLIB2OSRNPD2AT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7756020169374730635=="

This is a multi-part message in MIME format.
--===============7756020169374730635==
Content-Type: multipart/alternative;
 boundary="------------fuCLMyJ0kAfwdCr7RG88iXHp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fuCLMyJ0kAfwdCr7RG88iXHp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

20 and 10dB gain are very low on a B210. See uhd_usrp_probe to see the possible gain ranges!

Best regards,
Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found athttps://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 27.02.23 16:27, oiu13q2t5pibtq1--- via USRP-users wrote:
>
> I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and compiled uhd from source
>
> |[INFO] [UHD] linux; Clang version 14.0.0 ; Boost_107400; UHD_4.4.0.0-0-g5fac246b|
>
> Following the USRP Guide 
> https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio, I checked:
>
> |/usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --tx_rate 10e6|
>
> on both SDRs
>
> which yielded
>
> |Num received samples: 100243473|
>
> |Num dropped samples: 0|
>
> |Num overruns detected: 0|
>
> |Num transmitted samples: 100064040|
>
>
> Now I tried to receive signals generated the other via
>
> SDR1: RX:
>
> |/usr/lib/uhd/examples/rx_ascii_art_dft --freq 4996e6 --rate 5e6 --gain 20 --bw 5e6 
> --ref-lvl -30|
>
> SDR2: TX:
>
> |/usr/lib/uhd/examples/tx_waveforms --freq 4996e6 --rate 5e6 --gain 10|
>
>
> I would expect a peak somewhere around 4996 MHz; I only see noise which is not affected 
> by the |tx_waveforms |call
>
> The SDRs are in the same room.
>
> The TX LED is red, the RX2 LED is green, indicating that they are indeed sending and 
> receiving
>
>
> Am I missing something important here?!
>
>
> How can I solve that basic task?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------fuCLMyJ0kAfwdCr7RG88iXHp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>20 and 10dB gain are very low on a B210. See uhd_usrp_probe to
      see the possible gain ranges!</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <pre class="moz-signature" cols="90">DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at <a class="moz-txt-link-freetext" href="https://www.ettus.com/sdr-software/licenses/">https://www.ettus.com/sdr-software/licenses/</a>.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.</pre>
    <div class="moz-cite-prefix">On 27.02.23 16:27, oiu13q2t5pibtq1---
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and
        compiled uhd from source</p>
      <p><code>[INFO] [UHD] linux; Clang version 14.0.0 ; Boost_107400;
          UHD_4.4.0.0-0-g5fac246b</code></p>
      <p>Following the USRP Guide
<a class="moz-txt-link-freetext" href="https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio">https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio</a>,
        I checked:</p>
      <p><code>/usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6
          --tx_rate 10e6</code></p>
      <p>on both SDRs</p>
      <p>which yielded</p>
      <p><code>Num received samples: 100243473</code></p>
      <p><code> Num dropped samples: 0</code></p>
      <p><code> Num overruns detected: 0</code></p>
      <p><code> Num transmitted samples: 100064040</code></p>
      <p><br>
      </p>
      <p>Now I tried to receive signals generated the other via</p>
      <p>SDR1: RX:</p>
      <p class=""><code>/usr/lib/uhd/examples/rx_ascii_art_dft --freq
          4996e6 --rate 5e6 --gain 20 --bw 5e6 --ref-lvl -30</code></p>
      <p>SDR2: TX:</p>
      <p><code>/usr/lib/uhd/examples/tx_waveforms --freq 4996e6 --rate
          5e6 --gain 10</code></p>
      <p><br>
      </p>
      <p>I would expect a peak somewhere around 4996 MHz; I only see
        noise which is not affected by the <code>tx_waveforms </code>call</p>
      <p>The SDRs are in the same room.</p>
      <p>The TX LED is red, the RX2 LED is green, indicating that they
        are indeed sending and receiving</p>
      <p><br>
      </p>
      <p>Am I missing something important here?!</p>
      <p><br>
      </p>
      <p>How can I solve that basic task?</p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------fuCLMyJ0kAfwdCr7RG88iXHp--

--===============7756020169374730635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7756020169374730635==--
