Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A90C6ABD4
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 17:32:54 +0200 (CEST)
Received: from [::1] (port=46498 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnPRk-00025b-0y; Tue, 16 Jul 2019 11:32:52 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:42354)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hnPRg-0001yI-Jo
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 11:32:48 -0400
Received: by mail-qt1-f172.google.com with SMTP id h18so19981278qtm.9
 for <usrp-users@lists.ettus.com>; Tue, 16 Jul 2019 08:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Ku9cChvqGpjh74nnL58ZuylmUz4sw9rWbRwwOx4HWNU=;
 b=eqUlpebjW4pUV9uIG1yir8WrPM1asGeYL3gtvIv0+pCu1ST9KhmUGEYTLFz/ER6win
 r2aW4MuoU0OeBOTuBqEnZWcU8OyG1iJVDK7X7vjsljtwkIsILGmjn+J4t3EgqaVfXkG1
 Oi42N+vrIT3Af9o7vTba2UAvOaj5W/0Nvi8CHgOig2oIH9tCQwhGazcRnpn1qsIkAWa8
 F2N/PQ0qU4QDOLkzZ845qBOaV4Vu+Xk3VwJH5aXdWij4tuQqM4Z6nJ+GcM8NbWOSApqV
 tMc0ts/ESlWAvh6bl8RRy13PY9kNVQGtD1MpgdgQZR7NnTuxWmkq3+UvWmOwLCENfK8/
 4pbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Ku9cChvqGpjh74nnL58ZuylmUz4sw9rWbRwwOx4HWNU=;
 b=KdaicZB25Ez+1ofqMRHJmSLdQHgCwJzpx30vVMcZ8WaLYMMWG28sPXiX1Ph9iBcrol
 ytzFVqabwJQYBkl/ckSzHJPCIgDbNDUgyWFGPeC7wSZD6OCGCLYkcwCd7yAj7e5uLCA7
 xsWpC5lCsBNT3RflitGH0E2uZwvxufvHXQULmCr279S37r5CmovbWpZhTbq2Uq7yyHPF
 gLKA2uy7CsFOd3sBGfCgEKSTBAqSp1y3V7o9JgmHyXwHmTNtMH0VxHwR+w/v6npD9xT+
 czSchdbIQej2kWzN4S2nI5JJJxzmgdMifq9Uz6ei6MZEN5bIJ/LzHJ1TJZUBo/c93MKJ
 1LWg==
X-Gm-Message-State: APjAAAWZ/+14m+uCbgWuXLKIjfsvUuGK/WQOOr88qYuyzUXuCUuoobd5
 eLW+8zxPIC3cBDLOMTnwd1O8v2Kc
X-Google-Smtp-Source: APXvYqzRZkSZ49a0p/0N0f9qYEf5AkUgFUVD4F1VhiFeD3+bAiCMZc+9742lzgxpgKwh6z6dVA2opA==
X-Received: by 2002:ac8:65d4:: with SMTP id t20mr18223232qto.249.1563291127836; 
 Tue, 16 Jul 2019 08:32:07 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id g3sm9023119qkk.125.2019.07.16.08.32.07
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 08:32:07 -0700 (PDT)
Message-ID: <5D2DEDEC.60103@gmail.com>
Date: Tue, 16 Jul 2019 11:31:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <db91a3a1-ddb9-b31d-d2d9-8490dd8f751b@iqo.uni-hannover.de>
In-Reply-To: <db91a3a1-ddb9-b31d-d2d9-8490dd8f751b@iqo.uni-hannover.de>
Subject: Re: [USRP-users] randomness in a trigger to the GPIO at the x310
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
Content-Type: multipart/mixed; boundary="===============0310425451385520257=="
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
--===============0310425451385520257==
Content-Type: multipart/alternative;
 boundary="------------010802030405000208070801"

This is a multi-part message in MIME format.
--------------010802030405000208070801
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/16/2019 09:39 AM, Knut Stolzenberg via USRP-users wrote:
>
> Hey everyone,
>
> I experience some randomness in the timing of the ouput of my SDR, 
> when applying a TTL signal to the GPIO. The TTL signal is fed to Pin 2 
> of the GPIO and has a Voltage of ~3V. It also is of arbitrary length 
> (~10 microseconds - several seconds). When the trigger is active it 
> takes between 0.25 - 20 ms until the SDR starts streaming the data 
> (measured with an oscilloscope, comparing the starting time of the 
> trigger and streamed data). The data streamed is made of several 
> hundred buffers and contains a modulation of the carrier frequency.
>
> Is there any way to control the starting time of streaming, when the 
> trigger was applied?
>
> Below is a part of the code, where the "trigger" is applied. It is 
> pretty much based on the tx_waveforms example code/./
>
>
> #define MAN_GPIO_MASK (1 << 2)
> #define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)
> // set up our values for ATR control: 1 for ATR, 0 for manual
> #define ATR_CONTROL (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
> // set up the GPIO directions: 1 for output, 0 for input
> #define GPIO_DDR  (AMP_GPIO_MASK & ~MAN_GPIO_MASK)
>
>
> .....
>
> Buffer production & stuff
>
> ...
>
>
> uhd::tx_metadata_t md;
>     md.start_of_burst = true;
>     md.end_of_burst = true;
>     md.has_time_spec = false;
>
>
>     usrp->set_gpio_attr("FP0", "CTRL", 0);
>     usrp->set_gpio_attr("FP0", "DDR", 0);
>
>
>     while (true) {
>         int readback = 0;
>         if (stop_signal_called) break;
>         int initialise = usrp->get_gpio_attr("FP0", "READBACK", 0);
>         if (readback != initialise) {
>             readback = initialise;
>             if (initialise = 1)
>             {
>                 for (int i = 0; i < line; i++) {
>                     tx_stream->send(
>                         buff_ptrs[i], spb, md
>                     );
>                 }
>             }
>         }
> boost::this_thread::sleep(boost::posix_time::microseconds(1));
>     }
>
>
You will *NEVER* get predictable latency this way--you're relying on 
your host operating system having very-predictable latency, and that's 
simply
   not possible on a computer running a general-purpose, multi-process, 
multi-user operating system.

You might want to look into an FPGA-based implementation, where timing 
is predictable.

If the GPIO trigger input is actually just a regularly-timed event, you 
might also want to look into timed commands.




--------------010802030405000208070801
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/16/2019 09:39 AM, Knut
      Stolzenberg via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:db91a3a1-ddb9-b31d-d2d9-8490dd8f751b@iqo.uni-hannover.de"
      type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>Hey everyone,</p>
      <p>I experience some randomness in the timing of the ouput of my
        SDR, when applying a TTL signal to the GPIO. The TTL signal is
        fed to Pin 2 of the GPIO and has a Voltage of ~3V. It also is of
        arbitrary length (~10 microseconds - several seconds). When the
        trigger is active it takes between 0.25 - 20 ms until the SDR
        starts streaming the data (measured with an oscilloscope,
        comparing the starting time of the trigger and streamed data).
        The data streamed is made of several hundred buffers and
        contains a modulation of the carrier frequency.</p>
      <p>Is there any way to control the starting time of streaming,
        when the trigger was applied?</p>
      <p>Below is a part of the code, where the "trigger" is applied. It
        is pretty much based on the tx_waveforms example code<i>.</i><br>
      </p>
      <p><br>
      </p>
      <p>#define MAN_GPIO_MASK (1 &lt;&lt; 2)<br>
        #define ATR_MASKS (AMP_GPIO_MASK | MAN_GPIO_MASK)<br>
        // set up our values for ATR control: 1 for ATR, 0 for manual<br>
        #define ATR_CONTROL (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK)<br>
        // set up the GPIO directions: 1 for output, 0 for input<br>
        #define GPIO_DDR  (AMP_GPIO_MASK &amp; ~MAN_GPIO_MASK) <br>
      </p>
      <p><br>
      </p>
      <p>.....</p>
      <p>Buffer production &amp; stuff</p>
      <p>...</p>
      <p><br>
      </p>
      <p>uhd::tx_metadata_t md;<br>
            md.start_of_burst = true;<br>
            md.end_of_burst = true;<br>
            md.has_time_spec = false;<br>
          <br>
           <br>
            usrp-&gt;set_gpio_attr("FP0", "CTRL", 0);<br>
            usrp-&gt;set_gpio_attr("FP0", "DDR", 0);<br>
        <br>
            <br>
            while (true) {<br>
                int readback = 0;<br>
                if (stop_signal_called) break;<br>
                int initialise = usrp-&gt;get_gpio_attr("FP0",
        "READBACK", 0);<br>
                if (readback != initialise) {<br>
                    readback = initialise;<br>
                    if (initialise = 1)<br>
                    {    <br>
                        for (int i = 0; i &lt; line; i++) {<br>
                            tx_stream-&gt;send(<br>
                                buff_ptrs[i], spb, md<br>
                            );<br>
                        }<br>
                    }<br>
                }<br>
               
        boost::this_thread::sleep(boost::posix_time::microseconds(1));<br>
            }<br>
        <br>
      </p>
      <br>
    </blockquote>
    You will *NEVER* get predictable latency this way--you're relying on
    your host operating system having very-predictable latency, and
    that's simply<br>
      not possible on a computer running a general-purpose,
    multi-process, multi-user operating system.<br>
    <br>
    You might want to look into an FPGA-based implementation, where
    timing is predictable.<br>
    <br>
    If the GPIO trigger input is actually just a regularly-timed event,
    you might also want to look into timed commands.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------010802030405000208070801--


--===============0310425451385520257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0310425451385520257==--

