Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80681DD15E
	for <lists+usrp-users@lfdr.de>; Fri, 18 Oct 2019 23:47:52 +0200 (CEST)
Received: from [::1] (port=49272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLa67-0004cU-Id; Fri, 18 Oct 2019 17:47:47 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:35176)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iLa63-0004VA-UR
 for usrp-users@lists.ettus.com; Fri, 18 Oct 2019 17:47:43 -0400
Received: by mail-qk1-f195.google.com with SMTP id w2so6738038qkf.2
 for <usrp-users@lists.ettus.com>; Fri, 18 Oct 2019 14:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=uF6p94hYYCY9dXd/SSxjfawR1U7HH/17glTFOVc/QPk=;
 b=C55Jgxcx9ND9iRQ2yMnmxhEx1EQYaaV37tTuipWF4YwSuwxFIs9a+QdTUZNtczocbF
 +YrEFXXBLxSfuIHcqvdUOKFuUiVZPLwjW2HbksdUgfgET2lYVTcO9n0u/94Cy/q9avAW
 DRYnSApCP83BtIJVLrJOJ3q9lmHj03mUVoP8v3YKuJHQ+D12lP7V+e/p7UrhXOmA09zC
 UDBamdVl4Qkhsbb6mu7YY+jibydqFhXR4OFrQaHXiNzTU3bnsEMqbZbS0XsWRK/vWYr7
 s7jC9lTx9WBhZg1r7vaRGuDSt+Tp0eUKVMf7kW5jdMvgfHzOq1EAR6uxa5AgFnstm48Z
 vPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=uF6p94hYYCY9dXd/SSxjfawR1U7HH/17glTFOVc/QPk=;
 b=Xowjua8vO//NbtvdeiQ66U98oQ46rEqS5tu2RLVdD0zQ1saPT47GeBMGGBxvssfP1J
 Sozggtrs+nfXBzLmi0Fcwd+OBaFRnY2Ze3UJEA9bO05juu7Va2rCseuO3ftFTrCCnTW3
 z3/AOs1hColee+WX7elmcGjuNO0y8eVUAVUNIka7oknRf0jSps55rZ5Jb3EeRz07cb6B
 nX/zqAopYG98/myqCVcQaibaKILIV39ffuh7je1al8VJ7GmqKSho5DZieMDeqM9zcb6a
 66BSGdX3z3PFJfOkPONuVKBJJU2cEong+M7Nb2jBbgVhjgSgBaq4eb+0EuHp8X7v4vmn
 IOUg==
X-Gm-Message-State: APjAAAXbrz7vK/gbit2JMAFsA6sRj2+rbiQyOEPhdNq1ZJ0hy380x1LR
 nFAVy82kXEcSEUOvpeFpcWFwUHKHQE8=
X-Google-Smtp-Source: APXvYqzpiMS/eBzzUFyMnuEDMvF9xJ8xDENj0MumfZX2GzExYR1g6ZoXi2IH+eNzoPdVdoTca8Gqcw==
X-Received: by 2002:ae9:d8c2:: with SMTP id
 u185mr11019262qkf.112.1571435223183; 
 Fri, 18 Oct 2019 14:47:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id h10sm4240984qtk.18.2019.10.18.14.47.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 14:47:02 -0700 (PDT)
Message-ID: <5DAA32D5.7070400@gmail.com>
Date: Fri, 18 Oct 2019 17:47:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Carlos Bocanegra <carlos.bocanegra.guerra@gmail.com>, sam.reiter@ettus.com
References: <CAEJWbW3=nf=LvD+mmVC2Vaz_J0wW6jrsxNskvq+B1eYkCh2P+Q@mail.gmail.com>
 <CANf970YRfCeFXYGaum=Y4xoUjz6MOpB9PemTwPYD2hYEoupFUA@mail.gmail.com>
 <CAEJWbW184PxfCq0BNqLLmRGjJV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com>
In-Reply-To: <CAEJWbW184PxfCq0BNqLLmRGjJV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com>
Subject: Re: [USRP-users] RX Misalignment on 6x1 MISO system using X310 and
 UBX-160
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
Content-Type: multipart/mixed; boundary="===============0333632142744215072=="
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
--===============0333632142744215072==
Content-Type: multipart/alternative;
 boundary="------------030700030505020005000404"

This is a multi-part message in MIME format.
--------------030700030505020005000404
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/18/2019 03:35 PM, Carlos Bocanegra wrote:
> Hi all,
>
> Thanks a lot Sam and Marcus for replying so quickly.
>
> Le me first include Marcus answer in this email chain for a cleaner 
> communication:
> "/Gnu Radio cannot really misalign samples, unless the DSP logic 
> arranges for that to happen. If you have a block with a bunch of 
> streams, that blocks "work" function cannot proceed until there is 
> equal amounts of data available on all streams. In the absence of the 
> hardware dropping samples, coherence is maintained in that case. What 
> you are seeing here seems to be a problem with your network stack  
> losing things. What type of Ethernet adapters do you have? What sample 
> rates are you running?/"
>
> *The requested extra info:*
> - The sampling rates selected are _1Msps_ for the TX and _2Msps_ for 
> the RX.
> - The SFP connector attached to the USRP-X310s: AVAGO, 1.25GBd, 
> 1000BASE-T, ABCU-5730ARZ.
> - The NIC: Intel Corporation Gigabit CT Desktop Adapter.
> - The Ethernet controller: Intel Corporation 82574L Gigabit Network 
> Connection.
>
> @Marcus,
> good thing that the scheduler in each block handles that correctly. 
> I'll focus on the network setup then.
>
> @Sam,
> it seems reasonable to think that the source of error is the poking 
> timeout, being the misalignment the aftermath.
> When you say flow controls, do you mean the ones handled by the UHD fw 
> functions? I see a couple of D's (packet drops) right before the 
> misalignment error, after the UHD raises the last poking exception. 
> But maybe this is just the natural behavior- to drop misaligned 
> packets before either getting an alignment or timing out and rising 
> the exception.
>
> "/Drop the sample rate (what is it, by the way?) and see if there's a 
> threshold where things start working [3]/":
> Should I drop the samples below 1Msps/2Msps? I think these are pretty 
> low and having lower sampling rates would rise new problems. I can go 
> ahead and try it if you still thing this is the issue.
> "/Keep the original sample rate and try removing a radio or two from 
> the system. Does this help things?/"/:/
> - 4RX/1TX with simplistic flowgraph (usrp_source connected to 
> file_sinks and analog signal connected to usrp_sink): OK.
> - 6RX/1TX with simplistic flowgraph (usrp_source connected to 
> file_sinks and analog signal connected to usrp_sink): NOK (error 
> described previously).
> - 3RX/1TX with my DSP blocks: OK.
> - 4RX/1TX with my DSP blocks: NOK (error described previously).
>
> Regarding an example, I could not find one that sets up a usrp_source 
> AND a usrp_sink, in the folder {gr_prefix}/gr-uhd/examples/. I created 
> a simplistic python flowgraph that results in the poking and 
> misalignment issue, attached in this email. For instance, the 6x1 
> connections would map to the input argumments --tx_channels 1 
> --rx_channels 6.
>
> Thanks a lot for your time and I hope to hear back from you soon.
>
> Best,
> Carlos
>
>
I'll note that some members of the 82574L family of controllers are 
known to unnecessarily drop packets *particularly at unexpectedly-low flow
   rates*.

This may or may not be contributing to your problem.



--------------030700030505020005000404
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/18/2019 03:35 PM, Carlos
      Bocanegra wrote:<br>
    </div>
    <blockquote
cite="mid:CAEJWbW184PxfCq0BNqLLmRGjJV0N_OyHEpDwe9JT2KkMxAEGaA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div>Hi all,</div>
          <div><br>
          </div>
          <div>Thanks a lot Sam and Marcus for replying so quickly.</div>
          <div><br>
          </div>
          <div>Le me first include Marcus answer in this email chain for
            a cleaner communication:<br>
          </div>
          <div>"<i>Gnu Radio cannot really misalign samples, unless the
              DSP logic arranges for that to happen. If you have a block
              with a bunch of streams, that blocks "work" function
              cannot proceed until there is equal amounts of data
              available on all streams. In the absence of the hardware
              dropping samples, coherence is maintained in that case.
              What you are seeing here seems to be a problem with your
              network stack  losing things. What type of Ethernet
              adapters do you have? What sample rates are you running?</i>"</div>
          <div><br>
          </div>
          <div><b>The requested extra info:</b><br>
          </div>
          <div>
            <div>- The sampling rates selected are <u>1Msps</u> for the
              TX and <u>2Msps</u> for the RX.</div>
            <div>- The SFP connector attached to the USRP-X310s: AVAGO,
              1.25GBd, 1000BASE-T, ABCU-5730ARZ.</div>
            <div>- The NIC: Intel Corporation Gigabit CT Desktop
              Adapter.</div>
            <div>- The Ethernet controller: Intel Corporation 82574L
              Gigabit Network Connection.</div>
          </div>
          <div><br>
          </div>
          <div>@Marcus, <br>
          </div>
          <div>good thing that the scheduler in each block handles that
            correctly. I'll focus on the network setup then.</div>
          <div><br>
          </div>
          <div>@Sam, <br>
          </div>
          <div>it seems reasonable to think that the source of error is
            the poking timeout, being the misalignment the aftermath.</div>
          <div>When you say flow controls, do you mean the ones handled
            by the UHD fw functions? I see a couple of D's (packet
            drops) right before the misalignment error, after the UHD
            raises the last poking exception. But maybe this is just the
            natural behavior- to drop misaligned packets before either
            getting an alignment or timing out and rising the exception.</div>
          <div><br>
          </div>
          <div>"<i>Drop the sample rate (what is it, by the way?) and
              see if there's a threshold where things start working [3]</i>":</div>
          <div>Should I drop the samples below 1Msps/2Msps? I think
            these are pretty low and having lower sampling rates would
            rise new problems. I can go ahead and try it if you still
            thing this is the issue.<br>
          </div>
          <div>"<i>Keep the original sample rate and try removing a
              radio or two from the system. Does this help things?</i>"<i>:</i></div>
          <div>- 4RX/1TX with simplistic flowgraph (usrp_source
            connected to file_sinks and analog signal connected to
            usrp_sink): OK.</div>
          <div>- 6RX/1TX with simplistic flowgraph (usrp_source
            connected to file_sinks and analog signal connected to
            usrp_sink): NOK (error described previously).</div>
          <div>- 3RX/1TX with my DSP blocks: OK.</div>
          <div>- 4RX/1TX with my DSP blocks: NOK (error described
            previously).</div>
          <div><br>
          </div>
          <div>
            <div>
              <div>Regarding an example, I could not find one that sets
                up a usrp_source AND a usrp_sink, in the folder
                {gr_prefix}/gr-uhd/examples/. I created a simplistic
                python flowgraph that results in the poking and
                misalignment issue, attached in this email. For
                instance, the 6x1 connections would map to the input
                argumments --tx_channels 1 --rx_channels 6.<br>
              </div>
              <div><br>
              </div>
              <div>Thanks a lot for your time and I hope to hear back
                from you soon.</div>
              <div><br>
              </div>
              <div>Best,<br>
              </div>
              <div>Carlos<br>
              </div>
            </div>
          </div>
          <div><br>
          </div>
        </div>
        <br>
      </div>
    </blockquote>
    I'll note that some members of the 82574L family of controllers are
    known to unnecessarily drop packets *particularly at
    unexpectedly-low flow<br>
      rates*.<br>
    <br>
    This may or may not be contributing to your problem.<br>
    <br>
    <br>
  </body>
</html>

--------------030700030505020005000404--


--===============0333632142744215072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0333632142744215072==--

