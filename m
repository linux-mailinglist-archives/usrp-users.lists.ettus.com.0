Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B63CE30352E
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 06:37:37 +0100 (CET)
Received: from [::1] (port=38518 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4H2l-0006RM-UG; Tue, 26 Jan 2021 00:37:35 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:41148)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l4H2h-00068a-BM
 for usrp-users@lists.ettus.com; Tue, 26 Jan 2021 00:37:31 -0500
Received: by mail-qk1-f179.google.com with SMTP id n15so10278520qkh.8
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 21:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=PBOv0phRCpIUShzrbxNU/ohMJP6dOPU4jo8A/JrPfOc=;
 b=ZBJoP5bIUfzLR9E3XkKvoI7hD93IblhhFZTn/TwdCU0K1+veeI49h+e6JYdbjK6Nwc
 DDTSEgsqhEYNAX3hmTJek+KlQ0fHKLjiHc2qCD2q0ATwSfnkTlVm7qe7PxTqzpQNFT3i
 6fr5A9VRU7WlP0RbFi3zOiLIScwe8qCgWUsTymHTWoW+GKHKOW2bwDKPcwjiXJXvWhAb
 oA3KA6YB4BWQ92gfKNt3Kj2ujTmYALZPxCRmY8U/fOu3wUTAr7kn7O71XvJdG70cAKqr
 Z3nSYLBk4EIY3+q8KmjAtETEIBFHeJKfN6LkeNltqm1fjwS/MUKbQ+GsvizBEeW6aI/d
 gCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=PBOv0phRCpIUShzrbxNU/ohMJP6dOPU4jo8A/JrPfOc=;
 b=b4QLE2IOlBBdk44XZnqcBGFNvUtpzV+9nGRaa6ZJXzZQjXRluOh18vMP3GqbZwZgnd
 tKUWPffR1Pj+uboNbUlOS0/XB2I/MecMYE1wlptftwuBwymLnK63fV3subnEP29hF55T
 Blb74P2vESh4I66q/zczyTUEvIS8DZ8rG+2qplew7Toyk48zw6PJQfDeoHW3o+FVIC9i
 9HmcTZmk142RGp+212BeJCpEyagTOO6bcriVfqZb2uP8VAPV3qJftsxhh6quovxmKNrV
 c2iWX/CDm07CSlwOcvFzZpg4DNAQUDPwcknACWuHICiQdWD4xfMJZv6V8tTqIfAWjSXr
 bnRQ==
X-Gm-Message-State: AOAM532NXm9bk344NWfeS2+dIRq2QDs+MYBNrEJQz6qnTrS3fvhO2a52
 m7MIIpxBGvVdqZp5TQCcSGHqzoLuheU=
X-Google-Smtp-Source: ABdhPJxBtfG8nFPmR6q77Y6GULXTyX4PQTgLgcvEWb4qdvYqYlkTr3n9t8MGqYL2NAo7KeMZuWAOeA==
X-Received: by 2002:a37:a04d:: with SMTP id j74mr4283570qke.378.1611639410508; 
 Mon, 25 Jan 2021 21:36:50 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id b203sm5943040qkg.26.2021.01.25.21.36.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 25 Jan 2021 21:36:50 -0800 (PST)
Message-ID: <600FAA71.1010806@gmail.com>
Date: Tue, 26 Jan 2021 00:36:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <600fa9a4.1c69fb81.7bd7b.4ec7@mx.google.com>
In-Reply-To: <600fa9a4.1c69fb81.7bd7b.4ec7@mx.google.com>
Subject: Re: [USRP-users] uhd4.0 and blocks with multiple ports
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
Content-Type: multipart/mixed; boundary="===============8809803360374845811=="
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
--===============8809803360374845811==
Content-Type: multipart/alternative;
 boundary="------------040004000201050908060201"

This is a multi-part message in MIME format.
--------------040004000201050908060201
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 01/26/2021 12:33 AM, dario via USRP-users wrote:
> Thanks for answering so quickly. The reason i posted here is that it's 
> actually uhd which is complaining the topology is not compatible, not 
> gnuradio. I can see that there are several blocks that have multiple 
> in/out and i didn't realize phosphor now has different ports but i 
> still don't understand what i could have done wrong to have such 
> error. As i was mentioning the framework starts, writes registers of 
> my block and then when committing topology it fails saying 
> rfnoc::graph::detail node ... cannot handle its current topology!
>
> Thanks,
>
> Dario
Sorry, I missed that this was RFNOC.


>
>
> -------- Messaggio originale --------
> Da: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
> Data: 25/01/21 23:28 (GMT+01:00)
> A: USRP-users@lists.ettus.com
> Oggetto: Re: [USRP-users] uhd4.0 and blocks with multiple ports
>
> I agree that this question is more in the domain of GNURadio, but I do
> want to point out that RFNoC 4.0 blocks most certainly can have
> different numbers of inputs and outputs. A good example is the RFNoC
> Fosphor block:
>
> https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/fosphor
> https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/blocks/fosphor.yml
>
> The GR 3.8 support for this block (and other UHD 4.0 RFNoC blocks) is
> in gr-ettus:
>
> https://github.com/EttusResearch/gr-ettus/blob/master/grc/ettus_rfnoc_fosphor.block.yml
>
> Best regards,
> Aaron
>
> On Mon, Jan 25, 2021 at 3:25 PM Marcus D Leech via USRP-users
> <usrp-users@lists.ettus.com> wrote:
> >
> > This is clearly a question for the discuss-gnuradio mailing list.
> >
> > Sent from my iPhone
> >
> > > On Jan 25, 2021, at 2:43 PM, dario via USRP-users 
> <usrp-users@lists.ettus.com> wrote:
> > >
> > > ﻿
> > > Hi,
> > > I created a block with two output ports and one input port however 
> when i try to connect it via stream endpoints gnuradio companion 
> claims it doesn't know how to handle this. I then added a sexond inout 
> as i recall that on uhd 3.15 it is necessary to have as many inputs as 
> outputs but it gave back the same error now saying it doesn't know how 
> to connect blocks with two inputs and two outputs.
> > > I'm a bit confuse because it seems radio for example has two 
> outputs however it is statically connected. Is it at all possible to 
> have a dynamic connection of a block with multiple outputs? What is 
> the possible reason why node manager reports it doesn't support this 
> connection?
> > >
> > > Thanks,
> > >
> > > Dario
> > >
> > > _______________________________________________
> > > USRP-users mailing list
> > > USRP-users@lists.ettus.com
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------040004000201050908060201
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/26/2021 12:33 AM, dario via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:600fa9a4.1c69fb81.7bd7b.4ec7@mx.google.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div dir="auto">Thanks for answering so quickly. The reason i
        posted here is that it's actually uhd which is complaining the
        topology is not compatible, not gnuradio. I can see that there
        are several blocks that have multiple in/out and i didn't
        realize phosphor now has different ports but i still don't
        understand what i could have done wrong to have such error. As i
        was mentioning the framework starts, writes registers of my
        block and then when committing topology it fails saying
        rfnoc::graph::detail node ... cannot handle its current
        topology!</div>
      <div dir="auto"><br>
      </div>
      <div dir="auto">Thanks,</div>
      <div dir="auto"><br>
      </div>
      <div dir="auto">Dario</div>
    </blockquote>
    Sorry, I missed that this was RFNOC.<br>
    <br>
    <br>
    <blockquote cite="mid:600fa9a4.1c69fb81.7bd7b.4ec7@mx.google.com"
      type="cite">
      <div dir="auto"><br>
      </div>
      <div><br>
      </div>
      <div style="font-size:100%;color:#000000" dir="auto" align="left">
        <div>-------- Messaggio originale --------</div>
        <div>Da: Aaron Rossetto via USRP-users
          <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> </div>
        <div>Data: 25/01/21 23:28 (GMT+01:00) </div>
        <div>A: <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a> </div>
        <div>Oggetto: Re: [USRP-users] uhd4.0 and blocks with multiple
          ports </div>
        <div><br>
        </div>
      </div>
      I agree that this question is more in the domain of GNURadio, but
      I do<br>
      want to point out that RFNoC 4.0 blocks most certainly can have<br>
      different numbers of inputs and outputs. A good example is the
      RFNoC<br>
      Fosphor block:<br>
      <br>
<a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/fosphor">https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/fosphor</a><br>
<a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/blocks/fosphor.yml">https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfnoc/blocks/fosphor.yml</a><br>
      <br>
      The GR 3.8 support for this block (and other UHD 4.0 RFNoC blocks)
      is<br>
      in gr-ettus:<br>
      <br>
<a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/gr-ettus/blob/master/grc/ettus_rfnoc_fosphor.block.yml">https://github.com/EttusResearch/gr-ettus/blob/master/grc/ettus_rfnoc_fosphor.block.yml</a><br>
      <br>
      Best regards,<br>
      Aaron<br>
      <br>
      On Mon, Jan 25, 2021 at 3:25 PM Marcus D Leech via USRP-users<br>
      <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br>
      &gt;<br>
      &gt; This is clearly a question for the discuss-gnuradio mailing
      list.<br>
      &gt;<br>
      &gt; Sent from my iPhone<br>
      &gt;<br>
      &gt; &gt; On Jan 25, 2021, at 2:43 PM, dario via USRP-users
      <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br>
      &gt; &gt;<br>
      &gt; &gt; ﻿<br>
      &gt; &gt; Hi,<br>
      &gt; &gt; I created a block with two output ports and one input
      port however when i try to connect it via stream endpoints
      gnuradio companion claims it doesn't know how to handle this. I
      then added a sexond inout as i recall that on uhd 3.15 it is
      necessary to have as many inputs as outputs but it gave back the
      same error now saying it doesn't know how to connect blocks with
      two inputs and two outputs.<br>
      &gt; &gt; I'm a bit confuse because it seems radio for example has
      two outputs however it is statically connected. Is it at all
      possible to have a dynamic connection of a block with multiple
      outputs? What is the possible reason why node manager reports it
      doesn't support this connection?<br>
      &gt; &gt;<br>
      &gt; &gt; Thanks,<br>
      &gt; &gt;<br>
      &gt; &gt; Dario<br>
      &gt; &gt;<br>
      &gt; &gt; _______________________________________________<br>
      &gt; &gt; USRP-users mailing list<br>
      &gt; &gt; <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
      &gt; &gt;
      <a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
      &gt;<br>
      &gt; _______________________________________________<br>
      &gt; USRP-users mailing list<br>
      &gt; <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
      &gt;
      <a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
      <br>
      _______________________________________________<br>
      USRP-users mailing list<br>
      <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
      <a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040004000201050908060201--


--===============8809803360374845811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8809803360374845811==--

