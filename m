Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B38B20F5C
	for <lists+usrp-users@lfdr.de>; Thu, 16 May 2019 21:53:31 +0200 (CEST)
Received: from [::1] (port=53978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hRMRN-00053F-TL; Thu, 16 May 2019 15:53:21 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:41032)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hRMQq-0004v0-Kf
 for usrp-users@lists.ettus.com; Thu, 16 May 2019 15:53:18 -0400
Received: by mail-qt1-f175.google.com with SMTP id y22so5391461qtn.8
 for <usrp-users@lists.ettus.com>; Thu, 16 May 2019 12:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=WH4OcNoCgNVtoNjQUML6wpHlYgcci9IDzvTnQ72BILA=;
 b=dJg5H2eslOZhMBSj5ZOEAddxdXUo8ocPg71eNiukogmdXkI0MIrXyZ8GqV1xIihlJS
 oJ0AewOlQy3PAwIfybHEdeHjZDipKUUkgKkjn7zeYlICtrW8UWzXk2DUXdlWIR2Pcuhn
 V7AssBNeTxerQ2d2DxxPSj6hvE8H4mM5VxQUAK+KJWNJD9U6kBqVZ9OSUUp1rhW5uePU
 aS0WwXUp7GlXPd2jjQC39f5FS/hoUlEyekf29+SzuWY2DcDWhuSNxQ2q4oI5OXdOBsv/
 KlHZ9W1YWoJnA5XIL7w2M2uV0Lxjwik0rQO+1VCeqeu8qOb8SuTwreDOmkH6psuN4c1q
 ZzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=WH4OcNoCgNVtoNjQUML6wpHlYgcci9IDzvTnQ72BILA=;
 b=dxUhWhOCUDLNXWHSr68kggpCSxwApwRbTqmv15DSHCr+2hnRGqky/vca/uIhEKRFyc
 hl+XU8JCvwdNwInZH5J1cyz9ENaOavyYKwnst1Pt6WPHzNwoIYwQznt3PpfNp7jfVawn
 1OjXkOSBEmeDrx+tQpTLmDsAsg/mi/kqwj7SEWVvY0VxFMOjo6b7NsbQGEHEqp8EIVpN
 Iiu4DyvpBBtVJDpBYxChaHdRI7oKB2TMH/gA5Kge0Fjef9qUgvq9drtdkY60Ao6N8pj0
 ldtTAerS9jX1QVXFNX3IJIlEsxgQQgbGDVrWGBDg8n+bICnQ5FBcn19s07i2w1RzerkG
 epwQ==
X-Gm-Message-State: APjAAAUxxZ0aRIRbnX7XVbky7t8HT+v+gxuxIcxRIXygK1KTQMFMGpri
 GPoxxasxxnpHCS3zDOdCj3TonER/
X-Google-Smtp-Source: APXvYqwotJzPUGKJtTLGHVGJJABzlKV1NTrMedpQkxL06a1UbG1W4caUPQRPP5Cd490oBWfuqRLNvg==
X-Received: by 2002:a0c:8ae9:: with SMTP id 38mr42286195qvw.157.1558036327951; 
 Thu, 16 May 2019 12:52:07 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id u46sm4492936qtu.57.2019.05.16.12.52.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 12:52:07 -0700 (PDT)
Message-ID: <5CDDBF66.8030004@gmail.com>
Date: Thu, 16 May 2019 15:52:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <5C962B24-32A4-4F26-BE53-67D6DD7F66E7@lmco.com>
 <CAANLyubLL9ZxzhRd72jzi3knoL_TwV91BUKoTH0+0Bm81s=DhA@mail.gmail.com>
 <CAANLyuYD_Rg+3kgM17kzvXA_1icZq2HKNNBXEkeTmsp2qS4_AA@mail.gmail.com>
 <5CDB11C2.1040600@gmail.com>
 <CAANLyuZMVtRv7X67uvbAT7bMnzmifiMz8jKB4v-=RziQaUu2og@mail.gmail.com>
In-Reply-To: <CAANLyuZMVtRv7X67uvbAT7bMnzmifiMz8jKB4v-=RziQaUu2og@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 witn TwinRX: master_clock_rate issue
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
Content-Type: multipart/mixed; boundary="===============6008671094055015142=="
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
--===============6008671094055015142==
Content-Type: multipart/alternative;
 boundary="------------090209090004050002090909"

This is a multi-part message in MIME format.
--------------090209090004050002090909
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 05/16/2019 01:34 PM, Devin Kelly via USRP-users wrote:
> So when i I try to set the master clock rate to 100 MHz directly I get 
> an error and when I don't set it I get a warning.
>
> Can I just disregard the warning or is there something else going on here?
Yes, you can disregard the warning.   That's just internal UHD 
machinations not properly accounting for one another and
   producing a warning that you can ignore.

A more recent UHD wil likely fix this.


>
> $ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a 
> 'args=192.168.40.2,master_clock_rate=100e6' tmp.dat
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); 
> Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
> Traceback (most recent call last):
>   File "/test/bin/bin/uhd_rx_cfile", line 263, in <module>
>     tb = rx_cfile_block(options, filename)
>   File "/test/bin/bin/uhd_rx_cfile", line 77, in __init__
>     channels=self.channels,
>   File 
> "/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/__init__.py", 
> line 122, in constructor_interceptor
>     return old_constructor(*args)
>   File 
> "/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/uhd_swig.py", 
> line 2334, in make
>     return _uhd_swig.usrp_source_make(*args)
> RuntimeError: RuntimeError: Invalid master clock rate: 100.00 MHz.
> Valid master clock rates when using a 10.000000 MHz reference clock are:
> 120 MHz, 184.32 MHz and 200 MHz.
>
>
> $ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a 'args=192.168.40.2' tmp.dat
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); 
> Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
> [WARNING] [X300] Cannot update master clock rate! X300 Series does not 
> allow changing the clock rate during runtime.
> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 
> 200 MHz. Actual rate is: 100 MHz.
> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 
> 200 MHz. Actual rate is: 100 MHz.
> ^C
>
>
> On Tue, May 14, 2019 at 3:08 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 05/14/2019 11:26 AM, Devin Kelly via USRP-users wrote:
>>     Does anyone have any ideas on this?  Is uhd_rx_cfile not the
>>     right tool to be using?
>>
>>     Devin
>>
>     The TwinRX *MUST* run with a master clock of effectively 100MHz,
>     because of the way the ADCs are shared, and the DDC structure in the
>       FPGA.  Further, the fixed analog filtering is designed for a
>     100MHz clock frequency, and the synthesizers on the board require
>     a 100MHz
>       clock (AFAIR).
>
>     Simply don't specify the master clock rate when using
>     uhd_rx_cfile, and the correct default *should* happen.
>
>
>
>
>>     On Thu, May 9, 2019 at 10:39 AM Devin Kelly <dwwkelly@gmail.com
>>     <mailto:dwwkelly@gmail.com>> wrote:
>>
>>
>>         Sorry to revive an old post but I'm having the same problem
>>         with UHD 3.12.0.0.  Am I doing something wrong with
>>         uhd_rx_cfile or should I just upgrade to a newer UHD?
>>
>>         $ uhd_rx_cfile -r 10e6 -f 850e6 -a
>>         'args=192.168.40.2,master_clock_rate=200e6' tmp.dat
>>         [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
>>         4.8.5-36); Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
>>         [WARNING] [X300] Cannot update master clock rate! X300 Series
>>         does not allow changing the clock rate during runtime.
>>         [WARNING] [X300 RADIO] Requesting invalid sampling rate from
>>         device: 200 MHz. Actual rate is: 100 MHz.
>>         [WARNING] [X300 RADIO] Requesting invalid sampling rate from
>>         device: 200 MHz. Actual rate is: 100 MHz.
>>         [UHD_RX] Defaulting to mid-point gains:
>>         [UHD_RX] Channel 0 gain: 49.5 dB
>>         ^C
>>
>>         Thanks,
>>         Devin
>>
>>         On Thu, Jan 17, 2019 at 12:48 PM Rigney, Kevin E via
>>         USRP-users <usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>             I’m working with the TwinRX and am having the same
>>             results as Emanuel. I was ignoring the warning about the
>>             sample rate but you said that it must run at 200MHz. Can
>>             you explain why UHD sets the sample rate to 100MHz if 200
>>             is required?
>>
>>             Thanks,
>>
>>             -Kevin
>>
>>             On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users
>>             <usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com><mailto:usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com>>> wrote:
>>
>>             Dear Martin,
>>
>>             thank you for clarification. Yes, please add this to the
>>             manual. We bought those TwinRX for some phase-coherent
>>             LTE signal reception, and now they seem to be not useful
>>             at all (without effort spent in sample rate conversion in
>>             post-processing etc.)
>>
>>             I'm still wondering about the master clock rate though: I
>>             tried the benchmark with the following settings:
>>             ./benchmark_rate --args "master_clock_rate=200e6"
>>             --rx_subdev A:0 --rx_rate 10e6
>>             The TwinRX is mounted on slot A and a CBX-120 is mounted
>>             on slot B. I simply wanted a streaming test on the first
>>             TwinRX channel.
>>             During device initialization I get the following
>>             warnings, see below. Can you please comment on them?
>>
>>             [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>             0xD0C0000000000000)
>>             [WARNING] [X300] Cannot update master clock rate! X300
>>             Series does not allow changing the clock rate during runtime.
>>             [WARNING] [X300 RADIO] Requesting invalid sampling rate
>>             from device: 200 MHz. Actual rate is: 100 MHz.
>>             Using Device: Single USRP:
>>               Device: X-Series Device
>>               Mboard 0: X310
>>               RX Channel: 0
>>                 RX DSP: 0
>>                 RX Dboard: A
>>                 RX Subdev: TwinRX RX0
>>               TX Channel: 0
>>                 TX DSP: 0
>>                 TX Dboard: A
>>                 TX Subdev: Unknown (0x0094) - 0
>>               TX Channel: 1
>>                 TX DSP: 0
>>                 TX Dboard: B
>>                 TX Subdev: CBX-120 TX
>>
>>             [00:00:05.874991] Setting device timestamp to 0...
>>             .....
>>
>>             Cheers,
>>             Emanuel
>>
>>             _______________________________________________
>>             USRP-users mailing list
>>             USRP-users@lists.ettus.com
>>             <mailto:USRP-users@lists.ettus.com>
>>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list
>>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
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


--------------090209090004050002090909
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/16/2019 01:34 PM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAANLyuZMVtRv7X67uvbAT7bMnzmifiMz8jKB4v-=RziQaUu2og@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div>So when i I try to set the master clock rate to 100 MHz
            directly I get an error and when I don't set it I get a
            warning.  <br>
          </div>
          <div><br>
          </div>
          <div>Can I just disregard the warning or is there something
            else going on here?<br>
          </div>
        </div>
      </div>
    </blockquote>
    Yes, you can disregard the warning.   That's just internal UHD
    machinations not properly accounting for one another and<br>
      producing a warning that you can ignore.<br>
    <br>
    A more recent UHD wil likely fix this.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAANLyuZMVtRv7X67uvbAT7bMnzmifiMz8jKB4v-=RziQaUu2og@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div><br>
          </div>
          <div>$ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a
            'args=192.168.40.2,master_clock_rate=100e6'
            tmp.dat                                                                                                                                                                                                                                                                       
            <br>
            [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
            4.8.5-36); Boost_105300;
            UHD_3.12.0.heads-v3.12.0.0-0-gec786351<br>
            Traceback (most recent call last):<br>
              File "/test/bin/bin/uhd_rx_cfile", line 263, in
            &lt;module&gt;<br>
                tb = rx_cfile_block(options, filename)<br>
              File "/test/bin/bin/uhd_rx_cfile", line 77, in __init__<br>
                channels=self.channels,<br>
              File
            "/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/__init__.py",
            line 122, in constructor_interceptor<br>
                return old_constructor(*args)<br>
              File
            "/test/bin/lib64/python2.7/site-packages/gnuradio/uhd/uhd_swig.py",
            line 2334, in make<br>
                return _uhd_swig.usrp_source_make(*args)<br>
            RuntimeError: RuntimeError: Invalid master clock rate:
            100.00 MHz.<br>
            Valid master clock rates when using a 10.000000 MHz
            reference clock are:<br>
            120 MHz, 184.32 MHz and 200 MHz.<br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>$ uhd_rx_cfile -r 10e6 -f 850e6 -g 10 -a
            'args=192.168.40.2'
            tmp.dat                                                                                                                                                                                                                                                                                               
            <br>
            [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
            4.8.5-36); Boost_105300;
            UHD_3.12.0.heads-v3.12.0.0-0-gec786351<br>
            [WARNING] [X300] Cannot update master clock rate! X300
            Series does not allow changing the clock rate during
            runtime.<br>
            [WARNING] [X300 RADIO] Requesting invalid sampling rate from
            device: 200 MHz. Actual rate is: 100 MHz.<br>
            [WARNING] [X300 RADIO] Requesting invalid sampling rate from
            device: 200 MHz. Actual rate is: 100 MHz.<br>
            ^C<br>
            <br>
          </div>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, May 14, 2019 at 3:08
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div class="gmail-m_6624613924714119179moz-cite-prefix">On
              05/14/2019 11:26 AM, Devin Kelly via USRP-users wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>Does anyone have any ideas on this?  Is
                  uhd_rx_cfile not the right tool to be using?</div>
                <div><br>
                </div>
                <div>Devin<br>
                </div>
              </div>
              <br>
            </blockquote>
            The TwinRX *MUST* run with a master clock of effectively
            100MHz, because of the way the ADCs are shared, and the DDC
            structure in the<br>
              FPGA.  Further, the fixed analog filtering is designed for
            a 100MHz clock frequency, and the synthesizers on the board
            require a 100MHz<br>
              clock (AFAIR).<br>
            <br>
            Simply don't specify the master clock rate when using
            uhd_rx_cfile, and the correct default *should* happen.<br>
            <br>
            <br>
            <br>
            <br>
            <blockquote type="cite">
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Thu, May 9, 2019 at
                  10:39 AM Devin Kelly &lt;<a moz-do-not-send="true"
                    href="mailto:dwwkelly@gmail.com" target="_blank">dwwkelly@gmail.com</a>&gt;

                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div dir="ltr">
                        <div><br>
                        </div>
                        <div>Sorry to revive an old post but I'm having
                          the same problem with UHD 3.12.0.0.  Am I
                          doing something wrong with uhd_rx_cfile or
                          should I just upgrade to a newer UHD?<br>
                        </div>
                        <div><br>
                        </div>
                        <div style="margin-left:40px">$ uhd_rx_cfile -r
                          10e6 -f 850e6 -a
                          'args=192.168.40.2,master_clock_rate=200e6'
                          tmp.dat<br>
                          [INFO] [UHD] linux; GNU C++ version 4.8.5
                          20150623 (Red Hat 4.8.5-36); Boost_105300;
                          UHD_3.12.0.heads-v3.12.0.0-0-gec786351<br>
                          [WARNING] [X300] Cannot update master clock
                          rate! X300 Series does not allow changing the
                          clock rate during runtime.<br>
                          [WARNING] [X300 RADIO] Requesting invalid
                          sampling rate from device: 200 MHz. Actual
                          rate is: 100 MHz.<br>
                          [WARNING] [X300 RADIO] Requesting invalid
                          sampling rate from device: 200 MHz. Actual
                          rate is: 100 MHz.<br>
                          [UHD_RX] Defaulting to mid-point gains:<br>
                          [UHD_RX] Channel 0 gain: 49.5 dB<br>
                          ^C<br>
                        </div>
                      </div>
                    </div>
                    <div><br>
                    </div>
                    <div>Thanks,</div>
                    <div>Devin<br>
                    </div>
                    <div><br>
                    </div>
                    <div class="gmail_quote">
                      <div dir="ltr" class="gmail_attr">On Thu, Jan 17,
                        2019 at 12:48 PM Rigney, Kevin E via USRP-users
                        &lt;<a moz-do-not-send="true"
                          href="mailto:usrp-users@lists.ettus.com"
                          target="_blank">usrp-users@lists.ettus.com</a>&gt;

                        wrote:<br>
                      </div>
                      <blockquote class="gmail_quote" style="margin:0px
                        0px 0px 0.8ex;border-left:1px solid
                        rgb(204,204,204);padding-left:1ex">I’m working
                        with the TwinRX and am having the same results
                        as Emanuel. I was ignoring the warning about the
                        sample rate but you said that it must run at
                        200MHz. Can you explain why UHD sets the sample
                        rate to 100MHz if 200 is required?<br>
                        <br>
                        Thanks,<br>
                        <br>
                        -Kevin<br>
                        <br>
                        On Mon, 14 Jan 2019 at 7:06 AM Emanuel via
                        USRP-users &lt;<a moz-do-not-send="true"
                          href="mailto:usrp-users@lists.ettus.com"
                          target="_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a
                          moz-do-not-send="true"
                          href="mailto:usrp-users@lists.ettus.com"
                          target="_blank">usrp-users@lists.ettus.com</a>&gt;&gt;

                        wrote:<br>
                        <br>
                        Dear Martin,<br>
                        <br>
                        thank you for clarification. Yes, please add
                        this to the manual. We bought those TwinRX for
                        some phase-coherent LTE signal reception, and
                        now they seem to be not useful at all (without
                        effort spent in sample rate conversion in
                        post-processing etc.)<br>
                        <br>
                        I'm still wondering about the master clock rate
                        though: I tried the benchmark with the following
                        settings: ./benchmark_rate --args
                        "master_clock_rate=200e6" --rx_subdev A:0
                        --rx_rate 10e6<br>
                        The TwinRX is mounted on slot A and a CBX-120 is
                        mounted on slot B. I simply wanted a streaming
                        test on the first TwinRX channel.<br>
                        During device initialization I get the following
                        warnings, see below. Can you please comment on
                        them?<br>
                        <br>
                        [INFO] [0/DUC_1] Initializing block control (NOC
                        ID: 0xD0C0000000000000)<br>
                        [WARNING] [X300] Cannot update master clock
                        rate! X300 Series does not allow changing the
                        clock rate during runtime.<br>
                        [WARNING] [X300 RADIO] Requesting invalid
                        sampling rate from device: 200 MHz. Actual rate
                        is: 100 MHz.<br>
                        Using Device: Single USRP:<br>
                          Device: X-Series Device<br>
                          Mboard 0: X310<br>
                          RX Channel: 0<br>
                            RX DSP: 0<br>
                            RX Dboard: A<br>
                            RX Subdev: TwinRX RX0<br>
                          TX Channel: 0<br>
                            TX DSP: 0<br>
                            TX Dboard: A<br>
                            TX Subdev: Unknown (0x0094) - 0<br>
                          TX Channel: 1<br>
                            TX DSP: 0<br>
                            TX Dboard: B<br>
                            TX Subdev: CBX-120 TX<br>
                        <br>
                        [00:00:05.874991] Setting device timestamp to
                        0...<br>
                        .....<br>
                        <br>
                        Cheers,<br>
                        Emanuel<br>
                        <br>
                        _______________________________________________<br>
                        USRP-users mailing list<br>
                        <a moz-do-not-send="true"
                          href="mailto:USRP-users@lists.ettus.com"
                          target="_blank">USRP-users@lists.ettus.com</a><br>
                        <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                          rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                      </blockquote>
                    </div>
                  </div>
                </blockquote>
              </div>
              <br>
              <fieldset
                class="gmail-m_6624613924714119179mimeAttachmentHeader"></fieldset>
              <br>
              <pre>_______________________________________________
USRP-users mailing list
<a moz-do-not-send="true" class="gmail-m_6624613924714119179moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a>
<a moz-do-not-send="true" class="gmail-m_6624613924714119179moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
            </blockquote>
            <br>
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

--------------090209090004050002090909--


--===============6008671094055015142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6008671094055015142==--

