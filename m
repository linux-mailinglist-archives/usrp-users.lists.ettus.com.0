Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A88A227E03B
	for <lists+usrp-users@lfdr.de>; Wed, 30 Sep 2020 07:24:14 +0200 (CEST)
Received: from [::1] (port=59522 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNUb6-0003Ga-KJ; Wed, 30 Sep 2020 01:24:12 -0400
Received: from resqmta-po-10v.sys.comcast.net ([96.114.154.169]:51995)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kNUb2-0003AO-QV
 for usrp-users@lists.ettus.com; Wed, 30 Sep 2020 01:24:08 -0400
Received: from resomta-po-14v.sys.comcast.net ([96.114.154.238])
 by resqmta-po-10v.sys.comcast.net with ESMTP
 id NUYTkxN9dtNXGNUaNkNG23; Wed, 30 Sep 2020 05:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1601443407;
 bh=67y2NsgKBrqXKxJMANhCvjfZyZxdXL/NAHIoYJpo3wo=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=Ci7ltsBQko7NSED68gSVINOL0v+xuKtFLd+l7tmnOHesE71/Wxa0AHf54+a9dgNOH
 9dCprqoUEFrCMryADyAbyHtsnbdkN4j2HcREZnHBs2KKJDztTN+aVYOvwamcuFAf68
 KjRaV9axcUDExCjNwypwx860Y5lsJ1bHd39zi9zFzqE1ZFoajqCTzx6Z7y0I79l9p9
 5JLAREUBCQrKkzc7qCfSHc3nNqdpPYpzi6iBr5T6fXsx2bnNh+3GcMkQ0vhAgUvZT5
 u+uvnN8JR8bexqxiPX4cQAk20oNxh5lDzXUfmPtxrWD3Gp9l5LDTiPh+AZW9M1sGR0
 QQltGD1tHIzRw==
Received: from [IPv6:2601:647:4200:ea30:5980:f369:e3d6:5e26]
 ([IPv6:2601:647:4200:ea30:5980:f369:e3d6:5e26])
 by resomta-po-14v.sys.comcast.net with ESMTPSA
 id NUaJk8aGTX8qZNUaJkCbPx; Wed, 30 Sep 2020 05:23:27 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com>
Message-ID: <c12ade38-b926-9cc7-0e39-74bce2543dae@comcast.net>
Date: Tue, 29 Sep 2020 22:23:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com>
Content-Language: en-US
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============6120494875161866372=="
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
--===============6120494875161866372==
Content-Type: multipart/alternative;
 boundary="------------2C20951B559079505C159C63"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2C20951B559079505C159C63
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Just for comparison, I can easily do 10 Msps with a Beagleboard X-15 and 
B210. Also, benchmark_rate works fine at 20 Msps. This is without Thread 
Priority Scheduling.


I'm also using X forwarding (with a wired 1 Gbps Ethernet connection). 
The GUI Frequency Sink is sending 120 Mbps over the network.


Some items I'm using.


1) "recv_frame_size=16360, num_recv_frames=128" in the UHD USRP Source block

Device Address.


2) I'm building UHD with specific NEON flags. The Beagleboard X-15 has a 
2-core 32-bit armv7 processor at 1.5 GHz.


cmake -DCMAKE_CXX_FLAGS:STRING="-march=armv7ve -mfloat-abi=hard 
-mfpu=neon-vfpv4 -mtune=cortex-a15 -Wno-psabi" 
-DCMAKE_C_FLAGS:STRING="-march=armv7ve -mfloat-abi=hard -mfpu=neon-vfpv4 
-mtune=cortex-a15 -Wno-psabi" -DCMAKE_ASM_FLAGS:STRING="-march=armv7ve 
-mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a15 -g" ../


You could try some other options for the Pi4, especially if you're using 
a 64-bit OS.


-march=armv8-a or -march=native

-mtune=cortex-a72

-mfpu=neon-fp-armv8


Unfortunately, I don't have a Pi4 test these options with.


Ron


On 9/29/20 17:00, Arthur Lobo via USRP-users wrote:
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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------2C20951B559079505C159C63
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>Just for comparison, I can easily do 10 Msps with a Beagleboard
      X-15 and B210. Also, benchmark_rate works fine at 20 Msps. This is
      without Thread Priority Scheduling.</p>
    <p><br>
    </p>
    <p>I'm also using X forwarding (with a wired 1 Gbps Ethernet
      connection). The GUI Frequency Sink is sending 120 Mbps over the
      network.<br>
    </p>
    <p><br>
    </p>
    <p>Some items I'm using.</p>
    <p><br>
    </p>
    <p>1) "recv_frame_size=16360, num_recv_frames=128" in the UHD USRP
      Source block</p>
    <p>Device Address.</p>
    <p><br>
    </p>
    <p>2) I'm building UHD with specific NEON flags. The Beagleboard
      X-15 has a 2-core 32-bit armv7 processor at 1.5 GHz.</p>
    <p><br>
    </p>
    <p>cmake -DCMAKE_CXX_FLAGS:STRING="-march=armv7ve -mfloat-abi=hard
      -mfpu=neon-vfpv4 -mtune=cortex-a15 -Wno-psabi"
      -DCMAKE_C_FLAGS:STRING="-march=armv7ve -mfloat-abi=hard
      -mfpu=neon-vfpv4 -mtune=cortex-a15 -Wno-psabi"
      -DCMAKE_ASM_FLAGS:STRING="-march=armv7ve -mfloat-abi=hard
      -mfpu=neon-vfpv4 -mtune=cortex-a15 -g" ../</p>
    <p><br>
    </p>
    <p>You could try some other options for the Pi4, especially if
      you're using a 64-bit OS.<br>
    </p>
    <p><br>
    </p>
    <p>-march=armv8-a or -march=native</p>
    <p>-mtune=cortex-a72</p>
    <p>-mfpu=neon-fp-armv8</p>
    <p><br>
    </p>
    <p>Unfortunately, I don't have a Pi4 test these options with.</p>
    <p><br>
    </p>
    <p>Ron<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/29/20 17:00, Arthur Lobo via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:DM5PR16MB14511C5C0058E960D82185A7C3320@DM5PR16MB1451.namprd16.prod.outlook.com">
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
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------2C20951B559079505C159C63--


--===============6120494875161866372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6120494875161866372==--

