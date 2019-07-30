Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F07AFF4
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jul 2019 19:30:10 +0200 (CEST)
Received: from [::1] (port=38786 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsVwu-0007Qp-Ti; Tue, 30 Jul 2019 13:30:08 -0400
Received: from mail-vs1-f48.google.com ([209.85.217.48]:46782)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hsVwq-0007Es-EL
 for usrp-users@lists.ettus.com; Tue, 30 Jul 2019 13:30:04 -0400
Received: by mail-vs1-f48.google.com with SMTP id r3so44057369vsr.13
 for <usrp-users@lists.ettus.com>; Tue, 30 Jul 2019 10:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=vte2UHfD8ppyizGCVwDwKjotSKLZDDUXGFF94vwZwXw=;
 b=MSEImkpmyZNvL65z0SsAo3vnEa9EkCWlCaCs5LiMe2mAYvah4EvehM3YI7HtvsAe/Z
 LU2KKdzqMIw5GDaG4VgSQvXJJA7fdsbX8BtIc2eiqawkcDHCmY3Ci6beR5QhyAV0Zxnb
 3/W54AicAeYsgdi9H7fnXD6B8gnNEVQ2+Vn/aETBW0CzXXzlh+eJyPsY96BkjEzZPEB+
 7/C3HkGqgZFdgZF2RH7/dYPkfzDaHWbr76jwzTj26p/mukB7MiHki/7SIpZQV3jZ6Ouk
 mgYk1BoYdyHbTaTFSW/UOivGWjIgHY9FAOMC54EfDodVbYMPhD8WDFIySjXGrOG5e8op
 Y9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=vte2UHfD8ppyizGCVwDwKjotSKLZDDUXGFF94vwZwXw=;
 b=ClpiEALaU6Vvh5iMbewLsNNmiDrfT7WV8LJI5CDsbAqPZstv4+2QAw0KL/ZuUd5iQm
 2hzz6hKBNqZ5pKlBfVVi+0npzEr54mU1ct1yhfWOS4peOU3+ai9OVxCVDTBe6vkpAveJ
 Pkh+jBFXhneBPfAqr6bSlk4Az6Go/nWuPKpEc03YMaiZSYA9/IYBvrS9HX4BGji3BXXo
 JGI8CcF+WJwpONWDViNU+LgKynoPi3ciNu604JQITt5rEjSUrbWftIvNaV2WbjtaJeXA
 VEq971bHfxrDVNNeVTD0LY3jR40WdZCLc/kEMEJCwkXcYBdO2rDdEbV+YswPFCktUqk/
 9nVw==
X-Gm-Message-State: APjAAAWgagHr5lxT5nBx/R3DkWhkZaM1mXF+HKYSlyAM+jjfJOuUaiZa
 0EItb1Mpuk62O9dcstV2uqY6Enhv
X-Google-Smtp-Source: APXvYqyTe7AKwEN1N4QfIp6Qb5Ns+WBl9nlqwiAiQKvi1732Ng1V6bi4f1N82kBMSRswioPNV0epLg==
X-Received: by 2002:a67:ed81:: with SMTP id d1mr77032935vsp.157.1564507763630; 
 Tue, 30 Jul 2019 10:29:23 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id u65sm14505926vsu.34.2019.07.30.10.29.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 10:29:23 -0700 (PDT)
Message-ID: <5D407E72.8080006@gmail.com>
Date: Tue, 30 Jul 2019 13:29:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAKJyDkKyb2H0gi_Kcy_5=YE0NTqLguMVfeWnGT6gXiQDe=3ppA@mail.gmail.com>
 <D975AAE1-4B39-430E-B0AB-C3A996368FB3@gmail.com>
 <CAE6G02-D9-HFhk8ZW-CRhK93UTew8CfKthp9mBuo5x+cLKGzWA@mail.gmail.com>
 <5D31DA6E.7000902@gmail.com>
 <CAE6G02_JXqOBZdhK9k6mqcPA6BqF498KYuPXa2dLSXesC+=ErQ@mail.gmail.com>
In-Reply-To: <CAE6G02_JXqOBZdhK9k6mqcPA6BqF498KYuPXa2dLSXesC+=ErQ@mail.gmail.com>
Subject: Re: [USRP-users] Fwd: Phase coherency for low RX frequencies
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
Content-Type: multipart/mixed; boundary="===============6623481547246823302=="
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
--===============6623481547246823302==
Content-Type: multipart/alternative;
 boundary="------------090006010801060002010008"

This is a multi-part message in MIME format.
--------------090006010801060002010008
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/30/2019 12:43 PM, Sammy Welschen via USRP-users wrote:
> Sorry for not specifying, but I was talking about two N310 or N320 
> devices. Do you know how it is in that case?
With the N320, with the sample-clocks in-phase when using an external 
reference, I *THINK* you should see very little phase offset, even
   with the up-converter in-circuit.


>
> Am Fr., 19. Juli 2019 um 16:58 Uhr schrieb Marcus D. Leech via 
> USRP-users <usrp-users@lists.ettus.com 
> <mailto:usrp-users@lists.ettus.com>>:
>
>     On 07/19/2019 05:24 AM, Sammy Welschen via USRP-users wrote:
>>     Thanks for your reply.
>>
>>     I am a bit confused now. Since the LO for this stage is derived
>>     from the sample clock, wouldn't I be in the same situation as if
>>     I only shared 10 MHz reference and PPS signals?
>>     Quote from https://files.ettus.com/manual/page_usrp_n3xx.html:
>     My understanding was that we were talking about the N320, and only
>     a single unit?
>
>     I need to confirm, but I think the upconverter LO on the N320 is a
>     single (clock-derived) oscillator, shared among the channels in
>     the unit.  In that case, the
>       phase relations will be static across powerups, assuming that
>     you share the other LOs.
>
>     In the case of multiple N320s, I don't yet have an answer, since
>     it depends critically on how that upconverter LO is produced, and
>     how the external-reference
>       PLL works.
>
>
>>
>>     ----------------------
>>
>>     Reasons to use an external LO include:
>>
>>     Improving phase alignment: The N310 itself has no way of aligning
>>     phase between channels, and phase will be random between runs. By
>>     applying an external LO, the phase ambiguity is reduced to 180
>>     degrees, produced by a by-2 divider in the AD9371 transceiver IC.
>>     Improving phase noise: The quality of the onboard LO depends on
>>     the external reference clock, among other things. By providing a
>>     custom LO signal, it is possible to more accurately tune,
>>     assuming the externally generated LO signal is coming from a
>>     high-quality oscillator.
>>     ----------------------
>>
>>     I would still have a certain fixed phase relation between
>>     channels, but with more fluctuations and a phase difference that
>>     changes on every turn on of the devices (i.e. the same situation
>>     as when sharing 10 Mhz and PPS signals). See for example the
>>     plots on pages 24-25 of
>>     https://forums.ni.com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%20Phase-Coherent%20RF%20Measurements.pdf
>>     for an illustration of what I mean.
>>
>>     Am Do., 18. Juli 2019 um 19:25 Uhr schrieb Marcus D Leech via
>>     USRP-users <usrp-users@lists.ettus.com
>>     <mailto:usrp-users@lists.ettus.com>>:
>>
>>
>>
>>>
>>>             I have just been corrected by one of my colleagues at
>>>             Ettus.
>>>
>>>             While there is an up conversion stage for frequencies
>>>             below 450Mhz, the LO for that stage is fixed frequency,
>>>             and derived from the sample clock and coherent across
>>>             channels.
>>>
>>>             So there should be no random phase offset among channels
>>>             even below 450Mhz when LO sharing.
>>>
>>>>             This is correct as far as I know. Although I don’t have
>>>>             an N320 in my lab, it uses an up conversion scheme for
>>>>             lower frequencies. That scheme does not participate in
>>>>             the LO sharing.
>>>>
>>>>             Sent from my iPhone
>>>>
>>>>
>>>>             On Jul 18, 2019, at 11:17 AM, Sammy Welschen via
>>>>             USRP-users <usrp-users@lists.ettus.com
>>>>             <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>
>>>>                 I have to acquire phase coherent data on multiple
>>>>                 channels using USRP N310/320 devices.
>>>>
>>>>                 Am I correct in assuming that for frequencies below
>>>>                 450 MHz, there is no way to remove random phase
>>>>                 differences between channels due to the additional
>>>>                 frequency shift involved (shown for example in the
>>>>                 block diagram
>>>>                 http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png
>>>>                 <https://urldefense.com/v3/__http:/www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM52OcRdC4$>)?
>>>>                 As I understand it, by using the same LO signal for
>>>>                 all channels I could remove the differences for
>>>>                 frequencies above 450 MHz, but this is of no use
>>>>                 for frequencies below 450 MHz due to this the
>>>>                 additional stage.
>>>>
>>>>                 _______________________________________________
>>>>                 USRP-users mailing list
>>>>                 USRP-users@lists.ettus.com
>>>>                 <mailto:USRP-users@lists.ettus.com>
>>>>                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>                 <https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$>
>>>>
>>>>             _______________________________________________
>>>>             USRP-users mailing list
>>>>             USRP-users@lists.ettus.com
>>>>             <mailto:USRP-users@lists.ettus.com>
>>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>             <https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$>
>>>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090006010801060002010008
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/30/2019 12:43 PM, Sammy Welschen
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAE6G02_JXqOBZdhK9k6mqcPA6BqF498KYuPXa2dLSXesC+=ErQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Sorry for not specifying, but I was talking about two N310
          or N320 devices. Do you know how it is in that case?</div>
      </div>
    </blockquote>
    With the N320, with the sample-clocks in-phase when using an
    external reference, I *THINK* you should see very little phase
    offset, even<br>
      with the up-converter in-circuit.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAE6G02_JXqOBZdhK9k6mqcPA6BqF498KYuPXa2dLSXesC+=ErQ@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">Am Fr., 19. Juli 2019 um
            16:58 Uhr schrieb Marcus D. Leech via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div class="gmail-m_-9210552578656300425moz-cite-prefix">On
                07/19/2019 05:24 AM, Sammy Welschen via USRP-users
                wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr"><font face="arial, sans-serif">Thanks for
                    your reply. </font>
                  <div><font face="arial, sans-serif"><br>
                    </font></div>
                  <div><font face="arial, sans-serif">I am a bit
                      confused now. Since the LO for this stage is
                      derived from the sample clock, wouldn't I be in
                      the same situation as if I only shared 10 MHz
                      reference and PPS signals? </font></div>
                  <div><font face="arial, sans-serif">Quote from <a
                        moz-do-not-send="true"
                        href="https://files.ettus.com/manual/page_usrp_n3xx.html"
                        target="_blank">https://files.ettus.com/manual/page_usrp_n3xx.html</a>:</font></div>
                </div>
              </blockquote>
              <font face="arial, sans-serif">My understanding was that
                we were talking about the N320, and only a single unit?<br>
                <br>
                I need to confirm, but I think the upconverter LO on the
                N320 is a single (clock-derived) oscillator, shared
                among the channels in the unit.  In that case, the<br>
                  phase relations will be static across powerups,
                assuming that you share the other LOs.<br>
                <br>
                In the case of multiple N320s, I don't yet have an
                answer, since it depends critically on how that
                upconverter LO is produced, and how the
                external-reference<br>
                  PLL works.<br>
                <br>
                <br>
              </font>
              <blockquote type="cite">
                <div dir="ltr">
                  <div><font face="arial, sans-serif"><br>
                    </font></div>
                  <div><font face="arial, sans-serif">----------------------</font></div>
                  <div>
                    <p
style="font-variant-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:22px;color:rgb(0,0,0)"><font
                        face="arial, sans-serif">Reasons to use an
                        external LO include:</font></p>
                    <font face="arial, sans-serif"><span
                        style="color:rgb(0,0,0);font-size:14px">Improving
                        phase alignment: The N310 itself has no way of
                        aligning phase between channels, and phase will
                        be random between runs. By applying an external
                        LO, the phase ambiguity is reduced to 180
                        degrees, produced by a by-2 divider in the
                        AD9371 transceiver IC.</span><br>
                      <span style="color:rgb(0,0,0);font-size:14px">Improving

                        phase noise: The quality of the onboard LO
                        depends on the external reference clock, among
                        other things. By providing a custom LO signal,
                        it is possible to more accurately tune, assuming
                        the externally generated LO signal is coming
                        from a high-quality oscillator.</span></font></div>
                  <div><font face="arial, sans-serif">----------------------  <br>
                    </font></div>
                  <div><font face="arial, sans-serif"><br>
                    </font></div>
                  <div><font face="arial, sans-serif">I would still have
                      a certain fixed phase relation between channels,
                      but with more fluctuations and a phase difference
                      that changes on every turn on of the devices (i.e.
                      the same situation as when sharing 10 Mhz and PPS
                      signals). See for example the plots on pages 24-25
                      of <a moz-do-not-send="true"
href="https://forums.ni.com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%20Phase-Coherent%20RF%20Measurements.pdf"
                        target="_blank">https://forums.ni.com/ni/attachments/ni/grp-1008/110/1/Fundamentals%20of%20Phase-Coherent%20RF%20Measurements.pdf</a> 
                      for an illustration of what I mean.</font></div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">Am Do., 18. Juli
                      2019 um 19:25 Uhr schrieb Marcus D Leech via
                      USRP-users &lt;<a moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a>&gt;:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="auto"><br>
                        <br>
                        <blockquote type="cite">
                          <div dir="ltr">
                            <div class="gmail_quote">
                              <div dir="ltr" class="gmail_attr"><br>
                              </div>
                              <blockquote class="gmail_quote"
                                style="margin:0px 0px 0px
                                0.8ex;border-left:1px solid
                                rgb(204,204,204);padding-left:1ex">
                                <div dir="auto">I have just been
                                  corrected by one of my colleagues at
                                  Ettus. 
                                  <div><br>
                                  </div>
                                  <div>While there is an up conversion
                                    stage for frequencies below 450Mhz,
                                    the LO for that stage is fixed
                                    frequency, and derived from the
                                    sample clock and coherent across
                                    channels. </div>
                                  <div><br>
                                  </div>
                                  <div>So there should be no random
                                    phase offset among channels even
                                    below 450Mhz when LO sharing. </div>
                                  <div><br>
                                    <blockquote type="cite">
                                      <div dir="ltr">
                                        <div
class="gmail-m_-9210552578656300425m_4109572153054765750gmail-m_-766200740446686168gmail-m_8464511976241383310WordSection1">
                                          <div>
                                            <div>
                                              <div>
                                                <p class="MsoNormal"
                                                  style="margin-bottom:12pt">This

                                                  is correct as far as I
                                                  know. Although I don’t
                                                  have an N320 in my
                                                  lab, it uses an up
                                                  conversion scheme for
                                                  lower frequencies.
                                                  That scheme does not
                                                  participate in the LO
                                                  sharing. </p>
                                                <div
id="gmail-m_-9210552578656300425m_4109572153054765750gmail-m_-766200740446686168gmail-m_8464511976241383310m_-2455621878214780349AppleMailSignature">
                                                  <p class="MsoNormal">Sent
                                                    from my iPhone</p>
                                                </div>
                                                <div>
                                                  <p class="MsoNormal"
                                                    style="margin-bottom:12pt"><br>
                                                    On Jul 18, 2019, at
                                                    11:17 AM, Sammy
                                                    Welschen via
                                                    USRP-users &lt;<a
                                                      moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;

                                                    wrote:</p>
                                                </div>
                                                <blockquote
                                                  style="margin-top:5pt;margin-bottom:5pt">
                                                  <div>
                                                    <div>
                                                      <div>
                                                        <p
                                                          class="MsoNormal">I
                                                          have to
                                                          acquire phase
                                                          coherent data
                                                          on multiple
                                                          channels using
                                                          USRP N310/320
                                                          devices.</p>
                                                      </div>
                                                      <div>
                                                        <p
                                                          class="MsoNormal"> </p>
                                                      </div>
                                                      <p
                                                        class="MsoNormal">Am
                                                        I correct in
                                                        assuming that
                                                        for frequencies
                                                        below 450 MHz,
                                                        there is no way
                                                        to remove random
                                                        phase
                                                        differences
                                                        between channels
                                                        due to the
                                                        additional
                                                        frequency shift
                                                        involved (shown
                                                        for example in
                                                        the block
                                                        diagram  <a
                                                          moz-do-not-send="true"
href="https://urldefense.com/v3/__http:/www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM52OcRdC4$"
target="_blank">
http://www.ettus.com/wp-content/uploads/2019/03/N320BlockDiagram.png</a>)?

                                                        As I understand
                                                        it, by using the
                                                        same LO signal
                                                        for all channels
                                                        I could remove
                                                        the differences
                                                        for frequencies
                                                        above 450 MHz,
                                                        but this is of
                                                        no use for
                                                        frequencies
                                                        below 450 MHz
                                                        due to this the
                                                        additional
                                                        stage.</p>
                                                    </div>
                                                  </div>
                                                </blockquote>
                                                <blockquote
                                                  style="margin-top:5pt;margin-bottom:5pt">
                                                  <div>
                                                    <p class="MsoNormal">_______________________________________________<br>
                                                      USRP-users mailing
                                                      list<br>
                                                      <a
                                                        moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
                                                      <a
                                                        moz-do-not-send="true"
href="https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$"
                                                        target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></p>
                                                  </div>
                                                </blockquote>
                                              </div>
                                              <p class="MsoNormal">_______________________________________________<br>
                                                USRP-users mailing list<br>
                                                <a
                                                  moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
                                                <a
                                                  moz-do-not-send="true"
href="https://urldefense.com/v3/__http:/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com__;%21fqWJcnlTkjM%219UAjRx1UqNGGgw_MyGxeNp4dcd08afk3IjpbsIlbrDYEk9H2AfliCLM5ZdVPAfg$"
                                                  target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></p>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </blockquote>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list<br>
                      <a moz-do-not-send="true"
                        href="mailto:USRP-users@lists.ettus.com"
                        target="_blank">USRP-users@lists.ettus.com</a><br>
                      <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                        rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                    </blockquote>
                  </div>
                </div>
                <br>
                <fieldset
                  class="gmail-m_-9210552578656300425mimeAttachmentHeader"></fieldset>
                <br>
                <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="gmail-m_-9210552578656300425moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="gmail-m_-9210552578656300425moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
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
    <br>
  </body>
</html>

--------------090006010801060002010008--


--===============6623481547246823302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6623481547246823302==--

