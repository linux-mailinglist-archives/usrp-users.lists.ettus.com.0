Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jVf+KmvOlmmooAIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:48:43 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0878E15D1B9
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 09:48:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A89A8385A81
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 03:48:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771490921; bh=kWbI1Yym24EyNNM2l+GB/vjOiqjQL1dVNXg9n21QNxw=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SpiSrQK8BRSuluwt1zuJs33yYkDI2WjZRJ4Ah7T9ZupC0r9JdyJPjJnVpA4pZ8H28
	 aR+3rN3Lfx/VhlQUvRvj1s10pKuqJkzxphIiPFRGQUrY1mf2RAyik+qr811u3nT+Nr
	 r4709Tu9/3dEy8wQsq28GLyPKdUo8pdKw+yGdAN+E0P0ppOdPnUQloovpSXOquX6jg
	 AxNCyuOXdE9yLAO4VsKNV0H6eWV2U2t7eA4C0dFAE6cW/7oRN4Sw9jMCcCQelAn9ku
	 lyxpRtpUCF8A8C9AL5wdD9QgI+OqrFc/n6lG365/futdNk3L1vRDyd5GQXEcHuuItl
	 ynvdIKK8gq/GQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F5513859E1
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 03:48:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ZO1eixoo";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-506a6cf8242so5521511cf.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 00:48:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771490897; cv=none;
        d=google.com; s=arc-20240605;
        b=O8s0b5xQmAj7LZqvgEfb4jrf/MzzGEAM5mm1zwmNtxq3QmqPS+yv7eoEEZ3zo1l4N+
         Nqvn+iAv/FdesNTtAU/a4/tLrDBbhDA4p7FpPlg6swc6+62FGtOp8eqzj47T8QBqggLo
         drPHr1rOoCFkbCofKYd4d2kyvKC6hMSKD3RHy7cxF3u/y6VzV5wEqK+sQG/VkXwxZkHJ
         QECf6uyBKZBNn4rAw50R0NUS2I/Ak73tHsmpr8X0NIVEybw+ajLCBwh2N+ZFBr17rH7P
         JQfvaSoD7hUvamWbtpS1Tt5pGwQfiqgKgom5nY5cIxQ19m8uL/41GPSinDxo9bWulPZw
         Gk/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=CtD+VOiQb7N2Hwm8g65LT+00kldqotYAGO36FOYX02A=;
        fh=A7RGwJBs/kZcFPx4vbFZqM3i4K4Xz9eaLyDE9LfvqT0=;
        b=fITcoHZb4DkP7spBvMygpcYs/BBRZ5xkQXRhMxYoPEUuEF0yi6nKFN41Yqtfv0FyAp
         8kkscxtn4KRAGDzSCyaA6CFnzkey9BkCrWKQ4IR6njLkOEwKy2vO+p/mG5gu0H5w9c0v
         HHpjEwXslSy/nC8VhpHpc+PZEYQ/NCjKrY6ic5f84QQBGCESUUbakK1JCmdwAA7+WlA4
         5vYO+qGPr+Rag2jYD+vVDdMS1WjG9xki18YXGScKgC7E+82tA/Myh3PlahvuwvQXXAu8
         +eWpNgWlKl1hkTaQ9kmsabYvoEu9vbkR96/f3Q+AaOxOeDmPcgs7JnN5X1P6sdR9qeaE
         I4gQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771490897; x=1772095697; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CtD+VOiQb7N2Hwm8g65LT+00kldqotYAGO36FOYX02A=;
        b=ZO1eixooMj9AwcP1LQqrYRO6NAYBodSNuKNjnAIG5GgK7FjI2Lt9qg3LK+kgzCTeCR
         bmo5287frwbZG04vlymWJvzelSWFTDm6elx/TvvPxj/6X5ZitZQSmhTAHNh52mbqTx66
         3rt/AXpksGsLeUN3Dkie8hm6+Q4nHd6CSVtxmJpePoeD27bFDe/2TCsjR5EtL31K8P5g
         gWtfB/wQJEoAOxmELCwi/BSkbiCi5Ybgnxl7UynzVpxopRM9wqoWCGT6MvS1jYAFVlyl
         HVO6O2INKHtkBnUNZun5qhekB1wc6r4f0l+t6uGjO52ebwT1lSWb5yc9QnguSUiz8Xyk
         /QHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771490897; x=1772095697;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CtD+VOiQb7N2Hwm8g65LT+00kldqotYAGO36FOYX02A=;
        b=la4NcTjjLQijFLLSYZFa8pK2WEwlsFhPYdTR83aqTUrpTjVt+ZH3OeU4PzNolgntmG
         4KWcxjUG6J3NnZvmoZv6XSbwqbqnaJurvE58Fokl3boa0nkag1HRULytX1t+teaJDjn7
         1w/ysG/zkCqJhVNX6wCZJgZihT4k4kADszAdzVHFApeuKeTFrmqmYptWMRK9Xm4DveWf
         jF86PGFLkFF9+ATT0WGEtL+MH4oEre9LDVaN9qjfZbQPUYPjBw3mzuP1KflRr+/PqorO
         pVNdeC4DnZXeNkqhaQd9RgDFxDRngt1jhLP4tv8z4hB8Y/HVTPRAXWq6TN++eiBwPsTM
         C+PQ==
X-Gm-Message-State: AOJu0YxXMt1yVhcy/Olcc7JweaPCVrA4zN41sB96jJAtPz7pRHhtFJhx
	mfV1YS/PNnOvTH55MIosJwcOTIQ1X79b9cDCnX9LW0wYo2JM9hN2J+ZnyRajEDL8TPJm3/MJq8w
	bhYHWKT+ngdGgUnbNRvjc1FpsWIwkFKmHKGnYIrcC8IZ9B/BpuAPGP8+hemli
X-Gm-Gg: AZuq6aIWpKq8Q5KCtqxM8EKfTTem4I3LItiajyGmbtj6UWUvMywQaEqYVey5HdhesEU
	ArJ4FVxFOyn0XpF2sjD44/hznAlsxpas/Od/9N/kB6qNhvPu2fczJyz9D8Kf/M/OahtKp3m8GvE
	lDixAD4cb0juWbhBa4/O4fI2LOqJ7ocaAfx7gLFbIvJyg3YbyahyiRswJ9EFdhXIF5ahG7EjhUp
	cnGGujlsX3LVsdS/wd6zfwqPcmGpjNnzB76b9+GUdQ7PyUF0AHopwMQ//OZNxR8THGanSFucFCf
	2WMgIOlXOs032min6jTdBBUEIc3t1hxHVbSY1w==
X-Received: by 2002:a05:622a:1818:b0:4ee:18e7:c4de with SMTP id
 d75a77b69052e-506f07535d0mr28787151cf.78.1771490897264; Thu, 19 Feb 2026
 00:48:17 -0800 (PST)
MIME-Version: 1.0
References: <Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com>
In-Reply-To: <Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 09:48:06 +0100
X-Gm-Features: AaiRm51IFjT-c9MCclgkwOJ6j4K1i0MWNZMbZt4U-URA4J_nHJ26h0b71kLbYjU
Message-ID: <CAFOi1A4aVMq5-cs6=ZtMSSeEzfZS-tD2tJim_Ew=OeQzkrdcAw@mail.gmail.com>
Cc: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: E42Y7BS5XWEJPATWWJ7Z2C5FQPND6NGZ
X-Message-ID-Hash: E42Y7BS5XWEJPATWWJ7Z2C5FQPND6NGZ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 GPIO SPI support using UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E42Y7BS5XWEJPATWWJ7Z2C5FQPND6NGZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7362028105694465558=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.873];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,youtu.be:url,emwd.com:dkim,ettus.com:email]
X-Rspamd-Queue-Id: 0878E15D1B9
X-Rspamd-Action: no action

--===============7362028105694465558==
Content-Type: multipart/alternative; boundary="000000000000a78fe8064b295d60"

--000000000000a78fe8064b295d60
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Page,

I'm not sure where you got the 3.3V info from, but this section in the
manual shows the pins:

https://uhd.readthedocs.io/en/latest/page_usrp_b200.html#b200_switches

From here, this is the pinout:  1=3DGPIO_0, 2=3DGPIO_1, 3=3DGPIO_2, 4=3DGPI=
O_3,
5=3DGPIO_4, 6=3DGPIO_5, 7=3DGPIO_6, 8=3DGPIO_7, 9=3DGND, 10=3DGND

Make sure you share a ground pin with your Pi Zero.

If you're just reading pins, follow the manual for set_gpio_attr() (
https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#a=
57f25d118d20311aca261e6dd252625e)
to do the following:

   - Set desired pins CTRL to 0 (GPIO mode)
   - Set DDR to 0 (input)
   - Call get_gpio_attr() on the READBACK attribute. You will get all 8
   pins back, not just the ones you set to input (the others will be whatev=
er
   their state is).

You're right that the manual page for the GPIO API does not spell out B210
specifically, but everything there also applies to B210:
https://uhd.readthedocs.io/en/latest/page_gpio_api.html

Start slowly, without SPI, and read back known pin values. Then, poll the
GPIO bank more quickly to get your bit-banging functionality.

While this does not specifically talk about reading GPIOs, it maybe also be
useful: https://youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv

--M



On Thu, Feb 12, 2026 at 7:43=E2=80=AFPM page heller <pageheller@gmail.com> =
wrote:

> I am struggling with the GPIO on the Ettus B210 (J504). I am connecting i=
t
> to a Raspberry Pi Zero acting as the Master for SPI communications, sendi=
ng
> the chip select and clock to the B210. The loopback test on the Pi is
> successful. The NI-provided Python example code on the B210 side appears =
to
> 'get' (read) the pins on J504. Disconnected I see the chip select signal =
go
> low and back high, but when I connect it to J504, the software to 'get' t=
he
> pin doesn't change (same code, but in a for-loop). I'm using pin 1 as the
> chip select, 3 for clock, 6 for MOSI. I'm not using MISO.
>
> Some references on line suggest that pin 1 is an output on J504 of 3.3V
> power, but, I don't think so. It most certainly is not 3.3V and appears t=
o
> be just like the other pins.
>
> I need some help. I've invested about ten hours trying a number of
> different methods and code examples. I've tried getting SPI to work, but
> the documentation is so poor, I can only guess on the actual
> implementation. When that didn't work, I went to bit-banging; also with n=
o
> success. I'm just sending datetime from the pi to the B210 to synch them
> (doesn't have to be exact, just within hundreds of microseconds). So, I'm
> only sending a handful of bytes once, so bit-banging is just fine for thi=
s
> application. But, I can't get either the SPI nor the bit-banging to work.
> If I can't see the pin change when I use the example 'get' python code,
> then nothing will work.
>
> I'd love to talk with someone who has transferred data over the B210 GPIO=
.
> (Am I supposed to call this the NI 2109 now?) Thanks. -page
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a78fe8064b295d60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Page,</div><div><br></div><div>I&#39;m not sure wh=
ere you got the 3.3V info from, but this section in the manual shows the pi=
ns:</div><div><br></div><div><a href=3D"https://uhd.readthedocs.io/en/lates=
t/page_usrp_b200.html#b200_switches">https://uhd.readthedocs.io/en/latest/p=
age_usrp_b200.html#b200_switches</a></div><div><br></div><div>From here, th=
is is the pinout:=C2=A0
1=3DGPIO_0, 2=3DGPIO_1, 3=3DGPIO_2, 4=3DGPIO_3, 5=3DGPIO_4, 6=3DGPIO_5, 7=
=3DGPIO_6, 8=3DGPIO_7, 9=3DGND, 10=3DGND</div><div><br></div><div>Make sure=
 you share a ground pin with your Pi Zero.</div><div><br></div><div>If you&=
#39;re just reading pins, follow the manual for set_gpio_attr() (<a href=3D=
"https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#=
a57f25d118d20311aca261e6dd252625e">https://uhd.readthedocs.io/en/latest/cla=
ssuhd_1_1usrp_1_1multi__usrp.html#a57f25d118d20311aca261e6dd252625e</a>) to=
 do the following:</div><div><ul><li>Set desired pins CTRL to 0 (GPIO mode)=
</li><li>Set DDR to 0 (input)</li><li>Call get_gpio_attr() on the READBACK =
attribute. You will get all 8 pins back, not just the ones you set to input=
 (the others will be whatever their state is).</li></ul></div><div>You&#39;=
re right that the manual page for the GPIO API does not spell out B210 spec=
ifically, but everything there also applies to B210: <a href=3D"https://uhd=
.readthedocs.io/en/latest/page_gpio_api.html">https://uhd.readthedocs.io/en=
/latest/page_gpio_api.html</a></div><div><br></div><div>Start slowly, witho=
ut SPI, and read back known pin values. Then, poll the GPIO bank more quick=
ly to get your bit-banging functionality.</div><div><br></div><div>While th=
is does not specifically talk about reading GPIOs, it maybe also be useful:=
=C2=A0<a href=3D"https://youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv">https:=
//youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv</a></div><div><br></div><div>-=
-M</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 12,=
 2026 at 7:43=E2=80=AFPM page heller &lt;<a href=3D"mailto:pageheller@gmail=
.com">pageheller@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div id=3D"m_5982087996159542787__MailbirdStyleCo=
ntent" style=3D"font-size:10pt;font-family:Arial;color:rgb(26,26,26);text-a=
lign:left" dir=3D"ltr">I am struggling with the GPIO on the Ettus B210 (J50=
4). I am connecting it to a Raspberry Pi Zero acting as the Master for SPI =
communications, sending the chip select and clock to the B210. The loopback=
 test on the Pi is successful. The NI-provided Python example code on the B=
210 side appears to &#39;get&#39; (read) the pins on J504. Disconnected I s=
ee the chip select signal go low and back high, but when I connect it to J5=
04, the software to &#39;get&#39; the pin doesn&#39;t change (same code, bu=
t in a for-loop). I&#39;m using pin 1 as the chip select, 3 for clock, 6 fo=
r MOSI. I&#39;m not using MISO.=C2=A0<div><br></div><div>Some references on=
 line suggest that pin 1 is an output on J504 of 3.3V power, but, I don&#39=
;t think so. It most certainly is not 3.3V and appears to be just like the =
other pins.</div><div><br></div><div>I need some help. I&#39;ve invested ab=
out ten hours trying a number of different methods and code examples. I&#39=
;ve tried getting SPI to work, but the documentation is so poor, I can only=
 guess on the actual implementation. When that didn&#39;t work, I went to b=
it-banging; also with no success. I&#39;m just sending datetime from the pi=
 to the B210 to synch them (doesn&#39;t have to be exact, just within hundr=
eds of microseconds). So, I&#39;m only sending a handful of bytes once, so =
bit-banging is just fine for this application. But, I can&#39;t get either =
the SPI nor the bit-banging to work. If I can&#39;t see the pin change when=
 I use the example &#39;get&#39; python code, then nothing will work.</div>=
<div><br></div><div>I&#39;d love to talk with someone who has transferred d=
ata over the B210 GPIO. (Am I supposed to call this the NI 2109 now?) Thank=
s. -page</div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a78fe8064b295d60--

--===============7362028105694465558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7362028105694465558==--
