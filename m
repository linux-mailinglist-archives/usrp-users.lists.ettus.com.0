Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A34341DF60
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 18:42:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47512384217
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 12:42:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fHz9IxrB";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C84338356A
	for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 12:42:00 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id j13so6308624qtq.6
        for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 09:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=UwsHUuIITZcmN2F8tM+SUnF+VQsX8hO0ZNo1K9ohFPQ=;
        b=fHz9IxrBOZAqCSl66WFn1sEyVrqjXIeq5R9Do5KwVG5YVG9FDl82sui1Q8VLyIQQ1k
         82YJek7wlU8hyvOUmuCX1RcFK36SVFVq9Y9dXYTRM7Oc78UP/z1dKztb/mlRnBe9KBr3
         porROG8R5ez/lZHyL+pW9eBl3t5ZVEOvXx5XDmIr7AgHpvScI7I4fSrQyZzNG17oAQlI
         rQ/oHPr4JZLBB7nfFk4I+KmgWyl9P0K1/p91m3oBdUlvV/qFp/pqmiNj7ZMPISkf8MKs
         TcyJH96VMKF5LMpRDrVe4JEpINokgLXKkgyEmqjOq65cr+t1xUdQWIYJTvZn0iOx2oCa
         zUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=UwsHUuIITZcmN2F8tM+SUnF+VQsX8hO0ZNo1K9ohFPQ=;
        b=yAJew/DW8qtyjb9dHtaUywmZKTolRjCa1++BDFNN162qT7sk3jB8ms36s6AEKgYrCL
         pVImtt3B5uwZ+hJCji1xOcZF9TZFttHXQmVyZHbHrwOG33VFYr14Jouj+N8pkCILUDYK
         aTRz8wK0QbNd1o4lD8hUtGC9Af6ZpS/npgLr9Zjb9RPHQqgDo5ExVkptzjEUjxhdS09W
         0fWSHgYawKzubIJFidQzKOTqpWKikSmtmnd1UBLZvRtTvaf2W/OIp/lRsMSILDF7LeJa
         T0/uWG9Y5iui8uryQK7U/GIyiWAuMFPnOwnT1PLH7A4h+oW46oGapXhX0CXpuoJJkD/+
         p5PQ==
X-Gm-Message-State: AOAM5310IZ788BHRTHMNZ3Z9PczO+uwc87J14PcLYfT9QhHSI6lPJomo
	KKnyLzretb1LzO7+fnhcAD5exZQOD3ayRw==
X-Google-Smtp-Source: ABdhPJyyfpktuOkPWFfpeu2fmyD6WEG0oLr/Xm4L50Ewq+gn+LK/C9RXZP8Lutom8kzI+9LqwdFTzA==
X-Received: by 2002:ac8:7d8b:: with SMTP id c11mr7782911qtd.45.1633020119657;
        Thu, 30 Sep 2021 09:41:59 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id i18sm1995124qtx.60.2021.09.30.09.41.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 09:41:58 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com>
Date: Thu, 30 Sep 2021 12:41:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
Message-ID-Hash: APB2Q2TC5SIF4DG4Q2XZHCTCU4ZE3EK7
X-Message-ID-Hash: APB2Q2TC5SIF4DG4Q2XZHCTCU4ZE3EK7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/APB2Q2TC5SIF4DG4Q2XZHCTCU4ZE3EK7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3359753855478403338=="

This is a multi-part message in MIME format.
--===============3359753855478403338==
Content-Type: multipart/alternative;
 boundary="------------B68043D7AD3842EB0DE157C8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B68043D7AD3842EB0DE157C8
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-09-30 11:21 a.m., Adam Bader (Proxy) wrote:
> We are having issues trying to run our application with the current 
> version 4 releases of UHD. We are running successfully on version 
> 3.13. I've been trying to create a simplified test scenario using a 
> single output on a N310 and continue to see underruns and time errors 
> on version 4.1.
>
> I'm using a modified benchmark_rate application trying to model our 
> streaming implementation.My testing has been on a system running 
> Ubuntu 18.04. The computer has a 10Gb card connected directly to port 
> sfp1 on the radio. The radio is running the default HG fpga image. MTU 
> is set to 9000.
>
> Data is transmitted at 62.5Msps in a continuous burst. Every packet is 
> sent with an up to date time_spec. Our application builds up and sends 
> 1ms worth of samples to the radio repeatedly (trying to pass the whole 
> ms to send() as well as break them up into max_num_samp chunks shows 
> no change in timing behavior). After resetting radio time to 0 the 
> initial packet is time spec'd to 1.8 seconds to prime the radio 
> buffer. There is no rx stream involved.
>
> I had the sample application poll radio time in parallel with sending 
> data to the radio. The radio time thread prints out the result from 
> get_time_now every 100ms. The transmission thread prints out the 
> time_spec that was just transmitted once send returns. In 4.1 I can 
> see streaming is effectively handling everything in 'real-time'. The 
> radio times being printed line up identically with the time_spec that 
> was just transmitted. Any delay in transmission results in immediate 
> underruns and time errors. This same test when done with the 3.13 host 
> library and another N310 using the 3.13 firmware shows the sample just 
> written being 150-200ms ahead of what the current radio time is.
>
> Is there anything that can be done to increase the amount of buffer 
> available on the radio with the stock FPGA firmware? Is there 
> something we need to rethink in our streaming implementation in UHD4? 
> Appreciate any insights.
>
>
*Are you able to do continuous (not-timed) streaming at 62.5Msps in your 
current configuration?


*

--------------B68043D7AD3842EB0DE157C8
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-30 11:21 a.m., Adam Bader
      (Proxy) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <span style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">We are having issues
          trying to run our application with the current version 4
          releases of UHD. We are running successfully on version 3.13.
          I've been trying to create a simplified test scenario using a
          single output on a N310 and continue to see underruns and time
          errors on version 4.1.</span>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          <br>
        </div>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          I'm using a modified benchmark_rate application trying to
          model our streaming implementation.<span>=A0</span><span
            style=3D"margin: 0px; background-color: rgb(255, 255, 255);
            display: inline !important; color: rgb(0, 0, 0);">My testing
            has been on a system running Ubuntu 18.04. The computer has
            a 10Gb card connected directly to port sfp1 on the radio.
            The radio is running the default HG fpga image. MTU is set
            to 9000.</span></div>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          <br>
        </div>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          Data is transmitted at 62.5Msps in a continuous burst. Every
          packet is sent with an up to date time_spec. Our application
          builds up and sends 1ms worth of samples to the radio
          repeatedly (trying to pass the whole ms to send() as well as
          break them up into max_num_samp chunks shows no change in
          timing behavior). After resetting radio time to 0 the initial
          packet is time spec'd to 1.8 seconds to prime the radio
          buffer. There is no rx stream involved.</div>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          <br>
        </div>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          I had the sample application poll radio time in parallel with
          sending data to the radio. The radio time thread prints out
          the result from get_time_now every 100ms. The transmission
          thread prints out the time_spec that was just transmitted once
          send returns. In 4.1 I can see streaming is effectively
          handling everything in 'real-time'. The radio times being
          printed line up identically with the time_spec that was just
          transmitted. Any delay in transmission results in immediate
          underruns and time errors. This same test when done with the
          3.13 host library and another N310 using the 3.13 firmware
          shows the sample just written being 150-200ms ahead of what
          the current radio time is.</div>
        <div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">
          <br>
        </div>
        <span style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0);
          background-color: rgb(255, 255, 255);">Is there anything that
          can be done to increase the amount of buffer available on the
          radio with the stock FPGA firmware? Is there something we need
          to rethink in our streaming implementation in UHD4? Appreciate
          any insights.</span><br>
      </div>
      <div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <br>
      </div>
    </blockquote>
    <b>Are you able to do continuous (not-timed) streaming at 62.5Msps
      in your current configuration?<br>
      <br>
      <br>
    </b>
  </body>
</html>

--------------B68043D7AD3842EB0DE157C8--

--===============3359753855478403338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3359753855478403338==--
