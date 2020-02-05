Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B17153AA7
	for <lists+usrp-users@lfdr.de>; Wed,  5 Feb 2020 23:05:57 +0100 (CET)
Received: from [::1] (port=46326 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izSnz-00029t-SI; Wed, 05 Feb 2020 17:05:55 -0500
Received: from mail-qt1-f174.google.com ([209.85.160.174]:42068)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1izSnv-00020R-JT
 for usrp-users@lists.ettus.com; Wed, 05 Feb 2020 17:05:51 -0500
Received: by mail-qt1-f174.google.com with SMTP id j5so2873157qtq.9
 for <usrp-users@lists.ettus.com>; Wed, 05 Feb 2020 14:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=UjEwHSumcMVpycErdiLtYlFLR/ip0PLRxebAPrjvHuU=;
 b=sHWwt+ZWtXVUwFVpXZ2mA2fuSiJRChjgb/BPfaP2g0VnqfZI2pMfshBNYq8IpHT06C
 4X9TjXGzBZzkwkMqX3F8VhjOiTTH+PFjqoYuCP44ZvET2xwoK9qqV0MYxHyzuRlQEAc/
 XIgXLGBL7ulXQ/gZr74YVdYd093dkIbc9POu0uSfCek4Ozp42Q0iWnR7R0ANuHHEZ068
 Tw4TdRK7zrir+fwdGyf9B+XKc2Jurdf5Ytwtjv45qnilmtRuy5TWxVW4dsMr89X9RaMY
 Dz80yT3vo8XesNwlCZT6uKk6ktIQrLd7z+O1mgF3kBN11CnTa2kK/LXgMkDbVNfH1uoU
 3PeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=UjEwHSumcMVpycErdiLtYlFLR/ip0PLRxebAPrjvHuU=;
 b=GqwqdD+6H75HkVENbguumxd6IisteUqg1VprCcar4awmhiQwjbCz3MFqmmJjjxd+K2
 d9tbzuExsdAgxQBkCdNNOB+brxrGbxuWFK2GPEQTaYWQ+Lqt7Empa755U3XalbAq2v6U
 d7Z0x1T3mFfEONiJkZAnBDP2fq0Wh2HLf5QVNhwmpIyqU2bSSglMADUVxxZADOLsy98W
 bDk3gnqXQLPHx/ofmQa75iLx5kroTtLeC4y98cw1qUjFC0ZUdH858Ga9sguOkcvv+5jQ
 OX0oIyjWQKUcXjnrEvxAQff3KEtlyrR6C9CRVAjPBJwaLKiuSSqgr0jLHre2kgWuXjWd
 Onjw==
X-Gm-Message-State: APjAAAWqdmu+0MCxflHMoqbc6dOjJN696PZijSKUBb/pTRDPsPMiHROL
 r9IR/J4DyIexKGdy27oBpWguK6JI
X-Google-Smtp-Source: APXvYqxL62R/4G+DHSBaRMcmGmFb8U4aXni8VP5SePyNQn0cHoetOOYJEFIbMtfPwIRPtZaw2uM2BA==
X-Received: by 2002:ac8:108:: with SMTP id e8mr35718268qtg.101.1580940310895; 
 Wed, 05 Feb 2020 14:05:10 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id x8sm474274qki.60.2020.02.05.14.05.10
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Feb 2020 14:05:10 -0800 (PST)
Message-ID: <5E3B3C15.50004@gmail.com>
Date: Wed, 05 Feb 2020 17:05:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.52.1580835604.21324.usrp-users_lists.ettus.com@lists.ettus.com>
 <CANgrtSX+XF7_pR_L9tD_YfcHXfMeNxhbV=pdDyjnznyaNOm-OQ@mail.gmail.com>
In-Reply-To: <CANgrtSX+XF7_pR_L9tD_YfcHXfMeNxhbV=pdDyjnznyaNOm-OQ@mail.gmail.com>
Subject: Re: [USRP-users] USRP filter delay
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
Content-Type: multipart/mixed; boundary="===============3812017173072930095=="
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
--===============3812017173072930095==
Content-Type: multipart/alternative;
 boundary="------------020303010306000201070309"

This is a multi-part message in MIME format.
--------------020303010306000201070309
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2020 04:05 PM, YENDstudio . via USRP-users wrote:
>   Hi Markus,
>
> Yes, I am using a timed-command. The loopback delay is about 50 
> samples. Checking from the UHD API, I can see that there are three 
> digital filters (FIR_1,HB_1,2,3) enabled. The FIR filter alone has 128 
> taps, and the group delay would exceed what I measured. I am now 
> suspecting that the timestamps are taken at the ADC/DAC rather than at 
> the TX/RX controller (before DUC and after DDC), or the group delay 
> introduced by the digital filters has been compensated. In this case, 
> the loopback delay I measured only shows only the Analog filters' 
> delay which can be predicted.
>
> I will check AD9361's datasheet but I am still unsure of how the 
> timestamps are interpreted; whether the DUC/DDC filter delay is taken 
> into consideration. Otherwise, even while using a GPS PPS trigger, 
> there would be an offset between the start of the TX signal (measured 
> at the antenna) and the actual GPS time. Personally, it would make 
> sense to compensate for DDC/DUC delays by the UHD driver/firmware 
> based on the selected digital filters and the interpolation & 
> decimation factors.
>
>
>
My understanding is that timing on the B200 is referred to the host 
transport stream, and NOT after the DUC/DDC filters.  Which means that
   for any given master-clock/host-sample-rate configuration, it would 
need to be characterized by the end user.

There have been improvements in this regard with other hardware (X3xx, 
for example), but I'm about 70% certain that the timing on the
   B200 is relative to the host transport as it enters/leaves the DSP chain.


>
>
>
>     ---------- Forwarded message ----------
>     From: "Marcus D. Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Cc:
>     Bcc:
>     Date: Mon, 03 Feb 2020 12:40:48 -0500
>     Subject: Re: [USRP-users] USRP filter delay
>     On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:
>     > Hi,
>     >
>     > I want to know the actual timestamp of TX and RX signals at the RF
>     > antenna. For this I have add/subtract the group delay introduced by
>     > digital filters in the TX and the RX paths from the UHD timestamp.
>     > Through loopback test, I am able to calculate the aggregate
>     delay, but
>     > cannot know the TX delay and the RX delay separately. The UHD
>     driver
>     > has APIs to get the list of filters used in the signal paths.
>     But my
>     > calculated values do not match with the loopback delay I measured.
>     > Could someone help me with this? I am using USRPB200 set with 30.72
>     > MHz master clock rate and 1.92 MHz sampling rate.
>     >
>     > Regards!
>     >
>     >
>     So, you use a timed transmit sequence, or you just note the time the
>     samples left your application?  Latency measured through the entire
>        stack will be MUCH larger, and variable, than if measured using a
>     timed-command transmit sequence.
>
>     Quite apart from the analog delay that Nick has already mentioned,
>     filter-delay will be "shared" between filters in the FPGA, and
>     filters
>     in the
>        AD9361 chip--there's a kind of "shared" DSP going on there.  The
>     AD9361 datasheet might be a fruitful place to look at DUC/DDC filter
>        latencies within the chip.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------020303010306000201070309
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/04/2020 04:05 PM, YENDstudio .
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANgrtSX+XF7_pR_L9tD_YfcHXfMeNxhbV=pdDyjnznyaNOm-OQ@mail.gmail.com"
      type="cite">
      <div dir="auto">
        <div class="gmail_quote" dir="auto">
          <div dir="ltr" class="gmail_attr">  Hi Markus,</div>
          <div dir="ltr" class="gmail_attr"><br>
          </div>
          <div dir="ltr" class="gmail_attr">Yes, I am using a
            timed-command. The loopback delay is about 50 samples.
            Checking from the UHD API, I can see that there are three
            digital filters (FIR_1,HB_1,2,3) enabled. The FIR filter
            alone has 128 taps, and the group delay would exceed what I
            measured. I am now suspecting that the timestamps are taken
            at the ADC/DAC rather than at the TX/RX controller (before
            DUC and after DDC), or the group delay introduced by the
            digital filters has been compensated. In this case, the
            loopback delay I measured only shows only the Analog
            filters' delay which can be predicted.</div>
          <div dir="ltr" class="gmail_attr"><br>
          </div>
          <div dir="ltr" class="gmail_attr">I will check <span
              style="font-family:sans-serif">AD9361's datasheet but I am
              still unsure of how the timestamps are interpreted;
              whether the DUC/DDC filter delay is taken into
              consideration. Otherwise, even while using a GPS PPS
              trigger, there would be an offset between the start of the
              TX signal (measured at the antenna) and the actual GPS
              time. Personally, it would make sense to compensate for
              DDC/DUC delays by the UHD driver/firmware based on the
              selected digital filters and the interpolation &amp;
              decimation factors.</span></div>
          <div dir="ltr" class="gmail_attr"><span
              style="font-family:sans-serif"><br>
            </span></div>
          <div dir="ltr" class="gmail_attr"><span
              style="font-family:sans-serif"><br>
            </span></div>
          <div dir="ltr" class="gmail_attr"><br>
          </div>
        </div>
      </div>
    </blockquote>
    My understanding is that timing on the B200 is referred to the host
    transport stream, and NOT after the DUC/DDC filters.  Which means
    that<br>
      for any given master-clock/host-sample-rate configuration, it
    would need to be characterized by the end user.<br>
    <br>
    There have been improvements in this regard with other hardware
    (X3xx, for example), but I'm about 70% certain that the timing on
    the<br>
      B200 is relative to the host transport as it enters/leaves the DSP
    chain.<br>
    <br>
    <br>
    <blockquote
cite="mid:CANgrtSX+XF7_pR_L9tD_YfcHXfMeNxhbV=pdDyjnznyaNOm-OQ@mail.gmail.com"
      type="cite">
      <div dir="auto">
        <div class="gmail_quote" dir="auto">
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <br>
            <br>
            <br>
            ---------- Forwarded message ----------<br>
            From: "Marcus D. Leech" &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com" target="_blank"
              rel="noreferrer">patchvonbraun@gmail.com</a>&gt;<br>
            To: <a moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com" target="_blank"
              rel="noreferrer">usrp-users@lists.ettus.com</a><br>
            Cc: <br>
            Bcc: <br>
            Date: Mon, 03 Feb 2020 12:40:48 -0500<br>
            Subject: Re: [USRP-users] USRP filter delay<br>
            On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:<br>
            &gt; Hi,<br>
            &gt;<br>
            &gt; I want to know the actual timestamp of TX and RX
            signals at the RF <br>
            &gt; antenna. For this I have add/subtract the group delay
            introduced by <br>
            &gt; digital filters in the TX and the RX paths from the UHD
            timestamp. <br>
            &gt; Through loopback test, I am able to calculate the
            aggregate delay, but <br>
            &gt; cannot know the TX delay and the RX delay separately.
            The UHD driver <br>
            &gt; has APIs to get the list of filters used in the signal
            paths. But my <br>
            &gt; calculated values do not match with the loopback delay
            I measured. <br>
            &gt; Could someone help me with this? I am using USRPB200
            set with 30.72 <br>
            &gt; MHz master clock rate and 1.92 MHz sampling rate.<br>
            &gt;<br>
            &gt; Regards!<br>
            &gt;<br>
            &gt;<br>
            So, you use a timed transmit sequence, or you just note the
            time the <br>
            samples left your application?  Latency measured through the
            entire<br>
               stack will be MUCH larger, and variable, than if measured
            using a <br>
            timed-command transmit sequence.<br>
            <br>
            Quite apart from the analog delay that Nick has already
            mentioned, <br>
            filter-delay will be "shared" between filters in the FPGA,
            and filters <br>
            in the<br>
               AD9361 chip--there's a kind of "shared" DSP going on
            there.  The <br>
            AD9361 datasheet might be a fruitful place to look at
            DUC/DDC filter<br>
               latencies within the chip.<br>
            <br>
            <br>
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

--------------020303010306000201070309--


--===============3812017173072930095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3812017173072930095==--

