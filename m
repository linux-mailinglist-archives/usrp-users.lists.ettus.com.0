Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A051666D7
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2020 20:08:15 +0100 (CET)
Received: from [::1] (port=51016 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4rBG-0005UT-Ac; Thu, 20 Feb 2020 14:08:14 -0500
Received: from mail-qk1-f169.google.com ([209.85.222.169]:41227)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j4rBC-0005Lw-GI
 for USRP-users@lists.ettus.com; Thu, 20 Feb 2020 14:08:10 -0500
Received: by mail-qk1-f169.google.com with SMTP id d11so4597546qko.8
 for <USRP-users@lists.ettus.com>; Thu, 20 Feb 2020 11:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=we4MqQ7GBCP5fUUWdYU9nYOSJJ/c9uQjsfOgqn41J4s=;
 b=YejknsHAFQcODfGVHQHGScqtdbELJs0xnILphIjdQEvss2IOj9QXknmu0GdnZGNrkz
 mVbY4P5OmxL+QPpbl9hTMiwTPTsOlGVXLK68nQds6VAuRyH0HBQJ1PtfgY4gHeloryH5
 uHTqY14VrJQLBU+aX2VZE1/mEgaS7xXwL1AeML/OW7WmpDpkpzLrmYJhVlYgpwfJ5qWZ
 9WrnA4C3lvdvod7hPDv+Ra2IpfwNF3dfc1g6FcPwffEupgec3SLoW7T9hQtqeeYsz+xU
 ROxdRt/f63VcU+FIrfHYyrvgAEYZvM2JQnnz1BD5mf7BKEk28D/2dbjKS6ZTBW8vwreJ
 oYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=we4MqQ7GBCP5fUUWdYU9nYOSJJ/c9uQjsfOgqn41J4s=;
 b=S3wxIPS0mTGfdD37HHhanzC93+YNClOJNuzoFlYQUZ94Dsop9/QA2yhjg9Fi68fJCm
 yFhlm/GCfaM9aComnRPfy7jezpVvwwyNZCWFV0eJ5bE6Ot9Xc5oQ8FyQlWuWdRoh0qhZ
 oZgWFdQsal4vrOHxgkiludApnzzcgnQw3EVR21/wACmQDzpPw6jiAp1N2HKXSw2dofJj
 QHDCBASx16RytiXDdD/NDm9rgCQ3ITeT54f5S0tDOAdpxQG/16qzuR3wpZ/f5B9PgUWu
 ygE4g/DGaQh/vMF/3ns8FuA17rJJfFSlle1CSoLl7tJgOPjQvC5h8FulfFYKHcaao7NO
 E0fw==
X-Gm-Message-State: APjAAAWA38GzVdozjcntN0vS4OFxGYYfpt5uvOGh6XDzCU0p0cIot9w1
 yY15nIvAeeaDP3lFz/xJOpMIlme5jFg=
X-Google-Smtp-Source: APXvYqwf7fCEBv1dbd2Z3vnuHAEwnhpujUmHWdZkz2ItMQ4c9MzEXyAjbkic9nrEP5RBNv4zpfMtfA==
X-Received: by 2002:a37:a717:: with SMTP id q23mr30140911qke.169.1582225648249; 
 Thu, 20 Feb 2020 11:07:28 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id p50sm265834qtf.5.2020.02.20.11.07.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 11:07:26 -0800 (PST)
Message-ID: <5E4ED8EE.4090601@gmail.com>
Date: Thu, 20 Feb 2020 14:07:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Alvaro Pendas <alvaropr97@gmail.com>
References: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
 <E01AEA46-6030-4BFF-91CE-0535F84D2FF5@gmail.com>
 <CAAZMsC2Do=wLYC-tzKAW8hCezdsZ1zpEtRwN_VtxBgcEXAg8NA@mail.gmail.com>
 <5E4ECFB7.4060504@gmail.com>
 <CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com>
In-Reply-To: <CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com>
Subject: Re: [USRP-users] GNU Radio UHD Blocks Resolution
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
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0709130936571412625=="
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
--===============0709130936571412625==
Content-Type: multipart/alternative;
 boundary="------------060307080005070208020707"

This is a multi-part message in MIME format.
--------------060307080005070208020707
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/20/2020 01:54 PM, Alvaro Pendas wrote:
> I get what you mean, but maybe I did not explain myself correctly. 
> Let's forget about GNU Radio and focus on the ADC. The ADC resolution 
> is 12 bits, so it has 4096 digital levels. The question here is, does 
> the usrp adapts those levels to the signal it is receiving at each 
> moment? If that adaptation does not exist, the ACD is going to use all 
> the 4096 only when the analog input signal is close to the input max 
> of the ADC. Otherwise, only some of those levels are used. For 
> example, half of them (2048) if the level of the ACD input is half the 
> max.
>
You're talking about AGC -- no, it does not do AGC by default.  AGC 
strategies are generally best left to the downstream application.

> Also, mind that, in the receiving part, I think that what you 
> explained is not completely right. I am working with a QPSK receiver 
> and I demodulate the symbols correctly (with a lot of noise), but the 
> output of the UHD:USRP Source are actually about 0.0003. That's why 
> I'm afraid of the problem I've mentioned above.
Something to be aware of is that increasing gain beyond the level where 
SNR no longer improves, just gives you a louder (signal+noise), but
   does nothing to improve SNR.   Keep in mind that on the B2xx, the 
maximum gain setting in RX is about 72dB, so if you're using a setting of
   30dB (you mentioned that setting before), then you still have 40dB of 
head-room in the RX gain setting...


>
> Thank you for your patient.
>
> El jue., 20 feb. 2020 a las 19:28, Marcus D. Leech 
> (<patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>) escribió:
>
>     On 02/20/2020 11:38 AM, Alvaro Pendas wrote:
>>     However, the way I see it, this represents a problem in the
>>     receiving part. Let me put it this way: the max output of the ADC
>>     is 1, and that corresponds with the max input. That max input
>>     would represent the case when you receive a high power signal and
>>     you set your drive amplifier next to its max.
>>     So, If you are receiving a low power QPSK signal, with your gain
>>     set to 30 dB, the output of your ADC would use a really small
>>     part of the range (let's say from -0.05 to 0.05). However, if
>>     your digital levels go from -1 to 1 and are represented with 12
>>     bits, using such a small part of the range would make the
>>     quantization error a problem.
>>
>     Gnu Radio uses a floating-point {-1.0, 1.0} representation, which
>     UHD *scales* into a range that is appropriate for whatever hardware
>       you're using.
>
>     So, your 0.05 is scaled to about 102 by UHD prior to presentation
>     to the DAC, and conversely in the receive direction.
>
>
>>
>>
>>     El mié., 19 feb. 2020 a las 20:04, Marcus D Leech
>>     (<patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>)
>>     escribió:
>>
>>         Indeed. You’d have to use an external calibration source at
>>         several places over your parameter space (frequency gain
>>         sample rate)
>>
>>         Sent from my iPhone
>>
>>>         On Feb 19, 2020, at 1:54 PM, Alvaro Pendas
>>>         <alvaropr97@gmail.com <mailto:alvaropr97@gmail.com>> wrote:
>>>
>>>         ﻿
>>>         Marcus thank your for your answer,
>>>
>>>         First of all, you are right, the range is -1 to 1 (instead
>>>         of 0 to 1 as I said before). So, for example, in the
>>>         receiving part, the values you get out of the UHD Source
>>>         have**a linear relationship with the voltage of the analog
>>>         signal, but I understand there is no easy way to calculate
>>>         that level with the only information of the GNU Radio
>>>         samples. Is that correct?
>>>
>>>
>>>         El mié., 19 feb. 2020 a las 19:22, Marcus D. Leech via
>>>         USRP-users (<usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>>) escribió:
>>>
>>>             On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:
>>>             > Hello,
>>>             > I am using GNU Radio and the USRP B200. I have noticed
>>>             that for the
>>>             > GNU block UHD: USRP Sink, the values you pass to the
>>>             block must be in
>>>             > the range 0 to 1. I guess that means if you do not
>>>             want to lose
>>>             > resolution you must ensure that you use the full
>>>             range, that is to
>>>             > say, your minimum is 0 or close to 0, and your max is
>>>             1 or close to 1.
>>>             > Am I correct?
>>>             >
>>>             > On the other hand, what are the meaning of the values
>>>             produce by the
>>>             > block UHD: USRP Source? They must be related to the
>>>             signal power, but
>>>             > I am not sure about their range. Is the minimum value
>>>             that block can
>>>             > produce the min of the ADC output, and the max, the
>>>             max of the ADC
>>>             > output? With the USRP B200 the ADC resolution is 12
>>>             bits, are the min
>>>             > and the max always set with the same value, or does it
>>>             depend on the
>>>             > USRP configuration?
>>>             >
>>>             > I am using GNU Radio right now, but probably, just
>>>             knowing how this
>>>             > works with UHD would be enough to understand the rest.
>>>             >
>>>             > Thank you for your time,
>>>             >
>>>             > Alvaro
>>>             >
>>>             Gnu radio generally likes to have baesband data streams
>>>             scaled into
>>>             {-1.0,+1.0} which are linearly related to instantaneous
>>>             voltages at
>>>                the antenna of the hardware.amazon
>>>
>>>             To a first approximation, a value near +1.0 or -1.0 will
>>>             drive the ADC
>>>             to its maximum +/- value.  But that's only an
>>>             approximation, since the
>>>                signal is processed a fair amount (linearly) prior to
>>>             reaching the
>>>             ADC/DAC, and with analog hardware there's no way of
>>>             ensuring that
>>>                a max value wont' over-drive the analog hardware.
>>>
>>>             Power of a sinusoidal signal is proportional to the  I*I
>>>             + Q*Q --
>>>             remember we're dealing with *voltages* here, so ohms law
>>>             applies...
>>>
>>>
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list
>>>             USRP-users@lists.ettus.com
>>>             <mailto:USRP-users@lists.ettus.com>
>>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>


--------------060307080005070208020707
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/20/2020 01:54 PM, Alvaro Pendas
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">I get what you mean, but maybe I did not explain
        myself correctly. Let's forget about GNU Radio and focus on the
        ADC. The ADC resolution is 12 bits, so it has 4096 digital
        levels. The question here is, does the usrp adapts those levels
        to the signal it is receiving at each moment? If that adaptation
        does not exist, the ACD is going to use all the 4096 only when
        the analog input signal is close to the input max of the ADC.
        Otherwise, only some of those levels are used. For example, half
        of them (2048) if the level of the ACD input is half the max.<br>
        <br>
      </div>
    </blockquote>
    You're talking about AGC -- no, it does not do AGC by default.  AGC
    strategies are generally best left to the downstream application.<br>
    <br>
    <blockquote
cite="mid:CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">Also, mind that, in the receiving part, I think
        that what you explained is not completely right. I am working
        with a QPSK receiver and I demodulate the symbols correctly
        (with a lot of noise), but the output of the UHD:USRP Source are
        actually about 0.0003. That's why I'm afraid of the problem I've
        mentioned above.<br>
      </div>
    </blockquote>
    Something to be aware of is that increasing gain beyond the level
    where SNR no longer improves, just gives you a louder
    (signal+noise), but<br>
      does nothing to improve SNR.   Keep in mind that on the B2xx, the
    maximum gain setting in RX is about 72dB, so if you're using a
    setting of<br>
      30dB (you mentioned that setting before), then you still have 40dB
    of head-room in the RX gain setting...<br>
    <br>
    <br>
    <blockquote
cite="mid:CAAZMsC3LNfsJir6Dejw7f-jerOvLuJWVLyrb9C2YRs4_dhzL1Q@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        Thank you for your patient.</div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">El jue., 20 feb. 2020 a las
          19:28, Marcus D. Leech (&lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;)
          escribió:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 02/20/2020 11:38 AM, Alvaro Pendas wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>However, the way I see it, this represents a
                  problem in the receiving part. Let me put it this way:
                  the max output of the ADC is 1, and that corresponds
                  with the max input. That max input would represent the
                  case when you receive a high power signal and you set
                  your drive amplifier next to its max.<br>
                </div>
                <div>So, If you are receiving a low power QPSK signal,
                  with your gain set to 30 dB, the output of your ADC
                  would use a really small part of the range (let's say
                  from -0.05 to 0.05). However, if your digital levels
                  go from -1 to 1 and are represented with 12 bits,
                  using such a small part of the range would make the
                  quantization error a problem.</div>
                <div><br>
                </div>
              </div>
            </blockquote>
            Gnu Radio uses a floating-point {-1.0, 1.0} representation,
            which UHD *scales* into a range that is appropriate for
            whatever hardware<br>
              you're using.<br>
            <br>
            So, your 0.05 is scaled to about 102 by UHD prior to
            presentation to the DAC, and conversely in the receive
            direction.<br>
            <br>
            <br>
            <blockquote type="cite">
              <div dir="ltr">
                <div><br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">El mié., 19 feb. 2020
                  a las 20:04, Marcus D Leech (&lt;<a
                    moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt;)
                  escribió:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="auto">Indeed. You’d have to use an external
                    calibration source at several places over your
                    parameter space (frequency gain sample rate)<br>
                    <br>
                    <div dir="ltr">Sent from my iPhone</div>
                    <div dir="ltr"><br>
                      <blockquote type="cite">On Feb 19, 2020, at 1:54
                        PM, Alvaro Pendas &lt;<a moz-do-not-send="true"
                          href="mailto:alvaropr97@gmail.com"
                          target="_blank">alvaropr97@gmail.com</a>&gt;
                        wrote:<br>
                        <br>
                      </blockquote>
                    </div>
                    <blockquote type="cite">
                      <div dir="ltr">﻿
                        <div dir="ltr">
                          <div>Marcus thank your for your answer,</div>
                          <div><br>
                          </div>
                          <p
                            style="color:rgb(14,16,26);background:transparent
                            none repeat scroll 0%
                            0%;margin-top:0pt;margin-bottom:0pt"><span
                              style="color:rgb(14,16,26);background:transparent
                              none repeat scroll 0%
                              0%;margin-top:0pt;margin-bottom:0pt">First
                              of all, you are right, the range is -1 to
                              1 (instead of 0 to 1 as I said before).
                              So, for example, in the receiving part,
                              the values you get out of the UHD Source
                              have</span><strong
                              style="color:rgb(14,16,26);background:transparent
                              none repeat scroll 0%
                              0%;margin-top:0pt;margin-bottom:0pt"><span
                                style="color:rgb(14,16,26);background:transparent
                                none repeat scroll 0%
                                0%;margin-top:0pt;margin-bottom:0pt"> </span></strong><span
                              style="color:rgb(14,16,26);background:transparent
                              none repeat scroll 0%
                              0%;margin-top:0pt;margin-bottom:0pt">a
                              linear relationship with the voltage of
                              the analog signal, but I understand there
                              is no easy way to calculate that level
                              with the only information of the GNU Radio
                              samples. Is that correct?</span></p>
                        </div>
                        <br>
                        <div class="gmail_quote">
                          <div dir="ltr" class="gmail_attr">El mié., 19
                            feb. 2020 a las 19:22, Marcus D. Leech via
                            USRP-users (&lt;<a moz-do-not-send="true"
                              href="mailto:usrp-users@lists.ettus.com"
                              target="_blank">usrp-users@lists.ettus.com</a>&gt;)

                            escribió:<br>
                          </div>
                          <blockquote class="gmail_quote"
                            style="margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">On
                            02/19/2020 12:01 PM, Alvaro Pendas via
                            USRP-users wrote:<br>
                            &gt; Hello,<br>
                            &gt; I am using GNU Radio and the USRP B200.
                            I have noticed that for the <br>
                            &gt; GNU block UHD: USRP Sink, the values
                            you pass to the block must be in <br>
                            &gt; the range 0 to 1. I guess that means if
                            you do not want to lose <br>
                            &gt; resolution you must ensure that you use
                            the full range, that is to <br>
                            &gt; say, your minimum is 0 or close to 0,
                            and your max is 1 or close to 1. <br>
                            &gt; Am I correct?<br>
                            &gt;<br>
                            &gt; On the other hand, what are the meaning
                            of the values produce by the <br>
                            &gt; block UHD: USRP Source? They must be
                            related to the signal power, but <br>
                            &gt; I am not sure about their range. Is the
                            minimum value that block can <br>
                            &gt; produce the min of the ADC output, and
                            the max, the max of the ADC <br>
                            &gt; output? With the USRP B200 the ADC
                            resolution is 12 bits, are the min <br>
                            &gt; and the max always set with the same
                            value, or does it depend on the <br>
                            &gt; USRP configuration?<br>
                            &gt;<br>
                            &gt; I am using GNU Radio right now, but
                            probably, just knowing how this <br>
                            &gt; works with UHD would be enough to
                            understand the rest.<br>
                            &gt;<br>
                            &gt; Thank you for your time,<br>
                            &gt;<br>
                            &gt; Alvaro<br>
                            &gt;<br>
                            Gnu radio generally likes to have baesband
                            data streams scaled into <br>
                            {-1.0,+1.0} which are linearly related to
                            instantaneous voltages at<br>
                               the antenna of the hardware.amazon<br>
                            <br>
                            To a first approximation, a value near +1.0
                            or -1.0 will drive the ADC <br>
                            to its maximum +/- value.  But that's only
                            an approximation, since the<br>
                               signal is processed a fair amount
                            (linearly) prior to reaching the <br>
                            ADC/DAC, and with analog hardware there's no
                            way of ensuring that<br>
                               a max value wont' over-drive the analog
                            hardware.<br>
                            <br>
                            Power of a sinusoidal signal is proportional
                            to the  I*I + Q*Q -- <br>
                            remember we're dealing with *voltages* here,
                            so ohms law applies...<br>
                            <br>
                            <br>
                            <br>
                            <br>
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
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060307080005070208020707--


--===============0709130936571412625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0709130936571412625==--

