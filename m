Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 378865734FD
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jul 2022 13:11:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C1B6383B60
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jul 2022 07:11:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657710700; bh=TD9yKs1k57KSEpZ8lL9SNQStX8bfDZJrjY9ez1Z/B0g=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lQNgACOmiSiMn8U8TwgyfdR7a8V9NfQOWLaQeP1doCwdBM6FzNr6i/KnW7oOf5GzW
	 yWYHcNt5E+9GRRhQiGzQY/cRmB6UYmS8CAavf6mNPZgL5hCmd46e3crj9y4wXoL85X
	 ZPT/FWA2OVGDjF7aWXBwHcQDZJDUQeV2+TYioHE89ncT6d33J4bJ6SOMSEIkiqUgXG
	 Zk0QcJBOlRI7ICVvxSOreRGixlC604FMvy7gXxCDNJhFOFWFgKaV3+8nsxG4kUhhDS
	 zpjtxaqkqSCa7X/0imB9GPtpdo3f/uKGFs/rdLDL/VuTm06Xf9VN/tVpLE8+aoOqKw
	 PWPLhvauou8fg==
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 602FA383B0A
	for <usrp-users@lists.ettus.com>; Wed, 13 Jul 2022 07:09:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nRgKXgxb";
	dkim-atps=neutral
Received: by mail-wr1-f48.google.com with SMTP id h17so15047945wrx.0
        for <usrp-users@lists.ettus.com>; Wed, 13 Jul 2022 04:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:from:to
         :subject;
        bh=H4eOtMrp+J7Zoke8NWAlfRPTrdYEzodBjS94aiEIwfQ=;
        b=nRgKXgxbc0sKEFuhT/PPTBvh6esYkAnPEqVx5GasolcnOMMYPyq3oyuh5Z0FaooVpB
         5mNeVudcfDecMcVwDPvvUaoXfVUf5EG/ysAo7tUCjxKH3i0+FcWdlUw4+j9h8mxcF/RO
         PifTBhrXLmIeUJL/x9pM8zvVLlOW2EgPEQGI9/diz+BcZIcfzFz+iSSKz4RbjO3aT5dO
         CMpBqJqPyz26wLP8ckh27K7LRxCtGZHRDWjVP5cn6HMnW61qdCnctvMxA5XHr9UCjncr
         V4EjYLWoV9N/l/Dq/JH6U8gVWthBbGW40yJvZ69+GVfp7km/gLB9Up98h7bVIgMbB6io
         K4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:to:subject;
        bh=H4eOtMrp+J7Zoke8NWAlfRPTrdYEzodBjS94aiEIwfQ=;
        b=qxk+VpTTKWGUCDe2TBcgEsLuMjOQtd2ZRkAbpdx+aJkKouulaxrdShsb/jtMNKwZ7m
         KrKaarhp+6hH3IVEMnsRdKR5ae50tbWYIFYhl+hMXva1sD3uUGVSqSlgDDJHXHobloTQ
         KHWTltVBPlYQXVisjmf6FDGdw4IiIOR7hpLIl0CFr65tBf7kctxCy3OgBrQSJjuE1t/d
         f1l5BiQeAgAmQe6R1JeppQiRgB9Fz+E4zQzZTap77JvECEA2iZUqsnjJ8EeE7/q08+yc
         JM0/Iyyx+0851PBp6RTQPiAeFjzRvhOV5xNzHrc5yNolKhddusETI03C1L7qECNSWbFa
         /MnA==
X-Gm-Message-State: AJIora9xmA+tXHge/t1jGtBetLNRXm3ADvdsDXQrpm6Q7FN8IMagqEn6
	C6s4xIpiWRox5Pwq2BlgMXcWNSWfR94=
X-Google-Smtp-Source: AGRyM1stfstX30EFtTw7ME0rBIeetYud8Y4vv8rys/JCfhmGz1pQiuCpEcBF7dyopgePs8qzFlOlyQ==
X-Received: by 2002:a5d:6dad:0:b0:21d:976e:6e86 with SMTP id u13-20020a5d6dad000000b0021d976e6e86mr2751646wrs.160.1657710584084;
        Wed, 13 Jul 2022 04:09:44 -0700 (PDT)
Received: from [172.16.5.24] ([193.145.14.195])
        by smtp.gmail.com with ESMTPSA id z1-20020a7bc7c1000000b003a2e27fc275sm1837505wmk.12.2022.07.13.04.09.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 04:09:43 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------R0BtdhwDBHU869lLSvFcXySu"
Message-ID: <1e226452-681f-9f8e-afe0-c2907094055c@gmail.com>
Date: Wed, 13 Jul 2022 13:09:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XQC4K7JM7YJBBM27MAVRDQJ2MOES6XR3
X-Message-ID-Hash: XQC4K7JM7YJBBM27MAVRDQJ2MOES6XR3
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Setting TX and RX bandwidth on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQC4K7JM7YJBBM27MAVRDQJ2MOES6XR3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------R0BtdhwDBHU869lLSvFcXySu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear community,

I installed the UHD 4.1 version and followed this tutorial: 
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide for 
updating the Linux File System and updating the FPGA Image.

When I try a simple example file:

./rx_ascii_art_dft --freq 98e6 --rate 5e6 --gain 20 --bw 5e6 --ref-lvl -30

I get the following error:

[WARNING] [0/Radio#0] set_rx_bandwidth take no effect on AD9371. Default 
analog bandwidth is 100MHz

I cannot find any useful information online, apart from this discussion: 
https://www.mail-archive.com/usrp-users@lists.ettus.com/msg05735.html 
which did not help me.

I attach the log file.

I also tried UHD 3.15 version, but the result was the same.

Do you have any ideas?

Thanks in advance,
Giuseppe

--------------R0BtdhwDBHU869lLSvFcXySu
Content-Type: text/plain; charset=UTF-8; name="log_N310.txt"
Content-Disposition: attachment; filename="log_N310.txt"
Content-Transfer-Encoding: base64

W0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUw
MTsgVUhEXzQuMS4wLkhFQUQtMC1nZDIxNzM1ZDUKW0lORk9dIFtNUE1EXSBJbml0aWFsaXpp
bmcgMSBkZXZpY2UocykgaW4gcGFyYWxsZWwgd2l0aCBhcmdzOiBtZ210X2FkZHI9MTkyLjE2
OC4yMC4yLHR5cGU9bjN4eCxwcm9kdWN0PW4zMTAsc2VyaWFsPTMyMTEwMDgsZnBnYT1IRyxj
bGFpbWVkPUZhbHNlLGFkZHI9MTkyLjE2OC4yMC4yCltJTkZPXSBbTVBNLlBlcmlwaE1hbmFn
ZXJdIGluaXQoKSBjYWxsZWQgd2l0aCBkZXZpY2UgYXJncyBgZnBnYT1IRyxtZ210X2FkZHI9
MTkyLjE2OC4yMC4yLHByb2R1Y3Q9bjMxMCxjbG9ja19zb3VyY2U9aW50ZXJuYWwsdGltZV9z
b3VyY2U9aW50ZXJuYWwnLgpbV0FSTklOR10gWzAvRERDIzBdIFRoZSByZXF1ZXN0ZWQgZGVj
aW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lDIHJv
bGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBoYWxm
YmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0IHdp
bGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBlbmFi
bGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4gMjUK
W1dBUk5JTkddIFswL0REQyMwXSBUaGUgcmVxdWVzdGVkIGRlY2ltYXRpb24gaXMgb2RkOyB0
aGUgdXNlciBzaG91bGQgZXhwZWN0IHBhc3NiYW5kIENJQyByb2xsb2ZmLgpTZWxlY3QgYW4g
ZXZlbiBkZWNpbWF0aW9uIHRvIGVuc3VyZSB0aGF0IGEgaGFsZmJhbmQgZmlsdGVyIGlzIGVu
YWJsZWQuCkRlY2ltYXRpb25zIGZhY3RvcmFibGUgYnkgNCB3aWxsIGVuYWJsZSAyIGhhbGZi
YW5kcywgdGhvc2UgZmFjdG9yYWJsZSBieSA4IHdpbGwgZW5hYmxlIDMgaGFsZmJhbmRzLgpk
ZWNpbWF0aW9uID0gZHNwX3JhdGUvc2FtcF9yYXRlIC0+IDI1CltXQVJOSU5HXSBbMC9EREMj
MF0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxkIGV4
cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlvbiB0
byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0aW9u
cyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3NlIGZhY3Rv
cmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRzcF9y
YXRlL3NhbXBfcmF0ZSAtPiAyNQpbV0FSTklOR10gWzAvRERDIzBdIFRoZSByZXF1ZXN0ZWQg
ZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQgQ0lD
IHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQgYSBo
YWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBieSA0
IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2lsbCBl
bmFibGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUgLT4g
MjUKW1dBUk5JTkddIFswL0REQyMxXSBUaGUgcmVxdWVzdGVkIGRlY2ltYXRpb24gaXMgb2Rk
OyB0aGUgdXNlciBzaG91bGQgZXhwZWN0IHBhc3NiYW5kIENJQyByb2xsb2ZmLgpTZWxlY3Qg
YW4gZXZlbiBkZWNpbWF0aW9uIHRvIGVuc3VyZSB0aGF0IGEgaGFsZmJhbmQgZmlsdGVyIGlz
IGVuYWJsZWQuCkRlY2ltYXRpb25zIGZhY3RvcmFibGUgYnkgNCB3aWxsIGVuYWJsZSAyIGhh
bGZiYW5kcywgdGhvc2UgZmFjdG9yYWJsZSBieSA4IHdpbGwgZW5hYmxlIDMgaGFsZmJhbmRz
LgpkZWNpbWF0aW9uID0gZHNwX3JhdGUvc2FtcF9yYXRlIC0+IDI1CltXQVJOSU5HXSBbMC9E
REMjMV0gVGhlIHJlcXVlc3RlZCBkZWNpbWF0aW9uIGlzIG9kZDsgdGhlIHVzZXIgc2hvdWxk
IGV4cGVjdCBwYXNzYmFuZCBDSUMgcm9sbG9mZi4KU2VsZWN0IGFuIGV2ZW4gZGVjaW1hdGlv
biB0byBlbnN1cmUgdGhhdCBhIGhhbGZiYW5kIGZpbHRlciBpcyBlbmFibGVkLgpEZWNpbWF0
aW9ucyBmYWN0b3JhYmxlIGJ5IDQgd2lsbCBlbmFibGUgMiBoYWxmYmFuZHMsIHRob3NlIGZh
Y3RvcmFibGUgYnkgOCB3aWxsIGVuYWJsZSAzIGhhbGZiYW5kcy4KZGVjaW1hdGlvbiA9IGRz
cF9yYXRlL3NhbXBfcmF0ZSAtPiAyNQpbV0FSTklOR10gWzAvRERDIzFdIFRoZSByZXF1ZXN0
ZWQgZGVjaW1hdGlvbiBpcyBvZGQ7IHRoZSB1c2VyIHNob3VsZCBleHBlY3QgcGFzc2JhbmQg
Q0lDIHJvbGxvZmYuClNlbGVjdCBhbiBldmVuIGRlY2ltYXRpb24gdG8gZW5zdXJlIHRoYXQg
YSBoYWxmYmFuZCBmaWx0ZXIgaXMgZW5hYmxlZC4KRGVjaW1hdGlvbnMgZmFjdG9yYWJsZSBi
eSA0IHdpbGwgZW5hYmxlIDIgaGFsZmJhbmRzLCB0aG9zZSBmYWN0b3JhYmxlIGJ5IDggd2ls
bCBlbmFibGUgMyBoYWxmYmFuZHMuCmRlY2ltYXRpb24gPSBkc3BfcmF0ZS9zYW1wX3JhdGUg
LT4gMjUKW1dBUk5JTkddIFswL0REQyMxXSBUaGUgcmVxdWVzdGVkIGRlY2ltYXRpb24gaXMg
b2RkOyB0aGUgdXNlciBzaG91bGQgZXhwZWN0IHBhc3NiYW5kIENJQyByb2xsb2ZmLgpTZWxl
Y3QgYW4gZXZlbiBkZWNpbWF0aW9uIHRvIGVuc3VyZSB0aGF0IGEgaGFsZmJhbmQgZmlsdGVy
IGlzIGVuYWJsZWQuCkRlY2ltYXRpb25zIGZhY3RvcmFibGUgYnkgNCB3aWxsIGVuYWJsZSAy
IGhhbGZiYW5kcywgdGhvc2UgZmFjdG9yYWJsZSBieSA4IHdpbGwgZW5hYmxlIDMgaGFsZmJh
bmRzLgpkZWNpbWF0aW9uID0gZHNwX3JhdGUvc2FtcF9yYXRlIC0+IDI1CltXQVJOSU5HXSBb
MC9SYWRpbyMwXSBzZXRfcnhfYmFuZHdpZHRoIHRha2Ugbm8gZWZmZWN0IG9uIEFEOTM3MS4g
RGVmYXVsdCBhbmFsb2cgYmFuZHdpZHRoIGlzIDEwME1Iego=

--------------R0BtdhwDBHU869lLSvFcXySu
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------R0BtdhwDBHU869lLSvFcXySu--
