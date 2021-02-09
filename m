Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE1F315870
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 22:17:04 +0100 (CET)
Received: from [::1] (port=38662 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9aNZ-0004hc-IP; Tue, 09 Feb 2021 16:17:01 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:33684)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l9aNW-0004cN-Hf
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 16:16:58 -0500
Received: by mail-qk1-f177.google.com with SMTP id b14so5999925qkk.0
 for <usrp-users@lists.ettus.com>; Tue, 09 Feb 2021 13:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=XRorGpdnNZz2ONRmRckb3Y9VodPjZHrHYBqUkG0RVoc=;
 b=fDIyySMhM4MAedVFo8AnTAYASfj68AjpIG088gXuozyAB0+ZDaPoxZuBY56GSRZgX3
 8aePzzjXItaVwmyEiGiRRxOgb92xS4Kpw84fv5AeeVJexuPwZO1D4JeqHK4r9nRQ25S4
 sA3QQxDnUOvCAqjFKO4OTth4HkS78tgoRbnBNH4KayzLE1Y1Hm51CQ4rB9qHc2OUcC13
 OSftqSPhu+GOTEJpkHcAqbwhGzkpLZ7SdqEtZFdvJRXibdtVHB2iVaSHb92vyaU9iebc
 2X2ENVqc+52qYKvs3XQ1DoSgzz3RSMAlqCCgudkE3wEVFBeSL3MFUqCSSflbSNyhGyPv
 QMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=XRorGpdnNZz2ONRmRckb3Y9VodPjZHrHYBqUkG0RVoc=;
 b=mNm4SwHxy21GUgCHORltfm7BqPJp5bLmlCcMlMHgd6MzrVRIpTmmLgykO7sFIsufuT
 mKO39Vo/k4/i+rQCVWZ9xuND+JQHUq6NUzgeQLdAp/nUnMVf8w0TW65LWyuobcHe1BoZ
 ipaAizqH75/IEQHsmWUdfIj4/m9kv8iD92umfZcJqrrugsvkdubKeV1SesDYq/81U1YB
 UUqqZaelh3OpcS3ecthGaTEBKn64RYiLkBtlg32ly8WixwGfwEw9x/NDFBgLuqTHOfT1
 1IrHGvjwHKqtHcD1Wh5LiVfOVb/tgCwGeCJ2/go9f7JWcWRE9ZNv9toKEqcK3J1AEHew
 qkdg==
X-Gm-Message-State: AOAM533FS5Aqhzz13/p9Q1Qr47STi7h5pfQdfXVMcpm4CFw6gbJy7ys5
 tXceqhZMdkL7F4PZu/o0WgxYN5zudVs=
X-Google-Smtp-Source: ABdhPJy7i2ci6Dpl+16iS/0vsBb2kdvJsCMc+GWx7DylrVRiOLpvV5XB+kyJn54r+h1UlvaJY3gKlg==
X-Received: by 2002:a37:8647:: with SMTP id i68mr65514qkd.165.1612905376912;
 Tue, 09 Feb 2021 13:16:16 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id 199sm2937105qkj.9.2021.02.09.13.16.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 13:16:16 -0800 (PST)
Message-ID: <6022FB9F.30103@gmail.com>
Date: Tue, 09 Feb 2021 16:16:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] B210 NB-IoT frontend issues
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
Content-Type: multipart/mixed; boundary="===============3525872636157691816=="
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
--===============3525872636157691816==
Content-Type: multipart/alternative;
 boundary="------------000302080108070103070600"

This is a multi-part message in MIME format.
--------------000302080108070103070600
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/09/2021 03:48 PM, Luca Lodigiani via USRP-users wrote:
> Hello,
>
> My team and I are doing some experiments with the USRP B210 and NB-IoT 
> waveforms.
> During tests we have observed a few issues with the RF output, that we 
> would like to understand better, and /hopefully/​ fix or mitigate.   I 
> must admit that we are not yet very familiar with USRP SDRs, so I 
> apologize in advance for any stupid question!  There are so many 
> options to tweak the USRP :-) !
>
> This is what we have observed:
>
>  1. Apparent RF leakage from RX to TX when idle (i.e. not transmitting
>     the 180 kHz NB-IoT carrier).  Our B210 was connected to an RF
>     matrix where other signals in other channels not immediately
>     adjacent to our center frequency also exist, and, every time we
>     were not transmitting, some of those signals (a MHz away) were
>     picked up from the RX and “leaked” into the TX – this could be
>     observed from a spectrum analyzer connected to the B210 TX and it
>     appears to be picking up quite a wide bandwidth (more than 5-10 MHz).
>      1. Is this a known issue with the B210 RF frontend?
>      2. Does anyone have any suggestions on how to mitigate it (if
>         even possible)?
>      3. We tried limiting RX bandwidth as described here
>         https://files.ettus.com/manual/page_usrp_b200.html#b200_fe_bw , but
>         it seems not change anything at least when idle. Any ideas?
>
Given that the leakage path that you're (I think) talking about would be 
VERY VERY early in the RF chain inside the AD9361 chip, setting
   analog bandwidth would have ZERO effect, since that sets the *IF* 
bandwidth--well after the bits and pieces you're likely dealing with.
   I haven't looked at the TX/RX isolation spec in the AD9361 
data-sheet, but it would surprise me very much if it were better than 50dB.
   It's pretty hard inside such a tiny tiny piece of silicon to isolate 
RF signal pathways more than that.   What power levels is the RX2 port
   seeing in your application--your "RF matrix" really needs to not be 
presenting more than about -15dBm to the RX2 port(s), or there's
   potential for damage.

Also, when you talk about 180kHz carrier, you're talking *bandwidth* or 
center frequency?  The center frequency on the B210 cannot go
  below about 50MHz.


>     1.
>
>
>
>  1. Out-of-band emissions and spectral regrowth:  The output NB-IoT
>     carrier shows quite large out-of-band emissions (~-30 dBc @200 kHz
>     from center frequency, -50 dBc @400 kHz).
>      1. Could this be due to non-linear distortion caused by the B210
>         frontend (AD9361) ?
>      2. Would limiting TX analog bandwidth with set_tx_bandwidth(bw)
>         help here?
>
It might  Help to lower TX analog bandwidth, but UHD automatically sets 
it based on your sample rate.  Also try reducing baseband magnitude
   a little bit, as well as reducing TX gain a little bit.

>      1. Any other suggestions?
>
> I also have some other general questions...:
>
>  1. Even after reading this
>     (https://files.ettus.com/manual/page_power.html ) I am still not
>     super clear about if and how the set_tx_power_reference() (and
>     rx)  affect the gain level.  I think understand TX gain setting
>     will obviously affect the output power though.
>
The tx_power_reference() API is new, so I cannot comment on how it works 
out in practice. The B2xx have about 80dB of TX gain setting
   range, but with peak power output of about +7dBm over most of its 
frequency range, I'd say only the top 30dB is really useful.
>
>  1. When talking about multiple "gain stages", how does this translate
>     to the B210?  Different stages of the AD9361 ?
>
Yes, different stages within the AD9361 in the case of B2xx.

>  1. How are set_tx_bandwidth and set_rx_bandwidth implemented in
>     practice in the B210?
>
By using features inside the AD9361 to set the effective analog 
bandwidth in front of/behind the ADCs/DACs.  I'm not sure whether
   the implementation inside the AD9361 is purely-analog (like 
switched-capacitor filters, and changing clocks), or a hybrid approach
   that uses the DSP logic inside the AD9361.  The ADCs and DACs in the 
AD936x family operate at very high sample rates internally,
   and use DSP logic to provide the actual 
delivered-to-digital-interface sample rates, so there's room to do both 
a digital and analog
   approach in providing the necessary effective analog bandwidth. But 
UHD normally picks an analog bandwidth setting that is
   appropriate to the desired sample rate.  The only time this may not 
be appropriate is if your actual signal is very much narrower than
   is implied by the selected sample rate.

>
> Many thanks
> Luca
>
> ------------------------------------------------------------------------
>
> This communication is private and confidential and may contain 
> information that is proprietary, privileged or otherwise legally 
> exempt from disclosure. If you have received this message in error, 
> please notify the sender immediately by e-mail and delete all copies 
> of the message. In accordance with our guidelines, emails sent or 
> received may be monitored. Inmarsat Global Limited, Registered No. 
> 3675885. Registered in England and Wales with Registered Office at 99 
> City Road, London EC1Y 1AX
>
> INTERNAL | © INMARSAT
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------000302080108070103070600
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/09/2021 03:48 PM, Luca Lodigiani
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        My team and I are doing some experiments with the USRP B210 and
        NB-IoT waveforms.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        During tests we have observed a few issues with the RF output,
        that we would like to understand better, and
        <i>hopefully</i>​ fix or mitigate.   I must admit that we are
        not yet very familiar with USRP SDRs, so I apologize in advance
        for any stupid question!  There are so many options to tweak the
        USRP :-) !</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        This is what we have observed:</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <ol>
          <li><span>Apparent RF leakage from RX to TX when idle (i.e.
              not transmitting the 180 kHz NB-IoT carrier).  Our B210
              was connected to an RF matrix where other signals in other
              channels not immediately adjacent to our center frequency
              also exist, and, every time we were not transmitting, some
              of those signals (a MHz away) were picked up from the RX
              and “leaked” into the TX – this could be observed from a
              spectrum analyzer connected to the B210 TX and it appears
              to be picking up quite a wide bandwidth (more than 5-10
              MHz).   <br>
            </span></li>
          <ol style="list-style-type: lower-alpha;">
            <li><span><span
                  style="text-align:start;background-color:rgb(255, 255,
                  255);display:inline !important">Is this a known issue
                  with the B210 RF frontend?  </span></span></li>
            <li><span><span
                  style="text-align:start;background-color:rgb(255, 255,
                  255);display:inline !important">Does anyone have any
                  suggestions on how to mitigate it (if even possible)?</span><br>
              </span></li>
            <li><span><span
                  style="text-align:start;background-color:rgb(255, 255,
                  255);display:inline !important">We tried limiting RX
                  bandwidth as described here <a moz-do-not-send="true"
href="https://files.ettus.com/manual/page_usrp_b200.html#b200_fe_bw"
                    id="LPlnk426109">https://files.ettus.com/manual/page_usrp_b200.html#b200_fe_bw</a> ,

                  but it seems not change anything at least when idle. 
                  Any ideas? <br>
                </span></span></li>
          </ol>
        </ol>
      </div>
    </blockquote>
    Given that the leakage path that you're (I think) talking about
    would be VERY VERY early in the RF chain inside the AD9361 chip,
    setting<br>
      analog bandwidth would have ZERO effect, since that sets the *IF*
    bandwidth--well after the bits and pieces you're likely dealing with.<br>
      I haven't looked at the TX/RX isolation spec in the AD9361
    data-sheet, but it would surprise me very much if it were better
    than 50dB.<br>
      It's pretty hard inside such a tiny tiny piece of silicon to
    isolate RF signal pathways more than that.   What power levels is
    the RX2 port<br>
      seeing in your application--your "RF matrix" really needs to not
    be presenting more than about -15dBm to the RX2 port(s), or there's<br>
      potential for damage.<br>
    <br>
    Also, when you talk about 180kHz carrier, you're talking *bandwidth*
    or center frequency?  The center frequency on the B210 cannot go<br>
     below about 50MHz.<br>
    <br>
    <br>
    <blockquote
cite="mid:CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <ol>
          <ol style="list-style-type: lower-alpha;">
            <li><span><span
                  style="text-align:start;background-color:rgb(255, 255,
                  255);display:inline !important">
                  <br>
                </span></span></li>
          </ol>
          <li><span>Out-of-band emissions and spectral regrowth:  The
              output NB-IoT carrier shows quite large out-of-band
              emissions (~-30 dBc @200 kHz from center frequency, -50
              dBc @400 kHz).  </span></li>
          <ol style="list-style-type: lower-alpha;">
            <li><span>Could this be due to non-linear distortion caused
                by the B210 frontend (AD9361) ?  <br>
              </span></li>
            <li><span>Would limiting TX analog bandwidth with <span
                  style="font-family:Roboto,
                  sans-serif;font-size:14px;text-align:start;background-color:rgb(255,
                  255, 255);display:inline !important">set_tx_bandwidth(bw) </span>help
                here?</span></li>
          </ol>
        </ol>
      </div>
    </blockquote>
    It might  Help to lower TX analog bandwidth, but UHD automatically
    sets it based on your sample rate.  Also try reducing baseband
    magnitude<br>
      a little bit, as well as reducing TX gain a little bit.<br>
    <br>
    <blockquote
cite="mid:CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <ol>
          <ol style="list-style-type: lower-alpha;">
            <li><span>Any other suggestions?</span></li>
          </ol>
        </ol>
        <div><span>I also have some other general questions...:</span></div>
        <div>
          <ol>
            <li>Even after reading this (<a moz-do-not-send="true"
                href="https://files.ettus.com/manual/page_power.html"
                id="LPlnk324381">https://files.ettus.com/manual/page_power.html</a> )
              I am still not super clear about if and how
              the set_tx_power_reference() (and rx)  affect the gain
              level.  I think understand TX gain setting will obviously
              affect the output power though.  <br>
            </li>
          </ol>
        </div>
      </div>
    </blockquote>
    The tx_power_reference() API is new, so I cannot comment on how it
    works out in practice. The B2xx have about 80dB of TX gain setting<br>
      range, but with peak power output of about +7dBm over most of its
    frequency range, I'd say only the top 30dB is really useful.<br>
    <blockquote
cite="mid:CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div>
          <ol>
            <li>When talking about multiple "gain stages", how does this
              translate to the B210?  Different stages of the AD9361 ?</li>
          </ol>
        </div>
      </div>
    </blockquote>
    Yes, different stages within the AD9361 in the case of B2xx.<br>
    <br>
    <blockquote
cite="mid:CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div>
          <ol>
            <li>How are <span style="font-family:Roboto,
                sans-serif;font-size:14px;text-align:start;background-color:rgb(255,
                255, 255);display:inline !important">set_tx_bandwidth
                and <span style="background-color:rgb(255, 255,
                  255);display:inline !important">set_rx_bandwidth
                  implemented in practice in the B210? <br>
                </span></span></li>
          </ol>
        </div>
      </div>
    </blockquote>
    By using features inside the AD9361 to set the effective analog
    bandwidth in front of/behind the ADCs/DACs.  I'm not sure whether<br>
      the implementation inside the AD9361 is purely-analog (like
    switched-capacitor filters, and changing clocks), or a hybrid
    approach<br>
      that uses the DSP logic inside the AD9361.  The ADCs and DACs in
    the AD936x family operate at very high sample rates internally,<br>
      and use DSP logic to provide the actual
    delivered-to-digital-interface sample rates, so there's room to do
    both a digital and analog<br>
      approach in providing the necessary effective analog bandwidth.  
    But UHD normally picks an analog bandwidth setting that is<br>
      appropriate to the desired sample rate.  The only time this may
    not be appropriate is if your actual signal is very much narrower
    than<br>
      is implied by the selected sample rate.<br>
    <br>
    <blockquote
cite="mid:CWLP123MB2900D9BA3AABDE0989EBCD04F98E9@CWLP123MB2900.GBRP123.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div>
        </div>
        <div><span><br>
          </span></div>
        <div><span>Many thanks</span></div>
        <div><span>Luca</span></div>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <br>
      <hr>
      <font color="Gray" face="Arial" size="1"><br>
        This communication is private and confidential and may contain
        information that is proprietary, privileged or otherwise legally
        exempt from disclosure. If you have received this message in
        error, please notify the sender immediately by e-mail and delete
        all copies of the message. In accordance with our guidelines,
        emails sent or received may be monitored. Inmarsat Global
        Limited, Registered No. 3675885. Registered in England and Wales
        with Registered Office at 99 City Road, London EC1Y 1AX<br>
      </font><br>
      <p
        style="font-family:Calibri;font-size:7pt;color:#000000;margin:5pt;"
        align="Left">
        INTERNAL | © INMARSAT<br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------000302080108070103070600--


--===============3525872636157691816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3525872636157691816==--

