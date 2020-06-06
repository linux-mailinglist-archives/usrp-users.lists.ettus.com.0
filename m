Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F08F1F07FD
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jun 2020 19:12:09 +0200 (CEST)
Received: from [::1] (port=60542 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhcMX-00025V-Up; Sat, 06 Jun 2020 13:12:05 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:34618)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jhcMS-0001q4-Ia
 for USRP-users@lists.ettus.com; Sat, 06 Jun 2020 13:12:00 -0400
Received: by mail-qk1-f181.google.com with SMTP id f18so13142696qkh.1
 for <USRP-users@lists.ettus.com>; Sat, 06 Jun 2020 10:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=4iBTBj06EnbkrVWUsm2nOcqDCo1ewBVVliL5JLxdClg=;
 b=KR90wZ2NlO2EEc4Z6OdbAn3fKqX1t1OMCVMN/bJ20jP2P8QLF5IODdSbSwJBZRSst+
 Vjvz2a5dqhZ/ph5P9uj3ER/3BqgNe7L/rk5Ixs4yC8yrVMCiIauS6Uf8DJ4BJYrV4pMb
 +YDjyA7M5b1/F/Nyq4uCF4nbRbh06V/t8RWBmp/uciH7ZRW/4DFSkdwJBDyliqIgiV3L
 vPLZvK/1q0rAPNousAdjw4e+kC8Oqs1UYPeq7H98/tKpDrOuxs1tT/NuRpkP/zJITLBL
 guG0kVE+briq7IhB0f98UOq7hGdzi9ZFiAdH2tfYdiNtBRC7iI9IyyrJc5SwvT1ho1w1
 KIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=4iBTBj06EnbkrVWUsm2nOcqDCo1ewBVVliL5JLxdClg=;
 b=rha+WzYsLQQaxRum/U3n//lf46qlcVE+NR5IPLQTiO0iPVxx/AJK6dbDHTKNy3wWuc
 rPZfUUjCkciyoMXfOQJicmYfL/MmVrJGHI6oio4OAFPEdAZ3jf3w+aBtJcT7s8Wqtamj
 72DrcyoC818rGCU/l+2G97GuiGdw1ishsXJmekZZ1hMVvo13VZ9iq+hUgloZgh9VgjA/
 ZYjSa8WyKQhKk8BTlER850t+sodePsTq6NPaujDxJt6RB+6JdMFm3jomowwx2rRxyU4l
 3nLrUSXvyiJJ+6YslbpVhI+0qrqvszBU3gMpAh+gGcEvC3K3rV4nuzK6FNvhBTZlQp7W
 15bg==
X-Gm-Message-State: AOAM531wUdmXW+xIgcs7TJm+OpPPZLWUj1JkSZo0MyKNMx2weyEMhzlw
 x6GN6JSoyod/Mul9E8hgUhc=
X-Google-Smtp-Source: ABdhPJxJlj82r3utTWDzXAU4Zw9Pzfep7kYiITM3ld9f8Jsm5L3nRW/Ym+uPrN3FuhsMnfGOn7mLuA==
X-Received: by 2002:a05:620a:8da:: with SMTP id
 z26mr14186923qkz.461.1591463480008; 
 Sat, 06 Jun 2020 10:11:20 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id s201sm2741291qka.8.2020.06.06.10.11.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Jun 2020 10:11:19 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 6 Jun 2020 13:11:18 -0400
Message-Id: <0D2950E3-08E0-4B75-8183-F36BC97F75BF@gmail.com>
References: <CACjmV_mc8zbOvYG_P85ivXypgDE9uMWURD5+Ee_UdV6qHVuuFQ@mail.gmail.com>
In-Reply-To: <CACjmV_mc8zbOvYG_P85ivXypgDE9uMWURD5+Ee_UdV6qHVuuFQ@mail.gmail.com>
To: guowang qiu <qiu.guowang007@gmail.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] B210 LO signal leakage above 5GHz
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0577777416889903752=="
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


--===============0577777416889903752==
Content-Type: multipart/alternative; boundary=Apple-Mail-2BE006F1-20A1-47CA-AB00-77B1D0A34DCE
Content-Transfer-Encoding: 7bit


--Apple-Mail-2BE006F1-20A1-47CA-AB00-77B1D0A34DCE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This is probably in dBc for DC offset, which is very like independent of sam=
ple rate.=20

The RF performance of the system is utterly dominated by the performance of t=
he AD9361 chip, so you should also consult the Ad9361 data sheet.=20

Sent from my iPhone

> On Jun 6, 2020, at 5:21 AM, guowang qiu via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> Does anyone know the definition of DC offset=EF=BC=8C which is plotted in h=
ttps://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf, page 282? What is t=
he unit of DC offset? dB, dBc or dBm? What are the test conditions for this p=
erformance test report? What is the sampling rate? How to test it?
> We are still trying to solve this LO leakage issue.
>=20
>> On Fri, 29 May 2020 at 02:14, guowang qiu <qiu.guowang007@gmail.com> wrot=
e:
>> Hi Marcus,
>>=20
>> Thank you for your reply.
>> We have tried to set the magnitude of the modulating baseband signal from=
 0.1 to 0.6, it only affects the single tone signal strength and has no effe=
ct on the LO leakage.
>>=20
>> Best regards,
>> Damon
>>=20
>>> On Fri, 29 May 2020 at 02:03, Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>>> Have you tried adjusting the magnitude of the modulating baseband signal=
? Does that make a difference.=20
>>>=20
>>> My guess is that the leakage path isn=E2=80=99t through the VGA but rath=
er through something else in the package. In which case, no amount of softwa=
re mods will reduce it.=20
>>>=20
>>> Sent from my iPhone
>>>=20
>>> > On May 28, 2020, at 1:50 PM, guowang qiu via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>>> >=20
>>> > =EF=BB=BF
>>> > Hi all,
>>> >=20
>>> > We use USRP b210 as a signal generator, and adjust the tx gain to make=
 the tx power from - 90dbm to 0dbm. USRP b210 works fine in 2.4GHz frequency=
 band, but it has a very strong LO signal leakage at frequencies higher than=
 5GHz.=20
>>> > In my test, the frequency of  baseband (cos signal source) is set to 1=
MHz, so LO signal leakage and single tone signal can be easily distinguished=
. When the tx gain is set from 0 to 30 db, the strength of the LO signal har=
dly changes, and it is higher than the strength of the single tone signal. W=
ith the increase of tx gain, the strength of single tone signal will increas=
e obviously. It seems that the local oscillator signal generated by the PLL i=
n ad9361 bypasses the internal adjustable gain power amplifier and leaks dir=
ectly to the antenna port.
>>> > Is it possible to reduce the local leakage by modifying the UHD source=
 code?
>>> >=20
>>> > Best regards,
>>> > Damon
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-2BE006F1-20A1-47CA-AB00-77B1D0A34DCE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is probably in dBc for DC offset, whic=
h is very like independent of sample rate.&nbsp;<div><br></div><div>The RF p=
erformance of the system is utterly dominated by the performance of the AD93=
61 chip, so you should also consult the Ad9361 data sheet.&nbsp;<br><br><div=
 dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Jun 6, 2020, at 5:21 AM, guowang qiu via USRP-users &lt;usrp-users=
@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"ci=
te"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi all,<br></div><div><b=
r></div><div>Does anyone know the definition of DC offset=EF=BC=8C which is p=
lotted in&nbsp;<a href=3D"https://kb.ettus.com/images/c/cb/B200_RF_Performan=
ce.pdf">https://kb.ettus.com/images/c/cb/B200_RF_Performance.pdf</a>, page 2=
82? What is the unit of DC offset? dB, dBc or dBm? What are the test conditi=
ons for this performance test report? What is the sampling rate? How to test=
 it?<br></div><div>We are still trying to solve this LO leakage issue.</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, 29 May 2020 at 02:14, guowang qiu &lt;<a href=3D"mailto:qiu.guowang00=
7@gmail.com">qiu.guowang007@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi M=
arcus,</div><div><br></div><div>Thank you for your reply.<br></div><div>We h=
ave tried to set the magnitude of the modulating baseband signal from 0.1 to=
 0.6, it only affects the single tone signal strength and has no effect on t=
he LO leakage.</div><div><br></div><div>Best regards,</div><div>Damon<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, 29 May 2020 at 02:03, Marcus D Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Have you tried adju=
sting the magnitude of the modulating baseband signal? Does that make a diff=
erence. <br>
<br>
My guess is that the leakage path isn=E2=80=99t through the VGA but rather t=
hrough something else in the package. In which case, no amount of software m=
ods will reduce it. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On May 28, 2020, at 1:50 PM, guowang qiu via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; We use USRP b210 as a signal generator, and adjust the tx gain to make t=
he tx power from - 90dbm to 0dbm. USRP b210 works fine in 2.4GHz frequency b=
and, but it has a very strong LO signal leakage at frequencies higher than 5=
GHz. <br>
&gt; In my test, the frequency of&nbsp; baseband (cos signal source) is set t=
o 1MHz, so LO signal leakage and single tone signal can be easily distinguis=
hed. When the tx gain is set from 0 to 30 db, the strength of the LO signal h=
ardly changes, and it is higher than the strength of the single tone signal.=
 With the increase of tx gain, the strength of single tone signal will incre=
ase obviously. It seems that the local oscillator signal generated by the PL=
L in ad9361 bypasses the internal adjustable gain power amplifier and leaks d=
irectly to the antenna port.<br>
&gt; Is it possible to reduce the local leakage by modifying the UHD source c=
ode?<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Damon<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-2BE006F1-20A1-47CA-AB00-77B1D0A34DCE--


--===============0577777416889903752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0577777416889903752==--

