Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2D1485A87
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jan 2022 22:17:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A58A13855C1
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jan 2022 16:17:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="a6zdlWzA";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F4FF3847DF
	for <usrp-users@lists.ettus.com>; Wed,  5 Jan 2022 16:16:36 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id k69so1665738ybf.1
        for <usrp-users@lists.ettus.com>; Wed, 05 Jan 2022 13:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6X5g18i2wTYamX1YwINPGUrkD77YJ/rjnDO705CKCU0=;
        b=a6zdlWzAnUq+ngxAVznVraeeWXRFBtSSbOdzy0BFxStnCFcX+kqUj4WnR+JD5/eWlb
         Ef35smW8L4z6jQe4mexv5qA7mhL0CIUhcVogtdeCt0pcy2LUBx+lWJfkAuNHwyV3Jwsr
         uBV7OOnkGYKADMpaI2Q9TgleKtKIGMFKI6b9Ps1Z1gCcOLRnLF/TuGfzoXZyln2I7GnK
         dKf7SK9yTmCzr8muo2xI1QDM8OtXuWDXPZM1TaLD2KKxFMS48GTc2VSKnC36CRlqPnqs
         7XJNlWqxM1FePo9kNg5Mv2nmtKcHUfMO9tk7vXz4NRqniF+FUqXJY7HhRyzcjn0eafhI
         CQfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6X5g18i2wTYamX1YwINPGUrkD77YJ/rjnDO705CKCU0=;
        b=A6ptxvaYomwOaXM+6COXylvpcPkyW6T8ajHlk7aMzypzgLACRPQYJrdz6cIZH4H+LA
         T6ohT6WGzw8gYvtsXkFeTuzUAkXWheArjkg8CEO/yUTlwhZQinUHQVHgRsn7zlyLqilG
         gIPMovrOsYJ5ZXscczlleHdIYZ1BvUXNpEDdLC96YFgWOTnYzWEhAEjlUahC7193+iPc
         PqU5HzXncLyVvqDudb5oZGUFf3VYb60+6q938YGW1Y5xbgy0cQqKGfatTafYfsYEp4Lr
         MN05htl/iupLVqNWpPrRmkaRgNz5g9mSrxKeJrbYEd6RCfbLdSMC6RkbCXAELLyEzBVf
         XSFg==
X-Gm-Message-State: AOAM532vcjNKkqxzQ+RAvZRES+jpUf1eN78ks0LdMPeZcWvW7NSNxX8j
	cX5AkYtK1gqRnzhZI/wTdfyfTVn8cf0G+geKfyOtdyA4toA=
X-Google-Smtp-Source: ABdhPJzlhFBZg7Ew8GiNgTQADbZqztvrnbcpkGNhQHJxjFytTbReZEuCVFum6H7KBYb1JDXx9V/I3JH4D2MXzfTE9C8=
X-Received: by 2002:a05:6902:727:: with SMTP id l7mr42870298ybt.298.1641417395772;
 Wed, 05 Jan 2022 13:16:35 -0800 (PST)
MIME-Version: 1.0
References: <wziux3kQ43Ihtu9IdRjhTe5Vpf4V6rQ2q1rwan7ecIk@lists.ettus.com> <3c60272e-6474-2b33-1022-ada0446b6a8d@gmail.com>
In-Reply-To: <3c60272e-6474-2b33-1022-ada0446b6a8d@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 5 Jan 2022 16:16:24 -0500
Message-ID: <CAB__hTQ0cPXpjvYof99evEx_HsBhkiMDQCoix-5UN7XQ2fcA9A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: AB4LYIKFCFYFBCBLU6FN3L5TD7HZVNVR
X-Message-ID-Hash: AB4LYIKFCFYFBCBLU6FN3L5TD7HZVNVR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while using USRP Echotimer Block from gr-radar
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AB4LYIKFCFYFBCBLU6FN3L5TD7HZVNVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7006559289137448207=="

--===============7006559289137448207==
Content-Type: multipart/alternative; boundary="000000000000cddaf205d4dc44cf"

--000000000000cddaf205d4dc44cf
Content-Type: text/plain; charset="UTF-8"

I noticed in the log that the device was B210 operating over "USB 2". This
is generally not a good thing.  It should be operating over USB 3.
Rob

On Wed, Jan 5, 2022 at 12:20 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> You may be better served by cross-posting this to the discuss-gnuradio
> mailing list, where there may be more users of gr-radar than here.
>
> Generally, a "late command" isn't a fatal error.  What it basically means
> is that the *application* (gr-radar) asked for a "timed" command, but was
> unable to deliver that command before the time requested.
>
>
>
> On 2022-01-05 04:29, mobizmn--- via USRP-users wrote:
>
> I am trying to use the USRP echotimer block from gr-radar module. But when
> I run the flowgraph containing this block, I get the following error:
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.0-70-g42b6fcf6
>
> [INFO] [B200] Detected Device: B210
>
> [INFO] [B200] Operating over USB 2.
>
> [INFO] [B200] Initialize CODEC control...
>
> [INFO] [B200] Initialize Radio control...
>
> [INFO] [B200] Performing register loopback test...
>
> [INFO] [B200] Register loopback test passed
>
> [INFO] [B200] Performing register loopback test...
>
> [INFO] [B200] Register loopback test passed
>
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>
> Using USRP Device (TX):
>
> Single USRP:
>
> Device: B-Series Device
>
> Mboard 0: B210
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: FE-RX2
>
> RX Channel: 1
>
> RX DSP: 1
>
> RX Dboard: A
>
> RX Subdev: FE-RX1
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: FE-TX2
>
> TX Channel: 1
>
> TX DSP: 1
>
> TX Dboard: A
>
> TX Subdev: FE-TX1
>
> Setting TX Rate: 2000000
>
> [INFO] [B200] Asking for clock rate 32.000000 MHz...
>
> [INFO] [B200] Actually got clock rate 32.000000 MHz.
>
> Actual TX Rate: 2e+06
>
> [INFO] [USRP2] Opening a USRP2/N-Series device...
>
> [INFO] [USRP2] Current recv frame size: 1472 bytes
>
> [INFO] [USRP2] Current send frame size: 1472 bytes
>
> [WARNING] [UHD] Unable to set the thread priority. Performance may be
> negatively affected.
>
> Please see the general application notes in the manual for instructions.
>
> EnvironmentError: OSError: error in pthread_setschedparam
>
> Using USRP Device (RX):
>
> Single USRP:
>
> Device: USRP2 / N-Series Device
>
> Mboard 0: N210r4
>
> RX Channel: 0
>
> RX DSP: 0
>
> RX Dboard: A
>
> RX Subdev: WBXv3 RX+GDB
>
> TX Channel: 0
>
> TX DSP: 0
>
> TX Dboard: A
>
> TX Subdev: WBXv3 TX+GDB
>
> Setting RX Rate: 2000000
>
> Actual RX Rate: 2e+06
>
> set_min_output_buffer on block 1 to 2400
>
> set_min_output_buffer on block 2 to 2400
>
> terminate called after throwing an instance of 'std::runtime_error'
>
> what(): Receiver error ERROR_CODE_LATE_COMMAND
>
>
> My transmit device is USRP B210 and the receiver is USRP N210. The
> settings of the USRP Echotimer block are attached. What could be causing
> this error?
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cddaf205d4dc44cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I noticed in the log that the device was =
B210 operating over &quot;USB 2&quot;. This is generally not a good thing.=
=C2=A0 It should be operating over USB 3.<div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 5, 2022 =
at 12:20 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>You may be better served by cross-posting this to the
      discuss-gnuradio mailing list, where there may be more users of
      gr-radar than here.</p>
    <p>Generally, a &quot;late command&quot; isn&#39;t a fatal error.=C2=A0=
 What it
      basically means is that the *application* (gr-radar) asked for a
      &quot;timed&quot; command, but was unable to deliver that command bef=
ore the
      time requested.</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div>On 2022-01-05 04:29, mobizmn--- via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>I am trying to use the USRP echotimer block from gr-radar
        module. But when I run the flowgraph containing this block, I
        get the following error:</p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.0-70-g42b6fcf6</code></p>
      <p><code>[INFO] [B200] Detected Device: B210</code></p>
      <p><code>[INFO] [B200] Operating over USB 2.</code></p>
      <p><code>[INFO] [B200] Initialize CODEC control...</code></p>
      <p><code>[INFO] [B200] Initialize Radio control...</code></p>
      <p><code>[INFO] [B200] Performing register loopback test... </code></=
p>
      <p><code>[INFO] [B200] Register loopback test passed</code></p>
      <p><code>[INFO] [B200] Performing register loopback test... </code></=
p>
      <p><code>[INFO] [B200] Register loopback test passed</code></p>
      <p><code>[INFO] [B200] Setting master clock rate selection to
          &#39;automatic&#39;.</code></p>
      <p><code>[INFO] [B200] Asking for clock rate 16.000000 MHz... </code>=
</p>
      <p><code>[INFO] [B200] Actually got clock rate 16.000000 MHz.</code><=
/p>
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
      <p><code>[INFO] [B200] Asking for clock rate 32.000000 MHz... </code>=
</p>
      <p><code>[INFO] [B200] Actually got clock rate 32.000000 MHz.</code><=
/p>
      <p><code>Actual TX Rate: 2e+06</code></p>
      <p><code>[INFO] [USRP2] Opening a USRP2/N-Series device...</code></p>
      <p><code>[INFO] [USRP2] Current recv frame size: 1472 bytes</code></p=
>
      <p><code>[INFO] [USRP2] Current send frame size: 1472 bytes</code></p=
>
      <p><code>[WARNING] [UHD] Unable to set the thread priority.
          Performance may be negatively affected.</code></p>
      <p><code>Please see the general application notes in the manual
          for instructions.</code></p>
      <p><code>EnvironmentError: OSError: error in pthread_setschedparam</c=
ode></p>
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
      <p><code>set_min_output_buffer on block 1 to 2400</code></p>
      <p><code>set_min_output_buffer on block 2 to 2400</code></p>
      <p><code>terminate called after throwing an instance of
          &#39;std::runtime_error&#39;</code></p>
      <p><code> what(): Receiver error ERROR_CODE_LATE_COMMAND</code></p>
      <p><br>
      </p>
      <p>My transmit device is USRP B210 and the receiver is USRP N210.
        The settings of the USRP Echotimer block are attached. What
        could be causing this error?</p>
      <p><br>
      </p>
      <p><br>
      </p>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000cddaf205d4dc44cf--

--===============7006559289137448207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7006559289137448207==--
