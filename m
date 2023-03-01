Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E40536A66DE
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 05:06:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0C15384809
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 23:06:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677643611; bh=N62Xwe8xYRvPHv0nH7udxJhtMkXEXZ/QIb6R9S7yhBU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Q65LDCexNpsI9UR9tbXbeiYgZK9yd4O2EMEks3RGhn/a012MHn5SDf8J0jzLKWXm/
	 DcF0+M/GE5bvis65UmqHCKBvgT9K0+HwUdEMNTFv77jUeQUvZhLToiXdP+uuFdHz/u
	 PK8aZP7Nrk0ozXDM2sCd5AnhCNOgcr1UXO8+ud6BVdTRPVAkFXAj137KvLcBT1pIlW
	 PSkgDYL/5l9DjMcFK2cVym3oLEZGHqg7qap476ADSgIPaAYAYqQgd5h6g0gr1SQ4C3
	 OiA1H3dNsnSKa4UpVqzM2kgbOv60mVImPAzVUWwIFnCjKKvPY86bqu0X6KWLH9DZKd
	 EiDPzp5TXRlPw==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D57B38461C
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 23:06:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VivrSjv+";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id l13so13052767qtv.3
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 20:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ij49PmuLeLkRE+JaEFJJUwDqUw4oCMrX+C80g28K7Y=;
        b=VivrSjv+p2OOCSpwTZ7DZx9raHeJ15N4qulxOtn8b1FPh0WmYjx+0O4y3ktbU7vCmI
         FblG4zqpMUTePvE6hWzbPNXHAKVOABpYfWnhVIGGqrQ/68Hf6ez+PXvBiC1ryHJm5cFG
         GZJu9UjIo3wU+onfCY973/8qzxLGeZcXdI33HY0/GzFvwfra8o0s7o+t2IO9RHWbbNpd
         MRnpisrvgc55sL1jGlTsaBrdlZMr9Dux0EKr6p+gp6WI4By5biarw1K8IHE/OAij2Xra
         e7ozF1DsPvyjaTQESCPJBaO886QjBUGX7kGqOZE1RsIJ3v4Pv/nIIKUwib3sA4vTEwde
         1zRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1ij49PmuLeLkRE+JaEFJJUwDqUw4oCMrX+C80g28K7Y=;
        b=1JfYW1R5pw3GBzQB/7QYUOTbsL8fflBlIKGrb6iC/k61eaoCgdaymXjAedfQBalzGL
         tFRGet8kafggQgE/dpY8iuur1Wc58XUbqG4ke8xtp/V9XmxhpMwlBJpzTM1WmW7dE8oX
         VEEXFPwV61DxjaqxGQWWmWrH0H7e/F76mxgoWaVbP5qqJZ6/3PEZL1KwscjaZh3LI58b
         m3MOmM6r/U0qPx0+CVzAhn9TjYfsjul3fhcmBbtHIuVg/wdRaOa1jZJXgkNYhAknP4n3
         f9qWeXJQU7ADbxTh78JYuj9IELWrLuFFR6hHoOD/P6/AcD0si8Y3JIBgLUCwJyM2pdCT
         c5wA==
X-Gm-Message-State: AO0yUKW9NQ2iaqEr88OecR21hYaBFGugw2wnzodDxNDgfCERGnzU7Mjv
	5t/8bAWqeJ6e5lr/yJWCE+TTw9EJ/04=
X-Google-Smtp-Source: AK7set/QB/344GtrN5AztWdhAYzSo4kNBwMACb0hEHyhNMpc4ECvOIxC8+3pYqxryK9CQF3xgCsPGQ==
X-Received: by 2002:a05:622a:1306:b0:3bd:1835:b001 with SMTP id v6-20020a05622a130600b003bd1835b001mr9589989qtk.20.1677643565051;
        Tue, 28 Feb 2023 20:06:05 -0800 (PST)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id d3-20020a05620a136300b0073ba2c4ee2esm7957118qkl.96.2023.02.28.20.06.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 20:06:04 -0800 (PST)
Message-ID: <f75fc6c8-a750-9ffa-a026-62899fbf85a6@gmail.com>
Date: Tue, 28 Feb 2023 23:06:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOcHjoJ0sZ5BSRcJF4eKDhgwd0gWi6C102g-B9ANt+wJy1d7RQ@mail.gmail.com>
 <CAOcHjoJy37o+bHcpAUWe9A_R_x1ygwX_cX7iCHAf2c0rjLLk7Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOcHjoJy37o+bHcpAUWe9A_R_x1ygwX_cX7iCHAf2c0rjLLk7Q@mail.gmail.com>
Message-ID-Hash: 25INXPHT2WCO65LLJNAFATSGPQLJH3UJ
X-Message-ID-Hash: 25INXPHT2WCO65LLJNAFATSGPQLJH3UJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/25INXPHT2WCO65LLJNAFATSGPQLJH3UJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1681957950954071991=="

This is a multi-part message in MIME format.
--===============1681957950954071991==
Content-Type: multipart/alternative;
 boundary="------------00SixgD1zhYDlunGCIknOjWk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------00SixgD1zhYDlunGCIknOjWk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/02/2023 23:01, AERMAN TUERXUN. wrote:
> I also checked the uhd installation logs.
> Why it couldn't find the uhd module?
>
> -- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd
> -- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd/imgbuilder
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/yaml_utils.py
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/__init__.py
> -- Up-to-date:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_i=
mage_core.vh.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_i=
mage_core.v.mako
> -- Up-to-date:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/connect_io_ports.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/device_transport.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/ctrl_crossbar.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/device_io_ports.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/chdr_xb_sep_transport.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/rfnoc_block.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/drive_unused_ports.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/static_router.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/stream_endpoints.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/sep_xb_wires.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules=
/connect_clk_domains.v.mako
> -- Installing:=20
> /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_builder.py
>
> On Wed, Mar 1, 2023 at 11:52=E2=80=AFAM AERMAN TUERXUN.=20
> <armantursun@g.ecc.u-tokyo.ac.jp> wrote:
>
>     Hi USRP users,
>
>     I am currently developing an OOT RFNoC module.
>     When I tried to build a custom image, it gave me errors as below.
>     I checked the python path, and it seems fine.
>     Is there anyone that has any idea of the reason for this?
>     I am using n310 with uhd v4.2.0.0.
>     (I checked with uhd4.0, and didn't encounter this problem).
>
>     Thanks in advance.
>     Best regards.
>
>     Traceback (most recent call last):
>     =C2=A0 File "/usr/local/bin/rfnoc_image_builder", line 29, in <modu=
le>
>     =C2=A0 =C2=A0 from uhd.imgbuilder import image_builder
>     ModuleNotFoundError: No module named 'uhd'
>     make[3]: ***
>     [icores/CMakeFiles/n310_rfnoc_image_core.dir/build.make:57:
>     icores/CMakeFiles/n310_rfnoc_image_core] Error 1
>     make[2]: *** [CMakeFiles/Makefile2:300:
>     icores/CMakeFiles/n310_rfnoc_image_core.dir/all] Error 2
>     make[1]: *** [CMakeFiles/Makefile2:307:
>     icores/CMakeFiles/n310_rfnoc_image_core.dir/rule] Error 2
>     make: *** [Makefile:203: n310_rfnoc_image_core] Error 2
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Maybe your ld.so.conf doesn't include /usr/local/lib, or you didn't=20
"sudo ldconfig" after doing the install?

What's in your PYTHONPATH?=C2=A0 Is that path actually *exported* or did =
you=20
set it locally in your .bashrc (or equivalent).

If you manually go into python and:

import uhd

What happens?


--------------00SixgD1zhYDlunGCIknOjWk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/02/2023 23:01, AERMAN TUERXUN.
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOcHjoJy37o+bHcpAUWe9A_R_x1ygwX_cX7iCHAf2c0rjLLk7Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>I also checked the uhd installation logs.</div>
        <div>Why it couldn't find the uhd module?<br>
        </div>
        <div><br>
        </div>
        <div>-- Up-to-date: /usr/local/lib/python3.8/site-packages/uhd<br=
>
          -- Up-to-date:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder<br>
          -- Installing:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/yaml_util=
s.py<br>
          -- Installing:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/__init__.=
py<br>
          -- Up-to-date:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates=
<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_ima=
ge_core.vh.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/rfnoc_ima=
ge_core.v.mako<br>
          -- Up-to-date:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates=
/modules<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
onnect_io_ports.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/d=
evice_transport.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
trl_crossbar.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/d=
evice_io_ports.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
hdr_xb_sep_transport.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/r=
fnoc_block.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/d=
rive_unused_ports.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/s=
tatic_router.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/s=
tream_endpoints.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/s=
ep_xb_wires.v.mako<br>
          -- Installing:
/usr/local/lib/python3.8/site-packages/uhd/imgbuilder/templates/modules/c=
onnect_clk_domains.v.mako<br>
          -- Installing:
          /usr/local/lib/python3.8/site-packages/uhd/imgbuilder/image_bui=
lder.py<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 1, 2023 at
          11:52=E2=80=AFAM AERMAN TUERXUN. &lt;<a
            href=3D"mailto:armantursun@g.ecc.u-tokyo.ac.jp"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">arma=
ntursun@g.ecc.u-tokyo.ac.jp</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>Hi USRP users,</div>
            <div><br>
            </div>
            <div>I am currently developing an OOT RFNoC module.</div>
            <div>When I tried to build a custom image, it gave me errors
              as below.</div>
            <div>I checked the python path, and it seems fine.</div>
            <div>Is there anyone that has any idea of the reason for
              this?<br>
            </div>
            <div>I am using n310 with uhd v4.2.0.0.</div>
            <div>(I checked with uhd4.0, and didn't encounter this
              problem).<br>
            </div>
            <div><br>
            </div>
            <div>Thanks in advance.</div>
            <div>Best regards.<br>
            </div>
            <div><br>
            </div>
            <div>Traceback (most recent call last):<br>
              =C2=A0 File "/usr/local/bin/rfnoc_image_builder", line 29, =
in
              &lt;module&gt;<br>
              =C2=A0 =C2=A0 from uhd.imgbuilder import image_builder<br>
              ModuleNotFoundError: No module named 'uhd'<br>
              make[3]: ***
              [icores/CMakeFiles/n310_rfnoc_image_core.dir/build.make:57:
              icores/CMakeFiles/n310_rfnoc_image_core] Error 1<br>
              make[2]: *** [CMakeFiles/Makefile2:300:
              icores/CMakeFiles/n310_rfnoc_image_core.dir/all] Error 2<br=
>
              make[1]: *** [CMakeFiles/Makefile2:307:
              icores/CMakeFiles/n310_rfnoc_image_core.dir/rule] Error 2<b=
r>
              make: *** [Makefile:203: n310_rfnoc_image_core] Error 2</di=
v>
            <div><br>
              <br>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Maybe your ld.so.conf doesn't include /usr/local/lib, or you didn't
    "sudo ldconfig" after doing the install?<br>
    <br>
    What's in your PYTHONPATH?=C2=A0 Is that path actually *exported* or =
did
    you set it locally in your .bashrc (or equivalent).<br>
    <br>
    If you manually go into python and:<br>
    <br>
    import uhd<br>
    <br>
    What happens?<br>
    <br>
    <br>
  </body>
</html>

--------------00SixgD1zhYDlunGCIknOjWk--

--===============1681957950954071991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1681957950954071991==--
