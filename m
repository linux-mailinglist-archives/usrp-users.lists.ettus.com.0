Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4EA48600D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jan 2022 06:03:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D770B3847DF
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jan 2022 00:02:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cAsBCy9d";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B8D73847B3
	for <usrp-users@lists.ettus.com>; Thu,  6 Jan 2022 00:02:03 -0500 (EST)
Received: by mail-qk1-f182.google.com with SMTP id i187so1632393qkf.5
        for <usrp-users@lists.ettus.com>; Wed, 05 Jan 2022 21:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=Z9mzniaCEfIl037K+YbpOF6BZx+/bvdG3UigduQQnXw=;
        b=cAsBCy9dkt2O4OsuXVOwAMOtOGh4t0RWLzOIV8x6GHxNMumJTWUZL1bRqh15O1Spei
         QLh+uJZx7Agp3Bd2QpogKD2ZH9CnDLIT1dkKSJtO+knY/i56LssKgTwVa3GGSN16Bkqi
         9HhZ8O0bU1snEook2ZB6Ad1+q8by7hEiZggqrUUXbPXQB7APPCbJL4a0rJRqKh/gWyt6
         6KwfzUAF9khoFHqYeY/rRicpRsI4YeKvW20rAY0ARb0lNTX0HzSAU5hSE3bzdfv59C2Y
         Loy/k6BRef7ODRwaxYIrggQoaRTvWm4W3ze5KwwSFosAd0WJSPKc6KdwOrBbGL9KXekL
         TzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=Z9mzniaCEfIl037K+YbpOF6BZx+/bvdG3UigduQQnXw=;
        b=ikTlu+8z1tTm7J+rbA70GrdwIvOtuTUsx7EVv5Km5we8SkRyi9vpccZWR0saxiIpHZ
         lUaSx0TSmgmgESzJVwOJ6qxsdZuH3zSyxzjNzGaIaOo64sIYYqzIGBixEfO6Fd5EwuJj
         y5Y1u/XHW5m8FHuz0EPCsKiIfIKZ7zBollPY/Y3tz177ZtoHDC/ieMopNCxkrvL+P2vp
         N7+UpqUSun/doTQqeAH4yWmUFHrw9wUEk9zs3tMwYN7WiLTSQ798ZVjZzHUj+Ivjk0Hz
         Wk3F0CMd1g8bvXc7ewGXZ4DQmQDgMkqzIrXmOkeGXHfCBB9GtYx+ifWA+qElO3ajKX/1
         4wJA==
X-Gm-Message-State: AOAM531Otm+sV4EfYYhDvGv/JlOEvyEX920E8/u7iuA8ZRhLh5HLgWn2
	AbPbjJwzoGUuUvObWi8CupA=
X-Google-Smtp-Source: ABdhPJyRNhwODcBYFQKq7CkCKBH8EVOimhNXKSCMzCMjehRnnsGloemfNZJr99bdcxEZtxOOa+M+Wg==
X-Received: by 2002:a37:8006:: with SMTP id b6mr804135qkd.433.1641445322832;
        Wed, 05 Jan 2022 21:02:02 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id m1sm720135qkn.115.2022.01.05.21.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jan 2022 21:02:02 -0800 (PST)
Message-ID: <35c21071-1611-413f-be34-754c4864480e@gmail.com>
Date: Thu, 6 Jan 2022 00:02:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <wziux3kQ43Ihtu9IdRjhTe5Vpf4V6rQ2q1rwan7ecIk@lists.ettus.com>
 <3c60272e-6474-2b33-1022-ada0446b6a8d@gmail.com>
 <CAB__hTQ0cPXpjvYof99evEx_HsBhkiMDQCoix-5UN7XQ2fcA9A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQ0cPXpjvYof99evEx_HsBhkiMDQCoix-5UN7XQ2fcA9A@mail.gmail.com>
Message-ID-Hash: 3ZIB2RLUBRVUNEJK6MKSKSPNID4DV7AJ
X-Message-ID-Hash: 3ZIB2RLUBRVUNEJK6MKSKSPNID4DV7AJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while using USRP Echotimer Block from gr-radar
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZIB2RLUBRVUNEJK6MKSKSPNID4DV7AJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7217415868565285589=="

This is a multi-part message in MIME format.
--===============7217415868565285589==
Content-Type: multipart/alternative;
 boundary="------------nGwW6mt9n9M9Jwv3zFcxvMQg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nGwW6mt9n9M9Jwv3zFcxvMQg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-05 16:16, Rob Kossler wrote:
> I noticed in the log that the device was B210 operating over "USB 2".=20
> This is generally not a good thing. It should be operating over USB 3.
> Rob
It depends.=C2=A0 It's perfectly willing to operate over USB2, albeit at=20
lower sample rates.

Whether that's adequate depends entirely on the application...


>
> On Wed, Jan 5, 2022 at 12:20 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     You may be better served by cross-posting this to the
>     discuss-gnuradio mailing list, where there may be more users of
>     gr-radar than here.
>
>     Generally, a "late command" isn't a fatal error.=C2=A0 What it
>     basically means is that the *application* (gr-radar) asked for a
>     "timed" command, but was unable to deliver that command before the
>     time requested.
>
>
>
>     On 2022-01-05 04:29, mobizmn--- via USRP-users wrote:
>>
>>     I am trying to use the USRP echotimer block from gr-radar module.
>>     But when I run the flowgraph containing this block, I get the
>>     following error:
>>
>>     |[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>     UHD_3.15.0.0-70-g42b6fcf6|
>>
>>     |[INFO] [B200] Detected Device: B210|
>>
>>     |[INFO] [B200] Operating over USB 2.|
>>
>>     |[INFO] [B200] Initialize CODEC control...|
>>
>>     |[INFO] [B200] Initialize Radio control...|
>>
>>     |[INFO] [B200] Performing register loopback test... |
>>
>>     |[INFO] [B200] Register loopback test passed|
>>
>>     |[INFO] [B200] Performing register loopback test... |
>>
>>     |[INFO] [B200] Register loopback test passed|
>>
>>     |[INFO] [B200] Setting master clock rate selection to 'automatic'.=
|
>>
>>     |[INFO] [B200] Asking for clock rate 16.000000 MHz... |
>>
>>     |[INFO] [B200] Actually got clock rate 16.000000 MHz.|
>>
>>     |Using USRP Device (TX): |
>>
>>     |Single USRP:|
>>
>>     |Device: B-Series Device|
>>
>>     |Mboard 0: B210|
>>
>>     |RX Channel: 0|
>>
>>     |RX DSP: 0|
>>
>>     |RX Dboard: A|
>>
>>     |RX Subdev: FE-RX2|
>>
>>     |RX Channel: 1|
>>
>>     |RX DSP: 1|
>>
>>     |RX Dboard: A|
>>
>>     |RX Subdev: FE-RX1|
>>
>>     |TX Channel: 0|
>>
>>     |TX DSP: 0|
>>
>>     |TX Dboard: A|
>>
>>     |TX Subdev: FE-TX2|
>>
>>     |TX Channel: 1|
>>
>>     |TX DSP: 1|
>>
>>     |TX Dboard: A|
>>
>>     |TX Subdev: FE-TX1|
>>
>>     |Setting TX Rate: 2000000|
>>
>>     |[INFO] [B200] Asking for clock rate 32.000000 MHz... |
>>
>>     |[INFO] [B200] Actually got clock rate 32.000000 MHz.|
>>
>>     |Actual TX Rate: 2e+06|
>>
>>     |[INFO] [USRP2] Opening a USRP2/N-Series device...|
>>
>>     |[INFO] [USRP2] Current recv frame size: 1472 bytes|
>>
>>     |[INFO] [USRP2] Current send frame size: 1472 bytes|
>>
>>     |[WARNING] [UHD] Unable to set the thread priority. Performance
>>     may be negatively affected.|
>>
>>     |Please see the general application notes in the manual for
>>     instructions.|
>>
>>     |EnvironmentError: OSError: error in pthread_setschedparam|
>>
>>     |Using USRP Device (RX): |
>>
>>     |Single USRP:|
>>
>>     |Device: USRP2 / N-Series Device|
>>
>>     |Mboard 0: N210r4|
>>
>>     |RX Channel: 0|
>>
>>     |RX DSP: 0|
>>
>>     |RX Dboard: A|
>>
>>     |RX Subdev: WBXv3 RX+GDB|
>>
>>     |TX Channel: 0|
>>
>>     |TX DSP: 0|
>>
>>     |TX Dboard: A|
>>
>>     |TX Subdev: WBXv3 TX+GDB|
>>
>>     |Setting RX Rate: 2000000|
>>
>>     |Actual RX Rate: 2e+06|
>>
>>     |set_min_output_buffer on block 1 to 2400|
>>
>>     |set_min_output_buffer on block 2 to 2400|
>>
>>     |terminate called after throwing an instance of 'std::runtime_erro=
r'|
>>
>>     |what(): Receiver error ERROR_CODE_LATE_COMMAND|
>>
>>
>>     My transmit device is USRP B210 and the receiver is USRP N210.
>>     The settings of the USRP Echotimer block are attached. What could
>>     be causing this error?
>>
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------nGwW6mt9n9M9Jwv3zFcxvMQg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-05 16:16, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQ0cPXpjvYof99evEx_HsBhkiMDQCoix-5UN7XQ2fcA9A@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">I noticed in the log that the device was B210
          operating over "USB 2". This is generally not a good thing.=C2=A0
          It should be operating over USB 3.
          <div>Rob</div>
        </div>
      </div>
    </blockquote>
    It depends.=C2=A0 It's perfectly willing to operate over USB2, albeit=
 at
    lower sample rates.<br>
    <br>
    Whether that's adequate depends entirely on the application...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQ0cPXpjvYof99evEx_HsBhkiMDQCoix-5UN7XQ2fcA9A@mail.gmai=
l.com">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 5, 2022 at 12=
:20
            PM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <p>You may be better served by cross-posting this to the
                discuss-gnuradio mailing list, where there may be more
                users of gr-radar than here.</p>
              <p>Generally, a "late command" isn't a fatal error.=C2=A0 W=
hat
                it basically means is that the *application* (gr-radar)
                asked for a "timed" command, but was unable to deliver
                that command before the time requested.</p>
              <p><br>
              </p>
              <p><br>
              </p>
              <div>On 2022-01-05 04:29, mobizmn--- via USRP-users wrote:<=
br>
              </div>
              <blockquote type=3D"cite">
                <p>I am trying to use the USRP echotimer block from
                  gr-radar module. But when I run the flowgraph
                  containing this block, I get the following error:</p>
                <p><code>[INFO] [UHD] linux; GNU C++ version 7.5.0;
                    Boost_106501; UHD_3.15.0.0-70-g42b6fcf6</code></p>
                <p><code>[INFO] [B200] Detected Device: B210</code></p>
                <p><code>[INFO] [B200] Operating over USB 2.</code></p>
                <p><code>[INFO] [B200] Initialize CODEC control...</code>=
</p>
                <p><code>[INFO] [B200] Initialize Radio control...</code>=
</p>
                <p><code>[INFO] [B200] Performing register loopback
                    test... </code></p>
                <p><code>[INFO] [B200] Register loopback test passed</cod=
e></p>
                <p><code>[INFO] [B200] Performing register loopback
                    test... </code></p>
                <p><code>[INFO] [B200] Register loopback test passed</cod=
e></p>
                <p><code>[INFO] [B200] Setting master clock rate
                    selection to 'automatic'.</code></p>
                <p><code>[INFO] [B200] Asking for clock rate 16.000000
                    MHz... </code></p>
                <p><code>[INFO] [B200] Actually got clock rate 16.000000
                    MHz.</code></p>
                <p><code>Using USRP Device (TX): </code></p>
                <p><code>Single USRP:</code></p>
                <p><code> Device: B-Series Device</code></p>
                <p><code> Mboard 0: B210</code></p>
                <p><code> RX Channel: 0</code></p>
                <p><code> RX DSP: 0</code></p>
                <p><code> RX Dboard: A</code></p>
                <p><code> RX Subdev: FE-RX2</code></p>
                <p><code> RX Channel: 1</code></p>
                <p><code> RX DSP: 1</code></p>
                <p><code> RX Dboard: A</code></p>
                <p><code> RX Subdev: FE-RX1</code></p>
                <p><code> TX Channel: 0</code></p>
                <p><code> TX DSP: 0</code></p>
                <p><code> TX Dboard: A</code></p>
                <p><code> TX Subdev: FE-TX2</code></p>
                <p><code> TX Channel: 1</code></p>
                <p><code> TX DSP: 1</code></p>
                <p><code> TX Dboard: A</code></p>
                <p><code> TX Subdev: FE-TX1</code></p>
                <p><code>Setting TX Rate: 2000000</code></p>
                <p><code>[INFO] [B200] Asking for clock rate 32.000000
                    MHz... </code></p>
                <p><code>[INFO] [B200] Actually got clock rate 32.000000
                    MHz.</code></p>
                <p><code>Actual TX Rate: 2e+06</code></p>
                <p><code>[INFO] [USRP2] Opening a USRP2/N-Series
                    device...</code></p>
                <p><code>[INFO] [USRP2] Current recv frame size: 1472
                    bytes</code></p>
                <p><code>[INFO] [USRP2] Current send frame size: 1472
                    bytes</code></p>
                <p><code>[WARNING] [UHD] Unable to set the thread
                    priority. Performance may be negatively affected.</co=
de></p>
                <p><code>Please see the general application notes in the
                    manual for instructions.</code></p>
                <p><code>EnvironmentError: OSError: error in
                    pthread_setschedparam</code></p>
                <p><code>Using USRP Device (RX): </code></p>
                <p><code>Single USRP:</code></p>
                <p><code> Device: USRP2 / N-Series Device</code></p>
                <p><code> Mboard 0: N210r4</code></p>
                <p><code> RX Channel: 0</code></p>
                <p><code> RX DSP: 0</code></p>
                <p><code> RX Dboard: A</code></p>
                <p><code> RX Subdev: WBXv3 RX+GDB</code></p>
                <p><code> TX Channel: 0</code></p>
                <p><code> TX DSP: 0</code></p>
                <p><code> TX Dboard: A</code></p>
                <p><code> TX Subdev: WBXv3 TX+GDB</code></p>
                <p><code>Setting RX Rate: 2000000</code></p>
                <p><code>Actual RX Rate: 2e+06</code></p>
                <p><code>set_min_output_buffer on block 1 to 2400</code><=
/p>
                <p><code>set_min_output_buffer on block 2 to 2400</code><=
/p>
                <p><code>terminate called after throwing an instance of
                    'std::runtime_error'</code></p>
                <p><code> what(): Receiver error ERROR_CODE_LATE_COMMAND<=
/code></p>
                <p><br>
                </p>
                <p>My transmit device is USRP B210 and the receiver is
                  USRP N210. The settings of the USRP Echotimer block
                  are attached. What could be causing this error?</p>
                <p><br>
                </p>
                <p><br>
                </p>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------nGwW6mt9n9M9Jwv3zFcxvMQg--

--===============7217415868565285589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7217415868565285589==--
