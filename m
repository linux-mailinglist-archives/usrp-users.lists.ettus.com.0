Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D753AC415
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 04:42:49 +0200 (CEST)
Received: from [::1] (port=50392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6QgY-0001qt-OP; Fri, 06 Sep 2019 22:42:46 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:46164)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i6QgV-0001l6-02
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 22:42:43 -0400
Received: by mail-qk1-f175.google.com with SMTP id 201so7670660qkd.13
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 19:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=By3WShxGbGyWlxu/vMsO1O+EY0ao36KqA30SeOxFhac=;
 b=dVRdDYK8eHlgwNdD83iFCuSRQ0MpJ5L7l6QIZYOhSQhO1xsfUYP8qfMEDs7EiyRcgB
 hcd0IOv9HZ9dH487W3zHFxtd4qAPgmu8fMCQzMLs1MS+ZdPd0zKCxcYKJV2MYaYqOA71
 CYnS5oIhPAABuRFKWSM+qjai8VRHY8Mro068oWoi5d1e+psIFbaclFgU4upihKYfmBQI
 AU9yvs9H4Z/OIIOnWBgvsz86IuDP9XKKQBP1IaE8E77y47gmxVXO2dTwllZBREF+SP0l
 dMYgyl9D6BIhhmZBLQp4aNEr+VREFVv8a+VMU/syZJcISpPY4dVfJQ4eZBueg9Lmnre8
 E+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=By3WShxGbGyWlxu/vMsO1O+EY0ao36KqA30SeOxFhac=;
 b=Nt/3mjscgRaMQcRNzqPH39tcx6OmadfZjblk1BWkPJUktd8X7yNj1Rv+S+UWBOm2aF
 7HFKSCTcYbe4RZHB7DVP6MnDDx9pD+r9fUuj9795oX7xWOpW1xFs3dpYN1Jc92/i3rh9
 aM/cU5xJQsXumYfn9HgJfWLAO1HJkn2f5qSXV0CAz8rQtUzHSiIyJh8q1wRZ0i+OPV+3
 L+aqL4ehFmri588N5904HMbhvvcwwGqoFZks5jwkRyQYqNMDsX8gTpYQ4COwZ/f82nE5
 A5GqdQXsvT8SIF7V+hYpmOpqS+WYuM866d7OJh48afzYc4okBuGBFCItOnWhlPbPDwpj
 icoA==
X-Gm-Message-State: APjAAAU1Syge1fuKwvNHQ9D8K90xCi8DUcN3cYOPyxEnr1vtK6sa+HQV
 xSokrf9wJE8WD8UHJK370WYpELvc
X-Google-Smtp-Source: APXvYqzRUz0rgvccvUZgkm3FWmclHu64cZXPnoJjdOcAYZ0krOdpocv+URpBtrPBF4ppgqOXln7Qqg==
X-Received: by 2002:a05:620a:108a:: with SMTP id
 g10mr11866936qkk.156.1567824122292; 
 Fri, 06 Sep 2019 19:42:02 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id v68sm2952294qkd.109.2019.09.06.19.42.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 19:42:01 -0700 (PDT)
Message-ID: <5D7318F9.9010903@gmail.com>
Date: Fri, 06 Sep 2019 22:42:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
 <46108c0b98749cd2de8a820ca88777003dcf33b6.camel@ettus.com>,
 <CAL263izYt6-x2cCbP90M+NrRPatP2tah5A6gJp_9mVZecAjATA@mail.gmail.com>
 <a9572c0b26d34c1eaa187f532ef2866f@gtri.gatech.edu>
In-Reply-To: <a9572c0b26d34c1eaa187f532ef2866f@gtri.gatech.edu>
Subject: Re: [USRP-users] Processor requirements for full-rate streaming on
 N320
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
Content-Type: multipart/mixed; boundary="===============6204308126780792783=="
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
--===============6204308126780792783==
Content-Type: multipart/alternative;
 boundary="------------050906080705000505090702"

This is a multi-part message in MIME format.
--------------050906080705000505090702
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 09/06/2019 09:53 PM, Lundberg, Daniel via USRP-users wrote:
> Thank you all, I will look into DPDK (didn't know about it until now!) 
> and investigate what is available with those processors.
>
> Marcus, all we need to do is generate samples from a set of pre-canned 
> files, record a loopback to file, and also Tx to another system, which 
> sends samples back that we also record to file.  Time sync between the 
> two Rx channels is important.  We don't do any additional signal 
> processing in this application, so we really just need hardware to 
> support file I/O and streaming, but these systems tend to stick around 
> and get used for other things, so I will likely try to include some 
> headroom in the processor.
>
> Thank you again,
> DL 
Consider that even if your files are 8-bit I/Q samples, at 200Msps, 
that's 400Mbyte/second required out of your disks, unless the files
   are in RAM or very short, that's a very difficult rate to achieve 
from a disk drive of any kind.  If your samples are wider-width, things
   get even harder to achieve, unless you're striping using various 
kinds of RAID arrays.




> ------------------------------------------------------------------------
> *From:* Nate Temple <nate.temple@ettus.com>
> *Sent:* Friday, September 6, 2019 6:39:26 PM
> *To:* Marcus Müller
> *Cc:* Lundberg, Daniel; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Processor requirements for full-rate 
> streaming on N320
> Hi  Daniel,
>
> As Marcus mentioned, an i3 is not ideal for streaming at such high rates.
>
> For 200 MS/s of usable bandwidth, you'll need to stream at 250 MS/s 
> per channel.
>
> A colleague has ran 2x2 @ 250 MS/s using an Intel Xeon E5-1620 v3 @ 
> 3.50GHz, and I've ran at those rates with an i9-9900x @ 4.4 GHz.
>
> Generally speaking, you'll want to have a CPU with a clock freq of 3.5 
> GHz or higher with as many cores as possible, ideally 4.0+ GHz.
>
> To stream at 250 MS/s you'll need to use DPDK. The Mellanox 
> MCX4121A-ACAT NIC is a good option as you do not need to use the 
> vfio-pci driver with it for DPDK.
>
>
> Regards,
> Nate Temple
>
> On Fri, Sep 6, 2019 at 3:24 PM Marcus Müller via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Daniel,
>
>     i3 doesn't sound like the processor family of choice here; a few more
>     cores can't hurt. Basically, assume one CPU core per stream for the
>     wire- to CPU-format conversion, plus a bit of demand for someone
>     handling OS/network card interrupts.
>     What're you doing with the samples afterwards?
>
>     Best regards,
>     Marcus
>
>     On Fri, 2019-09-06 at 21:53 +0000, Lundberg, Daniel via USRP-users
>     wrote:
>     > Does anyone have a known good hardware configuration to support full
>     > (or at least close to full) 200 MS/s streaming from the N320?
>     > Preferably with 1 Tx and 2 Rx channels.
>     > As a data point, a recent i3 (4 cores) seems to be choking above
>     62.5
>     > MS/s.  This is over dual SFP+ ports.  At higher sampling rates,
>     it is
>     > producing U’s, which I interpret to mean that the cpu can’t shovel
>     > samples into the radio fast enough, not that there is a network jam.
>     >
>     > Thank you,
>     > DL
>     > _______________________________________________
>     > USRP-users mailing list
>     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------050906080705000505090702
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/06/2019 09:53 PM, Lundberg,
      Daniel via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:a9572c0b26d34c1eaa187f532ef2866f@gtri.gatech.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      Thank you all, I will look into DPDK (didn't know about it until
      now!) and investigate what is available with those processors. 
      <br>
      <br>
      Marcus, all we need to do is generate samples from a set of
      pre-canned files, record a loopback to file, and also Tx to
      another system, which sends samples back that we also record to
      file.  Time sync between the two Rx channels is important.  We
      don't do any additional signal processing in this application, so
      we really just need hardware to support file I/O and streaming,
      but these systems tend to stick around and get used for other
      things, so I will likely try to include some headroom in the
      processor.<br>
      <br>
      Thank you again,<br>
      DL
    </blockquote>
    Consider that even if your files are 8-bit I/Q samples, at 200Msps,
    that's 400Mbyte/second required out of your disks, unless the files<br>
      are in RAM or very short, that's a very difficult rate to achieve
    from a disk drive of any kind.  If your samples are wider-width,
    things<br>
      get even harder to achieve, unless you're striping using various
    kinds of RAID arrays.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
      cite="mid:a9572c0b26d34c1eaa187f532ef2866f@gtri.gatech.edu"
      type="cite">
      <hr style="display:inline-block;width:98%" tabindex="-1">
      <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
          color="#000000" face="Calibri, sans-serif"><b>From:</b> Nate
          Temple <a class="moz-txt-link-rfc2396E" href="mailto:nate.temple@ettus.com">&lt;nate.temple@ettus.com&gt;</a><br>
          <b>Sent:</b> Friday, September 6, 2019 6:39:26 PM<br>
          <b>To:</b> Marcus Müller<br>
          <b>Cc:</b> Lundberg, Daniel; <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Subject:</b> Re: [USRP-users] Processor requirements for
          full-rate streaming on N320</font>
        <div> </div>
      </div>
      <div>
        <div dir="ltr">
          <div class="gmail_default"
            style="font-family:arial,helvetica,sans-serif">Hi  Daniel,<br>
            <br>
            As Marcus mentioned, an i3 is not ideal for streaming at
            such high rates.<br>
            <br>
            For 200 MS/s of usable bandwidth, you'll need to stream at
            250 MS/s per channel.<br>
            <br>
            A colleague has ran 2x2 @ 250 MS/s using an Intel Xeon
            E5-1620 v3 @ 3.50GHz, and I've ran at those rates with an
            i9-9900x @ 4.4 GHz.
            <br>
            <br>
            Generally speaking, you'll want to have a CPU with a clock
            freq of 3.5 GHz or higher with as many cores as possible,
            ideally 4.0+ GHz.<br>
          </div>
          <div class="gmail_default"
            style="font-family:arial,helvetica,sans-serif"><br>
            To stream at 250 MS/s you'll need to use DPDK. The Mellanox
            MCX4121A-ACAT NIC is a good option as you do not need to use
            the vfio-pci driver with it for DPDK.<br>
            <br>
            <br>
            Regards,<br>
            Nate Temple</div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Sep 6, 2019 at 3:24
            PM Marcus Müller via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            Hi Daniel,<br>
            <br>
            i3 doesn't sound like the processor family of choice here; a
            few more<br>
            cores can't hurt. Basically, assume one CPU core per stream
            for the<br>
            wire- to CPU-format conversion, plus a bit of demand for
            someone<br>
            handling OS/network card interrupts.<br>
            What're you doing with the samples afterwards?<br>
            <br>
            Best regards,<br>
            Marcus<br>
            <br>
            On Fri, 2019-09-06 at 21:53 +0000, Lundberg, Daniel via
            USRP-users<br>
            wrote:<br>
            &gt; Does anyone have a known good hardware configuration to
            support full<br>
            &gt; (or at least close to full) 200 MS/s streaming from the
            N320? <br>
            &gt; Preferably with 1 Tx and 2 Rx channels.<br>
            &gt; As a data point, a recent i3 (4 cores) seems to be
            choking above 62.5<br>
            &gt; MS/s.  This is over dual SFP+ ports.  At higher
            sampling rates, it is<br>
            &gt; producing U’s, which I interpret to mean that the cpu
            can’t shovel<br>
            &gt; samples into the radio fast enough, not that there is a
            network jam.<br>
            &gt;  <br>
            &gt; Thank you,<br>
            &gt; DL<br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list<br>
            &gt; <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            &gt; <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            <br>
            <br>
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

--------------050906080705000505090702--


--===============6204308126780792783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6204308126780792783==--

