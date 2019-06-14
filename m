Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9973A46232
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jun 2019 17:10:38 +0200 (CEST)
Received: from [::1] (port=54354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbnqf-0005dI-FG; Fri, 14 Jun 2019 11:10:37 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:33413)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hbnqb-0005Tp-4Z
 for usrp-users@lists.ettus.com; Fri, 14 Jun 2019 11:10:33 -0400
Received: by mail-qk1-f180.google.com with SMTP id r6so1898276qkc.0
 for <usrp-users@lists.ettus.com>; Fri, 14 Jun 2019 08:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=o0dSuTtGDlXAp7LAjX0s4F+b2ADY4pEBwOaS0bcxM6E=;
 b=klPWUQq0NsrlpSTgbZ+eRQHHGdPnK9Pq01uQCkru4PLvK861u64ZAxhlFK7vMbwtvk
 4zlflUJYPfMZGX0tj+lsS7ywuaGGSv2E+m9DzEgkW9Khk5Ew5ypXIn7DSi3M8vR7KQ3S
 XQ0tWQPvUhTeM5wVH6R/KT6DV3CN+HpZE3oz+N3XWi/TR4rSaCSIXYU9YjB0o0WhMXGY
 UK5HQ6CtG+DX7U6ayU173TDIHKis1HPNpvMGRnG1dZ4ex6BGm8Xjf8qjQoFO2M4dSseF
 XGXvMLjXT+UJVF3ndEvrowFk0wWFdD0jsVEngowNRYZ0spx0SOB/RVTjIeEtPAWkYiBL
 vAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=o0dSuTtGDlXAp7LAjX0s4F+b2ADY4pEBwOaS0bcxM6E=;
 b=CgiLTlD5HsC3Qp/iOAQ+4JGvuxRwHVvMgA3Fyf1wBTlhbAB8SyEaKP/ZYw+BUN43sn
 DZNZN5DOCZ1XTN63K3ZLhuyNz/vDSU84DPKJC5tYhGEGrFlUCRboXJvq/slhd8pC68Nj
 9siip0bXw4JX3X+V0hkC7/dVMPan+8fAUkMckPtUCSXbCTv/8fgQok2nRv8DmlJDm047
 oo8f+Ossn+aEllRFh2RWy/2xY7/00CPQMlnQRemjTbAKLwVi9gBt/nA3IKi6tY3qEvae
 aVh897Zohx7GSWtDBv1JPyHh3eH44VxJlhBRr4EYKrQXy4BSqStjOUAHKpJl4BrKNqTG
 8IZQ==
X-Gm-Message-State: APjAAAUUEQGKSckh1qypEfnMBLjk82tIj8cHlJRrgM1g+mc7u2SL5rIy
 JsGCtpyxdswevc1UlrtRrMS4bnsEGkY=
X-Google-Smtp-Source: APXvYqw9WEt3FrcepQb1gfquntINJvuIjkjyBgJ8MwKCod1V5KWsrp5bEpwJRpGaIuDdtEERODZG1g==
X-Received: by 2002:a37:ea0c:: with SMTP id t12mr7416423qkj.117.1560524992400; 
 Fri, 14 Jun 2019 08:09:52 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id s134sm1890652qke.51.2019.06.14.08.09.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 08:09:52 -0700 (PDT)
Message-ID: <5D03B8B7.1010703@gmail.com>
Date: Fri, 14 Jun 2019 11:09:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sumit Kumar <cogwsn@gmail.com>
References: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
 <5D02A5F4.5010604@gmail.com>
 <CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com>
 <5D02ACD6.1010409@gmail.com>
 <CAOExtcQzRk0UGqCbr6Jrn5u2QfrqN2E_tzg2ce=_ZkdDSqaTHg@mail.gmail.com>
In-Reply-To: <CAOExtcQzRk0UGqCbr6Jrn5u2QfrqN2E_tzg2ce=_ZkdDSqaTHg@mail.gmail.com>
Subject: Re: [USRP-users] Reg: USRP N200 reset problem
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4649847547753531203=="
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
--===============4649847547753531203==
Content-Type: multipart/alternative;
 boundary="------------080107080407030700080607"

This is a multi-part message in MIME format.
--------------080107080407030700080607
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2019 08:00 AM, Sumit Kumar wrote:
> Thanks Marcus, I tried it, works!
>
> I have a follow-up question. I have another Ettus N200. whose none of 
> the LEDs glow. Just the fan runs. I believe it has became brick.
> And I do not have JTAG. Any other way/tool to recover it.
>
> Regards
> Sumit
In that case, if it will work at all, you'll need JTAG to recover it if 
the "safe mode" procedure doesn't work.


>
>
>
> On Thu, Jun 13, 2019 at 10:06 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/13/2019 03:52 PM, Sumit Kumar wrote:
>>     Hi Marcus,
>>
>>     I just did the following (nothing else). What shall I do after
>>     this ? I do not have the JTAG with me.
>>
>>     _The safe-mode button is a pushbutton switch (S2) located inside
>>     the enclosure. To boot into the safe image, hold-down the
>>     safe-mode button while power-cycling the device. Continue to
>>     hold-down the button until the front-panel LEDs blink and remain
>>     solid._
>>
>>     _When in safe-mode, the USRP-N device will always have the IP
>>     address 192.168.10.2._
>>
>>     _
>>     _
>>
>     Once it is in safe-mode, use the EEPROM commands as below:
>
>     https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip
>
>     To change the stored-in-eeprom IP address to whatever you want
>     (perhaps just back to the default 192.168.10.2). Once that works,
>       power-cycle, and ping the device.  It should now respond to the
>     desired address.
>
>     I suspect that what happened was your friend changed the IP
>     address away from the default, so, you use safe-mode to get it
>     into a state
>       where you can change the permanent address of the device.
>
>
>>
>>
>>     On Thu, Jun 13, 2019 at 9:38 PM Marcus D. Leech via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>         On 06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:
>>         >
>>         > Hi,
>>         >
>>         > I got Ettus N200 from my colleague. I din't know the ip
>>         address so I
>>         > did a reset. After the reset, the ip of N200 became
>>         192.168.10.2 and I
>>         > was able to ping and do all regular stuff with it. But
>>         whenever I do a
>>         > power cycle of the N200, it is undetectable at
>>         192.168.10.2. Then
>>         > again I have to reset it.
>>         >
>>         > I am not sure what has gone wrong.
>>         >
>>         > Regards
>>         > Sumit
>>         >
>>         Could you describe the steps you took to reset it?
>>
>>         IT sounds like you put it in "safe mode", but didn't actually
>>         download a
>>         working image into it or force an IP address reset to a
>>         desired IP address.
>>
>>         https://kb.ettus.com/N200/N210_Device_Recovery
>>
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>     -- 
>>     -- 
>>     Sumit kumar
>>     Doctoral Student, UPMC
>>     Eurecom, BIOT
>>     France
>>
>
>
>
>


--------------080107080407030700080607
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/14/2019 08:00 AM, Sumit Kumar
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAOExtcQzRk0UGqCbr6Jrn5u2QfrqN2E_tzg2ce=_ZkdDSqaTHg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Thanks Marcus, I tried it, works! 
          <div><br>
          </div>
          <div>I have a follow-up question. I have another Ettus N200.
            whose none of the LEDs glow. Just the fan runs. I believe it
            has became brick. </div>
          <div>And I do not have JTAG. Any other way/tool to recover
            it. </div>
          <div><br>
          </div>
          <div>Regards</div>
          <div>Sumit <br>
          </div>
        </div>
      </div>
    </blockquote>
    In that case, if it will work at all, you'll need JTAG to recover it
    if the "safe mode" procedure doesn't work.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAOExtcQzRk0UGqCbr6Jrn5u2QfrqN2E_tzg2ce=_ZkdDSqaTHg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Thu, Jun 13, 2019 at
            10:06 PM Marcus D. Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor="#FFFFFF">
              <div class="gmail-m_7800493512752280261moz-cite-prefix">On
                06/13/2019 03:52 PM, Sumit Kumar wrote:<br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">Hi Marcus, 
                  <div><br>
                  </div>
                  <div>I just did the following (nothing else). <span>What
                      shall I do after this ? I do not have the JTAG
                      with me. </span></div>
                  <div><br>
                  </div>
                  <div>
                    <p><u>The safe-mode button is a pushbutton switch
                        (S2) located inside the enclosure. To boot into
                        the safe image, hold-down the safe-mode button
                        while power-cycling the device. Continue to
                        hold-down the button until the front-panel LEDs
                        blink and remain solid.</u></p>
                    <p><u>When in safe-mode, the USRP-N device will
                        always have the IP address 192.168.10.2.</u></p>
                    <p><u><br>
                      </u></p>
                  </div>
                </div>
              </blockquote>
              Once it is in safe-mode, use the EEPROM commands as below:<br>
              <br>
              <a moz-do-not-send="true"
                class="gmail-m_7800493512752280261moz-txt-link-freetext"
href="https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip"
                target="_blank">https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip</a><br>
              <br>
              To change the stored-in-eeprom IP address to whatever you
              want (perhaps just back to the default 192.168.10.2). 
              Once that works,<br>
                power-cycle, and ping the device.  It should now respond
              to the desired address.<br>
              <br>
              I suspect that what happened was your friend changed the
              IP address away from the default, so, you use safe-mode to
              get it into a state<br>
                where you can change the permanent address of the
              device.<br>
              <br>
              <br>
              <blockquote type="cite">
                <div dir="ltr">
                  <div>
                    <p><br>
                    </p>
                  </div>
                </div>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Thu, Jun 13, 2019
                    at 9:38 PM Marcus D. Leech via USRP-users &lt;<a
                      moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0px 0px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">On 06/13/2019
                    03:33 PM, Sumit Kumar via USRP-users wrote:<br>
                    &gt;<br>
                    &gt; Hi,<br>
                    &gt;<br>
                    &gt; I got Ettus N200 from my colleague. I din't
                    know the ip address so I <br>
                    &gt; did a reset. After the reset, the ip of N200
                    became 192.168.10.2 and I <br>
                    &gt; was able to ping and do all regular stuff with
                    it. But whenever I do a <br>
                    &gt; power cycle of the N200, it is undetectable at
                    192.168.10.2. Then <br>
                    &gt; again I have to reset it.<br>
                    &gt;<br>
                    &gt; I am not sure what has gone wrong.<br>
                    &gt;<br>
                    &gt; Regards<br>
                    &gt; Sumit<br>
                    &gt;<br>
                    Could you describe the steps you took to reset it?<br>
                    <br>
                    IT sounds like you put it in "safe mode", but didn't
                    actually download a <br>
                    working image into it or force an IP address reset
                    to a desired IP address.<br>
                    <br>
                    <a moz-do-not-send="true"
                      href="https://kb.ettus.com/N200/N210_Device_Recovery"
                      rel="noreferrer" target="_blank">https://kb.ettus.com/N200/N210_Device_Recovery</a><br>
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
                <br clear="all">
                <div><br>
                </div>
                -- <br>
                <div dir="ltr"
                  class="gmail-m_7800493512752280261gmail_signature">
                  <div dir="ltr">
                    <div><span
                        style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                        style="color:rgb(136,136,136);font-size:12.8px">
                      <div
                        style="color:rgb(136,136,136);font-size:12.8px">Sumit

                        kumar<br>
                        Doctoral Student, UPMC</div>
                      <div
                        style="color:rgb(136,136,136);font-size:12.8px">Eurecom,

                        BIOT</div>
                      <div
                        style="color:rgb(136,136,136);font-size:12.8px">France</div>
                      <br>
                    </div>
                  </div>
                </div>
              </blockquote>
              <br>
            </div>
          </blockquote>
        </div>
        <br clear="all">
        <div><br>
        </div>
        <div dir="ltr" class="gmail_signature">
          <div dir="ltr">
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080107080407030700080607--


--===============4649847547753531203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4649847547753531203==--

