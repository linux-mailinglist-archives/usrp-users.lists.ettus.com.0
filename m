Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 119851F9FB1
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jun 2020 20:55:24 +0200 (CEST)
Received: from [::1] (port=53624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkuGP-00085o-0Q; Mon, 15 Jun 2020 14:55:21 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:45648)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jkuGK-000813-F9
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 14:55:16 -0400
Received: by mail-qk1-f196.google.com with SMTP id q8so16758569qkm.12
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 11:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=+Utc9i/QnyGTnXYSVBuoIUQT92KCcROG/vdqMlvPG0Y=;
 b=j7a3fabBrm3I19yA22IYVRb2dpW0AyC04A+Orcz3P7+guQNssve1Ya2iSzd+mMYyll
 FFsIno+POgOuvD1lmYnJdIOglisxdp9Aaz5Wxhp+gSOJnZtaa2qTkIP9sR4OdmSEn3fS
 ifLgonvKET2F/TbNOFuvSMMNqh8BwxNsb6K1NOgl8GTcP623vcJVlbyZaMRa8hSD8Qgx
 iuMvuA2l6sRmcg8vPzQE2XOF9Hrcn7eA9ioFLawXeodjk/a7+b5NMgAa+4gGuF+c3BOw
 af+xuCyEmHe/4v5F/E6IWtA7POPvgoGOCW5JNZ2z1gwqo+nu/kHVIObjVuJSTHQ6HVKr
 R5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=+Utc9i/QnyGTnXYSVBuoIUQT92KCcROG/vdqMlvPG0Y=;
 b=Rl0b/a3bWW5ZE9dIleCV/VhrmNgWQ6xnNAS6rYs8w6VfaSOlG0nu+TsinPcPogMtqW
 1bk45NqoCFNUZez0kB4TuRFMLQXZsPN0Z8qkXtqYOtUhBuMoFuGKyR1X7w0YnH7iRDqh
 KU1jEQ2smFOd7/7RqTj6SkkpTu1UhObWmGpF+V4ml0DSXbdjIBGcyrKyoIENp1WHNDgu
 8yqDK7dTr7vNPEzxxCO0O1HBOoDIrxpVjpgDJm7Oe/BxXjeoFrwdvVMTcAEnC9xDIjDE
 iIOwpha/FkuVbzQFppeGNWxJDcyy5a188DZ/cnWYHdbZTaMx3tC0IXpprrhSCVbpwOow
 jwWw==
X-Gm-Message-State: AOAM533bPgZNOx6Qut4YBcvNQmJ2GkGtFF9qMpuB3zpHCm5weRqjifMq
 q1gqNj1qT9q/kTqUBHRg5suALIc5AeU=
X-Google-Smtp-Source: ABdhPJzLD3+L7FrGRhF8bv1K8F6Zh93/Lhozg+q9smX+97KuyRSIVh9My+YjRjJDpwESRG9gvxGD4g==
X-Received: by 2002:ae9:ef4d:: with SMTP id d74mr16766151qkg.41.1592247275692; 
 Mon, 15 Jun 2020 11:54:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id x43sm13014508qtk.70.2020.06.15.11.54.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 11:54:35 -0700 (PDT)
Message-ID: <5EE7C3EA.9090902@gmail.com>
Date: Mon, 15 Jun 2020 14:54:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Aaron Smith <aarsmith54@gmail.com>
CC: Ettus Mail List <usrp-users@lists.ettus.com>
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
 <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
 <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
In-Reply-To: <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
Content-Type: multipart/mixed; boundary="===============2448073356511393643=="
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
--===============2448073356511393643==
Content-Type: multipart/alternative;
 boundary="------------080600080502020106020201"

This is a multi-part message in MIME format.
--------------080600080502020106020201
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/15/2020 01:35 PM, Aaron Smith wrote:
> Looking back over the thread, I thought there might be some confusion 
> about what I am trying to accomplish.
>
> My goal is to get a radio (and only 1 radio) to transmit at a 
> specified time. I don't care what the front end transmit delay of the 
> radio is, I just want it to be consistent so I can calibrate it out of 
> my system. To test the stability of the transmit time, I am using 1 
> radio connected to an external 1  PPS and 10 MHz reference. I have the 
> radio directly connected to a receiver through a coax cable. The radio 
> and the receiver share the 1 PPS and 10 MHz reference, and the 
> receiver is well calibrated, so it timestamps data very precisely.
>
> If I align the radio's clock to align to an external 1 PPS, and then 
> use a timed transmission to transmit on the 1 PPS, the time of arrival 
> of my signal at the receiver, relative to the PPS, should be: TOA = 
> front end tx delay + RF cable delay between the receiver and USRP. At 
> first I tested a B200 and noticed, after many transmissions, the TOA = 
> front end tx delay + RF cable delay between the receiver and USRP + 
> Uniform(0,1/master_clock_rate). This morning I observed the same 
> random delay with the B210. I have tested an X310 and N210 and they 
> did not have the random delay. They gave a very reliable TOA.
>
> I would like to know ifthe B2x0 hardware is capable of what I'm trying 
> to do, or do I need to buy a more expensive radio?
>
> Thanks for your help.
>
OK, how are you performing your timed transmission?  A code snippet 
would help.


> On Mon, Jun 15, 2020 at 11:13 AM Marcus D Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     I think I need more information on what you’re doing.
>
>     Are you starting a timed transmit sequence on both B200 and seeing
>     a timing difference between the two?
>
>     More details on your exact setup will help us all help you.
>
>     Sent from my iPhone
>
>>     On Jun 15, 2020, at 1:09 PM, Aaron Smith <aarsmith54@gmail.com
>>     <mailto:aarsmith54@gmail.com>> wrote:
>>
>>     ﻿
>>     I was able to test the B210 today and I confirmed that it also
>>     has a random delay that is related to 1/master_clock_rate.
>>
>>     Marcus, I wonder if I misunderstood your email, because I thought
>>     it would work.
>>
>>     I am only transmitting with one channel. Do I have to utilize the
>>     other channel in some way to resolve the random delay?
>>
>>     Thanks,
>>     Aaron
>>
>>     On Fri, Jun 12, 2020 at 8:19 PM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 06/12/2020 10:07 PM, Aaron Smith via USRP-users wrote:
>>>         Robin - with your insight I see that other users have
>>>         addressed this on this mailing list. In this thread:
>>>         http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/057080.html
>>>         the user reports that the B210 does not have this problem,
>>>         even though it uses the same AD9361. Perhaps I will spend
>>>         the money to test that radio because it's clear the B200
>>>         will not work for me.
>>         Indeed, the B210 uses the AD9361, which has TWO channels that
>>         are inherently mutually-coherent, since they're fed with the
>>         same LO, so
>>           there's very little opportunity for any phase ambiguity.
>>
>>         Where you run into trouble is trying to maintain phase
>>         coherence, and predictable-and-hopefully-zero mutual phase
>>         offset among multiple
>>           devices.  It's NOT just a matter of feeding them a common
>>         reference clock and 1PPS.  Things are much more nuanced than
>>         that.
>>
>>         This Knowledge-Base article goes into some of this:
>>
>>         https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices
>>
>>         I had posted some pointers about RF synthesizers on this list
>>         a few days ago, due to a similar query.  If you've never
>>         really encountered
>>           RF synthesis before, it's illuminating to study the matter.
>>
>>
>>>
>>>         On Fri, Jun 12, 2020 at 7:35 PM Robin Coxe
>>>         <coxe@quanttux.com <mailto:coxe@quanttux.com>> wrote:
>>>
>>>             The phase ambiguity is introduced by the divide-by-2 in
>>>             the PLLs of the Analog Devices AD9361 RF integrated
>>>             transceiver on the B200.  These dividers randomly
>>>             introduce a 0-degree or 180-degree phase shift when they
>>>             come up.
>>>
>>>
>>>
>>>             On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via
>>>             USRP-users <usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>>                 All of the devices share a 10 MHz reference that is
>>>                 generated from the same source as the 1 PPS.
>>>
>>>                 When you say it's a phase ambiguity, are you
>>>                 suggesting that it's a problem with the 10Hz
>>>                 reference or something inherent in the radio
>>>                 hardware that I will have to deal with? Or is there
>>>                 a software fix?
>>>
>>>                 On Fri, Jun 12, 2020, 4:05 PM Nick Foster
>>>                 <bistromath@gmail.com <mailto:bistromath@gmail.com>>
>>>                 wrote:
>>>
>>>                     The change in time of arrival with B200s is due
>>>                     to phase ambiguity. Do you have a 10MHz
>>>                     reference shared between your devices as well?
>>>
>>>                     Don't know why N210 has that off-by-one
>>>                     timestamp. I'm guessing that there's an extra
>>>                     flop in the logic for the PPS timing chain
>>>                     somewhere -- as in, the clock starts ticking on
>>>                     the first tick after PPS comes in. I've made
>>>                     that error about half a million times, myself.
>>>
>>>                     Nick
>>>
>>>                     On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via
>>>                     USRP-users <usrp-users@lists.ettus.com
>>>                     <mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>>                         Hello all,
>>>
>>>                         I have two separate, but related, questions.
>>>
>>>                         I am trying to trigger an RF transmission
>>>                         every second, and I am receiving the
>>>                         transmission with a receiver that has very
>>>                         precise time stamps. I am driving the
>>>                         receiver with the same 1 PPS source as the
>>>                         B200 and N210. For my simple test, I want
>>>                         the time of arrival at the receiver to
>>>                         register at 1 PPS + propagation delay of the
>>>                         RF coax cable + the USRP front end delay. In
>>>                         all cases I am running UHD 3.15.LTS
>>>
>>>                         With the N210 I can achieve this. However
>>>                         when I call
>>>
>>>                         usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>>
>>>                         and poll the last pps time, I see that it is
>>>                         consistently 20 ns before a second. That is,
>>>                         the pps shows at:
>>>
>>>                         999999980 ns
>>>                         1999999980 ns
>>>                         2999999980 ns
>>>
>>>                         If I call
>>>                         usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9));
>>>                         then the 1 PPS registers on the second. It's
>>>                         almost like the clock is biased by 20 ns. I
>>>                         have observed this across 3 different N210s.
>>>                         What could be causing this?
>>>
>>>                         With the B200, every time I destroy and
>>>                         recreate the uhd::usrp::multi_usrp there is
>>>                         a random change in the time of arrival at
>>>                         the receiver that appears to be uniformly
>>>                         distributed between 0 and
>>>                         1/master_clock_rate. Is this expected? The
>>>                         Ettus website says "All functions that
>>>                         directly interact with the AD93xx (tuning,
>>>                         gain change, etc) are subject to the
>>>                         scheduling of the AD93xx. The determinism of
>>>                         these operations are not guaranteed. "
>>>
>>>                         Is this what I am experiencing?
>>>
>>>                         Thank you for the help!
>>>
>>>                         _______________________________________________
>>>                         USRP-users mailing list
>>>                         USRP-users@lists.ettus.com
>>>                         <mailto:USRP-users@lists.ettus.com>
>>>                         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>                 _______________________________________________
>>>                 USRP-users mailing list
>>>                 USRP-users@lists.ettus.com
>>>                 <mailto:USRP-users@lists.ettus.com>
>>>                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list
>>>         USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>


--------------080600080502020106020201
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/15/2020 01:35 PM, Aaron Smith
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Looking back over the thread, I thought there might be some
          confusion about what I am trying to accomplish.</div>
        <div><br>
        </div>
        <div>My goal is to get a radio (and only 1 radio) to transmit at
          a specified time. I don't care what the front end transmit
          delay of the radio is, I just want it to be consistent so I
          can calibrate it out of my system. To test the stability of
          the transmit time, I am using 1 radio connected to an external
          1  PPS and 10 MHz reference. I have the radio directly
          connected to a receiver through a coax cable. The radio and
          the receiver share the 1 PPS and 10 MHz reference, and the
          receiver is well calibrated, so it timestamps data very
          precisely.<br>
        </div>
        <div><br>
        </div>
        <div>If I align the radio's clock to align to an external 1 PPS,
          and then use a timed transmission to transmit on the 1 PPS,
          the time of arrival of my signal at the receiver, relative to
          the PPS, should be: TOA = front end tx delay + RF cable delay
          between the receiver and USRP. At first I tested a B200 and
          noticed, after many transmissions, the TOA = front end tx
          delay + RF cable delay between the receiver and USRP
          + Uniform(0,1/master_clock_rate). This morning I observed the
          same random delay with the B210. I have tested an X310 and
          N210 and they did not have the random delay. They gave a very
          reliable TOA.</div>
        <div><br>
        </div>
        <div>I would like to know ifthe B2x0 hardware is capable of what
          I'm trying to do, or do I need to buy a more expensive radio?</div>
        <div><br>
        </div>
        <div>Thanks for your help.<br>
        </div>
      </div>
      <br>
    </blockquote>
    OK, how are you performing your timed transmission?  A code snippet
    would help.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Jun 15, 2020 at 11:13
          AM Marcus D Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">I think I need more information on what you’re
            doing. 
            <div><br>
            </div>
            <div>Are you starting a timed transmit sequence on both B200
              and seeing a timing difference between the two? </div>
            <div><br>
            </div>
            <div>More details on your exact setup will help us all help
              you. <br>
              <br>
              <div dir="ltr">Sent from my iPhone</div>
              <div dir="ltr"><br>
                <blockquote type="cite">On Jun 15, 2020, at 1:09 PM,
                  Aaron Smith &lt;<a moz-do-not-send="true"
                    href="mailto:aarsmith54@gmail.com" target="_blank">aarsmith54@gmail.com</a>&gt;
                  wrote:<br>
                  <br>
                </blockquote>
              </div>
              <blockquote type="cite">
                <div dir="ltr">﻿
                  <div dir="ltr">
                    <div>I was able to test the B210 today and I
                      confirmed that it also has a random delay that is
                      related to 1/master_clock_rate.</div>
                    <div><br>
                    </div>
                    <div>Marcus, I wonder if I misunderstood your email,
                      because I thought it would work.</div>
                    <div><br>
                    </div>
                    <div>I am only transmitting with one channel. Do I
                      have to utilize the other channel in some way to
                      resolve the random delay?<br>
                    </div>
                    <div><br>
                    </div>
                    <div>Thanks,</div>
                    <div>Aaron<br>
                    </div>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Fri, Jun 12,
                      2020 at 8:19 PM Marcus D. Leech via USRP-users
                      &lt;<a moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div bgcolor="#FFFFFF">
                        <div>On 06/12/2020 10:07 PM, Aaron Smith via
                          USRP-users wrote:<br>
                        </div>
                        <blockquote type="cite">
                          <div dir="ltr">
                            <div dir="ltr">Robin - with your insight I
                              see that other users have addressed this
                              on this mailing list. In this thread:
                              <div><a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/057080.html"
                                  target="_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/057080.html</a>
                                the user reports that the B210 does not
                                have this problem, even though it uses
                                the same AD9361. Perhaps I will spend
                                the money to test that radio because
                                it's clear the B200 will not work for
                                me.</div>
                            </div>
                          </div>
                        </blockquote>
                        Indeed, the B210 uses the AD9361, which has TWO
                        channels that are inherently mutually-coherent,
                        since they're fed with the same LO, so<br>
                          there's very little opportunity for any phase
                        ambiguity.<br>
                        <br>
                        Where you run into trouble is trying to maintain
                        phase coherence, and
                        predictable-and-hopefully-zero mutual phase
                        offset among multiple<br>
                          devices.  It's NOT just a matter of feeding
                        them a common reference clock and 1PPS.  Things
                        are much more nuanced than that.<br>
                        <br>
                        This Knowledge-Base article goes into some of
                        this:<br>
                        <br>
                        <a moz-do-not-send="true"
href="https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices"
                          target="_blank">https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices</a><br>
                        <br>
                        I had posted some pointers about RF synthesizers
                        on this list a few days ago, due to a similar
                        query.  If you've never really encountered<br>
                          RF synthesis before, it's illuminating to
                        study the matter.<br>
                        <br>
                        <br>
                        <blockquote type="cite"><br>
                          <div class="gmail_quote">
                            <div dir="ltr" class="gmail_attr">On Fri,
                              Jun 12, 2020 at 7:35 PM Robin Coxe &lt;<a
                                moz-do-not-send="true"
                                href="mailto:coxe@quanttux.com"
                                target="_blank">coxe@quanttux.com</a>&gt;

                              wrote:<br>
                            </div>
                            <blockquote class="gmail_quote"
                              style="margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div dir="ltr">The phase ambiguity is
                                introduced by the divide-by-2 in the
                                PLLs of the Analog Devices AD9361 RF
                                integrated transceiver on the B200. 
                                 These dividers randomly introduce a
                                0-degree or 180-degree phase shift when
                                they come up.  
                                <div>
                                  <div><br>
                                  </div>
                                  <div><br>
                                  </div>
                                </div>
                              </div>
                              <br>
                              <div class="gmail_quote">
                                <div dir="ltr" class="gmail_attr">On
                                  Fri, Jun 12, 2020 at 4:08 PM Aaron
                                  Smith via USRP-users &lt;<a
                                    moz-do-not-send="true"
                                    href="mailto:usrp-users@lists.ettus.com"
                                    target="_blank">usrp-users@lists.ettus.com</a>&gt;

                                  wrote:<br>
                                </div>
                                <blockquote class="gmail_quote"
                                  style="margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div dir="auto">All of the devices
                                    share a 10 MHz reference that is
                                    generated from the same source as
                                    the 1 PPS.
                                    <div dir="auto"><br>
                                    </div>
                                    <div dir="auto">When you say it's a
                                      phase ambiguity, are you
                                      suggesting that it's a problem
                                      with the 10Hz reference or
                                      something inherent in the radio
                                      hardware that I will have to deal
                                      with? Or is there a software fix?</div>
                                  </div>
                                  <br>
                                  <div class="gmail_quote">
                                    <div dir="ltr" class="gmail_attr">On
                                      Fri, Jun 12, 2020, 4:05 PM Nick
                                      Foster &lt;<a
                                        moz-do-not-send="true"
                                        href="mailto:bistromath@gmail.com"
                                        rel="noreferrer" target="_blank">bistromath@gmail.com</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class="gmail_quote"
                                      style="margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">
                                      <div dir="ltr">
                                        <div>The change in time of
                                          arrival with B200s is due to
                                          phase ambiguity. Do you have a
                                          10MHz reference shared between
                                          your devices as well?</div>
                                        <div><br>
                                        </div>
                                        <div>Don't know why N210 has
                                          that off-by-one timestamp. I'm
                                          guessing that there's an extra
                                          flop in the logic for the PPS
                                          timing chain somewhere -- as
                                          in, the clock starts ticking
                                          on the first tick after PPS
                                          comes in. I've made that error
                                          about half a million times,
                                          myself.<br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div>Nick<br>
                                        </div>
                                      </div>
                                      <br>
                                      <div class="gmail_quote">
                                        <div dir="ltr"
                                          class="gmail_attr">On Fri, Jun
                                          12, 2020 at 2:23 PM Aaron
                                          Smith via USRP-users &lt;<a
                                            moz-do-not-send="true"
                                            href="mailto:usrp-users@lists.ettus.com"
                                            rel="noreferrer noreferrer"
                                            target="_blank">usrp-users@lists.ettus.com</a>&gt;

                                          wrote:<br>
                                        </div>
                                        <blockquote class="gmail_quote"
                                          style="margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1ex">
                                          <div dir="ltr">
                                            <div>Hello all,</div>
                                            <div><br>
                                            </div>
                                            <div>I have two separate,
                                              but related, questions.</div>
                                            <div><br>
                                            </div>
                                            <div>I am trying to trigger
                                              an RF transmission every
                                              second, and I am receiving
                                              the transmission with a
                                              receiver that has very
                                              precise time stamps. I am
                                              driving the receiver with
                                              the same 1 PPS source as
                                              the B200 and N210. For my
                                              simple test, I want the
                                              time of arrival at the
                                              receiver to register at 1
                                              PPS + propagation delay of
                                              the RF coax cable + the
                                              USRP front end delay. In
                                              all cases I am running UHD
                                              3.15.LTS<br>
                                            </div>
                                            <div><br>
                                            </div>
                                            <div>With the N210 I can
                                              achieve this. However when
                                              I call
                                              <pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0));</pre>
                                            </div>
                                            <div>and poll the last pps
                                              time, I see that it is
                                              consistently 20 ns before
                                              a second. That is, the pps
                                              shows at:</div>
                                            <div><br>
                                            </div>
                                            <div>999999980 ns<br>
                                            </div>
                                            <div>1999999980 ns<br>
                                            </div>
                                            <div>2999999980 ns<br>
                                            </div>
                                            <div><br>
                                            </div>
                                            <div>If I call
                                              usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-9));
                                              then the 1 PPS registers
                                              on the second. It's almost
                                              like the clock is biased
                                              by 20 ns. I have observed
                                              this across 3 different
                                              N210s. What could be
                                              causing this?</div>
                                            <div><br>
                                            </div>
                                            <div>With the B200, every
                                              time I destroy and
                                              recreate the
                                              uhd::usrp::multi_usrp
                                              there is a random change
                                              in the time of arrival at
                                              the receiver that appears
                                              to be uniformly
                                              distributed between 0 and
                                              1/master_clock_rate. Is
                                              this expected? The Ettus
                                              website says "All
                                              functions that directly
                                              interact with the AD93xx
                                              (tuning, gain change, etc)
                                              are subject to the
                                              scheduling of the AD93xx.
                                              The determinism of these
                                              operations are not
                                              guaranteed. "<br>
                                            </div>
                                            <div><br>
                                            </div>
                                            <div>Is this what I am
                                              experiencing? <br>
                                            </div>
                                            <div><br>
                                            </div>
                                            <div>Thank you for the help!<br>
                                            </div>
                                            <div><br>
                                            </div>
                                          </div>
_______________________________________________<br>
                                          USRP-users mailing list<br>
                                          <a moz-do-not-send="true"
                                            href="mailto:USRP-users@lists.ettus.com"
                                            rel="noreferrer noreferrer"
                                            target="_blank">USRP-users@lists.ettus.com</a><br>
                                          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                            rel="noreferrer noreferrer
                                            noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                                        </blockquote>
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
                            </blockquote>
                          </div>
                          <br>
                          <fieldset></fieldset>
                          <br>
                          <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                        </blockquote>
                        <br>
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
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080600080502020106020201--


--===============2448073356511393643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2448073356511393643==--

