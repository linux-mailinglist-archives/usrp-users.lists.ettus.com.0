Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB7127DD53
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 02:18:12 +0200 (CEST)
Received: from [::1] (port=57558 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNPow-0002h6-0u; Tue, 29 Sep 2020 20:18:10 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:40743)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kNPos-0002Yf-Tb
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 20:18:06 -0400
Received: by mail-qt1-f172.google.com with SMTP id v54so5233830qtj.7
 for <usrp-users@lists.ettus.com>; Tue, 29 Sep 2020 17:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=C7yFDwHf6xri1l67KumTikl6LidKnp1Q/YcphpOi5pk=;
 b=kfV32oeetwn3OQqGo5+1sQUjzndpZVngPxK0jBDDKqQkx2DGPZsq50A62UmvRuayi1
 H+j0htJpbcebnOzVQn4eiYSaNbbsl9fKfYjcF/6ydvDtZb1I4NRoRNU2aGIAVbqTxrWc
 oaO1lE1EA6sAzkCJ5cZOP2XCwcRIN4tZUylGDetYKmWTowYmDEZe4G2wlDCpdq9Eo79b
 x2A4HWLRydIgM7tznb5OQnAanNMQJJZ6uDpN/l7hKFZcs2Hggtt0bEglpbtoXeGYH13q
 w+Aji8GT9fmH00mFIubxT/q/W3etGOhxDhcYyyPdug5ULMD65O55yyRWVc2OGqtzKCj+
 ijNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=C7yFDwHf6xri1l67KumTikl6LidKnp1Q/YcphpOi5pk=;
 b=AJs6dlrNG1tKrLzCene5msh4ZLJOcgCcmQjVRQDUtJ00rKTOARcEQkiTImtEdPGWnh
 yVReKq29uyrfFRtrTnhQOye3d8d0/wyL/ZThyP21Uecwhd9i4S+JrYh5g8lG29zM/ttZ
 ud6KuSrnuvsMnua5BSeTaWdH7jiFr3EfhlHu+vics8HiUaF4nc6yxBiNN92JmcP+FQ8G
 GwKPTWsV5bMGrvLLDepi3hzJA7HfjBcV8IkckcbJffa6VUXaFyx19jqXHVKCninc7pCp
 0DkDiPT4NFUyImocftMmJgTznyf4RsJqWwRiAaUkUufpmhP1xGIqIIdawxRGyGmzjGfl
 2eoA==
X-Gm-Message-State: AOAM531Dz8/qWbqBebhsqJdL3I+fLoVeeeZ8CjAkyU8V+Y6vPRq1gLsS
 4yTSnm4zRVc+znRW14bMbtol8A7IqUHJJg==
X-Google-Smtp-Source: ABdhPJzU5KzMGcmgGgtRHSlHOA2g8Ty115/T7OWjBsk4vRgyF6UHe0WWK0fzkLsTR4e2pYJDEK2XpA==
X-Received: by 2002:aed:35cf:: with SMTP id d15mr6059522qte.293.1601425045983; 
 Tue, 29 Sep 2020 17:17:25 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d123sm81753qkg.71.2020.09.29.17.17.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Sep 2020 17:17:25 -0700 (PDT)
Message-ID: <5F73CE94.9040306@gmail.com>
Date: Tue, 29 Sep 2020 20:17:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com>
In-Reply-To: <DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com>
Subject: Re: [USRP-users] Raspberry Pi 4B and B205mini
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
Content-Type: multipart/mixed; boundary="===============4461115230736123542=="
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
--===============4461115230736123542==
Content-Type: multipart/alternative;
 boundary="------------020402040901090009050507"

This is a multi-part message in MIME format.
--------------020402040901090009050507
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/29/2020 08:00 PM, Arthur Lobo via USRP-users wrote:
> Hi All:
>
> I installed UHD 4.0 and GRC 3.9 on a Raspberry Pi 4B following the 
> procedure at:
> https://wiki.gnuradio.org/index.php/InstallingGRFromSource_on_Raspberry_Pi
> However I did not specify DNEON_SIMD_ENABLE=OFF in the command cmake 
> -DNEON_SIMD_ENABLE=OFF -DCMAKE_INSTALL_PREFIX=/usr/local ../
> while building UHD.
> I also set the CPU Governor and Thread Priority Scheduling according to:
> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>
> Testing USRP Source->Frequency Sink in GRC at 4 MSPS with a B205mini 
> on a headless RPI (X forwarding to
> a NUC7i7BNH PC) over USB3 shows an update rate (spectrum refresh rate 
> on the display) of once per second and at 10 MSPS freezes.
>
> Running benchmark_rate at 20 MSPS will cause ERROR_CODE_TIMEOUT messages.
>
> I also overclocked the RPi4B to 2.2 GHz with the same result.
>
> Any suggestions to get higher sampling rates with the RPi4B-B205mini 
> setup?
>
> Thanks.
>
> Arthur
>
You could try adding:

num_recv_frames=128

to your device arguments in the USRP source.

But also, "headless" display over ethernet is often a serious bottleneck.

What happens if you just use "uhd_fft" rather than your own flow-graph?

What does "benchmark_rate" have to say about how fast you can actually 
move samples into the RPI4?



--------------020402040901090009050507
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/29/2020 08:00 PM, Arthur Lobo via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi All:
        <div><br>
        </div>
        <div>I installed UHD 4.0 and GRC 3.9 on a Raspberry Pi 4B
          following the procedure at:</div>
        <div><a class="moz-txt-link-freetext" href="https://wiki.gnuradio.org/index.php/InstallingGRFromSource_on_Raspberry_Pi">https://wiki.gnuradio.org/index.php/InstallingGRFromSource_on_Raspberry_Pi</a></div>
        <div>However I did not specify DNEON_SIMD_ENABLE=OFF in the
          command cmake -DNEON_SIMD_ENABLE=OFF
          -DCMAKE_INSTALL_PREFIX=/usr/local ../</div>
        <div>while building UHD.</div>
        <div>I also set the CPU Governor and Thread Priority Scheduling
          according to:</div>
        <div><a class="moz-txt-link-freetext" href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a></div>
        <div><br>
        </div>
        <div>Testing USRP Source-&gt;Frequency Sink in GRC at 4 MSPS
          with a B205mini on a headless RPI (X forwarding to</div>
        <div>a NUC7i7BNH PC) over USB3 shows an update rate (spectrum
          refresh rate on the display) of once per second and at 10 MSPS
          freezes.</div>
        <div><br>
        </div>
        <div>Running benchmark_rate at 20 MSPS will cause
          ERROR_CODE_TIMEOUT messages.</div>
        <div><br>
        </div>
        <div>I also overclocked the RPi4B to 2.2 GHz with the same
          result.</div>
        <div><br>
        </div>
        <div>Any suggestions to get higher sampling rates with the
          RPi4B-B205mini setup?</div>
        <div><br>
        </div>
        Thanks.</div>
      <div style="font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
        Arthur<br>
      </div>
      <br>
    </blockquote>
    You could try adding:<br>
    <br>
    num_recv_frames=128<br>
    <br>
    to your device arguments in the USRP source.<br>
    <br>
    But also, "headless" display over ethernet is often a serious
    bottleneck.<br>
    <br>
    What happens if you just use "uhd_fft" rather than your own
    flow-graph?<br>
    <br>
    What does "benchmark_rate" have to say about how fast you can
    actually move samples into the RPI4?<br>
    <br>
    <br>
  </body>
</html>

--------------020402040901090009050507--


--===============4461115230736123542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4461115230736123542==--

