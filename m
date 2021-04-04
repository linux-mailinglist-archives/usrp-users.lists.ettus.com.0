Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9488235398C
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 21:48:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22E39383BD3
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 15:48:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hqqH/Ue/";
	dkim-atps=neutral
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 85231383BC0
	for <usrp-users@lists.ettus.com>; Sun,  4 Apr 2021 15:47:57 -0400 (EDT)
Received: by mail-il1-f181.google.com with SMTP id c18so2029104iln.7
        for <usrp-users@lists.ettus.com>; Sun, 04 Apr 2021 12:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MoEUKzKzWgcJa+T5QivIiO7irBksfbkrVRu3aXXzyUY=;
        b=hqqH/Ue/XnokY6adUj7cauVg97UYzqIg7oVKy6s3xDRUr0Gxq5/GJuP9t/LiGtUzVn
         I1yP6OAD52JfaFdUG0FQuV2wAK33eRvKme3xh+GXSmYPyoLyZhyNSm/IfyjhJloqvqtH
         iO5bqTkmbSyMTZC1DDJRFIEgAgaeT3uhK3mZTaCC/O5SS2Uc0JiLm7vP3z9cQSc9SZrO
         j0FF0OUk9Sxdjil5JKs0DpyEx2j2ALn9kx+CmQQBUoprTE4273uhQGlEqIQGQU6eMVmG
         KaX3o3XkfLj+JWH59uvNuLVxHbNgDv0l9FyXCF78kKq7DM9akhowLTpv2kg6c/Ux5oP3
         2IVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MoEUKzKzWgcJa+T5QivIiO7irBksfbkrVRu3aXXzyUY=;
        b=TIpn6BKVCZMje3eONNJZ3fbhAgSrlu426igbH34rPP+cppnJjbsAxvR15DENOqEyCA
         wqUiGHJ/75gh2k2QcCmQ/ky2KDNcOrCXq3nS9Bccx6islJlf5OGyQejgKCXibxYc8YXl
         5PjsO1AREooLjJzjclpd9PGxXQTnS/eNRLYWjLvK/Z3FbZis+6tIKUR8emG2jcTvUexE
         VuaugEambI8vHRGjNK2kJ9QLpAF5Km84mXSjBCq6MyoH+dtoeFO3up3nFlPtuIkt0k2+
         Qaz7tEZ02JW/621kXGPB7EDhKIi5OEnl0uFmJ2T+7sAOui0f3791FQnuwAPvH3gaWgjN
         eFtg==
X-Gm-Message-State: AOAM532hFlOzcam98WKlE5OhzLESFU6nWU0E02DM9TLL29n1vFPzBFPQ
	wwgXUEgVj05JFcctPPfVBlnDOAoqsSi9jK9p0yftFp5LMZyuuw==
X-Google-Smtp-Source: ABdhPJwM+m09d5JhKfmjGuikdG9rgIvAXza7WoTSQyHAGFEikmuVb5V3gsNNlzWvxx+pr2euz0zlEkcu9UjqEBsMuJk=
X-Received: by 2002:a92:cd4a:: with SMTP id v10mr17370632ilq.273.1617565676821;
 Sun, 04 Apr 2021 12:47:56 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Sun, 4 Apr 2021 22:47:44 +0300
Message-ID: <CAPRRyxvNLkNvHt2QtcyNeyuQrKf6N=p11-Zo41=J9gTiL9J-Sg@mail.gmail.com>
To: discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: JDGGPNBZN4TEC7ZZE4OTWUUDQFS5J7V5
X-Message-ID-Hash: JDGGPNBZN4TEC7ZZE4OTWUUDQFS5J7V5
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error when using gpio via RFnoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JDGGPNBZN4TEC7ZZE4OTWUUDQFS5J7V5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4065489865219616899=="

--===============4065489865219616899==
Content-Type: multipart/alternative; boundary="00000000000091605905bf2adb30"

--00000000000091605905bf2adb30
Content-Type: text/plain; charset="UTF-8"

Hello, I'm trying to switch gpio to usrp E 310 using rfnoc access to it. I
take the example rfnoc fosphor as a basis. But I get an error:
Traceback (most recent call last): File "rfnoc_fosphor_network_usrp.py",
line 319, in <module> main () File "rfnoc_fosphor_network_usrp.py", line
308, in main tb = top_block_cls (fft_size = options.fft_size, fpga_path =
options.fpga_path, freq = options.freq, gain = options.gain, host_ip_addr =
options.host_ip_addr, samp_rate = options.samp_rate, tdecay = options.tde.
options. trise trise, gpio = options.gpio) File
"rfnoc_fosphor_network_usrp.py", line 103, in __init__
self.uhd_rfnoc_streamer_radio_0.set_gpio_attr ("FP0", "CTRL",
self.ATTR_CONTROL, self.ATR_MASKS) File
"/usr/lib/python2.7/site-packages/ettus/ettus_swig.py", line 2801, in
set_gpio_attr return _ettus_swig.rfnoc_radio_sptr_set_gpio_attr (self,
bank, attr, value, mask) RuntimeError: RuntimeError: NotImplementedError:
set_gpio_attr was not defined for this radio Tell me if you have any
suggestions about this?

--00000000000091605905bf2adb30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span class=3D"gmail-VIiyi" lang=3D"en"><span class=
=3D"gmail-JLqJ4b"><span>Hello, I&#39;m trying to switch gpio to usrp E 310 =
using rfnoc access to it. I take the example rfnoc fosphor as a basis. But =
I get an error: <br></span></span></span></div><div><span class=3D"gmail-VI=
iyi" lang=3D"en"><span class=3D"gmail-JLqJ4b"><span>Traceback (most recent =
call last):
  File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 319, in &lt;module&g=
t;
    main ()
  File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 308, in main
    tb =3D top_block_cls (fft_size =3D options.fft_size, fpga_path =3D opti=
ons.fpga_path, freq =3D options.freq, gain =3D options.gain, host_ip_addr =
=3D options.host_ip_addr, samp_rate =3D options.samp_rate, tdecay =3D optio=
ns.tde. options. trise trise, gpio =3D options.gpio)
  File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 103, in __init__
    self.uhd_rfnoc_streamer_radio_0.set_gpio_attr (&quot;FP0&quot;, &quot;C=
TRL&quot;, self.ATTR_CONTROL, self.ATR_MASKS)
  File &quot;/usr/lib/python2.7/site-packages/ettus/ettus_swig.py&quot;, li=
ne 2801, in set_gpio_attr
    return _ettus_swig.rfnoc_radio_sptr_set_gpio_attr (self, bank, attr, va=
lue, mask)
RuntimeError: RuntimeError: NotImplementedError: set_gpio_attr was not defi=
ned for this radio
Tell me if you have any suggestions about this?</span></span></span></div> =
</div>

--00000000000091605905bf2adb30--

--===============4065489865219616899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4065489865219616899==--
