Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 880DA78F7D
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2019 17:37:28 +0200 (CEST)
Received: from [::1] (port=59550 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hs7iI-0003Ki-At; Mon, 29 Jul 2019 11:37:26 -0400
Received: from mail-ua1-f44.google.com ([209.85.222.44]:33302)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hs7iF-0003FM-Nq
 for usrp-users@lists.ettus.com; Mon, 29 Jul 2019 11:37:23 -0400
Received: by mail-ua1-f44.google.com with SMTP id g11so1565162uak.0
 for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2019 08:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=RfZI3Nra9D2kXGn6939SoxdzbAXDhzVPcWpetmEBmxk=;
 b=gxDX22g7zw9d52WHYrEgmIJ7CPcPXJnGyHpLjsOkLnhpPXRz7Xlj+ZOkwR6Zkqt4F0
 TRBBIX6ae7WEv0eXhTQXeluKwCXBmWdhc9euDabbhW4rNi+ysWO/63wk9yYNUhnpu1wm
 +VIaBNKVMniU0NhN7Z09EhbrM+FuT9CA+Z+o9hsBTVSfkZgCqR+RGOxmJ6Z/d5jxPzKN
 scPxzq75ejb+F8y79vrY9DDsq05joeHg7XYNCx7caeCH130H7nrkWOGCUvLeWvGuDFgK
 SI4EG89jlhVIRZ+yp6RnA9+rpP0iT0tswIrkxGILlLvLQD964TC5Gmi/4ESlqWo3eiia
 yvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=RfZI3Nra9D2kXGn6939SoxdzbAXDhzVPcWpetmEBmxk=;
 b=SucisiC+Un4vZZBzMcnHkECKCIVeFD0rEc7ulzC58o11Y2Mz3jfiik1dBdKaWl3yKy
 zNP1UQiHSXUlsjmvBxV2EEXHy1388OYY3av5ocUdLU+pQQdGECYJk9gIaWJEC/2AyZpg
 cl87PburlikHfTebhuoiMOaPZFI/Mcs2Mmrith2hdNGm2+j+YxDY2hUb7zbzh6HAFfiy
 PbrnhNBbWMejmfzDBdZX044RwhxRSdioliOQlOMPuTk8fIBW+4yYnW8IbeGkGDbl5wDD
 EVFWaNRqSPjFIF2ZiN0lQo1TECRUpyLWDcMWiNWdH7Ami2Er65pqPQ409zfictCXFPvN
 0QcQ==
X-Gm-Message-State: APjAAAXxq62XDhIKbCbGHQlRTvJYQKcZ7RuC4R/mU/dlShcOSjFFuz+V
 GOzOUb41TNmC+yWfkc32jEZxgkEB
X-Google-Smtp-Source: APXvYqysUW5fiXt+jKju93NWXgwMGGdikoQdq1UUxBdz+hPydyUFSCKLZxRVjI5NcwkHhu1xEeq8Eg==
X-Received: by 2002:ab0:470e:: with SMTP id h14mr43199133uac.98.1564414602940; 
 Mon, 29 Jul 2019 08:36:42 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id w9sm26942679vkd.41.2019.07.29.08.36.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 08:36:42 -0700 (PDT)
Message-ID: <5D3F1289.2020403@gmail.com>
Date: Mon, 29 Jul 2019 11:36:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1564399837020.98564@supracon.com>
In-Reply-To: <1564399837020.98564@supracon.com>
Subject: Re: [USRP-users] X310 slow with gnuradio
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
Content-Type: multipart/mixed; boundary="===============0599710423742626438=="
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
--===============0599710423742626438==
Content-Type: multipart/alternative;
 boundary="------------070809080704040805030007"

This is a multi-part message in MIME format.
--------------070809080704040805030007
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/29/2019 07:30 AM, Erik Heinz via USRP-users wrote:
>
> Hi,
>
>
> I am getting lots of underflow errors when sending with gnuradio to an 
> X310 at sampling rates of 50 MSps and higher. The flowchart is as 
> simple as possible: a signal source and a
>
> "UHD: USRP Sink" block. When sending and receiving at the same 
> time, the performance is even worse.
>
>
> The X310 is connected to the PC by 10G ethernet. Using the UHD example 
> programs benchmark_rate, tx_waveforms, txrx_loopback_to_file 
> etc., a sampling rate of 200 MSps full duplex is no problem at all. So 
> it is not a problem of the UHD driver and the network setup should 
> be OK as well.
>
>
> The processor is an Intel core i3-7100 @3.9GHz.  A gnuradio flowchart 
> with a signal source, a throttle block and a file sink works at 50 
> MSps sampling rate and more, so the processor speed should not be a 
> problem either. The gnuradio version is 3.7.11 which is the one 
> currently distributed for Ubuntu buster.
>
>
> Any ideas? Could an update to a more recent gnuradio version help?
>
>
> Best regards,
>
> Erik
>
>
>
The file-sink version is NOT a good comparison, since the filesystem 
doesn't need samples to "arrive on time", so there's no concept of an
   "under-run".

The signal source in Gnu Radio is not super-speedy, particularly if it's 
generating a sin or cos function.

Also, the core i3-7100, despite the high clock rate, doesn't perform 
nearly as well as the i7 series, which is what most people choose for doing
   serious high-speed DSP work with Gnu Radio.



--------------070809080704040805030007
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/29/2019 07:30 AM, Erik Heinz via
      USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1564399837020.98564@supracon.com" type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none"><!--P{margin-top:0;margin-bottom:0;} --></style>
      <p>Hi,</p>
      <p><br>
      </p>
      <p>I am getting lots of underflow errors when sending with
        gnuradio to an X310 at sampling rates of 50 MSps and higher. The
        flowchart is as simple as possible: a signal source and a </p>
      <p>"UHD: USRP Sink" block. When sending and receiving at the same
        time, the performance is even worse.
      </p>
      <p><br>
      </p>
      <p>The X310 is connected to the PC by 10G ethernet. Using the UHD
        example programs benchmark_rate, tx_waveforms,
        txrx_loopback_to_file etc., a sampling rate of 200 MSps full
        duplex is no problem at all. So it is not a problem of the UHD
        driver and the network setup should be OK as well. </p>
      <p><br>
      </p>
      <p>The processor is an Intel core i3-7100 @3.9GHz.  A gnuradio
        flowchart with a signal source, a throttle block and a file sink
        works at 50 MSps sampling rate and more, so the processor speed
        should not be a problem either. The gnuradio version is 3.7.11
        which is the one currently distributed for Ubuntu buster.<br>
      </p>
      <p><br>
      </p>
      <p>Any ideas? Could an update to a more recent gnuradio version
        help?</p>
      <p><br>
      </p>
      <p>Best regards,</p>
      <p>Erik<br>
      </p>
      <p><br>
      </p>
      <br>
    </blockquote>
    The file-sink version is NOT a good comparison, since the filesystem
    doesn't need samples to "arrive on time", so there's no concept of
    an<br>
      "under-run".<br>
    <br>
    The signal source in Gnu Radio is not super-speedy, particularly if
    it's generating a sin or cos function.<br>
    <br>
    Also, the core i3-7100, despite the high clock rate, doesn't perform
    nearly as well as the i7 series, which is what most people choose
    for doing<br>
      serious high-speed DSP work with Gnu Radio.<br>
    <br>
    <br>
  </body>
</html>

--------------070809080704040805030007--


--===============0599710423742626438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0599710423742626438==--

