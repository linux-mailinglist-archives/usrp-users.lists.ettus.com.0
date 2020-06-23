Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D1F2046E4
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 03:53:20 +0200 (CEST)
Received: from [::1] (port=44478 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnY7g-0001Ri-TC; Mon, 22 Jun 2020 21:53:16 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:39862)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnY7c-0001Nf-NC
 for usrp-users@lists.ettus.com; Mon, 22 Jun 2020 21:53:12 -0400
Received: by mail-qk1-f177.google.com with SMTP id l6so13841731qkc.6
 for <usrp-users@lists.ettus.com>; Mon, 22 Jun 2020 18:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=JyJlro3NjT/gJMdfcz/TzXwHcQE2jL8IcqDEZDu84s4=;
 b=MVnQyM1ZXvmiMQaTmzw0cWzwV53IwoBrW9/F1xVhzYAFRzOVTBRLHiyWzmYp45VkXx
 BneQ6nEhBe6LROgAFTYTJ2XkvMDYnxMFgII0PUecVbx+GUdbKBDMi6M59cH/S2des6Ge
 snTqUp9Hx+URjd/smE+ZDth3Ize4R1SdTeGpxaLp2hZ/JLMWIes9u3SiH1DOSAFV2hWl
 W5daRhCnWazQ5bLeWPHPn/6w1xoDGmRmn46OKyrg9RxhnK+ff7jq6A4VJH36j/V3hLwC
 H7IClIpA3XbdHpuJwwb9JB1A2KbqkeYt7kLfA01JNr7Y0h3iaaDbjcBV9KVXNpV3QjF0
 e3Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=JyJlro3NjT/gJMdfcz/TzXwHcQE2jL8IcqDEZDu84s4=;
 b=Dt856gmh5yXKc8ghyFNXh//u88quM8ms7gISsl9Ruhjt6untsega9DPMdsW1YX4OXg
 7PzYbwB7yN01UPguMepjgI0rIGnsd8LaBRYEvOWP4HJt9kKtmBjSE7HAz8wg63Sy04yx
 3CBgvzc1FZ4mJsTb+BPRmvPmeF3ZR6sDhs5BqHRciYRrBpkUpnNFzD+2O4v0H3IpKGVa
 Rs/wpiXAeIN0rYdMVT84/K13usOzzBhsoQD9/mdEcTGFi05kYxdkMP1PHZSkTFvua80V
 8PSB0m7cL1pYSkzQmjBv2gLbH01AMZVYdud7K8cezcjOMUVoNvIPFXPGPg2sFjX39xba
 Ljkw==
X-Gm-Message-State: AOAM531yXjq1OqtxfFaq/q9CQHpUBtXN1EoHgK9dIqnlWSMYguTlc7iv
 8p7WM6Ho4/G7LXytCFhYSDmTkdeY3NM=
X-Google-Smtp-Source: ABdhPJzu2b+2Apz0WLHpWA1PiAcZKInLx6mrw6FU8+i5UBfnsZuHk5uA6m6/ac3BGVFGzMW3Q1rVRg==
X-Received: by 2002:a37:9b0d:: with SMTP id d13mr18910330qke.351.1592877151943; 
 Mon, 22 Jun 2020 18:52:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109]) by smtp.googlemail.com with ESMTPSA id
 q24sm15952465qkj.103.2020.06.22.18.52.31
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jun 2020 18:52:31 -0700 (PDT)
Message-ID: <5EF1605E.3050808@gmail.com>
Date: Mon, 22 Jun 2020 21:52:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <dfbc4b72-9d92-4f06-b850-6923cccb276b@Spark>
 <5cdd41e9-5b4f-4876-82de-878db9201c6a@Spark>
In-Reply-To: <5cdd41e9-5b4f-4876-82de-878db9201c6a@Spark>
Subject: Re: [USRP-users] AM transmission
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
Content-Type: multipart/mixed; boundary="===============0289843185142661489=="
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

This is a multi-part message in MIME format.
--===============0289843185142661489==
Content-Type: multipart/alternative;
 boundary="------------010803000909040907060603"

This is a multi-part message in MIME format.
--------------010803000909040907060603
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/22/2020 09:14 PM, Ernest Poletaev via USRP-users wrote:
> Hello everyone,
>
> I'm new to SDR and trying to implement transmission with AM Modulation 
> using uhd library with B205mini board.
>
> Currently I have following procedure:
>
> Set RX and TX parameters for RF frequency, channel 0
> Set sampling frequency to 1M samples per second
> Set RX and TX gain
> Receiving as sc8, sc8
> Transmitting as fc32, sc8
>
> -loop:
>
> Receiving:
>
> As usual with AM demodulation and it is working
>
> Transmitting:
>
> On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw audio
> Convert each 16 bit sample to complex float with Q=[audio sample 
> normalized to -1 - 1] and I = 0
> Resample (simple interpolation) 44100Hz buffer to 1MHz
> Send buffer for transmission
>
> -end loop
>
> As RX and TX have same frequency I can see data on RF Analyzer, but it 
> didn't demodulates to an audio signal.
>
> Am I missing something or my assumption is wrong on some steps?
>
> Regards,
> Ernest
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
I'm going to suggest that if you're new to SDR and DSP, you might invest 
the time to install Gnu Radio, which provides a very rich environment
   for not only constructing DSP flows for most popular SDR radios, but 
also debugging those flows when they don't work out as you expect.



--------------010803000909040907060603
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/22/2020 09:14 PM, Ernest Poletaev
      via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:5cdd41e9-5b4f-4876-82de-878db9201c6a@Spark"
      type="cite">
      <title></title>
      <div name="messageBodySection">
        <div dir="auto">Hello everyone,<br>
          <br>
          I'm new to SDR and trying to implement transmission with AM
          Modulation using uhd library with B205mini board.<br>
          <br>
          Currently I have following procedure:<br>
          <br>
          Set RX and TX parameters for RF frequency, channel 0<br>
          Set sampling frequency to 1M samples per second<br>
          Set RX and TX gain<br>
          Receiving as sc8, sc8<br>
          Transmitting as fc32, sc8<br>
          <br>
          -loop:<br>
          <br>
          Receiving:<br>
          <br>
          As usual with AM demodulation and it is working<br>
          <br>
          Transmitting:<br>
          <br>
          On audio sink get next 4096 samples of 44.1KHz 16 bit PCM raw
          audio<br>
          Convert each 16 bit sample to complex float with Q=[audio
          sample normalized to -1 - 1] and I = 0<br>
          Resample (simple interpolation) 44100Hz buffer to 1MHz<br>
          Send buffer for transmission<br>
          <br>
          -end loop<br>
          <br>
          As RX and TX have same frequency I can see data on RF
          Analyzer, but it didn't demodulates to an audio signal.<br>
          <br>
          Am I missing something or my assumption is wrong on some
          steps?<br>
        </div>
      </div>
      <div name="messageSignatureSection"><br>
        <div class="matchFont">
          <div dir="auto">Regards,
            <div dir="auto">Ernest</div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    I'm going to suggest that if you're new to SDR and DSP, you might
    invest the time to install Gnu Radio, which provides a very rich
    environment<br>
      for not only constructing DSP flows for most popular SDR radios,
    but also debugging those flows when they don't work out as you
    expect.<br>
    <br>
    <br>
  </body>
</html>

--------------010803000909040907060603--


--===============0289843185142661489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0289843185142661489==--

