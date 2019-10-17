Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C14DB6BD
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2019 21:03:07 +0200 (CEST)
Received: from [::1] (port=59194 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iLB39-0002o2-VC; Thu, 17 Oct 2019 15:03:03 -0400
Received: from mail-il1-f177.google.com ([209.85.166.177]:44512)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iLB36-0002hL-6j
 for usrp-users@lists.ettus.com; Thu, 17 Oct 2019 15:03:00 -0400
Received: by mail-il1-f177.google.com with SMTP id f13so3114199ils.11
 for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2019 12:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=m6q0I2F4T4YiMWhH//5150IOQBrDjylDK6H8v2lmsT0=;
 b=u1mNphwuFR95oQYApLzntIyji+Kp1Et/ki5BJ3xyGLXruBQoCvdVdcf3roSWOvErxW
 S3+pl7MdRKqJniMxVLCF5xb+IWPjAgcoU6hW+iNdvTWmRKioIO0csQQo7WYZfOLdddec
 yKiOOmc6MRmh7+9sEPuRrXJDIaIidAJa7yngp5CXjAGl/sQaQPX0N4MVqwwIjSV098TS
 uBvzB4KtFDLb/Cblc1GVTTP6IYPkqG2IH3A5HWYfHxFfTym/7KKWwzn2RxYVMkQvZ4S5
 dU+Kpb/+W10WasRQMZHtx/vFRA8o3hDPlAJNoRrPw90CRXMsmqpLgotdC8kJANo01hhj
 lltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=m6q0I2F4T4YiMWhH//5150IOQBrDjylDK6H8v2lmsT0=;
 b=Yi+rNKp4aaaOLxbw9tQjaLwtZjFV45eiNfR/VQVoO4x5xSrHJh6OPDR0cusZ5oT0Ta
 H2fFrGN3hB2THfGGOvBnaPev7uyJYBG8cEMzVbp5ZTEISCCSt5yO8ugWaJ1ODAUWzK2T
 ndCarWh4EVR+eEeFDFrTydXa24m+jeKeKG0hUEweg0X9uognUGBKUjTKkugoCBgyLQgx
 xPwXS6aa/LDkew98BvdLl3zkUnxNqWAiCrcHVKQTbSLOBnAx8fdhBYVtCPBf3kVgldjU
 gkghmvK0dG/BXTc6JOROoAP9O4HPusEVSwSRSLSAfv9OAnhJ4ksA0CHsW1KHQXAdMZL4
 tK0w==
X-Gm-Message-State: APjAAAXfWXh2UzS/4CAJ28RqjNMEgOEFGBaxlGAh8xem6pWUg1LRXsVg
 wGITYlwikwoIb3up/1hQA3EN0vH/EsA=
X-Google-Smtp-Source: APXvYqxrY98IwWSB0BJFPlVvFUk2uRWA8ddA90uzks0n9iw0uaBXNDsvm8hWSfIrm9Aoff28reWFEA==
X-Received: by 2002:a05:6e02:c0f:: with SMTP id
 d15mr5418691ile.17.1571338939064; 
 Thu, 17 Oct 2019 12:02:19 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id x12sm1071078ior.9.2019.10.17.12.02.17
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Oct 2019 12:02:18 -0700 (PDT)
Message-ID: <5DA8BAB8.7030108@gmail.com>
Date: Thu, 17 Oct 2019 15:02:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.49.1571241602.28966.usrp-users_lists.ettus.com@lists.ettus.com>
 <50ae0c17.d3a7.16dd9920a50.Coremail.ruoyilei@126.com>
 <CAL263ixcwiYnr53j2pw-eXAatYuAFAy47SftxfLSeaKkYmNjiA@mail.gmail.com>
In-Reply-To: <CAL263ixcwiYnr53j2pw-eXAatYuAFAy47SftxfLSeaKkYmNjiA@mail.gmail.com>
Subject: Re: [USRP-users] what's wrong with my n310s?help me, please!
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
Content-Type: multipart/mixed; boundary="===============2196339944665937926=="
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
--===============2196339944665937926==
Content-Type: multipart/alternative;
 boundary="------------010503000800060408020701"

This is a multi-part message in MIME format.
--------------010503000800060408020701
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/17/2019 12:29 PM, Nate Temple via USRP-users wrote:
> Hi Wangpan,
>
> You had contacted us directly via support@ettus.com 
> <mailto:support@ettus.com> on this same issue, let's continue to debug 
> through that channel and when the issue is resolved, I can update the 
> mailing list with the result.
>
>
> Regards,
> Nate Temple
I'll just make a quick comment that in the first instance, the sample 
rate is not an integer fraction of the clock rate, and in
   the 2nd instance, the tune frequency is out-of-spec for the N310.

>
> On Thu, Oct 17, 2019 at 4:55 AM 王盼 via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hello：
>             I got two n310s。I set up them follow the guide in
>     http://kb.ettus.com。I can run
>     “uhd_find_devices”and“uhd_usrp_probe”correctly。Then I want to
>     test them use the uhd/examples。I have seveal problems.
>             (1)One n310 can not run
>     "benchmark_rate"and"rx_samples_to_file"correctly. I have tyied
>     seveal times, but got diffrent errors,and I dont know what is the
>     problem.The file "benchmark_rate.log" is the log when i run
>     "benchmark_rate","rx_samples_to_file_first_time.log"is the log of
>     my fist time run
>     "rx_samples_to_file","rx_samples_to_file_second_time.log" is the
>     second time.
>
>     *[WARNING] [CORES] Timer loopback test failed!*
>     *[WARNING] [CORES] Expecting clock rate: 122.88 MHz*
>     *Approximate clock rate: 0 MHz*
>     * is the reason? *
>           (2) The other n310 run
>     "benchmark_rate"and"rx_samples_to_file"correctly, but can not run
>     "txrx_loopback_to_file",but I got error:
>     *Please run: sudo sysctl -w net.core.wmem_max=6250000*
>     *Checking TX: all_los: unlocked ...*
>     *Error: AssertionError: lo_locked.to_bool()*
>     *  in int _main(int, char**)*
>     *  at
>     /home/workarea-uhd/uhd/host/examples/txrx_loopback_to_file.cpp:471*
>
>     the cmd is:
>     ./txrx_loopback_to_file \
>     --tx-args "type=n3xx,addr=192.168.10.2,master_clock_rate=125e6" \
>     --rx-args "type=n3xx,addr=192.168.10.2,master_clock_rate=125e6" \
>     --file 73_n310_1_const_short.dat \
>     --rx-rate 3.84e6 \
>     --tx-rate 3.84e6 \
>     --tx-freq 2400000 \
>     --rx-freq 2400000 \
>     --tx-gain 40 \
>     --rx-gain 40 \
>     --tx-subdev  "A:0"  \
>     --rx-subdev  "A:0"  \
>     --tx-channels "0" \
>     --rx-channels "0"
>
>     ./txrx_loopback_to_file \
>     --tx-args
>     "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=125e6"
>     \
>     --rx-args
>     "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=125e6"
>     \
>     --file 73_n310_4_const_short.dat \
>     --rx-rate 1250000 \
>     --tx-rate 1250000 \
>     --tx-freq 2400000 \
>     --rx-freq 2400000 \
>     --tx-gain 40 \
>     --rx-gain 40 \
>     --tx-bw 1000000 \
>     --rx-bw 1000000 \
>     --tx-subdev  "A:0 A:1 B:0 B:1"  \
>     --rx-subdev  "A:0 A:1 B:0 B:1"  \
>     --tx-channels "0,1,2,3" \
>     --rx-channels "0,1,2,3"
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


--------------010503000800060408020701
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/17/2019 12:29 PM, Nate Temple via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAL263ixcwiYnr53j2pw-eXAatYuAFAy47SftxfLSeaKkYmNjiA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:arial,helvetica,sans-serif">Hi Wangpan,<br>
          <br>
          You had contacted us directly via <a moz-do-not-send="true"
            href="mailto:support@ettus.com">support@ettus.com</a> on
          this same issue, let's continue to debug through that channel
          and when the issue is resolved, I can update the mailing list
          with the result.<br>
          <br>
          <br>
          Regards,<br>
          Nate Temple</div>
      </div>
    </blockquote>
    I'll just make a quick comment that in the first instance, the
    sample rate is not an integer fraction of the clock rate, and in<br>
      the 2nd instance, the tune frequency is out-of-spec for the N310.<br>
    <br>
    <blockquote
cite="mid:CAL263ixcwiYnr53j2pw-eXAatYuAFAy47SftxfLSeaKkYmNjiA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Oct 17, 2019 at 4:55
          AM 王盼 via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div style="font-family:微软雅黑,Verdana,&quot;Microsoft
              Yahei&quot;,SimSun,sans-serif;font-size:14px;line-height:1.6">
              <div>
                <div>Hello：</div>
              </div>
              <div>        I got two n310s。I set up them follow the
                guide in <a moz-do-not-send="true"
                  href="http://kb.ettus.com" target="_blank">http://kb.ettus.com</a>。I
                can run
                “uhd_find_devices”and“uhd_usrp_probe”correctly。Then I
                want to test them use the uhd/examples。I have seveal
                problems.</div>
              <div>        (1)One n310 can not run "benchmark_rate"and<span
                  style="line-height:1.6">"rx_samples_to_file"</span><span
                  style="line-height:22.4px">correctly. I have tyied
                  seveal times, but got diffrent errors,and I dont know
                  what is the problem.The file "</span>benchmark_rate.log<span
                  style="line-height:22.4px">" is the log when i run "</span><span
                  style="line-height:22.4px">benchmark_rate","</span>rx_samples_to_file_first_time.log"is
                the log of my fist time run "<span
                  style="line-height:22.4px">rx_samples_to_file</span><span
                  style="line-height:1.6">","</span>rx_samples_to_file_second_time.log"
                is the second time.</div>
              <div><br>
              </div>
              <div>
                <div><b>[WARNING] [CORES] Timer loopback test failed!</b></div>
                <div><b>[WARNING] [CORES] Expecting clock rate: 122.88
                    MHz</b></div>
                <div><b>Approximate clock rate: 0 MHz</b></div>
              </div>
              <div><b> is the reason?    </b></div>
              <div>      (2) The other n310 run <span
                  style="line-height:22.4px">"benchmark_rate"and</span><span
                  style="line-height:1.6">"rx_samples_to_file"</span><span
                  style="line-height:22.4px">correctly, but can not run
                  "</span>txrx_loopback_to_file",but I got error:</div>
              <div>
                <div><b>Please run: sudo sysctl -w
                    net.core.wmem_max=6250000</b></div>
                <div><b>Checking TX: all_los: unlocked ...</b></div>
                <div><b>Error: AssertionError: lo_locked.to_bool()</b></div>
                <div><b>  in int _main(int, char**)</b></div>
                <div><b>  at
                    /home/workarea-uhd/uhd/host/examples/txrx_loopback_to_file.cpp:471</b></div>
              </div>
              <div><br>
              </div>
              <div>the cmd is:</div>
              <div>
                <div>./txrx_loopback_to_file \</div>
                <div>--tx-args
                  "type=n3xx,addr=192.168.10.2,master_clock_rate=125e6"
                  \</div>
                <div>--rx-args
                  "type=n3xx,addr=192.168.10.2,master_clock_rate=125e6"
                  \</div>
                <div>--file 73_n310_1_const_short.dat \</div>
                <div>--rx-rate 3.84e6 \</div>
                <div>--tx-rate 3.84e6 \</div>
                <div>--tx-freq 2400000 \</div>
                <div>--rx-freq 2400000 \</div>
                <div>--tx-gain 40 \</div>
                <div>--rx-gain 40 \</div>
                <div>--tx-subdev  "A:0"  \</div>
                <div>--rx-subdev  "A:0"  \</div>
                <div>--tx-channels "0" \</div>
                <div>--rx-channels "0" </div>
              </div>
              <div><br>
              </div>
              <div>
                <div>./txrx_loopback_to_file \</div>
                <div>--tx-args
                  "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=125e6"
                  \</div>
                <div>--rx-args
                  "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=125e6"
                  \</div>
                <div>--file 73_n310_4_const_short.dat \</div>
                <div>--rx-rate 1250000 \</div>
                <div>--tx-rate 1250000 \</div>
                <div>--tx-freq 2400000 \</div>
                <div>--rx-freq 2400000 \</div>
                <div>--tx-gain 40 \</div>
                <div>--rx-gain 40 \</div>
                <div>--tx-bw 1000000 \</div>
                <div>--rx-bw 1000000 \</div>
                <div>--tx-subdev  "A:0 A:1 B:0 B:1"  \</div>
                <div>--rx-subdev  "A:0 A:1 B:0 B:1"  \</div>
                <div>--tx-channels "0,1,2,3" \</div>
                <div>--rx-channels "0,1,2,3" </div>
              </div>
              <div><br>
              </div>
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

--------------010503000800060408020701--


--===============2196339944665937926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2196339944665937926==--

