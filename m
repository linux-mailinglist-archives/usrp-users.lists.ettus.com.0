Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0F6E27C7
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 03:37:38 +0200 (CEST)
Received: from [::1] (port=47746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNS4F-0003l3-8m; Wed, 23 Oct 2019 21:37:35 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:42553)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iNS4B-0003gp-1o
 for usrp-users@lists.ettus.com; Wed, 23 Oct 2019 21:37:31 -0400
Received: by mail-qt1-f176.google.com with SMTP id w14so35271382qto.9
 for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2019 18:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=zsllab0bwvaBm7jsURcR6CI4ilm855jSewni6Oiocxk=;
 b=K3sl2MNLQzKjkHWrVg0TKa7nsQtGgVyKT+eQCVA2Rtj9NYikxAO7gqLv4KPTmffY5g
 23B1lcABnZljVJ8Vi0ll3MnczqliveCSc4axKRI7oDiGW4GBvRz5cLYr9fWGpt7JYADQ
 qs7jMNiT6VvewcrbvGWApVOeLkxAqSPDwmBWvKJj1V834GHLJSG5SeNpj6VZJjZQdSJr
 AJgas56MxhndjIKIbXFTsP1StUMrDdoBIAehMnuSFL6iyY5Af+fyAsV/OOkwSrYYYmwJ
 QKktRgd/NX1/O1r94/hXmNQ2eeC18iooTC7uT9FRG4DmkDCUlsS87D8v985I9yjGfhaG
 nhpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=zsllab0bwvaBm7jsURcR6CI4ilm855jSewni6Oiocxk=;
 b=scnMA0N5IjHLDnH8GJypmkMZAZbCE+IKRjZX1cLWQImUaKfmDyrMSfT/e++VqnsZPW
 mLAoAUPf80eHteWCwBcOV5dt+HkzUFinileNeFNTRYVduZCxruoMQ8iq8NMurvcuyQ6n
 eB5XGiuRhof0SrN0uHjpPymJ54ypsjOfoGzRS9KLigVeG9M5mO1L6bUlsCpSMUolN7Gs
 zdZ3u8LPaWmgFzCjgoW8QtUQDtOzkyrSllQzboNG7rNzXKw9iNaHVkIPad1pBV7Zdwz1
 Zyv1LCx4aipa19AO3qFwMZ2LWvp6YOlN4PWVUYr7KPBteviuNNT28/kTenF1dE9pEt06
 tthA==
X-Gm-Message-State: APjAAAXKa1chQQcEcW56KD9GSHV6Xs1nAIhygur8RsfwRwBHOivG9Ayz
 rsMnPLhxyA169nOJVS0T5Sl6mgn8RTw=
X-Google-Smtp-Source: APXvYqwVrkJdiG4y9ab9CK4vAv3eKGOhR9WaI9RpXXyBp8avQxGR3uTsdW7dvAVCqNskKBlvXQwb2A==
X-Received: by 2002:ac8:1244:: with SMTP id g4mr1728269qtj.3.1571881010067;
 Wed, 23 Oct 2019 18:36:50 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id j16sm9730664qka.48.2019.10.23.18.36.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 18:36:49 -0700 (PDT)
Message-ID: <5DB10030.9090108@gmail.com>
Date: Wed, 23 Oct 2019 21:36:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAEJWbW022J-UCzT+hs-dTbUGSXTSzQDMkC27tHwsk5rL1BnsUg@mail.gmail.com>
 <CANf970Z3G9r1Ga9EeXnTM1tGHanOzmPLcnkmY7M=9_WoUrkMbg@mail.gmail.com>
In-Reply-To: <CANf970Z3G9r1Ga9EeXnTM1tGHanOzmPLcnkmY7M=9_WoUrkMbg@mail.gmail.com>
Subject: Re: [USRP-users] TwinRX and UBX under same multiUSRP object on X310s
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
Content-Type: multipart/mixed; boundary="===============4909230992990083121=="
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
--===============4909230992990083121==
Content-Type: multipart/alternative;
 boundary="------------070603030407040404090409"

This is a multi-part message in MIME format.
--------------070603030407040404090409
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/2019 03:56 PM, Sam Reiter via USRP-users wrote:
> Carlos,
>
> You're correct that currently we can't currently use a TwinRX and a 
> UBX in the same chassis without running into sample rate / tick rate 
> conflicts. I would guess that this would extend to a chassis with UBX 
> boards and a chassis with TwinRX boards if they're encapsulated in the 
> same multi-usrp object AND streamer. I haven't tried it myself, but I 
> have a feeling that you might be able to run things correctly if you 
> split each X310 out into its own streamer (benchmark rate uses a 
> single streamer).
>
> -Sam
Indeed, one of the inherent properties of a multi_usrp object is that it 
does sample-timestamp alignment, which is not possible when the
   samples in a stream have timestamps that originate in a different 
timestamp tick-rate.


>
> On Tue, Oct 22, 2019 at 9:33 AM Carlos Bocanegra via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi all,
>
>     Can we have daughterboards TwinRX and UBX working under the same
>     multiUSRP object? For instance, two TwinRX attached to one USRP
>     and two UBX attached to another USRP creating 6 synchronized and
>     phased aligned receiver channels?
>
>     The discussion below stated that the sampling rate mismatch
>     (100Msps for the TwinRX and 200Msps for the UBX) do not allow for
>     simultaneous operation under the same USRP. But what about
>     different USRPs?
>     https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/msg00021.html
>
>     If I try running the benchmark_rate having two TwinRX on the
>     address 70.2 and two UBX on the 60.2 like:
>     />> sudo /usr/local/lib/uhd/examples/benchmark_rate --args
>     "addr0=192.168.70.2,addr1=192.168.60.2" --rx_channels 0,1,2,3
>     --rx_subdev "A:0 B:0" --rx_rate 1e6 --ref external --pps external/
>     I get the error:/
>     /
>     /RuntimeError: Conflicting tick rates: One neighbouring block
>     specifies 2e+08 MHz, another 1e+08 MHz./
>     /
>     /
>     I also tried changing the master clock rate to see if we can match
>     them, but then I get that the X310 can't change their master clock
>     rate at runtime, even when I set these parameters as "stream_args"
>     when I create the usrp_source object.
>
>     Thanks,
>     Carlos
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


--------------070603030407040404090409
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/23/2019 03:56 PM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANf970Z3G9r1Ga9EeXnTM1tGHanOzmPLcnkmY7M=9_WoUrkMbg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Carlos,</div>
        <div><br>
        </div>
        <div>You're correct that currently we can't currently use a
          TwinRX and a UBX in the same chassis without running into
          sample rate / tick rate conflicts. I would guess that this
          would extend to a chassis with UBX boards and a chassis with
          TwinRX boards if they're encapsulated in the same multi-usrp
          object AND streamer. I haven't tried it myself, but I have a
          feeling that you might be able to run things correctly if you
          split each X310 out into its own streamer (benchmark rate uses
          a single streamer).</div>
        <div><br>
        </div>
        <div>-Sam<br>
        </div>
      </div>
    </blockquote>
    Indeed, one of the inherent properties of a multi_usrp object is
    that it does sample-timestamp alignment, which is not possible when
    the<br>
      samples in a stream have timestamps that originate in a different
    timestamp tick-rate.<br>
    <br>
    <br>
    <blockquote
cite="mid:CANf970Z3G9r1Ga9EeXnTM1tGHanOzmPLcnkmY7M=9_WoUrkMbg@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Oct 22, 2019 at 9:33
          AM Carlos Bocanegra via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div>Hi all,</div>
            <div><br>
            </div>
            <div>Can we have daughterboards TwinRX and UBX working under
              the same multiUSRP object? For instance, two TwinRX
              attached to one USRP and two UBX attached to another USRP
              creating 6 synchronized and phased aligned receiver
              channels?<br>
            </div>
            <div><br>
            </div>
            <div>The discussion below stated that the sampling rate
              mismatch (100Msps for the TwinRX and 200Msps for the UBX)
              do not allow for simultaneous operation under the same
              USRP. But what about different USRPs?<br>
            </div>
            <div><a moz-do-not-send="true"
href="https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/msg00021.html"
                target="_blank">https://lists.gnu.org/archive/html/discuss-gnuradio/2017-07/msg00021.html</a></div>
            <div><br>
            </div>
            <div>If I try running the benchmark_rate having two TwinRX
              on the address 70.2 and two UBX on the 60.2 like:<br>
            </div>
            <div><i>&gt;&gt; sudo
                /usr/local/lib/uhd/examples/benchmark_rate --args
                "addr0=192.168.70.2,addr1=192.168.60.2" --rx_channels
                0,1,2,3 --rx_subdev "A:0 B:0" --rx_rate 1e6 --ref
                external --pps external</i></div>
            <div>I get the error:<i><br>
              </i></div>
            <div><i>RuntimeError: Conflicting tick rates: One
                neighbouring block specifies 2e+08 MHz, another 1e+08
                MHz.</i></div>
            <div><i><br>
              </i></div>
            <div>I also tried changing the master clock rate to see if
              we can match them, but then I get that the X310 can't
              change their master clock rate at runtime, even when I set
              these parameters as "stream_args" when I create the
              usrp_source object.</div>
            <div><br>
            </div>
            <div>Thanks,</div>
            <div>Carlos<br>
            </div>
            <div><br>
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

--------------070603030407040404090409--


--===============4909230992990083121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4909230992990083121==--

