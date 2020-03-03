Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6731517868F
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 00:42:07 +0100 (CET)
Received: from [::1] (port=57092 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9HAs-0001ol-CP; Tue, 03 Mar 2020 18:42:06 -0500
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46674)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j9HAo-0001E3-BF
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 18:42:02 -0500
Received: by mail-qt1-f171.google.com with SMTP id i14so13432qtv.13
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 15:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=jT+BGqoP5xERHI5SZms/epZo2wXnf90jXAlZlNMvuEY=;
 b=ksv9eW0TSBd/LDgwmGAkU2GiqITv8kjJ1iLrWVPphv2R3Z/f4lnmDLAYziSnvKQPlm
 dg4QiPcMOKY1hNRwrMSf6WrdHMxVXJYPIePPOGgsI4xY8agE6CO5IMdhSghjjFE1Il03
 gOl8WYJYKnotpxaXbEH9nlV0R6f7j+BvI22KhuhOM10B0rBJunk/k9j+T4cRA9Av5o5g
 z95KAXRhMUF6kbavlGcp0jIWTf+SB3snL8gpF2oZ7NShywHl5/VncbCuCzKLFXW4iW9U
 hfsy/wdDRRMsLayWIyeGFaldqdpXRppym2oGUPGdYI6zbvKW7WWdOX00TlWKt/xgUBkM
 dfTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=jT+BGqoP5xERHI5SZms/epZo2wXnf90jXAlZlNMvuEY=;
 b=rOzzFfqqcMRCakEHlgKDhIqkY+Z1fiHky0B2mdm5fQlS7F82PE5Ovaay0SER0v/zMp
 EfEyxtpS2JUe2WtzKZnJP8eyNYfhjnebU8X5z0RiwfyX9xVuMS/V6YkErAwGXwUIyWa0
 CRV/Ox4t+ERybVHUXob9LV0eDQXfinHj8FbsU9kzmt04zoMOeo4gsBCgOAhNMWcz3j/6
 /qzwyos84jHou9t9NqQrAoFZVr02f85NclRdF/WENbKdDjbjWSNoiaeaRcHZEFr9QiMG
 g8ttTAhIj/55iatIOi8EL4pfMdFAA1RL0pSI1grYYrws6coCfQ8FbFGnJlpwhtxLq5yg
 6Y1A==
X-Gm-Message-State: ANhLgQ3CEEqXAmp4JNLy4rp0WsoOcYbUdfHHs2dBQbwsGTDyWX5nKXuv
 HjLIbezXXhXAJtL6S2rRjhoKsijqyww=
X-Google-Smtp-Source: ADFU+vv9F+a7Lz+jepA9FbITxa9epNexMnv/G3azr/+g+JhaeI7IdcprPSTQAmf678SWyVEfMkRtRw==
X-Received: by 2002:aed:304e:: with SMTP id 72mr63547qte.113.1583278881623;
 Tue, 03 Mar 2020 15:41:21 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id 4sm1632260qkm.22.2020.03.03.15.41.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 15:41:20 -0800 (PST)
Message-ID: <5E5EEB20.9000800@gmail.com>
Date: Tue, 03 Mar 2020 18:41:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nick Foster <bistromath@gmail.com>
References: <CAAGU92=dt=MqR=+H9hU8S9QPNpdOMMWBaiFB7BGHrtZJOitO2w@mail.gmail.com>
 <CANf970YBJtSR5L8-4ZiiCf-HyWgquD9xb02tZ_UHv-GG9TCsJw@mail.gmail.com>
 <5E5EE64A.3060605@gmail.com>
 <CA+JMMq-aAM3DHm+SowK0FVSrHwTQqH9tokydTpMz5jWHSC+wWQ@mail.gmail.com>
In-Reply-To: <CA+JMMq-aAM3DHm+SowK0FVSrHwTQqH9tokydTpMz5jWHSC+wWQ@mail.gmail.com>
Subject: Re: [USRP-users] Can underflows in any way be bad for hardware in
 the long term?
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3244988937148200299=="
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
--===============3244988937148200299==
Content-Type: multipart/alternative;
 boundary="------------000004050905010708080604"

This is a multi-part message in MIME format.
--------------000004050905010708080604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2020 06:35 PM, Nick Foster wrote:
> Nothing in the USRP will be damaged. It's up to you to ensure that 
> your subsequent RF chain will handle it. There are a few, rare 
> configurations which come to mind where it would be a Bad Thing to 
> suddenly pulse power on a millisecond timescale with extremely high 
> bandwidth.
>
>  1. Using your USRP to drive a linear accelerator (don't laugh, it's
>     been done)
>  2. Using your USRP to drive an extremely high power tube-based AM
>     transmitter
>  3. Using your USRP to drive an amplifier which is not unconditionally
>     stable
>
> Outside of these you're probably fine.
>
> Nick
Even there, it would very much depend on what the resulting 
step-function looked like.  I certainly wouldn't want to do the 
experiment on,
   let's say, the D-region radar at Arecibo :) :)


>
> On Tue, Mar 3, 2020 at 3:21 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 03/03/2020 06:16 PM, Sam Reiter via USRP-users wrote:
>>     Hey Francisco,
>>
>>     Interesting question. I remember reading this when it was
>>     initially posted, giving it some thought, and promptly forgetting
>>     to respond. It's a question that is difficult to give a "yes" or
>>     "no" to. Similar to statistics, I think the answer to this
>>     question only comes by disproving the null hypothesis that "no
>>     part of the signal chain is damaged with an underflow". If you
>>     can't prove that damage will occur, then you're probably in the
>>     clear, but you also can't be positive that the null hypothesis is
>>     true. That being said, I don't think underflows are bad for the
>>     hardware in any way.
>>
>>     An underflow is typically caused when a bottleneck on the host
>>     side prevents data from filling USRP buffers quickly enough to be
>>     pushed through the DAC at the requested rate. As I see it, the
>>     only place in the signal chain that /might/ exhibit unexpected
>>     behavior in the face of samples not being present would be at the
>>     DAC (don't ask me why, but that would be my best guess). The way
>>     UHD operates, the DAC and ADC are initialized and running as soon
>>     as the streamer objects in UHD are initialized, and they sit
>>     there processing nothing (similar to an underflow state) until a
>>     TX stream command from the host tells the USRP radio core to
>>     release it's queued samples to the converter(s).
>>
>>     Maybe that was all nonsense. In any case, I wouldn't worry about
>>     radio damage, I'd worry about fixing your underflows :)
>>
>>     Best,
>>
>>     Sam Reiter
>>
>     I'd have to agree with Sam here.
>
>     An underflow on the TX will just mean that whatever the DAC last
>     saw will be presented to the analog interface during the underflow
>     period.
>       Which means perhaps a few microseconds of no level change coming
>     out of the DAC.   Not a problem at all, as far as I know.
>
>     The main thing is to optimize your code/computer-hardware to
>     prevent them.
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------000004050905010708080604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/03/2020 06:35 PM, Nick Foster
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+JMMq-aAM3DHm+SowK0FVSrHwTQqH9tokydTpMz5jWHSC+wWQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Nothing in the USRP will be damaged. It's up to you to
          ensure that your subsequent RF chain will handle it. There are
          a few, rare configurations which come to mind where it would
          be a Bad Thing to suddenly pulse power on a millisecond
          timescale with extremely high bandwidth.<br>
        </div>
        <div>
          <ol>
            <li>Using your USRP to drive a linear accelerator (don't
              laugh, it's been done)</li>
            <li>Using your USRP to drive an extremely high power
              tube-based AM transmitter<br>
            </li>
            <li>Using your USRP to drive an amplifier which is not
              unconditionally stable</li>
          </ol>
          <div>Outside of these you're probably fine.</div>
          <div><br>
          </div>
          <div>Nick<br>
          </div>
        </div>
      </div>
    </blockquote>
    Even there, it would very much depend on what the resulting
    step-function looked like.  I certainly wouldn't want to do the
    experiment on,<br>
      let's say, the D-region radar at Arecibo :) :)<br>
    <br>
    <br>
    <blockquote
cite="mid:CA+JMMq-aAM3DHm+SowK0FVSrHwTQqH9tokydTpMz5jWHSC+wWQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Mar 3, 2020 at 3:21 PM
          Marcus D. Leech via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 03/03/2020 06:16 PM, Sam Reiter via USRP-users
              wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">Hey Francisco,
                <div><br>
                </div>
                <div>
                  <div>Interesting question. I remember reading this
                    when it was initially posted, giving it some
                    thought, and promptly forgetting to respond. It's a
                    question that is difficult to give a "yes" or "no"
                    to. Similar to statistics, I think the answer to
                    this question only comes by disproving the null
                    hypothesis that "no part of the signal chain is
                    damaged with an underflow". If you can't prove that
                    damage will occur, then you're probably in the
                    clear, but you also can't be positive that the null
                    hypothesis is true. That being said, I don't think
                    underflows are bad for the hardware in any way. <br>
                  </div>
                </div>
                <div><br>
                </div>
                <div> An underflow is typically caused when a bottleneck
                  on the host side prevents data from filling USRP
                  buffers quickly enough to be pushed through the DAC at
                  the requested rate. As I see it, the only place in the
                  signal chain that <i>might</i> exhibit unexpected
                  behavior in the face of samples not being present
                  would be at the DAC (don't ask me why, but that would
                  be my best guess). The way UHD operates, the DAC and
                  ADC are initialized and running as soon as the
                  streamer objects in UHD are initialized, and they sit
                  there processing nothing (similar to an underflow
                  state) until a TX stream command from the host tells
                  the USRP radio core to release it's queued samples to
                  the converter(s). </div>
                <div><br>
                </div>
                <div>Maybe that was all nonsense. In any case, I
                  wouldn't worry about radio damage, I'd worry about
                  fixing your underflows :) </div>
                <div><br>
                </div>
                <div>Best,</div>
                <div><br>
                </div>
                <div>
                  <div>
                    <div dir="ltr">
                      <div dir="ltr">
                        <div>
                          <div dir="ltr">Sam Reiter </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <br>
            </blockquote>
            I'd have to agree with Sam here.<br>
            <br>
            An underflow on the TX will just mean that whatever the DAC
            last saw will be presented to the analog interface during
            the underflow period.<br>
              Which means perhaps a few microseconds of no level change
            coming out of the DAC.   Not a problem at all, as far as I
            know.<br>
            <br>
            The main thing is to optimize your code/computer-hardware to
            prevent them.<br>
            <br>
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
    </blockquote>
    <br>
  </body>
</html>

--------------000004050905010708080604--


--===============3244988937148200299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3244988937148200299==--

