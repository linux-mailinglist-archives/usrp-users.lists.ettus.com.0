Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 120431AFF7E
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 03:27:21 +0200 (CEST)
Received: from [::1] (port=53288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQLDQ-0004cB-PS; Sun, 19 Apr 2020 21:27:16 -0400
Received: from mout.gmx.net ([212.227.17.21]:56779)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jQLDM-0004WT-20
 for usrp-users@lists.ettus.com; Sun, 19 Apr 2020 21:27:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587345991;
 bh=sNaFqQWfKWi1vEqJCVITwPReUjP7N4S2Vh+KDi91c6I=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=ljn0rPb0eO1z/66xLc1999E0Q41cGWxYBQEuDqGd+7l7O4eLrk/vMjKhaM9qP7+U2
 dhBPAtEqtq39llKlEbWGJ3v+oQgrUmhQwYtVStcP99tyrqZWSZRR/1MgI/6jnwkc0f
 jvD23hWeG7eujr6bx594B0SZeSoMB8re7l9RYDyM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.50.39] ([87.101.50.39]) by web-mail.gmx.net
 (3c-app-gmx-bap03.server.lan [172.19.172.73]) (via HTTP); Mon, 20 Apr 2020
 03:26:30 +0200
MIME-Version: 1.0
Message-ID: <trinity-2e8938a8-5251-4fd3-a4b9-450be68ecadd-1587345990905@3c-app-gmx-bap03>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Mon, 20 Apr 2020 03:26:30 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:lmEFpRx979428dIWiOlVVJVrUlD/9p4A41peGf0K0Q9YqFGYDNSYwfhhCULSBRbPUlI82
 9OMCEHeOl9Cw3z0TG1KvrDAoTBbtPZyQDUPwnCLZF/fC3NLfF8Fje616jd53xP5HhmXYuesraKbH
 ZaF7Q95vwYkgAYtvIgMpkhl/fwVj+oMxqNo38ggloTuOFE4RY0Is6XfjzLlmS/eDGuHeXRwrqRz9
 v9JGdpyiuCJnLg4fr/XN7vhgDWJLnsM9QoyYd575PnlYqC65Zb3s/G/7V9oLCCdRrAmDvfC8hSdt
 +c=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UrrmUahoMGQ=:oTgi2+rYvw9YjQvvgRCA/c
 OYY5ztdRHmeLvoa9g8bVigd8vHgRtcQzKYOaWq+AwhexE4D50CoTYQYtMa5STnhZcz5OY6JMq
 NUyxXBpVW53uPvSnytn4SL6LpyS9l1J2q7x0DaPxa6A/dod2xBffKKnMeorAAzUEQqjEZrF06
 HbzDttb2GnRJACIWSO6QnorOqVGcLjXC73YKfjgayRmye5YOoqrJ2YqtH1U/QJYEnQPETvTDG
 W1Ddsjj0LBDdTXGoljvi1tuJJ0zSyMGoBPVcC1aFaObyGAHxtQs7ambWD0ZlXUr4JodqeBuxt
 nJdyfELQ0wZrxqqdWZZdtheyL4ZB5jCEA2KjXwG0lEDKnJfuCuUVnZWfjMfn8Ly/Jo5lYwQYH
 7PgjqSeakXlYMUCrYrf/u9TyZ+gEfD5wB24MKxyQhmjsw5p6U91CvWtZDyYmQAh3eiPtGVxoy
 lEmIcY5HfIOaB8gRRkGEqGMOnX7Dcti1dCrWnw+LfjBEZjEwa1HYBb6Ca76n6aN/FkhLueHiZ
 V43CBsaQtZBipoC6Jlo/upBLREhEkJ6wmrBshmbbftd6/4hUhCd4y6xPQJ4i/A0AZakkUE7ZY
 bAyyNMO52CoXT6jEzc4NQZEjgiloqEyki79Lil8qHoIrbTMj+WzQTmqY7OB/dGDuEkR5eoCI/
 A9cOYjU0m7V9DpidWdl7qhIjV7YQrVH8hYPxNlHMYZF3SUsOleIQiSAhycRHMOFot+Os=
Subject: [USRP-users] Questions about UBX-160 Noise Figure
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi,

https://kb.ettus.com/UBX#Noise_Figure lists 2-3dB noise figure, UBX_Data_Sheet.pdf 2-4dB for UBX-160 (at 915 MHz).

I connect a 50 Ohm load to RX and create a simple gnuradio application with USRP Source that calculates the RMS value of the sampled data (and plots the noise in time domain).
samp_rate = 5 MHz.
RX Gain = 0 dB.

The value is 0.000113 RMS.
The time domain waveforms look a bit like quantization noise.

I repeat the experiment, this time with RX Gain value set to 37.5dB.
The value is 0.000841 RMS.

According to https://files.ettus.com/performance_data/ubx/UBX-without-UHD-corrections.pdf, NF=2-3dB for 37.5dB gain and ~23dB for 0dB gain. The high gain value coincides with the values from the datasheet above.

Question 1: Is the reason that for 0dB it looks like quantization noise, that the noise is smaller than LSB so I am effecively seeing the ADC noise?

Question 2: Is the ADC quantixation noise the main reason for the difference in NF? (Note: I am familiar with Friis' equation)

Question 3: The noise difference for both cases is 20*log10(0.000841/0.000113)=17.43dB. According to the measurement PDF it should be ca. 23-3=20dB. The difference is ~2-4dB. Is this just measurement uncertainty/part-to-part mismatch or is something wrong with my approach?

Question 3: I repeat the last experiment by setting the "Ch0 Bandwidth [Hz]" to 0 (default), 5e6 and 1e6. I would expect that my rms value decreases by a factor of sqrt(2) for each halfing of bandwidth. However, the value always stays around 0.000841 RMS, regardless of the bandwidth value. Why?

Question 4: According to theory, my captured signal is -174 + NF + 10*log10(BW) = -174+3+10*log10(5e6)=-104dBm. Is it correct that my 0.000841 corresponds to -104dBm input power? (If not, why not?). Or differently, -104dBm input power corresponds to 20*log10(0.000841 / 1) = -61.5dBFS ?

Thank you,
Lukas




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
