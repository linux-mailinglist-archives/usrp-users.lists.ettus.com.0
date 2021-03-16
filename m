Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A2433D512
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 14:43:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39438383BA7
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 09:43:18 -0400 (EDT)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id B8B9E383A2B
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 09:43:09 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id g185so35180979qkf.6
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 06:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=xmJtBMZwO1uqzVE1MtA3728oMFxe7IjfDLNueE88jnA=;
        b=GL9ZGbJ03HxbfGlgROKs1PeAkaz/Ck1yEoP+sSOPCk8wKYnfAps1aBNWKo7bmtwCYL
         H8mWdXRR8p+QvLfMwXZgZP+AYZaVFBOntSEogtZjEnTqHD+4MzyR4tI/itSQ5ShCayF1
         /GYcsJTol1ak0HDEoapfRNdnmt1faUrbsSVHhoNNZsaX5CQuBN0wU7Ec67RQvgLmJLrv
         orCXDIAStDEreGvLG9E1DXbAwJI1sQdZc+IgFiCbb7lxvQHl6jj9wl6GxKOrmOCVgqUF
         0yrYllvUQglFiygm2uUeN94L2Rzsc7DJFCEY1OpDcZmM5v8NKztdn9b5oFaHdJbaOoy/
         QvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=xmJtBMZwO1uqzVE1MtA3728oMFxe7IjfDLNueE88jnA=;
        b=JhVuocNxhDg0MtufgO8PIi4wvlZHVCxGhlWigkciekpH5JqmW/9iF4mZEVRVYO+mMb
         ITfz+dYEi8jgYeaf45zv7opsypf2oo6O5/z6Y6daIxQLzvLVzFd9ZpOOObyICJoUBYMb
         l3Nt9OulPy0dIbVD8lfEmcrPGsZkk3Ggqhlh7POu72QHYXKJrF1kR4BhTUSnYI58X6tK
         9Nh3QpQlYgogdsBNCA+CpJ+2dP1qDBo4qYlOcZMP8/jamNjNIYyPlRTBMce208hhW7CU
         zaf0f3IzbI0XSh9InozYKBh3GK9LKIWowsYoN4BLrmD/xIN+VKzhkKqz88OeDItF/ATZ
         kS5A==
X-Gm-Message-State: AOAM533F3nQRimTTom0XnvWujG/SN+j2Wc9D0gEtlps5nj3ityhJa4yH
	2kT754NNDmh64Z1goRYQw2GkqtPE14g=
X-Google-Smtp-Source: ABdhPJytiBucBmml68RFJ6yZGfUXwpKIMx8Y1ps6T/HYhwvtKmfkG12Zc+wybA4lmsBEvV3DmoES5A==
X-Received: by 2002:a37:9c4d:: with SMTP id f74mr31595864qke.202.1615902189039;
        Tue, 16 Mar 2021 06:43:09 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id z4sm15363816qkb.94.2021.03.16.06.43.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 06:43:08 -0700 (PDT)
Message-ID: <6050B5EC.90606@gmail.com>
Date: Tue, 16 Mar 2021 09:43:08 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BMXPR01MB27601B8EBE3F518F4937565D8B6B9@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB27601B8EBE3F518F4937565D8B6B9@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: JLEDLVZ32BOWCKET6NXJITPS5RXMYJOX
X-Message-ID-Hash: JLEDLVZ32BOWCKET6NXJITPS5RXMYJOX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to create stream data from USRP (via PCI) using rfnoc block in c++
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JLEDLVZ32BOWCKET6NXJITPS5RXMYJOX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3390212681784173582=="

This is a multi-part message in MIME format.
--===============3390212681784173582==
Content-Type: multipart/alternative;
 boundary="------------090406050202000800080201"

This is a multi-part message in MIME format.
--------------090406050202000800080201
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2021 07:10 AM, Sourin Mondal (Vehere) wrote:
> Hi,
> I am trying to stream data from USRP where the data passed through 
> RFNOC block (in order to create a lowpass filter) before coming to 
> host machine and I am trying to implement it using C++ code. I know 
> how to stream data normally. i.e. without rfnoc block in c++. Can 
> anyone please help me how to implement or the syntax to stream data 
> via RFNOC block to host machine.
>
> Thanking you.
>
> with regards,
>
There is some getting-started information here:

https://kb.ettus.com/Getting_Started_with_RFNoC_Development

There are also a number of rfnoc-based examples in the source code tree, 
in the "host/examples" directory.





--------------090406050202000800080201
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/16/2021 07:10 AM, Sourin Mondal
      (Vehere) wrote:<br>
    </div>
    <blockquote
cite="mid:BMXPR01MB27601B8EBE3F518F4937565D8B6B9@BMXPR01MB2760.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am trying to stream data from USRP where the data passed
        through RFNOC block (in order to create a lowpass filter) before
        coming to host machine and I am trying to implement it using C++
        code. I know how to stream data normally. i.e. without rfnoc
        block in c++. Can anyone please help me how to implement or the
        syntax to stream data via RFNOC block to host machine.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanking you.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        with regards,<br>
      </div>
      <br>
    </blockquote>
    There is some getting-started information here:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br>
    <br>
    There are also a number of rfnoc-based examples in the source code
    tree, in the "host/examples" directory.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090406050202000800080201--

--===============3390212681784173582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3390212681784173582==--
