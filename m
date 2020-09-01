Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 797B6259698
	for <lists+usrp-users@lfdr.de>; Tue,  1 Sep 2020 18:05:02 +0200 (CEST)
Received: from [::1] (port=33818 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kD8mK-00054p-2M; Tue, 01 Sep 2020 12:05:00 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:36276)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kD8mG-0004wj-5H
 for USRP-users@lists.ettus.com; Tue, 01 Sep 2020 12:04:56 -0400
Received: by mail-qk1-f178.google.com with SMTP id f2so1450695qkh.3
 for <USRP-users@lists.ettus.com>; Tue, 01 Sep 2020 09:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=8W6gyVP0RWSA34TF4mjUeRxbq185Fu9CMOPfvTRQy+k=;
 b=dxjaPiV5qYw9wJoq4TEdgJL5hf3FSLOswIg/FE3QWijn+jmLVs3OBwKqxjjGz2uKLk
 VKXeLSZA3N/ZXL2IlVwGWCCGbr2aF/FRBdCs+iyb0bzU4homFonRXTSKJr7okniUDelk
 R8SbrpyRtdSF3tyuOU6M/L0ncoKGHKR1+G4WXpSCtLRwDoJf12wDu7AB6GqUDjSGI9lB
 aWi+9hmAvmzM8d6DkTF9JIt/RUlA0qN5K4jwBhyJJPh8cPd2QZG6j2IfxQ5kOkUEgk5K
 ddd4ZxuCTKa8Ij3k6mSUvUiKkDf4fH1mzuA0g6vvGQtSxtNRJCY7Z3ocADfx9RVTXgdM
 U2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=8W6gyVP0RWSA34TF4mjUeRxbq185Fu9CMOPfvTRQy+k=;
 b=SPBp+9jIuECKO3vUR1nLZid9ydeEytJrp4/jFRyRzVB6ZMRCiShSmmt5riyx+x3tUo
 kW3Yle7ixFpE6zDlVvXIVjtdwL7qymjBV1zoeaAp+Kuyd6b7SCm9PqrVdRiY9NjWW4qD
 0v4bymZYnL30LwKWG5vpS5xsznGU22wEQ8ZN0kpbwJ1kDInionnn4ThhrPq6hig8sQnF
 CyF0GuuPquQxhlbDqn1a2Zh6eWudTamSJbe5d+SrSfw2+M0dYjmoTCMQcyXhKfjQnYgZ
 Ym8cHuk1KqI1nPlAxRzdyG84J5BK6L8I2zHh66DVjXJReovYMrDmEBn4j0SgP8lixvR3
 EY4w==
X-Gm-Message-State: AOAM531KHz6FavnwjJUDNkOG6E4kouaJ16DVS4NsfbhwxzU4Xn3WUaO0
 8XtLguj6MCdK5kVeDf2qDa9SPck60zk=
X-Google-Smtp-Source: ABdhPJxoksMKTgjQlUff3K9R0cz0DYHYVDoOnhtfA2LplW480CkTUSpi5b//OAO+2fnd41+3BWeSHQ==
X-Received: by 2002:a37:b184:: with SMTP id a126mr2402385qkf.23.1598976255393; 
 Tue, 01 Sep 2020 09:04:15 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id b13sm1188343qkl.46.2020.09.01.09.04.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Sep 2020 09:04:14 -0700 (PDT)
Message-ID: <5F4E70FD.4000400@gmail.com>
Date: Tue, 01 Sep 2020 12:04:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher.Flood@colorado.edu
CC: USRP-users@lists.ettus.com
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
 <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
 <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
In-Reply-To: <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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
Content-Type: multipart/mixed; boundary="===============2221447195798147427=="
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
--===============2221447195798147427==
Content-Type: multipart/alternative;
 boundary="------------050503070803000800060306"

This is a multi-part message in MIME format.
--------------050503070803000800060306
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/01/2020 11:30 AM, Christopher Flood wrote:
> Shape is a sinusoid. Vrms going into a 1 megaohm scope is 1.4V, so I 
> would expect that to be ~.7V going into a 50 ohm load (the SDR), which 
> I believe is under the max power requirement for the external 
> reference of the N310.
>
> -Chris
The notes suggest that a square-wave will produce lower phase-noise, but 
a sinusoid is also acceptable, and your VP-P should also be
   acceptable for the LMK04828 master clock PLL chip that is used in the 
N310.

Have you looked at the output spectrum of your Rb clock?  The two that I 
have had to be "cleaned up" before being used, because
   there are typically fairly loud output spurs on "raw" Rb clocks, and 
there's no input filtering on the N310.


>
> On Tue, Sep 1, 2020 at 9:26 AM Marcus D Leech <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>> wrote:
>
>     What are the output parameters of your Rb reference? Signal
>     amplitude and shape, etc.
>
>     Sent from my iPhone
>
>     > On Sep 1, 2020, at 11:18 AM, Christopher Flood via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>     >
>     > ﻿
>     >   Hi all,
>     >
>     > Sorry if this is coming through twice - I sent it once before I
>     subscribed to the list, but didn't know if it went through or not!
>     (I didn't see it in the archives...)
>     >
>     > -------
>     >
>     > I'm having some trouble using an external reference with the
>     Ettus N310. The reference I am using is a FS725 Rubidium Frequency
>     Standard.
>     >
>     > To test the difference between the internal clock and the
>     external reference, I transmitted a 10MHz signal from the Ettus
>     N310 with and without the external reference. Using just the
>     internal clock of the SDR, the 10MHz signal slowly wanders with
>     respect to the 10MHz signal from the Rubidium Frequency Standard
>     as seen on an oscilloscope. This is to be expected since the
>     stability of the internal clock in the SDR is worse than the
>     Rubidium Frequency Standard.
>     >
>     > However, when I connect the 10MHz signal from the Rubidium to
>     the external reference of the N310 and tell the N310 to use the
>     external reference, the 10MHz signal that the N310 generates
>     wanders much faster with respect to the 10MHz signal from the
>     Rubidium. This is opposite of what I believe should happen,
>     assuming the N310 is truly using the external reference signal.
>     >
>     > Have any of you experienced this or have any tips as to what
>     might be going on?
>     >
>     > Thanks!
>     >
>     > -Chris
>     > _______________________________________________
>     > USRP-users mailing list
>     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     >
>     http://secure-web.cisco.com/1nWDwD0LbO77QthlIKVs0gyhEI4cVA_IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlchr4oAdnfbUKsQurDlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqMojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMDQ9fvhujOQ6RMQSye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlrC-n2XC4dn41AUQyHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTArwXMSBHYc-Wy_utBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucuflnBKQ/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>


--------------050503070803000800060306
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/01/2020 11:30 AM, Christopher
      Flood wrote:<br>
    </div>
    <blockquote
cite="mid:CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Shape is a sinusoid. Vrms going into a 1 megaohm
          scope is 1.4V, so I would expect that to be ~.7V going into a
          50 ohm load (the SDR), which I believe is under the max power
          requirement for the external reference of the N310. </div>
        <div><br>
        </div>
        -Chris <br>
      </div>
    </blockquote>
    The notes suggest that a square-wave will produce lower phase-noise,
    but a sinusoid is also acceptable, and your VP-P should also be<br>
      acceptable for the LMK04828 master clock PLL chip that is used in
    the N310.<br>
    <br>
    Have you looked at the output spectrum of your Rb clock?  The two
    that I have had to be "cleaned up" before being used, because<br>
      there are typically fairly loud output spurs on "raw" Rb clocks,
    and there's no input filtering on the N310.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Tue, Sep 1, 2020 at
              9:26 AM Marcus D Leech &lt;<a moz-do-not-send="true"
                href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">What are the output
              parameters of your Rb reference? Signal amplitude and
              shape, etc. <br>
              <br>
              Sent from my iPhone<br>
              <br>
              &gt; On Sep 1, 2020, at 11:18 AM, Christopher Flood via
              USRP-users &lt;<a moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
              &gt; <br>
              &gt; ﻿<br>
              &gt;   Hi all,<br>
              &gt; <br>
              &gt; Sorry if this is coming through twice - I sent it
              once before I subscribed to the list, but didn't know if
              it went through or not! (I didn't see it in the
              archives...)<br>
              &gt; <br>
              &gt; -------<br>
              &gt; <br>
              &gt; I'm having some trouble using an external reference
              with the Ettus N310. The reference I am using is a FS725
              Rubidium Frequency Standard.<br>
              &gt; <br>
              &gt; To test the difference between the internal clock and
              the external reference, I transmitted a 10MHz signal from
              the Ettus N310 with and without the external reference.
              Using just the internal clock of the SDR, the 10MHz signal
              slowly wanders with respect to the 10MHz signal from the
              Rubidium Frequency Standard as seen on an oscilloscope.
              This is to be expected since the stability of the internal
              clock in the SDR is worse than the Rubidium Frequency
              Standard.<br>
              &gt; <br>
              &gt; However, when I connect the 10MHz signal from the
              Rubidium to the external reference of the N310 and tell
              the N310 to use the external reference, the 10MHz signal
              that the N310 generates wanders much faster with respect
              to the 10MHz signal from the Rubidium. This is opposite of
              what I believe should happen, assuming the N310 is truly
              using the external reference signal. <br>
              &gt; <br>
              &gt; Have any of you experienced this or have any tips as
              to what might be going on?<br>
              &gt; <br>
              &gt; Thanks!<br>
              &gt; <br>
              &gt; -Chris <br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list<br>
              &gt; <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
              &gt; <a moz-do-not-send="true"
href="http://secure-web.cisco.com/1nWDwD0LbO77QthlIKVs0gyhEI4cVA_IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlchr4oAdnfbUKsQurDlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqMojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMDQ9fvhujOQ6RMQSye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlrC-n2XC4dn41AUQyHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTArwXMSBHYc-Wy_utBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucuflnBKQ/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com"
                rel="noreferrer" target="_blank">http://secure-web.cisco.com/1nWDwD0LbO77QthlIKVs0gyhEI4cVA_IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlchr4oAdnfbUKsQurDlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqMojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMDQ9fvhujOQ6RMQSye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlrC-n2XC4dn41AUQyHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTArwXMSBHYc-Wy_utBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucuflnBKQ/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com</a><br>
              <br>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050503070803000800060306--


--===============2221447195798147427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2221447195798147427==--

