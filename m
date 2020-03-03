Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB8B178639
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2020 00:21:30 +0100 (CET)
Received: from [::1] (port=49354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9Gqv-0007eM-8X; Tue, 03 Mar 2020 18:21:29 -0500
Received: from mail-qv1-f41.google.com ([209.85.219.41]:39117)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j9Gqq-0007XG-NY
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 18:21:24 -0500
Received: by mail-qv1-f41.google.com with SMTP id fc12so160922qvb.6
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 15:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=aPMrrzjwf3FA2wfdgSTkcgcGRSsEvtx2rzsH56yIo5E=;
 b=hiNG9ESTYPyDJGDMWw10iUouuhbXyFCzTZi7SgJouAN+PW8zm3BAdCs6E6lL5soid7
 6DVWvyNhkmamYica+STlGmaHaNl2xcVCWeaZFnzmOCmw7vilABrNoSwH1vC53S3XiOMc
 y3Q23s8yutuasVBXBA3cP7LWMjvVOri2hBqsE9+LKGpfFNOb9e5FjArsf1tXXw5urmqY
 FfsGjYGXmC6R7YstOfyrgXkyRT1H8krcHX0ZDbsOsjs1Z+CB/fsgCnEdKDxBZ0S+E/fF
 AExqh/hHtA4lkuqHGZumifs18liY1jyLCp2DJoY1hT+Pf52Fda83ZgxHhfus2/WtUKPb
 wtBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=aPMrrzjwf3FA2wfdgSTkcgcGRSsEvtx2rzsH56yIo5E=;
 b=hFp78x/SpKJHmEx1R5TPBmXjngwWf0wOwoy25IlsSCtfkCmUY2dmMm8O4J1Yn6OWAp
 VE1soS5A/7DPEPfv4qx/hwaX0a3iQVsl+bYKPos4ZhXTXDJEfe1sfrCqSCjD6jHlyFHb
 IC2KVXsDomU1/rRyrakNiAbVm7OpsSOK8huF/EC8NGDi6aMkiFz5/fEUG26DjA9s4Zme
 RW2Ake0ZWLH7K1nxH1BEv2J+y1tYEZFbXiWX/hcI+Kh1KWouFPfv/2Cmq6pLOMHq+tTP
 HEEGkM5PgfhJDBUputpxoeHaB/EbyB9JyJQN9xjLuRBTudG91hUuETgYn7xeihIDtf1M
 kLIA==
X-Gm-Message-State: ANhLgQ0K1RJfHt68s5z+PlJBhnqaDIlKVYduS6LJp5MLDsBBAxUFSDkX
 r5cBh7SfUBtm8kkgTMR1bGP38IXyl4E=
X-Google-Smtp-Source: ADFU+vt8I+81sjBr9zODH9Mrq54UsZWxk65iSuXFYk31zhYWtljt4S462FPVluKotJ/2pRzv/M4vhA==
X-Received: by 2002:ad4:4f90:: with SMTP id em16mr6040731qvb.38.1583277644057; 
 Tue, 03 Mar 2020 15:20:44 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83]) by smtp.googlemail.com with ESMTPSA id
 i16sm12774467qkh.120.2020.03.03.15.20.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 15:20:43 -0800 (PST)
Message-ID: <5E5EE64A.3060605@gmail.com>
Date: Tue, 03 Mar 2020 18:20:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAGU92=dt=MqR=+H9hU8S9QPNpdOMMWBaiFB7BGHrtZJOitO2w@mail.gmail.com>
 <CANf970YBJtSR5L8-4ZiiCf-HyWgquD9xb02tZ_UHv-GG9TCsJw@mail.gmail.com>
In-Reply-To: <CANf970YBJtSR5L8-4ZiiCf-HyWgquD9xb02tZ_UHv-GG9TCsJw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3519704824047048819=="
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
--===============3519704824047048819==
Content-Type: multipart/alternative;
 boundary="------------090601000206020409040607"

This is a multi-part message in MIME format.
--------------090601000206020409040607
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2020 06:16 PM, Sam Reiter via USRP-users wrote:
> Hey Francisco,
>
> Interesting question. I remember reading this when it was initially 
> posted, giving it some thought, and promptly forgetting to respond. 
> It's a question that is difficult to give a "yes" or "no" to. Similar 
> to statistics, I think the answer to this question only comes by 
> disproving the null hypothesis that "no part of the signal chain is 
> damaged with an underflow". If you can't prove that damage will occur, 
> then you're probably in the clear, but you also can't be positive that 
> the null hypothesis is true. That being said, I don't think underflows 
> are bad for the hardware in any way.
>
> An underflow is typically caused when a bottleneck on the host side 
> prevents data from filling USRP buffers quickly enough to be pushed 
> through the DAC at the requested rate. As I see it, the only place in 
> the signal chain that /might/ exhibit unexpected behavior in the face 
> of samples not being present would be at the DAC (don't ask me why, 
> but that would be my best guess). The way UHD operates, the DAC and 
> ADC are initialized and running as soon as the streamer objects in UHD 
> are initialized, and they sit there processing nothing (similar to an 
> underflow state) until a TX stream command from the host tells the 
> USRP radio core to release it's queued samples to the converter(s).
>
> Maybe that was all nonsense. In any case, I wouldn't worry about radio 
> damage, I'd worry about fixing your underflows :)
>
> Best,
>
> Sam Reiter
>
I'd have to agree with Sam here.

An underflow on the TX will just mean that whatever the DAC last saw 
will be presented to the analog interface during the underflow period.
   Which means perhaps a few microseconds of no level change coming out 
of the DAC.   Not a problem at all, as far as I know.

The main thing is to optimize your code/computer-hardware to prevent them.



--------------090601000206020409040607
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/03/2020 06:16 PM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANf970YBJtSR5L8-4ZiiCf-HyWgquD9xb02tZ_UHv-GG9TCsJw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hey Francisco,
        <div><br>
        </div>
        <div>
          <div>Interesting question. I remember reading this when it was
            initially posted, giving it some thought, and promptly
            forgetting to respond. It's a question that is difficult to
            give a "yes" or "no" to. Similar to statistics, I think the
            answer to this question only comes by disproving the null
            hypothesis that "no part of the signal chain is damaged with
            an underflow". If you can't prove that damage will occur,
            then you're probably in the clear, but you also can't be
            positive that the null hypothesis is true. That being said,
            I don't think underflows are bad for the hardware in any
            way. <br>
          </div>
        </div>
        <div><br>
        </div>
        <div> An underflow is typically caused when a bottleneck on the
          host side prevents data from filling USRP buffers quickly
          enough to be pushed through the DAC at the requested rate. As
          I see it, the only place in the signal chain that <i>might</i>
          exhibit unexpected behavior in the face of samples not being
          present would be at the DAC (don't ask me why, but that would
          be my best guess). The way UHD operates, the DAC and ADC are
          initialized and running as soon as the streamer objects in UHD
          are initialized, and they sit there processing nothing
          (similar to an underflow state) until a TX stream command from
          the host tells the USRP radio core to release it's queued
          samples to the converter(s). </div>
        <div><br>
        </div>
        <div>Maybe that was all nonsense. In any case, I wouldn't worry
          about radio damage, I'd worry about fixing your underflows :) </div>
        <div><br>
        </div>
        <div>Best,</div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
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
    An underflow on the TX will just mean that whatever the DAC last saw
    will be presented to the analog interface during the underflow
    period.<br>
      Which means perhaps a few microseconds of no level change coming
    out of the DAC.   Not a problem at all, as far as I know.<br>
    <br>
    The main thing is to optimize your code/computer-hardware to prevent
    them.<br>
    <br>
    <br>
  </body>
</html>

--------------090601000206020409040607--


--===============3519704824047048819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3519704824047048819==--

