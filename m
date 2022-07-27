Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFDF58294E
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 17:08:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 266A9383D14
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 11:08:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658934511; bh=uzBla2zLGnIlbJ7y4syvqbdknEKIzygAA5C3tpZ6oig=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=olj0Sd7OTsX+0v04kclWxkiqLac9itSxmomkz5FQ719whvqy/b1LaJTwvkfjaIPWZ
	 q1nV7hGNsexZxyWsH5dTrfi2cTZf9XEG0shK00kWFnqIBrKaS1Jf+0lLLS6AQ1J8C6
	 PNl7Dvk9qnJ1cHNBT1503PduXiWJKTAPnisX0Ag3V4KcgTmhZbc2vaOIgTpHfYkSIo
	 s8QNpzEXih0mGRS95myrC8QYYFQTA8RDjp6o7iSo41HgmdwcezARlwRUzZYKzda/kp
	 pgk06aFbtsy9nh7mMLSEvB+6QaM8vuYgy+NJDCIz5AqdYkvjwCz9+A2qyGQZL40YKa
	 gWeQmhsowiWzw==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id ED4CF383CEB
	for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 11:06:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="MFX4N5gI";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id i13so12649514edj.11
        for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 08:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc;
        bh=KL5W4+fZg+cnBLNKKA4s66Lt5+0xecQyEA+i385egwM=;
        b=MFX4N5gIvP9Zq9HFFLC7SBVE+VZ9rZ88hwTtRo3Ta2wLNVE/3ld05K7Ljv6/0Ykjm9
         nczAFQddfbHYlIe2zkHkdq+cQRq/sZtvZ5U2wRLUcwSLkhpokpA4GSPDSM+LCkxUkm0V
         DpsPLNY7AIeNJ0FbK7WTRfV7ngfv/ki7UbkSsXBf0uzoQfwKJuaisahocN/9HZ2TDhN/
         YlYMUfI2oTWjrGQSiBPGY8056UXjTn3jw9AqvZ3daBQ11/Cn2Abt+3jJv0YBkFbDzp0F
         RMOpXWG+/6+2LPazF7uSx5wOpMKUm6DReAVEnNU8QSXfplj7fa1iMiz3hlNd8n8zafN7
         6zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc;
        bh=KL5W4+fZg+cnBLNKKA4s66Lt5+0xecQyEA+i385egwM=;
        b=50bZx0lWX6hH8O5NRJZ6Qzk1GiFkdULG1XCgTrUU5nPRC/kHqbcEAp2+b8OR7lpBGR
         IGtpqMANsGyPV35VTKShk5Y25GUTs1j7J+iuv0P6k70Q/5m586On7/p3YnfAgzEb6Ioo
         Ad+aan0Uw6+TkNWN71PL5Nz9/RhCZd2g85Py4/yoNdAMCXWsKBVWD7k28cO6r/W6wdL5
         2cGE921FWrm1qQGdDyy66DhgXID+rav4sMIk7yxOHIbQShFxMsdz8MjHpQLMvJkdk+q2
         MZ6em78exO4sGmMObA2lQdeO8r8sUJj2gY+35AuSUcJID10NoXCkvGrONn9uGfqp8zjy
         GsaA==
X-Gm-Message-State: AJIora9RHC5kY3P8pcK0+xhWns/8rKSkA0ldQjOfukWo0WMZAP1/XPG7
	KgbBYsNMFh8QdG2EDf2d1rJO6ufQGM15/Q==
X-Google-Smtp-Source: AGRyM1vfUdSQtdIE3F3Ys8OLSEMSacn+i+c5jO25Na2oCBZJ5j6W5q8rInStUyOLkmesarrrUtlxcA==
X-Received: by 2002:a05:6402:168a:b0:43c:c76b:25ec with SMTP id a10-20020a056402168a00b0043cc76b25ecmr1894518edv.47.1658934394201;
        Wed, 27 Jul 2022 08:06:34 -0700 (PDT)
Received: from [192.168.1.21] ([151.30.128.219])
        by smtp.gmail.com with ESMTPSA id d2-20020a170906304200b0072f42ca292bsm7629822ejd.129.2022.07.27.08.06.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 08:06:33 -0700 (PDT)
Message-ID: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
Date: Wed, 27 Jul 2022 17:06:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: usrp-users@lists.ettus.com
Content-Language: en-US
From: Federico Civerchia <federico.civerchia@sma-rty.com>
Message-ID-Hash: TG3AJNB4GVYAUCK5ZHLOEVA63LJBKDXT
X-Message-ID-Hash: TG3AJNB4GVYAUCK5ZHLOEVA63LJBKDXT
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TG3AJNB4GVYAUCK5ZHLOEVA63LJBKDXT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8080746713353751869=="

This is a multi-part message in MIME format.
--===============8080746713353751869==
Content-Type: multipart/alternative;
 boundary="------------uFxWqnWsX3xWuekVmUZPKnn4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uFxWqnWsX3xWuekVmUZPKnn4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Community,

I have recently bought two new Ettus N310 and I have started to verify 
the connection with the hosts. The NIC interfaces mounted in the hosts 
are Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.

Unfortunately, the benchmark for both USRP fails or I have errors like 
"SSSSSSS" or "[D00:00:06.162407669] Detected Rx sequence error."
I have also checked with ping but I have packet loss even with the ICMP 
protocol. I investigated a little bit and it seems that the problem may 
be related to the SFP+ I have mounted in the N310. The modules are 850nm 
from FS (here is the link 
https://www.fs.com/products/74668.html?attribute=106&id=287339) and the 
same are mounted in the NICs at the hosts side.

Do you have some hints about this issue? Could you please suggest me 
SFP+ modules that can work without any issue? Ettus sends the N310 with 
a SFP 1Gbps from Avago, I guess the 10Gb version from this provider 
(AFBR-710ISMZ 
<https://www.broadcom.com/products/fiber-optic-modules-components/networking/optical-transceivers/sfpplus/afbr-710ismz>) 
can work as well. Could you please confirm me this?

Thank you.

Best regards,

Federico



--------------uFxWqnWsX3xWuekVmUZPKnn4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Dear Community,</p>
    <p>I have recently bought two new Ettus N310 and I have started to
      verify the connection with the hosts. The NIC interfaces mounted
      in the hosts are Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E
      10Gb/25Gb.<br>
    </p>
    <p>Unfortunately, the benchmark for both USRP fails or I have errors
      like "SSSSSSS" or "[D00:00:06.162407669] Detected Rx sequence
      error." <br>
      I have also checked with ping but I have packet loss even with the
      ICMP protocol. I investigated a little bit and it seems that the
      problem may be related to the SFP+ I have mounted in the N310. The
      modules are 850nm from FS (here is the link
      <a class="moz-txt-link-freetext" href="https://www.fs.com/products/74668.html?attribute=106&amp;id=287339">https://www.fs.com/products/74668.html?attribute=106&amp;id=287339</a>)
      and the same are mounted in the NICs at the hosts side. <br>
    </p>
    <p>Do you have some hints about this issue? Could you please suggest
      me SFP+ modules that can work without any issue? Ettus sends the
      N310 with a SFP 1Gbps from Avago, I guess the 10Gb version from
      this provider (<a moz-do-not-send="true"
href="https://www.broadcom.com/products/fiber-optic-modules-components/networking/optical-transceivers/sfpplus/afbr-710ismz">AFBR-710ISMZ</a>)
      can work as well. Could you please confirm me this?</p>
    <p>Thank you.</p>
    <p>Best regards,</p>
    <p>Federico<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------uFxWqnWsX3xWuekVmUZPKnn4--

--===============8080746713353751869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8080746713353751869==--
