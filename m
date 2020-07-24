Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1E522CB87
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 18:57:14 +0200 (CEST)
Received: from [::1] (port=46024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz10R-00028k-QP; Fri, 24 Jul 2020 12:57:11 -0400
Received: from mail-qv1-f53.google.com ([209.85.219.53]:44934)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jz10N-00023K-48
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 12:57:07 -0400
Received: by mail-qv1-f53.google.com with SMTP id di5so4380872qvb.11
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 09:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=81wztF1misNNUGyoKkp/OY99n0DwGT3cp9zurDDmK4U=;
 b=SP8p8ISjwQIjOL8VFXkS/uJpbHEE3VlcI1YLE7h5MN4fDnnkOBflxaBU/XXkyc+hg3
 sUWad+VCommVliMeTjDSaEA8LD0ZFh98gNdAQ5Ul4LFg7uEKIum/CbfZX0AauTNjR3I3
 Ce217f8uk2wHZeePo2CS3c7fV8fiwLUwDI2VLpmjArLAHIswq5YL/S0hz+eAp4lUKCg3
 UiGICCCp56e0JVtVf24ugdWZXQYSCwAbvjvJu3rTvOtwGM8zG76tBnmXyGK0oobeyyZZ
 v7rquA8H/7CHxwvr87zqLMPi2UMZJatKqP7frwvVhKuLRN8eXYbs1KIixr/9MMBCK/pN
 JgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=81wztF1misNNUGyoKkp/OY99n0DwGT3cp9zurDDmK4U=;
 b=lFQDF3cfDK7Lv8pc+wsfWWV7+u89JD4neizOv46L1I2fVlxzGxYGHchNruvgbcyv+d
 VVhizbjbDESwUHOvxKq1YJ24tJKXMnmEUilImaBni9OfNkXamLeV7JEX3SbiMHgnzlsi
 mvpyB2hy2f7z+w9hsGS8HnahqFeVUthmfcu66u5GL03yEafUoiLWa1n7K/cZ7WVLGyCC
 0iR9G9QKvTYc1523bI5+dTIXUMmUINH2OgDpY3Cvk4wzqifCjseDcRZGAbybUp2SB/hj
 y967A48kfma7yR16QXnWICey0O4tK3khn1Wt6Ae+nJKwn+615uzHcMNQ12Qs8wYYMayY
 JrIA==
X-Gm-Message-State: AOAM533d0ZjYzbegb4syTiwH3Vl/AY/MW4k8xGOrUEJPDG/jDTolNDdf
 q8omjDLKTDMghg+CjHuG8cT/lUKH5aY=
X-Google-Smtp-Source: ABdhPJw7gDbEwqsqoDD61MtEukrOeDrtHsJsc0xvSGrgriS2fIcNu1vFg9mrKbxc7Ty/Rf5zrf3MLA==
X-Received: by 2002:a05:6214:1503:: with SMTP id
 e3mr882231qvy.104.1595609786274; 
 Fri, 24 Jul 2020 09:56:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id o2sm6797609qkh.102.2020.07.24.09.56.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 09:56:25 -0700 (PDT)
Message-ID: <5F1B12B6.1010705@gmail.com>
Date: Fri, 24 Jul 2020 12:56:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
 <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
 <5F1AF0FC.80106@gmail.com>
 <CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com>
In-Reply-To: <CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com>
Subject: Re: [USRP-users] tx_stream->get_max_num_samps() too low
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
Content-Type: multipart/mixed; boundary="===============6667108760450423515=="
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
--===============6667108760450423515==
Content-Type: multipart/alternative;
 boundary="------------080506020406040806090801"

This is a multi-part message in MIME format.
--------------080506020406040806090801
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/24/2020 10:51 AM, Devin Kelly via USRP-users wrote:
> I'm confused.  The documentation says SPP applies for receiving, I'm 
> transmitting.
>
> spp: (samples per packet) controls the size of RX packets. When not 
> specified, the packets are always maximum frame size. Users should 
> specify this option to request smaller than default packets, probably 
> with the intention of reducing packet latency.
>
> I also set my tx streamer to this:
>
>     // create a transmit streamer
>     uhd::stream_args_t stream_args("fc32", wire); // complex floats
>     stream_args.args["spp"] = "2000";   // Also tried 200 and 365 here
>     uhd::tx_streamer::sptr tx_stream = usrp->get_tx_stream(stream_args);
>
> Without any luck.  I also tried setting SPP to 200 and that worked, 
> tx_stream->get_max_num_samps() returned 200.  Even setting SPP to 365 
> I still got 364.
>
> $ ./examples/tx_timed_samples --args="name=node4" --nsamps 100000 
> --rate 10e6
>
> Creating the usrp device with: name=node4...
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); 
> Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [WARNING] [GPS] update_cache: Malformed GPSDO string: 
> EEPN,07116.0483,W,0.0,0.0,240720,,*28
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1291 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: UBX TX
>
> Setting TX Rate: 10.000000 Msps...
> Actual TX Rate: 10.000000 Msps...
>
> Setting device timestamp to 0...
> tx_stream->get_max_num_samps() = 364
> ...
>
> Devin
>
>
Well, I'm embarrassed :)

Yeah, looks like SPP is for RX streams.

Here's something to try.  Try setting your MTU to a let's say, 3000 
bytes, and see if that changes the behavior?  What about 4000? And so on.

There ARE NIC chips out there where the driver is happy to accept a 
large MTU request, but the hardware doesn't actually honor it.



--------------080506020406040806090801
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/24/2020 10:51 AM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I'm confused.  The documentation says SPP applies for
          receiving, I'm transmitting.</div>
        <br>
        <div style="margin-left:40px">spp: (samples per packet) controls
          the size of RX packets. When not specified, the packets are
          always maximum frame size. Users should specify this option to
          request smaller than default packets, probably with the
          intention of reducing packet latency.<br>
        </div>
        <div style="margin-left:40px"><br>
        </div>
        <div>I also set my tx streamer to this:</div>
        <div style="margin-left:40px"><br>
        </div>
        <div style="margin-left:40px"><span
            style="font-family:monospace">    // create a transmit
            streamer                                                    
                                                                       
                         <br>
                uhd::stream_args_t stream_args("fc32", wire); // complex
            floats                                                      
                                                 <br>
                stream_args.args["spp"] = "2000";   // Also tried 200
            and 365 here                                               
                                                                       
                       <br>
                uhd::tx_streamer::sptr tx_stream =
            usrp-&gt;get_tx_stream(stream_args); </span><br>
        </div>
        <div style="margin-left:40px"><br>
        </div>
        <div>Without any luck.  I also tried setting SPP to 200 and that
          worked, tx_stream-&gt;get_max_num_samps() returned 200.  Even
          setting SPP to 365 I still got 364.<br>
        </div>
        <div><br>
        </div>
        <div style="margin-left:40px"><span
            style="font-family:monospace">$ ./examples/tx_timed_samples
            --args="name=node4" --nsamps 100000 --rate 10e6 <br>
            <br>
            Creating the usrp device with: name=node4...<br>
            [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
            4.8.5-39); Boost_106900;
            UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>
            [INFO] [X300] X300 initialization sequence...<br>
            [INFO] [X300] Maximum frame size: 8000 bytes.<br>
            [INFO] [X300] Radio 1x clock: 200 MHz<br>
            [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
            0.929b<br>
            [WARNING] [GPS] update_cache: Malformed GPSDO string:
            EEPN,07116.0483,W,0.0,0.0,240720,,*28<br>
            [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
            0xF1F0D00000000000)<br>
            [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1291 MB/s)<br>
            [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
            [INFO] [0/Radio_0] Initializing block control (NOC ID:
            0x12AD100000000001)<br>
            [INFO] [0/Radio_1] Initializing block control (NOC ID:
            0x12AD100000000001)<br>
            [INFO] [0/DDC_0] Initializing block control (NOC ID:
            0xDDC0000000000000)<br>
            [INFO] [0/DDC_1] Initializing block control (NOC ID:
            0xDDC0000000000000)<br>
            [INFO] [0/DUC_0] Initializing block control (NOC ID:
            0xD0C0000000000000)<br>
            [INFO] [0/DUC_1] Initializing block control (NOC ID:
            0xD0C0000000000000)<br>
            Using Device: Single USRP:<br>
              Device: X-Series Device<br>
              Mboard 0: X310<br>
              RX Channel: 0<br>
                RX DSP: 0<br>
                RX Dboard: A<br>
                RX Subdev: UBX RX<br>
              RX Channel: 1<br>
                RX DSP: 0<br>
                RX Dboard: B<br>
                RX Subdev: UBX RX<br>
              TX Channel: 0<br>
                TX DSP: 0<br>
                TX Dboard: A<br>
                TX Subdev: UBX TX<br>
              TX Channel: 1<br>
                TX DSP: 0<br>
                TX Dboard: B<br>
                TX Subdev: UBX TX<br>
            <br>
            Setting TX Rate: 10.000000 Msps...<br>
            Actual TX Rate: 10.000000 Msps...<br>
            <br>
            Setting device timestamp to 0...<br>
            tx_stream-&gt;get_max_num_samps() = 364</span></div>
        <div style="margin-left:40px"><span
            style="font-family:monospace">...</span><br>
        </div>
        <div>
          <div>
            <div>
              <div><br>
              </div>
              <div>Devin<br>
              </div>
              <div><br>
              </div>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Well, I'm embarrassed :)<br>
    <br>
    Yeah, looks like SPP is for RX streams.<br>
    <br>
    Here's something to try.  Try setting your MTU to a let's say, 3000
    bytes, and see if that changes the behavior?  What about 4000? And
    so on.<br>
    <br>
    There ARE NIC chips out there where the driver is happy to accept a
    large MTU request, but the hardware doesn't actually honor it.<br>
    <br>
    <br>
  </body>
</html>

--------------080506020406040806090801--


--===============6667108760450423515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6667108760450423515==--

