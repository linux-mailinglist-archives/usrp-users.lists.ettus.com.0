Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D3144C79
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 08:31:54 +0100 (CET)
Received: from [::1] (port=50138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuAUT-0006Cu-4P; Wed, 22 Jan 2020 02:31:53 -0500
Received: from mail-qt1-f176.google.com ([209.85.160.176]:37826)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iuAUP-00067C-SA
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 02:31:49 -0500
Received: by mail-qt1-f176.google.com with SMTP id w47so4897847qtk.4
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 23:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=9tM2D7auaMfzMw7Z96MiRbDydOiXcAG7rZCne1Ej1AY=;
 b=DOkRGJSLjua7+ZTJZmLW7shOeXM9ueH1TxLeL34/oK3yqOtOYbshLVJoVYFFYmC0g3
 iX9/G3St5QsoNy5jiHYNTwIzn4fo7e/gS2+12h0UQMszEhO1m8Loly4nr6Czd6r9SILC
 r7q2K6X4AtQRRg65i4AUnRa/Ab7yjjEcW0qNrFyrqpW9h99EU0WZ76/Lqk63gVjSR3so
 u573JzH72xvezOmOnRLzNM7mVTfPTrzhJrgtdnnoZs4FTjpNo51MomsVYO3XDjzXkx5y
 /7klBtmg1dRd2lEpd55w3Xk4ke+4pjn5Mon4IJzU94RprkbdP89qMCY2lrYu58IWahQn
 ncUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=9tM2D7auaMfzMw7Z96MiRbDydOiXcAG7rZCne1Ej1AY=;
 b=KkI0OEwOdNxVpvzqy51mfKRx/3XeKHvvx2NzhwL/Baxtj1GRVyEQ2H+UzXgrmdQgj+
 As0WCQYlbRXKh2wHnh5eQi1Z8qenhbYPxY4YhcsR8jhElXZ0Sdy2HIyPkk1sTkoPAUEY
 PYPtePyfPjmc15mf627zleL2NqB69xT+nIHgcV0Fcy6GX/beq1zYtVofMlyhp2C641PH
 4OUmPJQhEYlan/fRHqIjJZMJ27pKYqmcYHitUrhfZAen2Ebk65+T5DgNWng1n9xLyqrZ
 3nHiswvrUYbhs7O4mn88ZG9LfaqrHVn9jWAabEsy2NrTPFBfecZKOGuNlpru8vGuHjUI
 ChJw==
X-Gm-Message-State: APjAAAWVLeGGgsV4yTt0Rs4QaK8l0ozpT5TTCuhNoudYJxZSGSKhbPhR
 2GahZ4FWLgg0E8xhdjmmk83iYbPIoDQ=
X-Google-Smtp-Source: APXvYqztg7e+pTfeLNqsBwWDD03MZTiiemoc/iyju3hXY9w6kNdxc5rucr5v2cB/T3jCY0gh/csM1w==
X-Received: by 2002:ac8:2d0d:: with SMTP id n13mr9073881qta.236.1579678269038; 
 Tue, 21 Jan 2020 23:31:09 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id j1sm18254465qkl.86.2020.01.21.23.31.08
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jan 2020 23:31:08 -0800 (PST)
Message-ID: <5E27FA3B.4060705@gmail.com>
Date: Wed, 22 Jan 2020 02:31:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAM+1jtcmAXpN2x2fv67+h4pcczT7V9fEi6RW0By=H1XbX78m3A@mail.gmail.com>
In-Reply-To: <CAM+1jtcmAXpN2x2fv67+h4pcczT7V9fEi6RW0By=H1XbX78m3A@mail.gmail.com>
Subject: Re: [USRP-users] USRP B210 hardware architecture
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
Content-Type: multipart/mixed; boundary="===============3591461088792789520=="
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
--===============3591461088792789520==
Content-Type: multipart/alternative;
 boundary="------------040401040205010605080702"

This is a multi-part message in MIME format.
--------------040401040205010605080702
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/22/2020 01:53 AM, massoud pourmandi via USRP-users wrote:
>
> Dear colleagues,
>
> we have a USRP B210 in our lab, though, I have some questions 
> regarding this device.
>
> First, I can’t find its hardware architecture? I would be glad if you 
> send me its detailed information.
>
> I’m using *Gnuradio* as my simulation environment. In this simulator, 
> when I connect a signal generator with sin wave to USRP B210 with a 
> const carrier frequency, the output signal probability undertakes a 
> modulation by USRP carrier frequency. I need to check its hardware 
> architecture in order to inspect how this modulation is carried out.
>
> Secondly, I have checked this device’s datasheet, and the datasheet 
> underlines that this is a full-duplex device. If you check the device, 
> you will notice two pairs of ports (RFA and RFB).
>
> How does this duplexity work?
>
> Thank you for your time.
>
>
The schematics are here:

http://files.ettus.com/schematics/b200/b210.pdf

There are two mostly-independent TX and RX channels in the B210.

A full-duplex application would have an usrp_source and a usrp_sink in 
it, configured appropriately.

So, a simple late-night summary of what happens:

When you transmit a baseband signal out of Gnu Radio, it is digitally 
up-sampled in the FPGA to the sample rate of the DAC in the AD9361
   chip, where it is mixed with the local-oscillator signal to produce 
the RF carrier that is transmitted from the antenna.

Conversely, on the receiver side, the signal arrives at the antenna, is 
mixed down to complex baseband, where it is sampled by the ADC in
   the AD9361, usually down-sampled in the FPGA, and presented to your 
application as a stream of complex-baseband samples.

This is broadly-similar for ANY SDR hardware out there, the details 
differ, but in broad general strokes they are the same.



--------------040401040205010605080702
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/22/2020 01:53 AM, massoud
      pourmandi via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAM+1jtcmAXpN2x2fv67+h4pcczT7V9fEi6RW0By=H1XbX78m3A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">Dear colleagues,</span></p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">we have a USRP B210 in our lab,
            though, I have some questions regarding this device.</span></p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">First, I can’t find its hardware
            architecture?
            I would be glad if you send me its detailed information. </span></p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">I’m using <b>Gnuradio</b> as my
            simulation environment. In this simulator, when I connect a
            signal generator
            with sin wave to USRP B210 with a const carrier frequency,
            the output signal probability
            undertakes a modulation by USRP carrier frequency. I need to
            check its hardware
            architecture in order to inspect how this modulation is
            carried out. </span></p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">Secondly, I have checked this
            device’s
            datasheet, and the datasheet underlines that this is a
            full-duplex device. If you
            check the device, you will notice two pairs of ports (RFA
            and RFB).</span></p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">How does this duplexity work?</span></p>
        <p class="MsoNormal" style="margin:0in 0in
          8pt;line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span
            style="font-size:12pt;line-height:107%;font-family:&quot;Times
            New Roman&quot;,serif">Thank you for your time.</span></p>
      </div>
      <br>
    </blockquote>
    The schematics are here:<br>
    <br>
    <a class="moz-txt-link-freetext" href="http://files.ettus.com/schematics/b200/b210.pdf">http://files.ettus.com/schematics/b200/b210.pdf</a><br>
    <br>
    There are two mostly-independent TX and RX channels in the B210.<br>
    <br>
    A full-duplex application would have an usrp_source and a usrp_sink
    in it, configured appropriately.<br>
    <br>
    So, a simple late-night summary of what happens:<br>
    <br>
    When you transmit a baseband signal out of Gnu Radio, it is
    digitally up-sampled in the FPGA to the sample rate of the DAC in
    the AD9361<br>
      chip, where it is mixed with the local-oscillator signal to
    produce the RF carrier that is transmitted from the antenna.<br>
    <br>
    Conversely, on the receiver side, the signal arrives at the antenna,
    is mixed down to complex baseband, where it is sampled by the ADC in<br>
      the AD9361, usually down-sampled in the FPGA, and presented to
    your application as a stream of complex-baseband samples.<br>
    <br>
    This is broadly-similar for ANY SDR hardware out there, the details
    differ, but in broad general strokes they are the same.<br>
    <br>
    <br>
  </body>
</html>

--------------040401040205010605080702--


--===============3591461088792789520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3591461088792789520==--

