Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 024084C096
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 20:14:35 +0200 (CEST)
Received: from [::1] (port=37726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdf6P-000065-Jh; Wed, 19 Jun 2019 14:14:33 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:40196)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hdf6L-0008Jo-HX
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 14:14:29 -0400
Received: by mail-qt1-f180.google.com with SMTP id a15so107783qtn.7
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=2BVeCPgcXaq4qR6SIC3tWqSx4xNKUldNmGD5HsyAR3g=;
 b=ITPlWyP78oyaUp1Klnv8HMTMRlwQGkpw+WZ4aWeuybTDxI7sl+3w754bIpqFg7GG8i
 uR9L5r1iv7a9YOVuXakTjdao+oM/LuomKrxGamLaFJ1Tg+48pPiH4nsgwBKq9mwWsXQT
 8yUBVZzHcUAIzDi+KOTrLFLpuFeS7BoDeiWWVnspjN15WFwtzSQ+4doF9VvH35CiPeAS
 iRxRddqYrDxXrl/g81zJ5qN91gHQha0L9N+E6m3eGs+PlNZQZHBKYkesZ1DTPL65RoP8
 SUn/+ulVQPDTOK9ihr318mwcwFmFTMXlTh5sRfPtw+gUvoLpo2oZqU9qD110yoOvM7JJ
 LYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=2BVeCPgcXaq4qR6SIC3tWqSx4xNKUldNmGD5HsyAR3g=;
 b=quyrh8IUA7V3nwRZBhJ5pHMKhmfYMjzXnSUF/bx9X7h4BJzhW0gm7ksLXbKSsjZDqU
 kUb/eBviXAKI13+fTRHDKZJnQTuQ24h/NySyj7blXR+wTgRrsq0O9uGrBB5w5DwvNUTJ
 rtIsbflNIcIXTPtHKRGGgT9rm886yPSJ4GE1pSrUYd2CJJtzXU2uAFyLuyLysQYNszjJ
 To92Vu8qBZcPTQzA/+l4KZg84BH6EzIk4oM/zqQBhKurjWrL0ROQn/cTI+9TEez3svCj
 0/SfjWLhhoctMKJ29ot09yDjZ9+OluixRFpaVKWBK5RUtt0SOfyXPpxkt9eyQOfu2jNh
 PlCw==
X-Gm-Message-State: APjAAAUC5gSL0/tT9u8UI0dR7wXBxwCnbHf4qtb4SEPs2zCzvFBQsQBW
 iLxD1OO73RDnn4zbCkvY/y5AL7fZ
X-Google-Smtp-Source: APXvYqza1DTYStkJ/P33N4aqj1i4wHEUEU7bkfWpnZYbGM0FQ4z7Kc9rOBYdIxjjTPD7SxBcnoLOVQ==
X-Received: by 2002:ac8:2fce:: with SMTP id m14mr90232091qta.22.1560968028758; 
 Wed, 19 Jun 2019 11:13:48 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id t2sm6275055qth.33.2019.06.19.11.13.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 11:13:48 -0700 (PDT)
Message-ID: <5D0A7B5A.4010807@gmail.com>
Date: Wed, 19 Jun 2019 14:13:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.55.1560787202.16100.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQFTeiix0DqsfcQSdeHVrtnakjNkjB=rANMHb-rmXK2OQg@mail.gmail.com>
 <c0667c6a-e02c-46da-87f6-48519f4836f3@www.fastmail.com>
 <CALSxwQHdDYDR87XCtnKpG=w_395E_fqq5PZEX8GGdDvroigbzQ@mail.gmail.com>
 <CA+JMMq_mmfhpYqRm7DNrKcnC51m1AEmXRh_8u-ysmsha2U5Y6w@mail.gmail.com>
 <CALSxwQG9DH-C=H=JOoZe+4mv=Y+CD0TSEjAV866CUAZQA6-oSQ@mail.gmail.com>
 <CA+JMMq8zAzo9cU=+ZWiLyWVQuchhMBoOWSB_+o895ZyiyKVfhg@mail.gmail.com>
 <CALSxwQG5rLQnqoQZBR-c7syxV8ZaT7PdOXYCv=bvH0cv62Ls_g@mail.gmail.com>
 <CA+JMMq-=_nt8EzY4HachAiS8rCm1ffKT3BdX8w_gZp2v92GL_Q@mail.gmail.com>
 <CALSxwQHx41OfMXchqS1bH6yQxSYBC_iz-+KFjFR2zar=CZLf2Q@mail.gmail.com>
In-Reply-To: <CALSxwQHx41OfMXchqS1bH6yQxSYBC_iz-+KFjFR2zar=CZLf2Q@mail.gmail.com>
Subject: Re: [USRP-users] Waveform Shape Not Accurate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============8356891817616364341=="
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
--===============8356891817616364341==
Content-Type: multipart/alternative;
 boundary="------------070006080605040704020908"

This is a multi-part message in MIME format.
--------------070006080605040704020908
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/19/2019 08:24 AM, Simona Sibio via USRP-users wrote:
> In attachment, there is the flowgraph on GNU radio.
> In the previous email, I meat that the result is the same regarding 
> the amplitude accuracy, not regarding the value.
> When I change the amplitude or the gain on GNU radio, also the 
> amplitude changes in the oscilloscope.
>
> Thank you for your time.
>
> Simona
What happens if, instead of using a constant, using a 10kHz tone, and 
offset your Fc by 10kHz, does it look better then?


>
> Il giorno mer 19 giu 2019 alle ore 13:00 Nick Foster 
> <bistromath@gmail.com <mailto:bistromath@gmail.com>> ha scritto:
>
>     Can you post the flowgraph you're using again? If you changed
>     transmit gain and amplitude, the result should have changed in
>     amplitude, while the image you just sent has the fame magnitude
>     the last one did.
>
>     On Wed, Jun 19, 2019, 5:03 AM Simona Sibio <ssibio2@gmail.com
>     <mailto:ssibio2@gmail.com>> wrote:
>
>         Thank you very much.
>         I tried to send a signal with this features, but the result is
>         the same (IMG_6590).
>         I tried with every amplitude and every gain (Screenshot from
>         2019).
>         Before, I thought that it was a problem of reference signal
>         and I changed it but the situation is not changed.
>
>         Thank you in advance for your help.
>
>         Best Regards,
>
>         Simona
>
>         Il giorno mar 18 giu 2019 alle ore 18:06 Nick Foster
>         <bistromath@gmail.com <mailto:bistromath@gmail.com>> ha scritto:
>
>             Turn up the transmit gain on the USRP sink. Start with
>             ~40dB and transmit amplitude 0.3.
>
>             Nick
>
>             On Tue, Jun 18, 2019 at 9:40 AM Simona Sibio
>             <ssibio2@gmail.com <mailto:ssibio2@gmail.com>> wrote:
>
>                 Thank you for the assistance.
>                 I tried to change the amplitude but the amplitude and
>                 frequency are not accurate in the oscilloscope yet.
>                 If I lower the amplitude, the S/N is lowered then it
>                 is worst.
>
>                 Best Regards,
>
>                 Simona
>
>
>                 Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster
>                 <bistromath@gmail.com <mailto:bistromath@gmail.com>>
>                 ha scritto:
>
>                     Waveform source amplitude is too high. Turn it
>                     down to <0.4.
>
>                     On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via
>                     USRP-users <usrp-users@lists.ettus.com
>                     <mailto:usrp-users@lists.ettus.com>> wrote:
>
>                         Hi Michael,
>
>                         thank you for your interest.
>
>                         I have two N200 and each one have two
>                         daughterboard UBX-40; the transmitters are
>                         connected by coaxial cable to an oscilloscope
>                         (Rhode&Schwarz RTO2064) to check the waveform.
>                         The version of UHD is 3.13.0.
>
>                         I tried to send a constant signal using the
>                         flowgraph (Screenshot from 2019-06-18
>                         14-56-57) in attachment on GNU radio Companion
>                         3.7.13.4, and on the oscilloscope I saw this
>                         "IMG_6586".
>                         Also, I tried to generate a constant signal in
>                         Simulink model (16-42-17 & 16-14-04) on Matlab
>                         R2019a but, on the oscilloscope, I saw this
>                         "IMG_6584".
>
>                         I tried to send a sine signal with the
>                         Simulink model in attachment (16-46-10) and,
>                         on the oscilloscope, I saw this "IMG_6583".
>                         Also I tried to generate the sine signal with
>                         GNU radio (17-08-58) and I saw this "IMG_6588".
>
>                         It is possible to see how the amplitude and
>                         frequency change in every case, I need to
>                         obtain an accurate signal because I have to
>                         measure the amplitude and phase in a
>                         particular point in the circuit.
>                         And in the previous email, I added that the
>                         problem increases when I lower the carrier
>                         frequency. All these measures were taken with
>                         a carrier frequency at 3 GHz, but if I change
>                         the fc at 1 GHz the shape is worst, e.g. IMG_6589.
>
>                         Thank you in advance.
>
>                         Best Regards,
>
>                         Simona
>
>
>                         Il giorno mar 18 giu 2019 alle ore 15:34
>                         Michael Dickens <michael.dickens@ettus.com
>                         <mailto:michael.dickens@ettus.com>> ha scritto:
>
>                             Hi Simona - Can you please educate us as
>                             to a few items?
>
>                             * your setup: you have an N200 + some
>                             daughterboard (which one) + some spectrum
>                             analyzer (which one), connected ?somehow?
>                             -> are you doing actual wireless Tx -> Rx,
>                             or do you have a cable hooked up between
>                             the N200 & spectrum analyzer?
>
>                             * what waveform you're trying to generate,
>                             and what is the actual flowgraph you're
>                             using for GNU Radio? how are you
>                             generating the waveform in MATLAB?
>
>                             * which version of GNU Radio and UHD are
>                             you trying to use?
>
>                             * which version of MATLAB and it's UHD are
>                             you trying to use?
>
>                             The above might help someone to diagnose
>                             your issue ... without it, we can make
>                             some guesses but not much in the way of
>                             specifics.
>
>                             Please remember to "reply all", so that
>                             others can see your response and be able
>                             to chime in to provide help. - MLD
>
>                             On Tue, Jun 18, 2019, at 8:42 AM, Simona
>                             Sibio via USRP-users wrote:
>>                             Dear Sir/Madam,
>>
>>                             I am Simona Sibio, a student in Heriot
>>                             Watt University.
>>                             I am working with USRPs both on Matlab
>>                             and on Gnuradio, and with both softwares
>>                             I have the same problem: the shape
>>                             (generated by N200+daughterboard 10 MHz
>>                             to 6 GHz) is not accurate, in attacched
>>                             some photos.
>>                             At 1 GHz, the shape is worst than when
>>                             the carrier frequency is 3GHz.
>>                             It is not possible to measure the
>>                             amplitude and frequency because, also at
>>                             3 GHz, it is not stable.
>>                             Could you help me?
>>
>>                             Thank you in advance.
>>
>>                             Best Regards,
>>
>>                             Simona
>
>                         _______________________________________________
>                         USRP-users mailing list
>                         USRP-users@lists.ettus.com
>                         <mailto:USRP-users@lists.ettus.com>
>                         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------070006080605040704020908
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/19/2019 08:24 AM, Simona Sibio
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CALSxwQHx41OfMXchqS1bH6yQxSYBC_iz-+KFjFR2zar=CZLf2Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>In attachment, there is the flowgraph on GNU radio.</div>
        <div>In the previous email, I meat that the result is the same
          regarding the amplitude accuracy, not regarding the value.</div>
        <div>When I change the amplitude or the gain on GNU radio, also
          the amplitude changes in the oscilloscope.</div>
        <div><br>
        </div>
        <div>Thank you for your time.</div>
        <div><br>
        </div>
        <div>Simona <br>
        </div>
      </div>
    </blockquote>
    What happens if, instead of using a constant, using a 10kHz tone,
    and offset your Fc by 10kHz, does it look better then?<br>
    <br>
    <br>
    <blockquote
cite="mid:CALSxwQHx41OfMXchqS1bH6yQxSYBC_iz-+KFjFR2zar=CZLf2Q@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Il giorno mer 19 giu 2019 alle
          ore 13:00 Nick Foster &lt;<a moz-do-not-send="true"
            href="mailto:bistromath@gmail.com">bistromath@gmail.com</a>&gt;
          ha scritto:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">Can you post the flowgraph you're using again?
            If you changed transmit gain and amplitude, the result
            should have changed in amplitude, while the image you just
            sent has the fame magnitude the last one did. </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Wed, Jun 19, 2019, 5:03
              AM Simona Sibio &lt;<a moz-do-not-send="true"
                href="mailto:ssibio2@gmail.com" target="_blank">ssibio2@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="ltr">
                <div>Thank you very much. <br>
                </div>
                <div>I tried to send a signal with this features, but
                  the result is the same (IMG_6590).</div>
                <div>I tried with every amplitude and every gain
                  (Screenshot from 2019).</div>
                <div>Before, I thought that it was a problem of
                  reference signal and I changed it but the situation is
                  not changed.</div>
                <div><br>
                </div>
                <div>Thank you in advance for your help.</div>
                <div><br>
                </div>
                <div>Best Regards,</div>
                <div><br>
                </div>
                <div>Simona<br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">Il giorno mar 18 giu
                  2019 alle ore 18:06 Nick Foster &lt;<a
                    moz-do-not-send="true"
                    href="mailto:bistromath@gmail.com" rel="noreferrer"
                    target="_blank">bistromath@gmail.com</a>&gt; ha
                  scritto:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">
                    <div>Turn up the transmit gain on the USRP sink.
                      Start with ~40dB and transmit amplitude 0.3.</div>
                    <div><br>
                    </div>
                    <div>Nick<br>
                    </div>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Tue, Jun 18,
                      2019 at 9:40 AM Simona Sibio &lt;<a
                        moz-do-not-send="true"
                        href="mailto:ssibio2@gmail.com" rel="noreferrer"
                        target="_blank">ssibio2@gmail.com</a>&gt; wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="ltr">
                        <div>Thank you for the assistance.</div>
                        <div>I tried to change the amplitude but the
                          amplitude and frequency are not accurate in
                          the oscilloscope yet.</div>
                        <div>If I lower the amplitude, the S/N is
                          lowered then it is worst.</div>
                        <div><br>
                        </div>
                        <div>Best Regards,</div>
                        <div><br>
                        </div>
                        <div>Simona</div>
                        <div><br>
                        </div>
                      </div>
                      <br>
                      <div class="gmail_quote">
                        <div class="gmail_attr" dir="ltr">Il giorno mar
                          18 giu 2019 alle ore 18:33 Nick Foster &lt;<a
                            moz-do-not-send="true"
                            href="mailto:bistromath@gmail.com"
                            rel="noreferrer" target="_blank">bistromath@gmail.com</a>&gt;
                          ha scritto:<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;padding-left:1ex;border-left:1px solid
                          rgb(204,204,204)">
                          <div dir="ltr">Waveform source amplitude is
                            too high. Turn it down to &lt;0.4.<br>
                          </div>
                          <br>
                          <div class="gmail_quote">
                            <div class="gmail_attr" dir="ltr">On Tue,
                              Jun 18, 2019 at 9:31 AM Simona Sibio via
                              USRP-users &lt;<a moz-do-not-send="true"
                                href="mailto:usrp-users@lists.ettus.com"
                                rel="noreferrer" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class="gmail_quote"
                              style="margin:0px 0px 0px
                              0.8ex;padding-left:1ex;border-left:1px
                              solid rgb(204,204,204)">
                              <div dir="ltr">
                                <div>Hi Michael,</div>
                                <div><br>
                                </div>
                                <div>thank you for your interest.</div>
                                <div><br>
                                </div>
                                <div>I have two N200 and each one have
                                  two daughterboard UBX-40; the
                                  transmitters are connected by coaxial
                                  cable to an oscilloscope
                                  (Rhode&amp;Schwarz RTO2064) to check
                                  the waveform.</div>
                                <div>The version of UHD is 3.13.0.<br>
                                </div>
                                <div><br>
                                </div>
                                <div>I tried to send a constant signal
                                  using the flowgraph (Screenshot from
                                  2019-06-18 14-56-57) in attachment on
                                  GNU radio Companion 3.7.13.4, and on
                                  the oscilloscope I saw this
                                  "IMG_6586".</div>
                                <div>Also, I tried to generate a
                                  constant signal in Simulink model
                                  (16-42-17 &amp; 16-14-04) on Matlab
                                  R2019a but, on the oscilloscope, I saw
                                  this "IMG_6584".</div>
                                <div><br>
                                </div>
                                <div>I tried to send a sine signal with
                                  the Simulink model in attachment
                                  (16-46-10) and, on the oscilloscope, I
                                  saw this "IMG_6583".</div>
                                <div>Also I tried to generate the sine
                                  signal with GNU radio (17-08-58) and I
                                  saw this "IMG_6588".<br>
                                </div>
                                <div><br>
                                </div>
                                <div>It is possible to see how the
                                  amplitude and frequency change in
                                  every case, I need to obtain an
                                  accurate signal because I have to
                                  measure the amplitude and phase in a
                                  particular point in the circuit.</div>
                                <div>And in the previous email, I added
                                  that the problem increases when I
                                  lower the carrier frequency. All these
                                  measures were taken with a carrier
                                  frequency at 3 GHz, but if I change
                                  the fc at 1 GHz the shape is worst,
                                  e.g. IMG_6589.</div>
                                <div><br>
                                </div>
                                <div>Thank you in advance.</div>
                                <div><br>
                                </div>
                                <div>Best Regards,</div>
                                <div><br>
                                </div>
                                <div>Simona<br>
                                </div>
                                <div><br>
                                </div>
                              </div>
                              <br>
                              <div class="gmail_quote">
                                <div class="gmail_attr" dir="ltr">Il
                                  giorno mar 18 giu 2019 alle ore 15:34
                                  Michael Dickens &lt;<a
                                    moz-do-not-send="true"
                                    href="mailto:michael.dickens@ettus.com"
                                    rel="noreferrer" target="_blank">michael.dickens@ettus.com</a>&gt;
                                  ha scritto:<br>
                                </div>
                                <blockquote class="gmail_quote"
                                  style="margin:0px 0px 0px
                                  0.8ex;padding-left:1ex;border-left:1px
                                  solid rgb(204,204,204)">
                                  <div>
                                    <div style="font-family:Arial">Hi Simona
                                      - Can you please educate us as to
                                      a few items?<br>
                                    </div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div style="font-family:Arial">*
                                      your setup: you have an N200 +
                                      some daughterboard (which one) +
                                      some spectrum analyzer (which
                                      one), connected ?somehow? -&gt;
                                      are you doing actual wireless Tx
                                      -&gt; Rx, or do you have a cable
                                      hooked up between the N200 &amp;
                                      spectrum analyzer?<br>
                                    </div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div style="font-family:Arial">*
                                      what waveform you're trying to
                                      generate, and what is the actual
                                      flowgraph you're using for GNU
                                      Radio? how are you generating the
                                      waveform in MATLAB?<br>
                                    </div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div style="font-family:Arial">*
                                      which version of GNU Radio and UHD
                                      are you trying to use?<br>
                                    </div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div style="font-family:Arial">*
                                      which version of MATLAB and it's
                                      UHD are you trying to use?<br>
                                    </div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div style="font-family:Arial">The
                                      above might help someone to
                                      diagnose your issue ... without
                                      it, we can make some guesses but
                                      not much in the way of specifics.<br>
                                    </div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div style="font-family:Arial">Please
                                      remember to "reply all", so that
                                      others can see your response and
                                      be able to chime in to provide
                                      help. - MLD</div>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                    <div>On Tue, Jun 18, 2019, at 8:42
                                      AM, Simona Sibio via USRP-users
                                      wrote:<br>
                                    </div>
                                    <blockquote
id="gmail-m_-5070478948912620753m_1676310887229372130gmail-m_-7594402011322132257gmail-m_-8727958967599003955gmail-m_1109593595673867528gmail-m_8797002318478984421gmail-m_1447609992642899520gmail-m_5072467465448257050gmail-m_-4577347644377748938gmail-m_8370323799690171113gmail-m_3831871693442919435gmail-m_5647440429440147896gmail-m_9074622197958603082gmail-m_-9697987215180129qt"
                                      type="cite">
                                      <div dir="ltr">
                                        <div dir="ltr">
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">Dear
                                            Sir/Madam,<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent"><br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">I
                                            am Simona Sibio, a student
                                            in Heriot Watt University. <br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">I
                                            am working with USRPs both
                                            on Matlab and on Gnuradio,
                                            and with both softwares I
                                            have the same problem: the
                                            shape (generated by
                                            N200+daughterboard 10 MHz to
                                            6 GHz) is not accurate, in
                                            attacched some photos.<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">At
                                            1 GHz, the shape is worst
                                            than when the carrier
                                            frequency is 3GHz.<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">It
                                            is not possible to measure
                                            the amplitude and frequency
                                            because, also at 3 GHz, it
                                            is not stable.<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">Could
                                            you help me?<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent"><br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">Thank
                                            you in advance.<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent"><br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">Best
                                            Regards,<br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent"><br>
                                          </div>
                                          <div
style="text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:transparent">Simona<br>
                                          </div>
                                        </div>
                                      </div>
                                    </blockquote>
                                    <div style="font-family:Arial"><br>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
_______________________________________________<br>
                              USRP-users mailing list<br>
                              <a moz-do-not-send="true"
                                href="mailto:USRP-users@lists.ettus.com"
                                rel="noreferrer" target="_blank">USRP-users@lists.ettus.com</a><br>
                              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                rel="noreferrer noreferrer"
                                target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
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
    <br>
  </body>
</html>

--------------070006080605040704020908--


--===============8356891817616364341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8356891817616364341==--

