Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EB8364583
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 15:58:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA3F13842B9
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 09:58:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f8oT448f";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id F301F38428D
	for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 09:57:25 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id 8so2045205qkv.8
        for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 06:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=tYl7eKymb0Be1WKJzzY/xR6NInLHufsQxEITi+oDoEc=;
        b=f8oT448f+Fs4D1lA83Aca6wp2AJegGt8jnAadhZns2a/sNdip48GGxGaHZXK83JiSy
         lDNzh1CuknsbYsrL+2reynp0/LrtGrshh2z5AAypIf7UjzmnpehB4BRw24DpJrm5QsM6
         BwPp+877336lV54/58HAYDngG99iNKWtutl/0U3HG0EMTH+Vh6b5r+13HThCmwT8i6oU
         mE3twW2taJ2pdX8bt4eXHzKE7lSCllWSLh+mxU1Innpj5I2RYP0JaMJMzvzYZAXQI/iI
         r7DvQYg6ROAuon0fk9zNRZ/73//0S/F4cqaVHg/EoZo9rrvycbXLfnEUFB2+RQlaiyDl
         X9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=tYl7eKymb0Be1WKJzzY/xR6NInLHufsQxEITi+oDoEc=;
        b=gZFPb46ilZZpvYnhi5tVEKjAylGw7VIsGS8dhsSYUyqx302HkBYvkzG4CssEad6vBN
         BDn371Q7VExR2odcNK2DoNesEJgX0OqZ53txGzUSY6XMNdmxg47cXnEgTlwn6KkyV3Xj
         2yM9uNiTOYWTEjNUCNyL1x+rBwtwcVA87pkNsef04KO+/lSlIas5NCWBOcDZ+Dc+h3Zj
         DoaHnwuXw9XyDFV7rXAKuHqVrBzsSUId9+DZyyUl7CmvFJdIZFpFZ4TAdcbt0yfSAhYF
         fyig0hNBbrQ13GbRWx6o1RxNCn66Ao36z/ofZd4Y1SJVi+p41neoqO47wLX2/4mFHYLv
         SN8g==
X-Gm-Message-State: AOAM531gH/cOfickB7qN/5R+k8DBO2vYwG1ioNL1i6M/b+J/7Ne/d1Vg
	LWztXmP5TEsj87/tRxj03n/s6f5gbWyRSQ==
X-Google-Smtp-Source: ABdhPJxUNxgYs/rPCrlVPpMfQjZo02DqHCJqKWig5BPG3/EM8vqv7Se6RFX3Nng4xjZci4CP+KkhTg==
X-Received: by 2002:a37:9b46:: with SMTP id d67mr5520400qke.227.1618840645143;
        Mon, 19 Apr 2021 06:57:25 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id b15sm9748965qtg.82.2021.04.19.06.57.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 06:57:24 -0700 (PDT)
Message-ID: <607D8C43.8040206@gmail.com>
Date: Mon, 19 Apr 2021 09:57:23 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s@lists.ettus.com>
In-Reply-To: <quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s@lists.ettus.com>
Message-ID-Hash: H2DS75TWJGMAGU4RA7KKC7QJTRXDKSUQ
X-Message-ID-Hash: H2DS75TWJGMAGU4RA7KKC7QJTRXDKSUQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2DS75TWJGMAGU4RA7KKC7QJTRXDKSUQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1034089975094949739=="

This is a multi-part message in MIME format.
--===============1034089975094949739==
Content-Type: multipart/alternative;
 boundary="------------070005080203070601080909"

This is a multi-part message in MIME format.
--------------070005080203070601080909
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/19/2021 03:15 AM, brendan.horsfield@vectalabs.com wrote:
>
> Hi All,
>
> I have just upgraded my laptop to the latest version of GNU Radio=20
> Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it to=20
> monitor a block of spectrum with my USRP B210. Unfortunately the=20
> flowgraph won=92t run (even though it ran in my old GNU Radio setup),=20
> and instead prints the following message to the console:
>
> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unkno=
wn
>
> UHD Warning:
>
> EnvironmentError: IOError: Could not find path for image: usrp_b200_fw.=
hex
>
> Using images directory: <no images directory located>
>
> Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow=20
> the below instructions to download the images package.
>
> Please run:
>
> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>
> Traceback (most recent call last):
>
> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line=20
> 244, in <module>
>
> main()
>
> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line=20
> 220, in main
>
> tb =3D top_block_cls()
>
> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87,=20
> in __init__
>
> channels=3Dlist(range(0,1)),
>
> File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line=20
> 125, in constructor_interceptor
>
> return old_constructor(*args)
>
> File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line=20
> 3259, in make
>
> return _uhd_swig.usrp_source_make(device_addr, stream_args,=20
> issue_stream_cmd_on_start)
>
> RuntimeError: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> serial: 318425D
>
> The above message suggests GRC is calling version *003.010.003.000-0*=20
> of the UHD driver. This is weird, as last week I installed version=20
> *3.15.0.0* of the UHD driver on my laptop, after first uninstalling=20
> the old driver (or so I thought=85).
>
> However, if I run uhd_usrp_probe or uhd_find_devices, I get a message=20
> confirming that I am indeed running v3.15.0.0 of the UHD driver:
>
>  *
>
>     linux; GNU C++ version 7.5.0; Boost_106501;
>     *UHD_3.15.0.HEAD-0-gaea0e2de*
>
> If I look in the folder =93/usr/lib/x86_64-linux-gnu/=94, I find the fi=
les=20
> *libuhd.so.003.010.003* and *libuhd.so.3.15.0* are both present =97 but=
=20
> I am pretty sure there should only be one of them present!
>
> This =93dual-install=94 problem seems to be fairly common among USRP/GN=
U=20
> Radio users, but so far I haven=92t found any actual solutions.
>
> There is also a second error message in the above console output:=20
> *=93EnvironmentError: IOError: Could not find path for image:=20
> usrp_b200_fw.hex=94*. This is baffling, as I have run the script=20
> =93/usr/local/lib/uhd/utils/uhd_images_downloader.py=93 three times, an=
d=20
> am confident that the FPGA images have downloaded successfully (for=20
> the record, they are in /usr/local/share/uhd/images).
>
> If anyone can tell me how to resolve these problems, I would be very=20
> grateful!
>
> Regards,
>
> Brendan.
>
>
That means that the version of Gnu Radio you used to produce whatever=20
app you have is linked against UHD 3.10.3, whereas all
   your UHD *utilities* are linked against the newer version.

What happens when you run:

gnuradio-config-info -v

What is in your PYTHONPATH?  Is it perhaps pointing to older python=20
code, and you're picking up older (very older) python modules that
   are themselves linked against both an older GR and older UHD?



--------------070005080203070601080909
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/19/2021 03:15 AM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:brendan.horsfi=
eld@vectalabs.com">brendan.horsfield@vectalabs.com</a> wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s@lists.ettus.=
com"
      type=3D"cite">
      <p>Hi All,</p>
      <p>I have just upgraded my laptop to the latest version of GNU
        Radio Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying
        to use it to monitor a block of spectrum with my USRP B210.
        Unfortunately the flowgraph won=92t run (even though it ran in my
        old GNU Radio setup), and instead prints the following message
        to the console:</p>
      <p>linux; GNU C++ version 7.3.0; Boost_106501;
        UHD_003.010.003.000-0-unknown</p>
      <p>UHD Warning:</p>
      <p> EnvironmentError: IOError: Could not find path for image:
        usrp_b200_fw.hex</p>
      <p> Using images directory: &lt;no images directory located&gt;</p>
      <p> Set the environment variable 'UHD_IMAGES_DIR' appropriately or
        follow the below instructions to download the images package.</p>
      <p> Please run:</p>
      <p> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<=
/p>
      <p>Traceback (most recent call last):</p>
      <p> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py",
        line 244, in &lt;module&gt;</p>
      <p> main()</p>
      <p> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py",
        line 220, in main</p>
      <p> tb =3D top_block_cls()</p>
      <p> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py",
        line 87, in __init__</p>
      <p> channels=3Dlist(range(0,1)),</p>
      <p> File
        "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line
        125, in constructor_interceptor</p>
      <p> return old_constructor(*args)</p>
      <p> File
        "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
        3259, in make</p>
      <p> return _uhd_swig.usrp_source_make(device_addr, stream_args,
        issue_stream_cmd_on_start)</p>
      <p>RuntimeError: LookupError: KeyError: No devices found for
        -----&gt;</p>
      <p>Device Address:</p>
      <p> serial: 318425D</p>
      <p>The above message suggests GRC is calling version <strong>003.01=
0.003.000-0</strong>
        of the UHD driver. This is weird, as last week I installed
        version <strong>3.15.0.0</strong> of the UHD driver on my
        laptop, after first uninstalling the old driver (or so I
        thought=85). </p>
      <p>However, if I run uhd_usrp_probe or uhd_find_devices, I get a
        message confirming that I am indeed running v3.15.0.0 of the UHD
        driver:</p>
      <ul>
        <li>
          <p>linux; GNU C++ version 7.5.0; Boost_106501; <strong>UHD_3.15=
.0.HEAD-0-gaea0e2de</strong></p>
        </li>
      </ul>
      <p>If I look in the folder =93/usr/lib/x86_64-linux-gnu/=94, I find
        the files <strong>libuhd.so.003.010.003</strong> and <strong>libu=
hd.so.3.15.0</strong>
        are both present =97 but I am pretty sure there should only be on=
e
        of them present!</p>
      <p>This =93dual-install=94 problem seems to be fairly common among
        USRP/GNU Radio users, but so far I haven=92t found any actual
        solutions. </p>
      <p>There is also a second error message in the above console
        output: <strong>=93EnvironmentError: IOError: Could not find path
          for image: usrp_b200_fw.hex=94</strong>. This is baffling, as I
        have run the script
        =93/usr/local/lib/uhd/utils/uhd_images_downloader.py=93 three tim=
es,
        and am confident that the FPGA images have downloaded
        successfully (for the record, they are in
        /usr/local/share/uhd/images).</p>
      <p>If anyone can tell me how to resolve these problems, I would be
        very grateful!</p>
      <p>Regards,</p>
      <p>Brendan. </p>
      <br>
    </blockquote>
    That means that the version of Gnu Radio you used to produce
    whatever app you have is linked against UHD 3.10.3, whereas all<br>
    =A0 your UHD *utilities* are linked against the newer version.<br>
    <br>
    What happens when you run:<br>
    <br>
    gnuradio-config-info -v<br>
    <br>
    What is in your PYTHONPATH?=A0 Is it perhaps pointing to older python
    code, and you're picking up older (very older) python modules that<br=
>
    =A0 are themselves linked against both an older GR and older UHD?<br>
    <br>
    <br>
  </body>
</html>

--------------070005080203070601080909--

--===============1034089975094949739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1034089975094949739==--
