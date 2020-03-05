Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D5817B22B
	for <lists+usrp-users@lfdr.de>; Fri,  6 Mar 2020 00:19:24 +0100 (CET)
Received: from [::1] (port=36942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9zlu-0006hh-QO; Thu, 05 Mar 2020 18:19:18 -0500
Received: from mail-qv1-f54.google.com ([209.85.219.54]:40090)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j9zlq-0006ab-Cd
 for usrp-users@lists.ettus.com; Thu, 05 Mar 2020 18:19:14 -0500
Received: by mail-qv1-f54.google.com with SMTP id u17so127050qvv.7
 for <usrp-users@lists.ettus.com>; Thu, 05 Mar 2020 15:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=rTUUp31fTpmib57jfHrFHjcUtrtftasoonhhsCWcGwI=;
 b=DQ8E5AW/AKSvkT3hD/mquMFeg9d27DpUXfIn5gPol77QRoewdByDRpsYbt6kIcuHTy
 oYM3aZxTYr/RYRG3ckk14RoxpWl6/PJ9vMvGJhZwNONpFXfFS3+HspvRpaK/Jvf5rGfE
 6PG21BG96C8xvvzwA0G1txa02iAcCPaT3eytctXpDxwXOzevuXGjIyfExbLtfdNGEcYU
 c1kpe3Slgsv/c0LvaSqTtv1BUatrgTfqxAg/oEkDaCH1b9RoYSTodgd+tVhwXQkHWB0z
 DhI27gzkraqx2tHtizg/vRhMsdX3thL510GA6zAE7CFBnhzVftzeHVG3fBolI4Bc7O2V
 pxPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=rTUUp31fTpmib57jfHrFHjcUtrtftasoonhhsCWcGwI=;
 b=flbzw98GE8+N/79VMGN9btSCvOONNxGNkXj64uqzbqIIWZWIwsbxMy1kaboEDJhnSW
 E/v8//QAZXqiR0/tNAzTDxFI9H900c5GCSiqqpMHBc1MkVJi8BcRJXyB01tTxqKEJkwf
 GkLal0NmlqDOIpRdegvJq+Hq+eGBTCkOGYgh1H2DzfMyFmpSRdHhFUvs2Agpgw3MvWQU
 JkRHiihpNSGgIVYpB0XmQFRpyGl9jNApyoha7qi4E71g6jTupGosdS5d2BjzYgmr8IEO
 ZhiAvE8NjtUdnwl+3vzZs/5Uj5adtV0iyokAVyppEUQfKil0mmBcxuorCLhxDJb/vSS5
 CamA==
X-Gm-Message-State: ANhLgQ3ZbZ4IgoRWgVcllbJ9IgwxcwqWWlsDP0u28e7ZPxUyx504k8gn
 tJXQnFz1fHDvpBvkzju2uhwHuAdlc1g=
X-Google-Smtp-Source: ADFU+vv64KeGeEUqZxsjYlot21bvdFWsIq3wuRWTWQpBzFkKtSPvhKlY7QyRqQiVus7JnIx1PMloTQ==
X-Received: by 2002:a0c:d603:: with SMTP id c3mr624601qvj.45.1583450313663;
 Thu, 05 Mar 2020 15:18:33 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83]) by smtp.googlemail.com with ESMTPSA id
 i16sm16287942qkh.120.2020.03.05.15.18.32
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 15:18:33 -0800 (PST)
Message-ID: <5E6188C8.9050804@gmail.com>
Date: Thu, 05 Mar 2020 18:18:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CABN-bdvmvYTF6+c8G5cppUQ-fFnVTLAi6pLECviJJSJF10rZqQ@mail.gmail.com>
 <CAB__hTRi7W+wbKG7O7fok0Q_M41G7ViyncTXYd-C8oNp4tf23w@mail.gmail.com>
In-Reply-To: <CAB__hTRi7W+wbKG7O7fok0Q_M41G7ViyncTXYd-C8oNp4tf23w@mail.gmail.com>
Subject: Re: [USRP-users] Synchronization and coherence channels x310
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
Content-Type: multipart/mixed; boundary="===============0576872514252864480=="
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
--===============0576872514252864480==
Content-Type: multipart/alternative;
 boundary="------------040906070708080004020409"

This is a multi-part message in MIME format.
--------------040906070708080004020409
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/05/2020 11:10 AM, Rob Kossler via USRP-users wrote:
> Hi Alejandro,
> Phase sync is not possible with CBX 
> <https://kb.ettus.com/CBX#Phase_Synchronization>. Time sync and freq 
> sync should work, but keep in mind the following:
>
>   * The actual freq transmitted is a function of the quantized LO
>     setting and the more finely quantized DUC setting.  The final
>     value is not necessarily "exactly" what you ask for. So, the delta
>     between your 2 signals may not be exactly 80 MHz (perhaps off by a
>     fraction of a hertz because of the quantizations).
>   * The two transmissions do not share the same LO. Each channel has
>     its own PLL that is locked to the 10 MHz ref, but there will be
>     some variability between the two PLL
>
> Rob
>
>
Mostly what Rob said above.

Whether two same-type synthesizers will produce LO signals that "march 
together" even in the presence of a common high-quality reference, 
depends a lot on the implementation details of the synthesizer.

Additionally there are a couple of different things to consider when 
making phase-coherent systems:

     (A) Will the synthesized LOs "march together"  -- I THINK that on 
the CBX, the answer is YES, albeit with higher phase-noise than 
strictly-shared
           LO.

     (B) Will there always be guaranteed zero phase-offset.   With the 
CBX, the answer is NO.    Taking a quick look at the MAX2870 data-sheet
           (the synthesizer chip used on the CBX), I don't see any 
"phase reset" feature, which SOME synthesizer chips can use to drag 
muiltiple
           synthesizers together into mutual zero-phase-offset after tuning.

The mutual phase noise for a strictly-shared-LO scheme will ALWAYS be 
better than with muiltiple-synthesizers all sharing the same reference
    clock.  Whether that higher mutual phase noise is acceptable is 
very-much application specific.





--------------040906070708080004020409
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/05/2020 11:10 AM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTRi7W+wbKG7O7fok0Q_M41G7ViyncTXYd-C8oNp4tf23w@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Alejandro,
        <div>Phase sync is not possible with <a moz-do-not-send="true"
            href="https://kb.ettus.com/CBX#Phase_Synchronization">CBX</a>. 
          Time sync and freq sync should work, but keep in mind the
          following:</div>
        <div>
          <ul>
            <li>The actual freq transmitted is a function of the
              quantized LO setting and the more finely quantized DUC
              setting.  The final value is not necessarily "exactly"
              what you ask for. So, the delta between your 2 signals may
              not be exactly 80 MHz (perhaps off by a fraction of a
              hertz because of the quantizations).</li>
            <li>The two transmissions do not share the same LO. Each
              channel has its own PLL that is locked to the 10 MHz ref,
              but there will be some variability between the two PLL </li>
          </ul>
          <div>Rob</div>
        </div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    Mostly what Rob said above.<br>
    <br>
    Whether two same-type synthesizers will produce LO signals that
    "march together" even in the presence of a common high-quality
    reference, depends a lot on the implementation details of the
    synthesizer.<br>
    <br>
    Additionally there are a couple of different things to consider when
    making phase-coherent systems:<br>
    <br>
        (A) Will the synthesized LOs "march together"  -- I THINK that
    on the CBX, the answer is YES, albeit with higher phase-noise than
    strictly-shared<br>
              LO.<br>
    <br>
        (B) Will there always be guaranteed zero phase-offset.   With
    the CBX, the answer is NO.    Taking a quick look at the MAX2870
    data-sheet<br>
              (the synthesizer chip used on the CBX), I don't see any
    "phase reset" feature, which SOME synthesizer chips can use to drag
    muiltiple<br>
              synthesizers together into mutual zero-phase-offset after
    tuning.<br>
    <br>
    The mutual phase noise for a strictly-shared-LO scheme will ALWAYS
    be better than with muiltiple-synthesizers all sharing the same
    reference<br>
       clock.  Whether that higher mutual phase noise is acceptable is
    very-much application specific.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------040906070708080004020409--


--===============0576872514252864480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0576872514252864480==--

