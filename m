Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AFDD00F4
	for <lists+usrp-users@lfdr.de>; Tue,  8 Oct 2019 21:08:44 +0200 (CEST)
Received: from [::1] (port=40982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHuqe-0006pZ-UW; Tue, 08 Oct 2019 15:08:40 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:41058)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iHuqb-0006jp-52
 for usrp-users@lists.ettus.com; Tue, 08 Oct 2019 15:08:37 -0400
Received: by mail-qt1-f172.google.com with SMTP id v52so4174914qtb.8
 for <usrp-users@lists.ettus.com>; Tue, 08 Oct 2019 12:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=9SLFAtT8iikYmf5eJrJ+f/YOBuewOimJyNCzWtCw3qU=;
 b=ccXbx5VXN12kjkqoRp55DOx3TjGTGEawblPhApP7hir/4SuxK8XVsjtbBzsb6lBoYE
 EI39fF/fMolPtKIjzH39l18TFFD493DjW/EvDu15E2CSnvEdItY3txP3xWeguDpcX4pH
 8ljoRh+hUR5qE7Fb8g1u52JNoVb4a2EzI26sKrMiH6Z8ldgSpD/vaxcVP+WBqtFr6k0/
 4d9pgYbGmtFuitwsyFCqo2R0x3Bm84sY9rlwGrzJFR7PTdOm+q0GAgiaG9x1QR2Jqveq
 5UoNuY+WXFvdE7lzTPNNvF7jU+gMn+iPG+tx38gkODGv1VfjpbjiIV1Bll9dGnRZFe8I
 Lskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=9SLFAtT8iikYmf5eJrJ+f/YOBuewOimJyNCzWtCw3qU=;
 b=sNXN02IoeL/zcEVAoyk5CJWCN8B7g+8ckmJabN9+kTXkIPtBVZgAfwjOVMlwmF8cxp
 2oSOAvDAZxhuBEBVaoem52RcSj+A4kdk5371ZcYCZFgAX/EtGrWTLMGAM4H2BT0i5FKJ
 6Xxcwa71XXfe4ik/F+Ht+dVKMV/rV9C6XV99zdLBq0FD6WZP8ehRq/tvkni63Oo436O8
 JWerDCcBJAakwESDZ8p5zO2gg86ZAaDj1gnPzGex5Fmm6eoa+RNrkXTWKdkNA0aghoDM
 G9bo+D2nkWKMkozam9m/dWm64N2B8DU1gZeuDJ1KEpjnB2DG2Mj0CYoUX0F4x4wxtRxm
 cuhA==
X-Gm-Message-State: APjAAAUeulb3Wv4tCQe3ambyTfVj8uAt4xIqDYD7jufA7khlSw+4JwrP
 eQyVXy8eqz8Z9HcVv7HEuF2Md/aMvss=
X-Google-Smtp-Source: APXvYqxn3ME5a88fIK7jEMG4bPSWL9VpL5KBvlwrbCm5CfdWgcYgxLTR9mYJ+cii8hgSjva7qUD3Cg==
X-Received: by 2002:ac8:b41:: with SMTP id m1mr37350739qti.382.1570561676296; 
 Tue, 08 Oct 2019 12:07:56 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id m14sm8796553qki.27.2019.10.08.12.07.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 12:07:55 -0700 (PDT)
Message-ID: <5D9CDE8A.8040106@gmail.com>
Date: Tue, 08 Oct 2019 15:07:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Mark Wagner <m2wagner@eng.ucsd.edu>
References: <CALLKLAMX__ix00nQ9YsNjfwsCZF0u=DbasH8vzPkARmFHjGVCA@mail.gmail.com>
 <8B8EED8A-96F8-48C8-9103-F28BA1CE6025@gmail.com>
 <CALLKLAMApMRKpoHF=Qpq7yajGRiCaW1eJngjAdYLReOMnFyfkw@mail.gmail.com>
 <5D9BEB01.9030409@gmail.com>
 <CALLKLAPYd95f47Z97gjNTtKhr245pb4y0O-oHp-4XQFV58ZJEA@mail.gmail.com>
In-Reply-To: <CALLKLAPYd95f47Z97gjNTtKhr245pb4y0O-oHp-4XQFV58ZJEA@mail.gmail.com>
Subject: Re: [USRP-users] [Discuss-gnuradio] Tx and Rx on USRP
 simultaneously, device already claimed
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7793319849130574122=="
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
--===============7793319849130574122==
Content-Type: multipart/alternative;
 boundary="------------090004050005040501040502"

This is a multi-part message in MIME format.
--------------090004050005040501040502
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/08/2019 01:22 PM, Mark Wagner wrote:
> These are N310s. I'm using 122.7kSps as the sample rate in the setup 
> I'm using. I didn't send the full .grc file because there's 24 
> embedded python blocks that act as a correlate and shift with the tx 
> sequence. When I was giving a separate USRP source to each N310 I 
> could use both Tx/Rx channel and the Rx2 channel of my first N310 at 
> the same time, but when I use only one USRP source I can't seem to get 
> the Tx channel to work.
>
> -Mark
Could you share the complete message log, including errors.  This will, 
among other things, show us which version of UHD you're running.


>
> On Mon, Oct 7, 2019 at 6:48 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 10/07/2019 05:25 PM, Mark Wagner wrote:
>>     Yeah, here's a basic example of the flowgraph
>>
>>     On Mon, Oct 7, 2019 at 11:17 AM Marcus D Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>          Could you share a minimal flow graph that displays the issue?
>>
>>         Sent from my iPhone
>>
>>         > On Oct 7, 2019, at 2:08 PM, Mark Wagner
>>         <m2wagner@eng.ucsd.edu <mailto:m2wagner@eng.ucsd.edu>> wrote:
>>         >
>>         > Hey everyone,
>>         >
>>         > I'm trying to transmit from the TX/RX port of a USRP while
>>         receiving from RX2 but I'm getting a 'device already claimed'
>>         error message. Here are some details:
>>         >
>>         > My USRP sink block uses multiple USRP addresses, i.e.
>>         >
>>         > "addr0=192.168.1.2,addr1=192.168.2.2,addr3=192.168.3.2,..."
>>         >
>>         > and each address goes to a different USRP in an array. I
>>         want to transmit a calibration tone across the array from the
>>         TX channel of the first USRP (addr0), but when I add a USRP
>>         source block it gives a 'device already claimed' message.
>>         This doesn't happen when I make individual USRP sink blocks
>>         for each USRP in the array.
>>         >
>>         > Unfortunately if I separate my devices into several USRP
>>         sink blocks I can't guarantee the devices will be synched to
>>         the PPS. Is there a workaround for this?
>>         >
>>         > -Mark
>>         >
>>         > --
>>         > Mark Wagner
>>         > University of California San Diego
>>         > Electrical and Computer Engineering
>>         >
>>         > _______________________________________________
>>         > Discuss-gnuradio mailing list
>>         > Discuss-gnuradio@gnu.org <mailto:Discuss-gnuradio@gnu.org>
>>         > https://lists.gnu.org/mailman/listinfo/discuss-gnuradio
>>
>>
>>
>>     -- 
>>     Mark Wagner
>>     University of California San Diego
>>     Electrical and Computer Engineering
>>
>     Could you give more details of your hardware configuration. Are
>     these N210s?  X310s?
>
>
>     Also, I'll note that 32K as a sample rate is well below what is
>     normally supported--do the start-up messages complain about that?
>
>
>
>
> -- 
> Mark Wagner
> University of California San Diego
> Electrical and Computer Engineering
>


--------------090004050005040501040502
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/08/2019 01:22 PM, Mark Wagner
      wrote:<br>
    </div>
    <blockquote
cite="mid:CALLKLAPYd95f47Z97gjNTtKhr245pb4y0O-oHp-4XQFV58ZJEA@mail.gmail.com"
      type="cite">
      <div dir="ltr">These are N310s. I'm using 122.7kSps as the sample
        rate in the setup I'm using. I didn't send the full .grc file
        because there's 24 embedded python blocks that act as a
        correlate and shift with the tx sequence. When I was giving a
        separate USRP source to each N310 I could use both Tx/Rx channel
        and the Rx2 channel of my first N310 at the same time, but when
        I use only one USRP source I can't seem to get the Tx channel to
        work.
        <div><br>
        </div>
        <div>-Mark</div>
      </div>
    </blockquote>
    Could you share the complete message log, including errors.  This
    will, among other things, show us which version of UHD you're
    running.<br>
    <br>
    <br>
    <blockquote
cite="mid:CALLKLAPYd95f47Z97gjNTtKhr245pb4y0O-oHp-4XQFV58ZJEA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Oct 7, 2019 at 6:48 PM
          Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 10/07/2019 05:25 PM, Mark Wagner wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">Yeah, here's a basic example of the
                flowgraph </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Mon, Oct 7, 2019 at
                  11:17 AM Marcus D Leech &lt;<a moz-do-not-send="true"
                    href="mailto:patchvonbraun@gmail.com"
                    target="_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"> Could

                  you share a minimal flow graph that displays the
                  issue?<br>
                  <br>
                  Sent from my iPhone<br>
                  <br>
                  &gt; On Oct 7, 2019, at 2:08 PM, Mark Wagner &lt;<a
                    moz-do-not-send="true"
                    href="mailto:m2wagner@eng.ucsd.edu" target="_blank">m2wagner@eng.ucsd.edu</a>&gt;
                  wrote:<br>
                  &gt; <br>
                  &gt; Hey everyone,<br>
                  &gt; <br>
                  &gt; I'm trying to transmit from the TX/RX port of a
                  USRP while receiving from RX2 but I'm getting a
                  'device already claimed' error message. Here are some
                  details:<br>
                  &gt; <br>
                  &gt; My USRP sink block uses multiple USRP addresses,
                  i.e. <br>
                  &gt; <br>
                  &gt;
                  "addr0=192.168.1.2,addr1=192.168.2.2,addr3=192.168.3.2,..."<br>
                  &gt; <br>
                  &gt; and each address goes to a different USRP in an
                  array. I want to transmit a calibration tone across
                  the array from the TX channel of the first USRP
                  (addr0), but when I add a USRP source block it gives a
                  'device already claimed' message. This doesn't happen
                  when I make individual USRP sink blocks for each USRP
                  in the array. <br>
                  &gt; <br>
                  &gt; Unfortunately if I separate my devices into
                  several USRP sink blocks I can't guarantee the devices
                  will be synched to the PPS. Is there a workaround for
                  this?<br>
                  &gt; <br>
                  &gt; -Mark<br>
                  &gt; <br>
                  &gt; -- <br>
                  &gt; Mark Wagner<br>
                  &gt; University of California San Diego<br>
                  &gt; Electrical and Computer Engineering<br>
                  &gt;  <br>
                  &gt; _______________________________________________<br>
                  &gt; Discuss-gnuradio mailing list<br>
                  &gt; <a moz-do-not-send="true"
                    href="mailto:Discuss-gnuradio@gnu.org"
                    target="_blank">Discuss-gnuradio@gnu.org</a><br>
                  &gt; <a moz-do-not-send="true"
                    href="https://lists.gnu.org/mailman/listinfo/discuss-gnuradio"
                    rel="noreferrer" target="_blank">https://lists.gnu.org/mailman/listinfo/discuss-gnuradio</a><br>
                </blockquote>
              </div>
              <br clear="all">
              <div><br>
              </div>
              -- <br>
              <div dir="ltr">
                <div dir="ltr">
                  <div>
                    <div>Mark Wagner<br>
                    </div>
                    University of California San Diego<br>
                  </div>
                  Electrical and Computer Engineering<br>
                   <br>
                </div>
              </div>
            </blockquote>
            Could you give more details of your hardware configuration. 
            Are these N210s?  X310s?<br>
            <br>
            <br>
            Also, I'll note that 32K as a sample rate is well below what
            is normally supported--do the start-up messages complain
            about that?<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr">
          <div>
            <div>Mark Wagner<br>
            </div>
            University of California San Diego<br>
          </div>
          Electrical and Computer Engineering<br>
           <br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090004050005040501040502--


--===============7793319849130574122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7793319849130574122==--

