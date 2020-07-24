Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D58122CFA1
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 22:42:43 +0200 (CEST)
Received: from [::1] (port=47598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz4We-0000TK-BC; Fri, 24 Jul 2020 16:42:40 -0400
Received: from mail-wm1-f44.google.com ([209.85.128.44]:54028)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jz4WZ-0000Ko-OF
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 16:42:35 -0400
Received: by mail-wm1-f44.google.com with SMTP id j18so8990835wmi.3
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 13:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=lINV0atG+vliuxa76rMdfuPo5R/x57pEJ5wdwajT1tY=;
 b=vLho4JpnrzDkxNV3hR2UsVxO/iDfivrLDt9l9bUIil4BYum90Ym56GTSITJlzsXU//
 meGa5bZ023mQSe8eDcUK3zVIpXQ4KCE1M2sb9PXiqwlJvYXTMZfA67ioHFmJlU23K4/n
 1oq4RtCUJA8NhGwC4rQs5UBdZ/CDI6/pFqjj68RYaKSjnt8Oep8uS+wCBYHAaBZ45TGg
 HozOxrh7edRTA7Ig7aWZTNXoEYGI6+KBd+OEWbzu9hE8K4GM/XIQ8GGh6pV07lsqjuS/
 gYePSXj6w6uRZDkM8da0vU54LZaEfQHEQl2Y+WE5qOer0i+ypbEtHf3p8wG3UcYyHePJ
 J+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=lINV0atG+vliuxa76rMdfuPo5R/x57pEJ5wdwajT1tY=;
 b=DMN+upvA/tVJUe1MpemhsCWpVSR5D1YKIZ1Do6Cr/bLx/h6In3f23uzNr58J/gsTNE
 XcSoNVVLZ1SQvcGJea4IEYPZjA29IKK87GHFAFR4qTMm3+9ubiHYCFpQe8puoWeEt23w
 K7qEBVBQBD1tVjNwDPMznexMXqZrAIktIq3LHCUJ0UsSfqNRcL6nx6JTykn9FGSuOZAU
 hKMlfLWqK93zpZtQ6Yh0Y0lSEgLWTe3A479qp8xFoclWF3riYghGZG6DoTkvZg/vB+Bi
 NbzYaLWwHKfCO1Q1ueocDiEY9abZ+FDB0cUJ2KDI35plglb92z4p7nJXnLumESjGApkB
 eGWg==
X-Gm-Message-State: AOAM533NCkDSDzNZQbQhyajo8oDUYJXX8Tv9gzwL/eomb8oadbvqi5GF
 LRsg3WTNgAF56c0eIC88k5U429128giG3w==
X-Google-Smtp-Source: ABdhPJyIA66+HY5gGPYwVwO591QJoKf71fCobOt5FUyxs+3MTh/WnGlABikibVM4ouBh73W6WLIltg==
X-Received: by 2002:a1c:ed05:: with SMTP id l5mr10404476wmh.68.1595623314112; 
 Fri, 24 Jul 2020 13:41:54 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id 78sm8724803wma.31.2020.07.24.13.41.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 13:41:53 -0700 (PDT)
To: cherif chibane <cherif.chibane@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
 <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a24f048a-ee4a-b313-dd10-455af9baf010@ettus.com>
 <MA1PR01MB2588FFEF19FCCDEFB3AA43A190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com>
Message-ID: <604e2b9e-b869-2a42-fda9-074d9edf2cdf@ettus.com>
Date: Fri, 24 Jul 2020 22:41:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: multipart/mixed; boundary="===============7934004469595734369=="
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
--===============7934004469595734369==
Content-Type: multipart/alternative;
 boundary="------------2D35A7BA072275675DD07A88"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2D35A7BA072275675DD07A88
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Cherif,

On 24.07.20 11:33, cherif chibane wrote:

> BTW, what is the real function og GR-Ettus?
If you're asking this, you don't need it!

gr-ettus (the capitalization matters) is a GNU Radio out-of-tree module
which you need if you want to develop GNU Radio applications that
involve custom RFNoC data flows. Few USRP users want to do this.

> I am aloso thinking of moving to Ubuntu 20.4 eventually.
> Does it mean that:
> sudo apt install gnuradio
>
> Will install gnuradio, GRC as well as UHD?

Yes.

>  How about gr-ettus?

No. But unless you know what you need it for, you don't have to install it.

In case you **really** want it: to install it under Ubuntu 20.04, you
have to build it from source. It's easy – you only need to build
gr-ettus from source, not GNU Radio, and not UHD (don't do either, in fact).

Building it is relatively easy under Ubuntu 20.04 (please check that
none of the commands below fail before proceeding to the next one)

sudo apt install --install-recommends -y libuhd-dev gnuradio-dev git cmake swig liborc-0.4-dev
git clone -b maint-3.8 https://github.com/EttusResearch/gr-ettus
cd gr-ettus
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$(gnuradio-config-info --prefix) ..
make -j
sudo make install
cp install_manifest.txt ~/gr-ettus-install_manifest.txt

Done!

If you should ever need to uninstall your gr-ettus,

sudo xargs rm -rf < ~/gr-ettus-install_manifest.txt

Best regards,

Marcus


--------------2D35A7BA072275675DD07A88
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Cherif,<br>
    </p>
    <div class="moz-cite-prefix">On 24.07.20 11:33, cherif chibane
      wrote:<br>
    </div>
    <br>
    <blockquote type="cite"
cite="mid:CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">BTW, what is the real function og GR-Ettus?</pre>
    </blockquote>
    If you're asking this, you don't need it!<br>
    <p>gr-ettus (the capitalization matters) is a GNU Radio out-of-tree
      module which you need if you want to develop GNU Radio
      applications that involve custom RFNoC data flows. Few USRP users
      want to do this.<br>
    </p>
    <blockquote type="cite"
cite="mid:CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">I am aloso thinking of moving to Ubuntu 20.4 eventually.
Does it mean that:
sudo apt install gnuradio

Will install gnuradio, GRC as well as UHD?</pre>
    </blockquote>
    <p>Yes.<br>
    </p>
    <blockquote type="cite"
cite="mid:CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap=""> How about gr-ettus?</pre>
    </blockquote>
    <p>No. But unless you know what you need it for, you don't have to
      install it.</p>
    <p>In case you **really** want it: to install it under Ubuntu 20.04,
      you have to build it from source. It's easy – you only need to
      build gr-ettus from source, not GNU Radio, and not UHD (don't do
      either, in fact).</p>
    <p>Building it is relatively easy under Ubuntu 20.04 (please check
      that none of the commands below fail before proceeding to the next
      one)<br>
    </p>
    <pre>sudo apt install --install-recommends -y libuhd-dev gnuradio-dev git cmake swig liborc-0.4-dev
git clone -b maint-3.8 <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/gr-ettus">https://github.com/EttusResearch/gr-ettus</a>
cd gr-ettus
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$(gnuradio-config-info --prefix) ..
make -j
sudo make install
cp install_manifest.txt ~/gr-ettus-install_manifest.txt

</pre>
    <p>Done!</p>
    <p>If you should ever need to uninstall your gr-ettus,</p>
    <pre>sudo xargs rm -rf &lt; ~/gr-ettus-install_manifest.txt

</pre>
    <p>Best regards,</p>
    <p>Marcus<br>
    </p>
    <p></p>
  </body>
</html>

--------------2D35A7BA072275675DD07A88--


--===============7934004469595734369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7934004469595734369==--

