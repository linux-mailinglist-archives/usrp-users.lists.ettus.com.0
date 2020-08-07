Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 877C223F0C1
	for <lists+usrp-users@lfdr.de>; Fri,  7 Aug 2020 18:12:52 +0200 (CEST)
Received: from [::1] (port=35666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k44zB-0004Mk-9K; Fri, 07 Aug 2020 12:12:49 -0400
Received: from mail-qv1-f53.google.com ([209.85.219.53]:40358)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k44z7-0004EW-FH
 for usrp-users@lists.ettus.com; Fri, 07 Aug 2020 12:12:45 -0400
Received: by mail-qv1-f53.google.com with SMTP id s15so977555qvv.7
 for <usrp-users@lists.ettus.com>; Fri, 07 Aug 2020 09:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=qWkx0pdiVuFK99H8BFplTLCcVk8HF2viKEUKBsw7WMg=;
 b=rNlI//w/FLxWRqh+cPNJ7R/zyKV60TxkcK5NXWpfSfF89wPARA5jAY+l1/1GJ/m46h
 xUwHv4Qscdf2M8WPjqfs7U44Tn3JSDYycE4WmKqMe9DR3k38uWoNg8Jq9gST2nWOr+Uo
 9GLJPWHHm4bQCFy5HraQrKOxYB6BVrXRsq4mSxzJsNa4qWkcy7O9OFfOonCjs6s+N6wg
 F1RRt4smFuuLe80nzr2i2vPXMXQDTgOVm6yVP7T+NtbFzhZiVCzFBUFn2p7FGnVUYOC4
 OdrVwuV3HNiIf/W4W5LYnNpxN7FjaPrhnFg22f18lebd4FCTWH+41JrSCO2aUwx3E2z7
 NFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=qWkx0pdiVuFK99H8BFplTLCcVk8HF2viKEUKBsw7WMg=;
 b=MvUaKXc7w4DAcU8FRJKP5w2dLyItrow8gldsR8lTYrexUsUoNUldZZRG6va7CNuV1u
 fxH2fygC9RpC9kVIfQHu3Q+qQFnIavIsvJaJBy9fzgScNBM+qqBjb23XGEwTH7bIps2n
 FNsJxlWeTHk6/AEsAveRcVJ3lHURrDztIn7CWHJM/pDKqfWN4t7kZEX+hXVIl4kfrVjM
 3rMTpcyK/AD+mvaZ5C0sWP3befpWPxU9lUMUCTojrrfrlaZHbTNe1A9ygDO23t6RChVt
 3zlv68VkG5XkI4l/DTRLtePPbcEtRqAU6CTtDcO5ByjOJLfN+XWdtqmTpPgzMaK/xdb0
 4/EQ==
X-Gm-Message-State: AOAM532NbgMHSpkUfch6c7fLsWVTfNNZyuWLdr0zI3bhbZpOBc+ZE4nZ
 58FCd5OLhfZ1thQI0ckqx3IJ3W7HcDo=
X-Google-Smtp-Source: ABdhPJyX47CLNuiI1GLyqvTzMCtk5UKPjxT6A5Fg8XZjztj+yD4pPc+tkjIPIu1Bw0Ew0FnMZCRIPQ==
X-Received: by 2002:a0c:e30c:: with SMTP id s12mr15792322qvl.138.1596816724624; 
 Fri, 07 Aug 2020 09:12:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x67sm7171571qke.136.2020.08.07.09.12.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Aug 2020 09:12:04 -0700 (PDT)
Message-ID: <5F2D7D53.70900@gmail.com>
Date: Fri, 07 Aug 2020 12:12:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>, 
 Neel Pandeya <neel.pandeya@ettus.com>
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PN1PR0101MB18888E07850F604DE16381328B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
 <838FBFE1-52F7-445B-B841-E05F0B7FEA31@gmail.com>
 <PN1PR0101MB1888C69D81516A613A69241E8B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>,
 <CACaXmv-ibAFFSg=ivd4bhsejqn1b9fGO4c-BVVJvzGMERYhZVw@mail.gmail.com>
 <PN1PR0101MB188829BCAE89F6DD136D31F08B490@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN1PR0101MB188829BCAE89F6DD136D31F08B490@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] USRP not receiving data from two antennas using
 PCI card
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
Content-Type: multipart/mixed; boundary="===============4645963290601006302=="
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
--===============4645963290601006302==
Content-Type: multipart/alternative;
 boundary="------------010603030102070708030401"

This is a multi-part message in MIME format.
--------------010603030102070708030401
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/07/2020 12:54 AM, Sourin Mondal (Vehere) wrote:
> Hi,
> I am using UBUNTU 18.04.
> I am attaching the c++ code that I am using.
>
> From,
>
> Sourin
Near as I can tell from you code, you never actually establish the 
channel map in the stream_args.

Please consult the code for rx_multi_samples.cpp


> ------------------------------------------------------------------------
> *From:* Neel Pandeya <neel.pandeya@ettus.com>
> *Sent:* Thursday, August 6, 2020 10:38 PM
> *To:* Sourin Mondal (Vehere) <sourin.mondal@vehere.com>
> *Cc:* Marcus D Leech <patchvonbraun@gmail.com>; 
> USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] USRP not receiving data from two antennas 
> using PCI card
> Hello Sourin:
>
> Could you share your C++ program, so that we might try to reproduce 
> the problem here?
>
> Which version of Linux / Ubuntu are you running?
>
> --Neel Pandeya
>
>
>
> On Thu, 6 Aug 2020 at 11:51, Sourin Mondal (Vehere) via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi,
>     I am using UHD-3.14.1.0
>     I am not using gnuradio now. I used that one year back and faced
>     the mentioned problem. Now I am using c++ code and am facing the
>     same issue of not able to stream two channels simultaneously.
>     From,
>     Sourin
>
>     ------------------------------------------------------------------------
>     *From:* Marcus D Leech <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     *Sent:* Thursday, August 6, 2020 9:23 PM
>     *To:* Sourin Mondal (Vehere) <sourin.mondal@vehere.com
>     <mailto:sourin.mondal@vehere.com>>
>     *Cc:* USRP-users@lists.ettus.com
>     <mailto:USRP-users@lists.ettus.com> <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>>
>     *Subject:* Re: [USRP-users] USRP not receiving data from two
>     antennas using PCI card
>     What version of UHD?
>
>     Could you share the flow graph you’re using?
>
>
>
>     Sent from my iPhone
>
>>     On Aug 6, 2020, at 11:47 AM, Sourin Mondal (Vehere) via
>>     USRP-users <usrp-users@lists.ettus.com
>>     <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>     ﻿
>>     Hi,
>>
>>     I am using USRP 2955 and want to receive two channels at 100 MSPS
>>     each simultaneously. I have connected usrp with PCIe. I am
>>     running my code but only one channel is getting received. Other
>>     channel is sending zeros only. I am using Ubuntu 18.04.
>>     Previously one year back I faced the same problem using USRP 2955
>>     along with PCIe and running gnu radio. Only one channel popped up
>>     in the frequency sink graph and second graph was static with no
>>     signal. However, 2954 was giving both channels. Where is the
>>     problem? How can I correct that to stream two channels
>>     simultaneously using usrp 2955 and PCIe? Please help.
>>
>>     Regards,
>>     Sourin
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------010603030102070708030401
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/07/2020 12:54 AM, Sourin Mondal
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:PN1PR0101MB188829BCAE89F6DD136D31F08B490@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am using UBUNTU 18.04.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am attaching the c++ code that I am using.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        From,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Sourin<br>
      </div>
    </blockquote>
    Near as I can tell from you code, you never actually establish the
    channel map in the stream_args.<br>
    <br>
    Please consult the code for rx_multi_samples.cpp<br>
    <br>
    <br>
    <blockquote
cite="mid:PN1PR0101MB188829BCAE89F6DD136D31F08B490@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b> Neel
          Pandeya <a class="moz-txt-link-rfc2396E" href="mailto:neel.pandeya@ettus.com">&lt;neel.pandeya@ettus.com&gt;</a><br>
          <b>Sent:</b> Thursday, August 6, 2020 10:38 PM<br>
          <b>To:</b> Sourin Mondal (Vehere)
          <a class="moz-txt-link-rfc2396E" href="mailto:sourin.mondal@vehere.com">&lt;sourin.mondal@vehere.com&gt;</a><br>
          <b>Cc:</b> Marcus D Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>;
          <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a> <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] USRP not receiving data from
          two antennas using PCI card</font>
        <div> </div>
      </div>
      <div>
        <div dir="ltr">
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif">Hello Sourin:</div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif">Could you share your
            C++ program, so that we might try to reproduce the problem
            here?</div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif">Which version of
            Linux / Ubuntu are you running?<br>
          </div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif">--Neel Pandeya</div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
          <div class="x_gmail_default"
            style="font-family:verdana,sans-serif"><br>
          </div>
        </div>
        <br>
        <div class="x_gmail_quote">
          <div dir="ltr" class="x_gmail_attr">On Thu, 6 Aug 2020 at
            11:51, Sourin Mondal (Vehere) via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="x_gmail_quote" style="margin:0px 0px 0px
            0.8ex; border-left:1px solid rgb(204,204,204);
            padding-left:1ex">
            <div dir="ltr">
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <div style="margin:0px; font-size:12pt;
                  font-family:Calibri,Arial,Helvetica,sans-serif;
                  color:black; background-color:rgb(255,255,255)">
                  Hi,</div>
                <div style="margin:0px; font-size:12pt;
                  font-family:Calibri,Arial,Helvetica,sans-serif;
                  color:black; background-color:rgb(255,255,255)">
                  I am using UHD-3.14.1.0 </div>
                <div style="margin:0px; font-size:12pt;
                  font-family:Calibri,Arial,Helvetica,sans-serif;
                  color:black; background-color:rgb(255,255,255)">
                  <div style="margin:0px; font-size:14px;
                    font-family:&quot;Segoe
                    UI&quot;,system-ui,&quot;Apple Color
                    Emoji&quot;,&quot;Segoe UI Emoji&quot;,sans-serif;
                    box-sizing:border-box">
                    I am not using gnuradio now. I used that one year
                    back and faced the mentioned problem. Now I am using
                    c++ code and am facing the same issue of not able to
                    stream two channels simultaneously.</div>
                  From,</div>
                <div style="margin:0px; font-size:12pt;
                  font-family:Calibri,Arial,Helvetica,sans-serif;
                  color:black; background-color:rgb(255,255,255)">
                  Sourin</div>
                <br>
              </div>
              <hr style="display:inline-block; width:98%">
              <div id="x_gmail-m_-4184039363114880486divRplyFwdMsg"
                dir="ltr"><font style="font-size:11pt" color="#000000"
                  face="Calibri, sans-serif"><b>From:</b> Marcus D Leech
                  &lt;<a moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt;<br>
                  <b>Sent:</b> Thursday, August 6, 2020 9:23 PM<br>
                  <b>To:</b> Sourin Mondal (Vehere) &lt;<a
                    moz-do-not-send="true"
                    href="mailto:sourin.mondal@vehere.com"
                    target="_blank">sourin.mondal@vehere.com</a>&gt;<br>
                  <b>Cc:</b> <a moz-do-not-send="true"
                    href="mailto:USRP-users@lists.ettus.com"
                    target="_blank">USRP-users@lists.ettus.com</a> &lt;<a
                    moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                  <b>Subject:</b> Re: [USRP-users] USRP not receiving
                  data from two antennas using PCI card</font>
                <div> </div>
              </div>
              <div dir="auto">What version of UHD?
                <div><br>
                </div>
                <div>Could you share the flow graph you’re using?</div>
                <div><br>
                </div>
                <div><br>
                  <br>
                  <div dir="ltr">Sent from my iPhone</div>
                  <div dir="ltr"><br>
                    <blockquote type="cite">On Aug 6, 2020, at 11:47 AM,
                      Sourin Mondal (Vehere) via USRP-users &lt;<a
                        moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<br>
                      <br>
                    </blockquote>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">﻿
                      <div
                        style="font-family:Calibri,Arial,Helvetica,sans-serif;
                        font-size:12pt; color:rgb(0,0,0)">
                        Hi,</div>
                      <div
                        style="font-family:Calibri,Arial,Helvetica,sans-serif;
                        font-size:12pt; color:rgb(0,0,0)">
                        <br>
                      </div>
                      <div
                        style="font-family:Calibri,Arial,Helvetica,sans-serif;
                        font-size:12pt; color:rgb(0,0,0)">
                        <div dir="ltr" style="margin:0px;
                          font-size:15px;
                          background-color:rgb(255,255,255)">
                          I am using USRP 2955 and want to receive two
                          channels at 100 MSPS each simultaneously. I
                          have connected usrp with PCIe. I am running my
                          code but only one channel is getting received.
                          Other channel is sending zeros only. I am
                          using Ubuntu 18.04. Previously one year back I
                          faced the same problem using USRP 2955 along
                          with PCIe and running gnu radio. Only one
                          channel popped up in the frequency sink graph
                          and second graph was static with no signal.
                          However, 2954 was giving both channels. Where
                          is the problem? How can I correct that to
                          stream two channels simultaneously using usrp
                          2955 and PCIe? Please help.</div>
                        <div dir="ltr" style="margin:0px;
                          font-size:15px;
                          background-color:rgb(255,255,255)">
                          <br>
                        </div>
                        <div dir="ltr" style="margin:0px;
                          font-size:15px;
                          background-color:rgb(255,255,255)">
                          Regards,</div>
                        <div dir="ltr" style="margin:0px;
                          font-size:15px;
                          background-color:rgb(255,255,255)">
                          Sourin</div>
                      </div>
                      <span>_______________________________________________</span><br>
                      <span>USRP-users mailing list</span><br>
                      <span><a moz-do-not-send="true"
                          href="mailto:USRP-users@lists.ettus.com"
                          target="_blank">USRP-users@lists.ettus.com</a></span><br>
                      <span><a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                          target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                    </div>
                  </blockquote>
                </div>
              </div>
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
    </blockquote>
    <br>
  </body>
</html>

--------------010603030102070708030401--


--===============4645963290601006302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4645963290601006302==--

