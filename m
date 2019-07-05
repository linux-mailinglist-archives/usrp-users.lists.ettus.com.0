Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E1460879
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jul 2019 16:54:36 +0200 (CEST)
Received: from [::1] (port=55910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hjPbY-000310-HR; Fri, 05 Jul 2019 10:54:28 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:47012)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hjPbV-0002wC-30
 for usrp-users@lists.ettus.com; Fri, 05 Jul 2019 10:54:25 -0400
Received: by mail-qt1-f182.google.com with SMTP id h21so9201220qtn.13
 for <usrp-users@lists.ettus.com>; Fri, 05 Jul 2019 07:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=ULNQ7ThmWHCD6k/ITj9tcSpXfpfP6jIWnPiDEQnaAyE=;
 b=tlIGlhW91K9BzhaZPekHXJQtbWCb4XywejkH05IeLX1+4ors3kNANMiGB2tIQI9k6x
 6YpBeG6vYjjhgnomrv/a0MS3bxsP4HFK39UQwjqUOnyxXJ60xfMImhwNfu4K/9afkV45
 vVE4drQYOSEINoPs+Ps0sqR5BSY9w1Izl9OHe2PxUYbEaHUuAnMmfQzoECjjJh0drYup
 OqmHqsZffGZIVSB+a7jlsc2sO4Ujy0LX6z3arVxlkqDVVUfNaNyMNk0MCdCtdBOyWp7L
 9T32A4XWv1l+vDl06Fduli5/wCqZufznUavJar0u8DHAoTeHnLZqGMGEgvfiNc22o+nC
 8tRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=ULNQ7ThmWHCD6k/ITj9tcSpXfpfP6jIWnPiDEQnaAyE=;
 b=fWOxq0wzbgPSLupUWjbQwh3P3inxgwxIujt70as10sVAbiKWucoUiIfRq4i8jeI1Vk
 iZjJGF+wKO7hDrXparEVpbqFm7Dw3DILquq+EUUO6u4vJbvafa18za83PBZxpET/QV2R
 a/z48h5Uc4oZ0pALM8sUpDuOLE/GDFI+35NyM7KkvNsBZOGXyXsOyPDMp9Abldggr/r3
 OBtU5Wnr3WpM8v6ju5DKydZOgKupcMSlWvmYpiUIUuUBwlo/ZVA7mcmrf2ihIuq4QQMX
 sqZjUfC9UF6gVEJoOfXCpQLdn1ydE/Svg36Sym6alOk+0sVw2xnAkWmCi0tfgFcd67cJ
 A0PA==
X-Gm-Message-State: APjAAAXm2c2fjXPEZxxeUK0ZkWcgS2rmknvo/1/Wzu/KUDNsN3Y0mS1p
 Y44uLEaIjjhzrbbBO5mFwQK7OzOc
X-Google-Smtp-Source: APXvYqw/mC3FXcY6CUJTuNDVS+ZpA/Na18LriMxVqk+sqrGN4navoowbM2/uvHmUPzuvKhRH9iycvQ==
X-Received: by 2002:ac8:252e:: with SMTP id 43mr3035082qtm.61.1562338424583;
 Fri, 05 Jul 2019 07:53:44 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id j6sm3619781qkf.119.2019.07.05.07.53.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 07:53:43 -0700 (PDT)
Message-ID: <5D1F6476.9040104@gmail.com>
Date: Fri, 05 Jul 2019 10:53:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com, 
 "Discuss-gnuradio@gnu.org" <Discuss-gnuradio@gnu.org>
References: <CACO3nRT7r1iZg3Gv8jSBPbUp9wDQCHNYF=fQTYuuCwA71GAuqw@mail.gmail.com>
In-Reply-To: <CACO3nRT7r1iZg3Gv8jSBPbUp9wDQCHNYF=fQTYuuCwA71GAuqw@mail.gmail.com>
Subject: Re: [USRP-users] B205mini half-duplex? (GRC)
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
Content-Type: multipart/mixed; boundary="===============7602137806053709232=="
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
--===============7602137806053709232==
Content-Type: multipart/alternative;
 boundary="------------070209020205010506050202"

This is a multi-part message in MIME format.
--------------070209020205010506050202
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/05/2019 09:36 AM, Tom McDermott via USRP-users wrote:
> Hi Marcus - thanks for the link to the documentation.  Messages don't have
> the required functionality, so I have tried to insert tx_sob and tx_eob tags.
> This unfortunately has not changed anything.  This is what the tag debug shows,
> are these formatted correctly for UHD USRP sink?
>
> ----------------------------------------------------------------------
> Tag Debug:
> Input Stream: 00
>    Offset: 139250  Source: burst_tagger4     Key: tx_sob   Value: #t
> ----------------------------------------------------------------------
>
> ----------------------------------------------------------------------
> Tag Debug:
> Input Stream: 00
>    Offset: 196587  Source: burst_tagger4     Key: tx_eob   Value: #t
> ----------------------------------------------------------------------
>
> I have to stop streaming samples to the USRP Sink to get it to stop transmitting and
> switch TX/RX over to RX - the tags aren't enough.  However the next time back to Tx,
> the problem with transmitter underruns and weird oscillating T/R behavior resumes.
>
> Still looking for advice as to how to T/R switch the unit without the TX going nuts?
>
> -- Tom, N5EG
>
Indeed, if there are ANY samples after a tx_eob, the USRP will go back 
into transmitting mode.

I'm copying the discuss-gnuradio mailing list, since this is really an 
issue of how to make tagged streams behave
   as-expected with GRC-derived flow-graphs.

I've never implemented a half-duplex TX scheme out of GRC myself, but 
there are folks on the discuss-gnuradio mailing list
   who have.


>
>
> On 07/04/2019 11:14 PM, Tom McDermott via USRP-users wrote:
> >/  I am trying to use a B205mini in half-duplex mode through the TX/RX
> />/  connector
> />/  from a GRC flowgraph.  Gnuradio 3.7.13.4.  Very slow switching,
> />/  manually implemented.
> />/
> />/  The flowgraph implements a simple half-duplex transceiver. In order to
> />/  switch
> />/  the TX/RX antenna switch, I am starting and stopping samples to the
> />/  USRP sink
> />/  using the Copy block.  When the Copy block is enabled it passes
> />/  samples to the USRP sink,
> />/  and when disabled it does not copy samples to the USRP sink.
> />/
> />/  If the Copy block is statically enabled, then the USRP transmits (RED
> />/  led 'On' for TX/RX)
> />/  continuously without any underruns.
> />/
> />/  If the Copy is statically disabled, then USRP goes into receive mode
> />/  (GREEN led 'On' for TX/RX)
> />/  and stays in that mode.
> />/
> />/  So far so good.
> />/
> />/  However if I toggle the enable/disable on the copy block to disable
> />/  the TX/RX switches as it should
> />/  from red to green, but after I re-enable the Copy block and leave it
> />/  enabled, the TX/RX  LED goes red
> />/  for awhile, then rapidly flashes red/green/red etc. while printing
> />/  UUUUUUU  on the GRC console, then
> />/  goes RED for about 5 seconds without underruns, then flashes RED/GREEN
> />/  rapidly for 5 or 10 seconds
> />/  and underruns, back and forth ad infinitum.
> />/
> />/  So Copy appears not to be a good way to implement T/R switching.
> />/
> />/  There is a message port on the USRP sink block.  Can this be used to
> />/  implement T/R switching?
> />/  Is there some place that the messages that this port accepts defined?
> />/  I cannot seem to find
> />/  the syntax for the message definitions in the USRP documentation, so I
> />/  must be looking in the wrong place.
> />/
> />/  -- Tom, N5EG
> />/
> />/
> /There's some documentation here:
>
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------070209020205010506050202
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/05/2019 09:36 AM, Tom McDermott
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACO3nRT7r1iZg3Gv8jSBPbUp9wDQCHNYF=fQTYuuCwA71GAuqw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <pre>Hi Marcus - thanks for the link to the documentation.  Messages don't have
the required functionality, so I have tried to insert tx_sob and tx_eob tags.
This unfortunately has not changed anything.  This is what the tag debug shows,
are these formatted correctly for UHD USRP sink?

----------------------------------------------------------------------
Tag Debug: 
Input Stream: 00
  Offset: 139250  Source: burst_tagger4     Key: tx_sob   Value: #t
----------------------------------------------------------------------

----------------------------------------------------------------------
Tag Debug: 
Input Stream: 00
  Offset: 196587  Source: burst_tagger4     Key: tx_eob   Value: #t
----------------------------------------------------------------------

</pre>
        <pre>I have to stop streaming samples to the USRP Sink to get it to stop transmitting and
switch TX/RX over to RX - the tags aren't enough.  However the next time back to Tx,
the problem with transmitter underruns and weird oscillating T/R behavior resumes.

</pre>
        <pre>Still looking for advice as to how to T/R switch the unit without the TX going nuts?

</pre>
        <pre>-- Tom, N5EG

</pre>
      </div>
    </blockquote>
    Indeed, if there are ANY samples after a tx_eob, the USRP will go
    back into transmitting mode.<br>
    <br>
    I'm copying the discuss-gnuradio mailing list, since this is really
    an issue of how to make tagged streams behave<br>
      as-expected with GRC-derived flow-graphs.<br>
    <br>
    I've never implemented a half-duplex TX scheme out of GRC myself,
    but there are folks on the discuss-gnuradio mailing list<br>
      who have.<br>
    <br>
    <br>
    <blockquote
cite="mid:CACO3nRT7r1iZg3Gv8jSBPbUp9wDQCHNYF=fQTYuuCwA71GAuqw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <pre>


</pre>
        <pre>
On 07/04/2019 11:14 PM, Tom McDermott via USRP-users wrote:
&gt;<i> I am trying to use a B205mini in half-duplex mode through the TX/RX 
</i>&gt;<i> connector
</i>&gt;<i> from a GRC flowgraph.  Gnuradio 3.7.13.4.  Very slow switching, 
</i>&gt;<i> manually implemented.
</i>&gt;<i>
</i>&gt;<i> The flowgraph implements a simple half-duplex transceiver. In order to 
</i>&gt;<i> switch
</i>&gt;<i> the TX/RX antenna switch, I am starting and stopping samples to the 
</i>&gt;<i> USRP sink
</i>&gt;<i> using the Copy block.  When the Copy block is enabled it passes 
</i>&gt;<i> samples to the USRP sink,
</i>&gt;<i> and when disabled it does not copy samples to the USRP sink.
</i>&gt;<i>
</i>&gt;<i> If the Copy block is statically enabled, then the USRP transmits (RED 
</i>&gt;<i> led 'On' for TX/RX)
</i>&gt;<i> continuously without any underruns.
</i>&gt;<i>
</i>&gt;<i> If the Copy is statically disabled, then USRP goes into receive mode 
</i>&gt;<i> (GREEN led 'On' for TX/RX)
</i>&gt;<i> and stays in that mode.
</i>&gt;<i>
</i>&gt;<i> So far so good.
</i>&gt;<i>
</i>&gt;<i> However if I toggle the enable/disable on the copy block to disable 
</i>&gt;<i> the TX/RX switches as it should
</i>&gt;<i> from red to green, but after I re-enable the Copy block and leave it 
</i>&gt;<i> enabled, the TX/RX  LED goes red
</i>&gt;<i> for awhile, then rapidly flashes red/green/red etc. while printing 
</i>&gt;<i> UUUUUUU  on the GRC console, then
</i>&gt;<i> goes RED for about 5 seconds without underruns, then flashes RED/GREEN 
</i>&gt;<i> rapidly for 5 or 10 seconds
</i>&gt;<i> and underruns, back and forth ad infinitum.
</i>&gt;<i>
</i>&gt;<i> So Copy appears not to be a good way to implement T/R switching.
</i>&gt;<i>
</i>&gt;<i> There is a message port on the USRP sink block.  Can this be used to 
</i>&gt;<i> implement T/R switching?
</i>&gt;<i> Is there some place that the messages that this port accepts defined?  
</i>&gt;<i> I cannot seem to find
</i>&gt;<i> the syntax for the message definitions in the USRP documentation, so I 
</i>&gt;<i> must be looking in the wrong place.
</i>&gt;<i>
</i>&gt;<i> -- Tom, N5EG
</i>&gt;<i>
</i>&gt;<i>
</i>There's some documentation here:

<a moz-do-not-send="true" href="https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html</a>




</pre>
      </div>
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

--------------070209020205010506050202--


--===============7602137806053709232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7602137806053709232==--

