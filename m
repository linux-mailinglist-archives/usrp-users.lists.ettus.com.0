Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 420BE18C621
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 04:52:11 +0100 (CET)
Received: from [::1] (port=37690 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jF8hb-0003X8-Jd; Thu, 19 Mar 2020 23:52:07 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:40659)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jF8hX-0003S9-PV
 for usrp-users@lists.ettus.com; Thu, 19 Mar 2020 23:52:03 -0400
Received: by mail-qk1-f175.google.com with SMTP id l25so706201qki.7
 for <usrp-users@lists.ettus.com>; Thu, 19 Mar 2020 20:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=M/n3l1AQRQ7+uwe3c6RTBY02j2d6F5Wgj2QDsgb14cw=;
 b=h0ME2kjYIrLRfrhFzKTdKMiw1KnC/P0Aty8iaOA28yO56ds/ctgGiC5jo49PFvhzDk
 E834fKzR0t7t2ipDj+JVrWF4anWCaVmCvPF5OvEdeQL5IP4Xwvz8dgGXSzGnfnCq0jBe
 Tkam23yzGdneFjXPJM9WuP/2zt3yap4/M64OTTJvOyiWkr+Bq+InbvkSLfpRCYS000Yw
 lBRIROqqa7S5zMzZcx/T+ueUwdn4R+I1JMPIVHtVwV4lNX6x610GrXRpo9k/D1/Edyau
 0HR7GNUVWUNM/qqRlDfRwCxitoDrP0gLdSEbYa5oLNX1X94ZQCk7rNYVWrQgI9w0Kd9d
 u5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=M/n3l1AQRQ7+uwe3c6RTBY02j2d6F5Wgj2QDsgb14cw=;
 b=dImF9wKAzIetk5O9MOOxz1TS10LayWL64+x+HjA/oP7Ejw1rB13a22afbngEVEh1hP
 E6jb0z4LG5AqorUxOoJJJGXmC15l1nvFf+z0XowXGe7TgHC83/a5ZhMt8/7XOxoeQjN5
 rH7/U2pyo2bo5UWSzcTBhL9/jbo/zhk6EeJHLREuPBKbZX5lDJ2LQWV50XIM+d+w+fbA
 RC/kHKSZVTuME3w0NUFwJqDIENikqiKOjJDmsf7RmLuZWSBN1xlr6Ddgu5oEuMtRwroS
 PjnHkH/Q02t5YWD+xw1D4pVYMy37aJwKPw9cpqTu+VvsfH2lXgb7v0rs4EFxYWkR2qOF
 jdCw==
X-Gm-Message-State: ANhLgQ3b9c4pydUdtNH8+O6aVrBrUnSedEOq5PisCBcS6j0HW1LUQr7p
 COluRj+CY24QGTIJa0jfp6v54ejp
X-Google-Smtp-Source: ADFU+vtlO9j+Y/9o234SOMvaCPoC8qwDfA8QtSTWEDWbghPlhpQ3moSVhxT3dA34L+mq5tGcyC0gBA==
X-Received: by 2002:a37:4bd1:: with SMTP id y200mr4345205qka.205.1584676282613; 
 Thu, 19 Mar 2020 20:51:22 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id 2sm3000715qtp.33.2020.03.19.20.51.21
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 20:51:22 -0700 (PDT)
Message-ID: <5E743DB8.3090203@gmail.com>
Date: Thu, 19 Mar 2020 23:51:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <CAB__hTSCG9vJDyfos8Vo51uun6+GVO0z2MKiAnwB5RxbQroHug@mail.gmail.com>
 <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
 <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
 <trinity-67ab4cfd-a450-4253-8edf-2d22a808d058-1584575179099@3c-app-gmx-bap69>
 <CAB__hTRoRNft0M8VCFGDS0ytLGbq0Fz48Zych-U5UD3jcutNzA@mail.gmail.com>
 <trinity-bbe82f54-edda-4533-b4c8-9b1bde054edc-1584649222876@3c-app-gmx-bap79>
 <CAB__hTRvq+xojKA0-kB0-JJjOURf9ZLVURcAwyHxtt6_-J1_bg@mail.gmail.com>
 <CAB__hTRZCez=FerC_MUiyDMXoEb4LH+cgHqAUfoE859UUO0POg@mail.gmail.com>
 <CAB__hTTfEYVEQAZvVLfR1GJHyWfz_uwCTDREX+4vsHWHi1MpOw@mail.gmail.com>
 <CAB__hTSojeJRcHo899zVCqXQPA=f+DamUq06TA88xNVWE3SRyg@mail.gmail.com>
 <trinity-b354461c-be4f-4e66-9954-c96301c941ae-1584663388615@3c-app-gmx-bs55>
In-Reply-To: <trinity-b354461c-be4f-4e66-9954-c96301c941ae-1584663388615@3c-app-gmx-bs55>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
Content-Type: multipart/mixed; boundary="===============5401063083542694304=="
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
--===============5401063083542694304==
Content-Type: multipart/alternative;
 boundary="------------050808090509070301010506"

This is a multi-part message in MIME format.
--------------050808090509070301010506
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/19/2020 08:16 PM, Lukas Haase via USRP-users wrote:
> Hi Rob,
> Sorry I really should have ran the python file before uploading. The 
> issue was that I combined to files into one and forgot to remove the 
> imported file.
> Here is a new one (tested): http://paste.ubuntu.com/p/VsGRmsbZQ5/
> Thanks for reporting your results .... very interesting!
> Why do you think second mode makes sense to you? (assuming you are 
> using timed commands to to retune TX+RX at the same time)
> In general, it seems to me that things are related to streaming 
> start/stop. Maybe things are reset when streaming starts/ends but not 
> when re-tuning?
> Maybe this is what Marcus was mentioning: resetting phase accumulator 
> vs. "increment register is updated with the new phase increment"?
> MAYBE stopping/starting resets the phase accumulator to zero and just 
> timed retuning doesn't reset anything. But still, my question is left 
> why this would result in a random phase offset between DUC and DDC.
> Thanks again!!
> Lukas
>
So, having spent a couple of hours snooping around the X3xx FPGA code, 
where Verilog is not one of my native languages, I have come to
   a bit of a conclusion about the ways things work.  Now, keep in mind, 
this is like me reading War and Peace in the original Russian, and as
   an English speaker, coming the vague conclusion that "It was about 
Russia".

There's a "settings bus" within the FPGA that is implemented with AXI 
FIFO modules.  If your command (which results, most often in
   having to "set" one or more registers via the settings bus) is not a 
timed command, it enters the FIFO, and then is "executed" one
   clock later.  If it has a time associated with it, then it is 
withdrawn when that time has been reached in "vita_time".  Note that 
since this
   is a FIFO, commands that are to be executed "at the same time" will 
be serialized by the inherent FIFO nature of execution.

So, with two DDC settings and two DUC settings all sitting in the FIFO, 
their actual execution times will be 'spread' over (as far as I can tell)
   4 clocks cycles of the FIFO, or about 20nsec.  Now in the case where 
multiple X3xx are involved, the FIFO will look identical across all
   the units, and will execute at the same time, but still be 
serialized.  But if you have two DDC settings across a pair of X3xx, the 
settings
   will execute at exactly the same time, since they will in effect be 
executing in parallel.   Put another way, with shared clocks, and a common
   "view" of system time, parallel FIFOs will get drained in the same 
order and at the same rate.

Someone with a better understanding of the FPGA really should 
comment.    But this is my (albeit incomplete) understanding of the
   settings-bus logic the FPGA.

Now, even having said THIS, since you'd expect the FIFO to be 
deterministic.  So, you'd not expect there to be large random
   phase offsets that differ from run to run, I think.




--------------050808090509070301010506
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/19/2020 08:16 PM, Lukas Haase via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:trinity-b354461c-be4f-4e66-9954-c96301c941ae-1584663388615@3c-app-gmx-bs55"
      type="cite">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div>Hi Rob,</div>
        <div> </div>
        <div>Sorry I really should have ran the python file before
          uploading. The issue was that I combined to files into one and
          forgot to remove the imported file.</div>
        <div>Here is a new one (tested):
          <a class="moz-txt-link-freetext" href="http://paste.ubuntu.com/p/VsGRmsbZQ5/">http://paste.ubuntu.com/p/VsGRmsbZQ5/</a></div>
        <div> </div>
        <div> </div>
        <div>Thanks for reporting your results .... very interesting!</div>
        <div> </div>
        <div>Why do you think second mode makes sense to you? (assuming
          you are using timed commands to to retune TX+RX at the same
          time)</div>
        <div> </div>
        <div>In general, it seems to me that things are related to
          streaming start/stop. Maybe things are reset when streaming
          starts/ends but not when re-tuning?</div>
        <div> </div>
        <div>Maybe this is what Marcus was mentioning: resetting phase
          accumulator vs. "increment register is updated with the new
          phase increment"?</div>
        <div> </div>
        <div>MAYBE stopping/starting resets the phase accumulator to
          zero and just timed retuning doesn't reset anything. But
          still, my question is left why this would result in a random
          phase offset between DUC and DDC.</div>
        <div> </div>
        <div>Thanks again!!</div>
        <div>Lukas</div>
        <div> 
          <br>
        </div>
      </div>
    </blockquote>
    So, having spent a couple of hours snooping around the X3xx FPGA
    code, where Verilog is not one of my native languages, I have come
    to<br>
      a bit of a conclusion about the ways things work.  Now, keep in
    mind, this is like me reading War and Peace in the original Russian,
    and as<br>
      an English speaker, coming the vague conclusion that "It was about
    Russia".<br>
    <br>
    There's a "settings bus" within the FPGA that is implemented with
    AXI FIFO modules.  If your command (which results, most often in<br>
      having to "set" one or more registers via the settings bus) is not
    a timed command, it enters the FIFO, and then is "executed" one<br>
      clock later.  If it has a time associated with it, then it is
    withdrawn when that time has been reached in "vita_time".  Note that
    since this<br>
      is a FIFO, commands that are to be executed "at the same time"
    will be serialized by the inherent FIFO nature of execution.<br>
    <br>
    So, with two DDC settings and two DUC settings all sitting in the
    FIFO, their actual execution times will be 'spread' over (as far as
    I can tell)<br>
      4 clocks cycles of the FIFO, or about 20nsec.  Now in the case
    where multiple X3xx are involved, the FIFO will look identical
    across all<br>
      the units, and will execute at the same time, but still be
    serialized.  But if you have two DDC settings across a pair of X3xx,
    the settings<br>
      will execute at exactly the same time, since they will in effect
    be executing in parallel.   Put another way, with shared clocks, and
    a common<br>
      "view" of system time, parallel FIFOs will get drained in the same
    order and at the same rate.<br>
    <br>
    Someone with a better understanding of the FPGA really should
    comment.    But this is my (albeit incomplete) understanding of the<br>
      settings-bus logic the FPGA.<br>
    <br>
    Now, even having said THIS, since you'd expect the FIFO to be
    deterministic.  So, you'd not expect there to be large random<br>
      phase offsets that differ from run to run, I think.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050808090509070301010506--


--===============5401063083542694304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5401063083542694304==--

