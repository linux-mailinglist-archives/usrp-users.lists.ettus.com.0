Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDD214155
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 19:14:04 +0200 (CEST)
Received: from [::1] (port=37356 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNKiB-0008UN-A7; Sun, 05 May 2019 13:14:03 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:44996)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hNKhd-0008Ls-KR
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 13:13:59 -0400
Received: by mail-ot1-f47.google.com with SMTP id d10so4398965otp.11
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 10:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GXpEGQIPc1eiV5g60ULNMlZP/HzsmLthL+iwNX72bUk=;
 b=HhcHiHaXa0oCcgDTXe4BgY+9LAwMMns4prkbn8UUtfJsR2mqXj4XvA3Gyj3K+yQCAi
 WnE2bTmZam4WaLypv2wWuiXI5A4iVRldsch0mBuosarxYG3OBRrlSOnSUM010SzWRNuI
 kovkJupuZUVuzPk+LryEvQGQNEx6OzqTlAYWwT8SFH4yQI0v6mtS6q4bBL7edtYwo0KM
 3s5ODwwqWD5De6MgT5qiywGuGarDhOQ3D9LNN6S2WmqA0ha2rtm4ngcut9Nhhc7gBKq4
 1rKAI8v5SSzbHMuf50KJelCS5cSOxdvE+PbXAA/2HeiW9BbULaXt73EcNVUusO2xLFQB
 TRsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GXpEGQIPc1eiV5g60ULNMlZP/HzsmLthL+iwNX72bUk=;
 b=rqVjYVfuWovMOJC/xYpgll6Q7sf1XLWeGBlqIz7Hys3dBJedF3SebMXL9ypLtS/8/H
 j58bk+RdgYIkAZnVdo7u7EjHo8kYkj6RYtSrzjPFH9O+lTB90MOF//2ym8KFJwfZHuZB
 aM91nZPnHKf9gM95EyGKh5nmpDYAe1CreksM+HWwYtSrU2u+cBWrJCQT4uCH4d5a4oeU
 nROj5Eoeb/7FIxW5fqL6hATLS40DY379LPPTuVcdEh7Q2jwzUSHOUCl3afCHAOL9T0fj
 wz6WIqO/cPUMXw4vfjk+ckG1B+cT1vrON8OktBDpqLALfP2jJ3+UMXhnjGzqh4ooQAjf
 vPHA==
X-Gm-Message-State: APjAAAVq1WbcTRf+RqKQGpr92y0I5IyrY0TzUgvUOJ3ww2ru+PbywO4a
 JkJyEm2zyJxkhuNG6cOyjXZJxRh2jYNHbccwqU4=
X-Google-Smtp-Source: APXvYqzhUPjUxu735fWNmTVQ/rRusTGZgzteVShaCguXzr7y1TzrA32LYVWpKHamIW7cQxfF7LTLfa3vTDMLb3AMgSM=
X-Received: by 2002:a05:6830:1158:: with SMTP id
 x24mr14407388otq.278.1557076368885; 
 Sun, 05 May 2019 10:12:48 -0700 (PDT)
MIME-Version: 1.0
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
 <5AEC47DB-1CD7-43C1-A284-885D9A6B40A9@gmail.com>
 <CADE5U-e2BZR_v8-e0nvcOkYof-YOT2vVqQxLPFZCFC0g=bHTLA@mail.gmail.com>
 <CADE5U-fgECvK4tc_QRwRin12x+F3MNWAh1rABWMa-z8q8=UYsQ@mail.gmail.com>
In-Reply-To: <CADE5U-fgECvK4tc_QRwRin12x+F3MNWAh1rABWMa-z8q8=UYsQ@mail.gmail.com>
Date: Sun, 5 May 2019 13:12:36 -0400
Message-ID: <CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com>
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5248364011500192368=="
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

--===============5248364011500192368==
Content-Type: multipart/alternative; boundary="000000000000db0a4c0588271758"

--000000000000db0a4c0588271758
Content-Type: text/plain; charset="UTF-8"

Since it's AM, try shifting your center frequency by a little bit.

Extract the envelope the same way, though.

My thought is the DC cancellation circuitry in the 9361 is killing your AM
waveform, so use a low-IF approach instead.

Brian

On Sun, May 5, 2019 at 1:05 PM franz kurniawan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I reduced to -40db, -50db and have the same result..
>
> I attached the pictures of b200mini vs other SDR with the same signal
> generator..
>
> I expect the same result with the 'other SDR' result..
> The IQ data of b200 is seems to be incorrect (imbalance? )
>
> I have tried the uhd of these version :
> v3.14.0.0-rc3 ,
> release_003_007_001,
> release_003_010_001_000
>
> But all have the same result..
>
> I tried to disable the set_auto_iq_balance to both false and true, but
> have no effect..
>
> Thank you
>
> On May 5, 2019 11:27 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote:
>
> -20dBM is loud. Try backing the generator down to -40dBm
>
>
> Sent from my iPhone
>
> On May 5, 2019, at 12:14 PM, franz kurniawan <digitalturtle2010@gmail.com>
> wrote:
>
> I set the generator at -20db and b200 gain at 50..
> I check that there is no cutoff at the usrp output and the input to AM
> demod block..
>
> Below are the setting of uhd block in gnuradio
> Samp rate 500k
> Output type float32
> Sync PC clock
> Clock rate 10 Mhz external
> Freq 121MHz
> Gain 50
> Ch0 Bandwidth 200000
>
>
> Thank you
>
> On May 5, 2019 11:05 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote:
>
>> What output level for the generator? What gain setting on the b205?
>>
>>
>> Sent from my iPhone
>>
>> On May 5, 2019, at 11:58 AM, franz kurniawan <digitalturtle2010@gmail.com>
>> wrote:
>>
>> So, i try to make AM receiver..
>> And the resulted demodulated audio was distorted from its original
>> signal..
>> So, at this experiment i used signal generator to make AM with sine wave
>> modulated signal..
>> I expect to get pure sine wave signal after AM demod process..
>> However, the sine wave is distorted as attached picture
>>
>> I compared with another brand SDR and can get my expected signal..
>> So i guess there is some problem with the b210mini
>>
>> Thank you
>>
>>
>>
>> On May 5, 2019 10:28 PM, "Marcus D. Leech via USRP-users" <
>> usrp-users@lists.ettus.com> wrote:
>>
>> On 05/05/2019 10:53 AM, franz kurniawan via USRP-users wrote:
>>
>>> Dear USRP users,
>>>
>>> I used b210mini and encounter I/Q imbalance as below picture..
>>> As a result, the analog signal demodulation was distorted and result a
>>> crappy sound..
>>> I
>>> Is there any workaround regarding this issue?
>>>
>>> Thank you
>>>
>>>
>>> Not sure what you mean.  The I/Q seem to be about 90deg out of phase wrt
>> one another, which is exactly what you'd expect.
>>
>> Could you describe what it is you're trying to do?  Something with an
>> audio demodulator?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> <IMG-20190505-WA0001.jpg>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000db0a4c0588271758
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Since it&#39;s AM, try shifting your center frequency by a=
 little bit.<div><br></div><div>Extract the envelope the same way, though.<=
/div><div><br></div><div>My thought is the DC cancellation circuitry in the=
 9361 is killing your AM waveform, so use a low-IF approach instead.</div><=
div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, May 5, 2019 at 1:05 PM franz kurniawa=
n via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"auto">I reduced to -40db, -50db and have the =
same result..<div dir=3D"auto"><br></div><div dir=3D"auto">I attached the p=
ictures of b200mini vs other SDR with the same signal generator..</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">I expect the same result with the=
 &#39;other SDR&#39; result..</div><div dir=3D"auto">The IQ data of b200 is=
 seems to be incorrect (imbalance? )</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">I have tried the uhd of these version :</div><div dir=3D"auto"=
>v3.14.0.0-rc3 ,=C2=A0</div><div dir=3D"auto">release_003_007_001,=C2=A0</d=
iv><div dir=3D"auto">release_003_010_001_000</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">But all have the same result..</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">I tried to disable the set_auto_iq_balance to b=
oth false and true, but have no effect..</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Thank you</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On May 5, 2019 11:27 PM, &quot;Marcus D Leech&quot; &l=
t;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gma=
il-m_1464258312546627213quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">-20dBM is =
loud. Try backing the generator down to -40dBm<div><br><br><div id=3D"gmail=
-m_1464258312546627213m_2029498226510055085AppleMailSignature" dir=3D"ltr">=
Sent from my iPhone</div><div class=3D"gmail-m_1464258312546627213elided-te=
xt"><div dir=3D"ltr"><br>On May 5, 2019, at 12:14 PM, franz kurniawan &lt;<=
a href=3D"mailto:digitalturtle2010@gmail.com" target=3D"_blank">digitalturt=
le2010@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div=
 dir=3D"ltr"><div dir=3D"auto">I set the generator at -20db and b200 gain a=
t 50..<div dir=3D"auto">I check that there is no cutoff at the usrp output =
and the input to AM demod block..</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Below are the setting of uhd block in gnuradio</div><div dir=3D"a=
uto">Samp rate 500k</div><div dir=3D"auto">Output type float32</div><div di=
r=3D"auto">Sync PC clock</div><div dir=3D"auto">Clock rate 10 Mhz external<=
/div><div dir=3D"auto">Freq 121MHz</div><div dir=3D"auto">Gain 50</div><div=
 dir=3D"auto">Ch0 Bandwidth 200000</div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Thank you</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On May 5, 2019 11:05 PM, &quot;M=
arcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br type=3D"attribution">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">What ou=
tput level for the generator? What gain setting on the b205?<div><br><br><d=
iv id=3D"gmail-m_1464258312546627213m_2029498226510055085m_-886065304005254=
3334AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D"lt=
r"><br>On May 5, 2019, at 11:58 AM, franz kurniawan &lt;<a href=3D"mailto:d=
igitalturtle2010@gmail.com" target=3D"_blank">digitalturtle2010@gmail.com</=
a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div =
dir=3D"auto"><div>So, i try to make AM receiver..</div><div dir=3D"auto">An=
d the resulted demodulated audio was distorted from its original signal..</=
div><div dir=3D"auto">So, at this experiment i used signal generator to mak=
e AM with sine wave modulated signal..</div><div dir=3D"auto">I expect to g=
et pure sine wave signal after AM demod process..</div><div dir=3D"auto">Ho=
wever, the sine wave is distorted as attached picture</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">I compared with another brand SDR and can get=
 my expected signal..</div><div dir=3D"auto">So i guess there is some probl=
em with the b210mini</div><div dir=3D"auto"><br></div><div dir=3D"auto">Tha=
nk you</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><div class=3D=
"gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote">On May 5, 2019 10=
:28 PM, &quot;Marcus D. Leech via USRP-users&quot; &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br type=3D"attribution"><blockquote style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>On 05/0=
5/2019 10:53 AM, franz kurniawan via USRP-users wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Dear USRP users,<br>
<br>
I used b210mini and encounter I/Q imbalance as below picture..<br>
As a result, the analog signal demodulation was distorted and result a crap=
py sound..<br>
I<br>
Is there any workaround regarding this issue?<br>
<br>
Thank you<br>
<br>
<br>
</blockquote></div>
Not sure what you mean.=C2=A0 The I/Q seem to be about 90deg out of phase w=
rt one another, which is exactly what you&#39;d expect.<br>
<br>
Could you describe what it is you&#39;re trying to do?=C2=A0 Something with=
 an audio demodulator?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br></div></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr">&lt;IMG-20190=
505-WA0001.jpg&gt;</div></blockquote></div></div></blockquote></div></div>
</div></blockquote></div></div></div></blockquote></div><br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000db0a4c0588271758--


--===============5248364011500192368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5248364011500192368==--

