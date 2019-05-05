Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB9714117
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 18:29:06 +0200 (CEST)
Received: from [::1] (port=54930 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNK0c-00068N-W9; Sun, 05 May 2019 12:29:03 -0400
Received: from mail-it1-f177.google.com ([209.85.166.177]:35573)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hNK04-0005zk-UF
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 12:28:58 -0400
Received: by mail-it1-f177.google.com with SMTP id l140so16490162itb.0
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 09:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=96j316l6q5wHMZT0FrugJevDIgREiIreSzVC+y8GZjY=;
 b=rEV1QNnBSn4A2AF2mgJjdUmUtgxfpLA7Sh5qYxj4LdMNSPLH+nWFN5sZf2Yfh2eOj4
 3Gm9FoD8Luu2gbnUgaJjcu2F7QYAfZxpViupRPQHj8B7eJHKkt9W4S9EMu8yjHmW2VSv
 BxNeqU6qSk8zUgAEeym368psEy0/Au2ZE7SfbZCLuDTJqQJKR4xjZXXmEU11QH4OxyKg
 PUmshUpGYGcC1bS95/QPvjNDIT8Vo8ZZakAPzYyBjqTN+DvRlj974wtnAXV5Uz0VW8dm
 LqeB4yVBb/79XrSRGNqMTpcl/8b+H3HCxJ04hS7LrP8qrE3YwlSDaqMhk44RC51lHR5+
 SqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=96j316l6q5wHMZT0FrugJevDIgREiIreSzVC+y8GZjY=;
 b=mm6Qri1d1kXtCXy/yND3s2mzPkNUE7oqRo9wrsVYVin2SwXV9sA6HAfcsMbS6xxx+b
 owII3A0g0WOJlKkEigtneaklb388md0lIDFuoEtopWUJLNC9uX6gFCGph5/rlqkevOtR
 UG/Ind1lvKpEcTRTdLWMAAGTkzkuG7ThLyJgvpZ9ukxXX52yt4hcz6DYANPSG5LHNBUU
 Y8PeS13PMPLhYnYRk7moSg78PiLgkhxQoKt2++aoF6jO26DYrfcbhNCqmYRe/kJ16l3t
 DbFUsaQLEcEAs2XqZdYJlrn+4gLyEPp7D6AsI9wkdxQPUaznkH4Pgd7evELRZseqsA96
 rRMw==
X-Gm-Message-State: APjAAAXV/qfpKC5yBxTuVlooMdHBzbTrAk1jct+IP4u8Iq+2K+lKRRKa
 fFRh7NwuGXIqdIeOa7Wgkufb0CEnp2A=
X-Google-Smtp-Source: APXvYqyMRbHnVnwQMbESITlmmv87zTppp+wZ2tIHVHXII99XhsWhmI60uuIzJ8sQztZoTZvCyJgKoA==
X-Received: by 2002:a24:e50e:: with SMTP id g14mr15339399iti.53.1557073668159; 
 Sun, 05 May 2019 09:27:48 -0700 (PDT)
Received: from [192.168.0.127] (d72-38-46-97.commercial1.cgocable.net.
 [72.38.46.97])
 by smtp.gmail.com with ESMTPSA id l3sm597349iom.7.2019.05.05.09.27.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 09:27:47 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16E227)
In-Reply-To: <CADE5U-emV9YVgecLrZRR54S8407hP7xMaFA5t+uf-ARGeDVmAQ@mail.gmail.com>
Date: Sun, 5 May 2019 12:27:46 -0400
Message-Id: <5AEC47DB-1CD7-43C1-A284-885D9A6B40A9@gmail.com>
References: <CADE5U-e_T08OHwSMWA1bf=ZowbfBnG8OAtY+Sk+A8ZgeEsX_Lg@mail.gmail.com>
 <CADE5U-f05s5shd-JBRLrYKZYcjitk4rJ2VUhH-LgJ4GWgFbc7Q@mail.gmail.com>
 <CADE5U-dEzm-uRTfx1oK4KPYJOcP-uZzfSjs=V9hdLWwnU9Mb8w@mail.gmail.com>
 <CADE5U-eMh9P6oeWaYddeaVpBgWw+hGwrsKZsW1dr+TF7q9AYzg@mail.gmail.com>
 <CADE5U-f5C+KmqQ5AmDDk0PW163e4Zoe26G2mDLv0HZUEkiTUuw@mail.gmail.com>
 <CADE5U-d6qmUvvKz7e5NUdscuFntTXY5CTQnOp=Su5VZ3wnmatA@mail.gmail.com>
 <CADE5U-cHS-Q-2j3U9jfjNaanFG2YDvBWPyGQxTW81HESSbWyxg@mail.gmail.com>
 <5CCF00B6.7010407@gmail.com>
 <CADE5U-eKkLJhyWBhkoqq96iTMcFo2Z_NE7eUi4y8FyWocPaP4A@mail.gmail.com>
 <BA29EA88-EE05-41A1-BDC1-4206E31AA443@gmail.com>
 <CADE5U-emV9YVgecLrZRR54S8407hP7xMaFA5t+uf-ARGeDVmAQ@mail.gmail.com>
To: franz kurniawan <digitalturtle2010@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B210 mini I/Q imbalance?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4892559825057505680=="
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


--===============4892559825057505680==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-A8FA1952-303F-435F-995A-5F900E419B3C
Content-Transfer-Encoding: 7bit


--Apple-Mail-A8FA1952-303F-435F-995A-5F900E419B3C
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

-20dBM is loud. Try backing the generator down to -40dBm


Sent from my iPhone

> On May 5, 2019, at 12:14 PM, franz kurniawan <digitalturtle2010@gmail.com>=
 wrote:
>=20
> I set the generator at -20db and b200 gain at 50..
> I check that there is no cutoff at the usrp output and the input to AM dem=
od block..
>=20
> Below are the setting of uhd block in gnuradio
> Samp rate 500k
> Output type float32
> Sync PC clock
> Clock rate 10 Mhz external
> Freq 121MHz
> Gain 50
> Ch0 Bandwidth 200000
>=20
>=20
> Thank you
>=20
>> On May 5, 2019 11:05 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote=
:
>> What output level for the generator? What gain setting on the b205?
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>> On May 5, 2019, at 11:58 AM, franz kurniawan <digitalturtle2010@gmail.co=
m> wrote:
>>>=20
>>> So, i try to make AM receiver..
>>> And the resulted demodulated audio was distorted from its original signa=
l..
>>> So, at this experiment i used signal generator to make AM with sine wave=
 modulated signal..
>>> I expect to get pure sine wave signal after AM demod process..
>>> However, the sine wave is distorted as attached picture
>>>=20
>>> I compared with another brand SDR and can get my expected signal..
>>> So i guess there is some problem with the b210mini
>>>=20
>>> Thank you
>>>=20
>>>=20
>>>=20
>>> On May 5, 2019 10:28 PM, "Marcus D. Leech via USRP-users" <usrp-users@li=
sts.ettus.com> wrote:
>>>> On 05/05/2019 10:53 AM, franz kurniawan via USRP-users wrote:
>>>> Dear USRP users,
>>>>=20
>>>> I used b210mini and encounter I/Q imbalance as below picture..
>>>> As a result, the analog signal demodulation was distorted and result a c=
rappy sound..
>>>> I
>>>> Is there any workaround regarding this issue?
>>>>=20
>>>> Thank you
>>>>=20
>>>>=20
>>> Not sure what you mean.  The I/Q seem to be about 90deg out of phase wrt=
 one another, which is exactly what you'd expect.
>>>=20
>>> Could you describe what it is you're trying to do?  Something with an au=
dio demodulator?
>>>=20
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>=20
>>> <IMG-20190505-WA0001.jpg>

--Apple-Mail-A8FA1952-303F-435F-995A-5F900E419B3C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">-20dBM is loud. Try backing the generator d=
own to -40dBm<div><br><br><div id=3D"AppleMailSignature" dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br>On May 5, 2019, at 12:14 PM, franz ku=
rniawan &lt;<a href=3D"mailto:digitalturtle2010@gmail.com">digitalturtle2010=
@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D=
"ltr"><div dir=3D"auto">I set the generator at -20db and b200 gain at 50..<d=
iv dir=3D"auto">I check that there is no cutoff at the usrp output and the i=
nput to AM demod block..</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Below are the setting of uhd block in gnuradio</div><div dir=3D"auto">Samp r=
ate 500k</div><div dir=3D"auto">Output type float32</div><div dir=3D"auto">S=
ync PC clock</div><div dir=3D"auto">Clock rate 10 Mhz external</div><div dir=
=3D"auto">Freq 121MHz</div><div dir=3D"auto">Gain 50</div><div dir=3D"auto">=
Ch0 Bandwidth 200000</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Thank you</div></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On May 5, 2019 11:05 PM, "Marcus D Leech" &lt;<a h=
ref=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote=
:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Wh=
at output level for the generator? What gain setting on the b205?<div><br><b=
r><div id=3D"m_-8860653040052543334AppleMailSignature" dir=3D"ltr">Sent from=
 my iPhone</div><div dir=3D"ltr"><br>On May 5, 2019, at 11:58 AM, franz kurn=
iawan &lt;<a href=3D"mailto:digitalturtle2010@gmail.com" target=3D"_blank">d=
igitalturtle2010@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D"c=
ite"><div dir=3D"ltr"><div dir=3D"auto"><div>So, i try to make AM receiver..=
</div><div dir=3D"auto">And the resulted demodulated audio was distorted fro=
m its original signal..</div><div dir=3D"auto">So, at this experiment i used=
 signal generator to make AM with sine wave modulated signal..</div><div dir=
=3D"auto">I expect to get pure sine wave signal after AM demod process..</di=
v><div dir=3D"auto">However, the sine wave is distorted as attached picture<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">I compared with another b=
rand SDR and can get my expected signal..</div><div dir=3D"auto">So i guess t=
here is some problem with the b210mini</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Thank you</div><div dir=3D"auto"><br></div><div dir=3D"auto"><=
br><div class=3D"gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote">On=
 May 5, 2019 10:28 PM, "Marcus D. Leech via USRP-users" &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br type=3D"attribution"><blockquote style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div>On 05/05/2019 10:53 AM, f=
ranz kurniawan via USRP-users wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
Dear USRP users,<br>
<br>
I used b210mini and encounter I/Q imbalance as below picture..<br>
As a result, the analog signal demodulation was distorted and result a crapp=
y sound..<br>
I<br>
Is there any workaround regarding this issue?<br>
<br>
Thank you<br>
<br>
<br>
</blockquote></div>
Not sure what you mean.&nbsp; The I/Q seem to be about 90deg out of phase wr=
t one another, which is exactly what you'd expect.<br>
<br>
Could you describe what it is you're trying to do?&nbsp; Something with an a=
udio demodulator?<br>
<br>
<br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman<wbr>/=
listinfo/usrp-users_lists.ett<wbr>us.com</a><br>
</blockquote></div><br></div></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr">&lt;IMG-201905=
05-WA0001.jpg&gt;</div></blockquote></div></div></blockquote></div></div>
</div></blockquote></div></body></html>=

--Apple-Mail-A8FA1952-303F-435F-995A-5F900E419B3C--


--===============4892559825057505680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4892559825057505680==--

